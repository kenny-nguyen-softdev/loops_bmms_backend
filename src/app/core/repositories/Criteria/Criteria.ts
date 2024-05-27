import { Attributes, FindOptions, Includeable, Model, Op, Order, WhereOptions } from 'sequelize';
import { CriteriaOptions, IncludeOptions, SearchParams } from '../../../core/types';

class Criteria<M extends Model> {
  protected queryData: SearchParams & any;
  protected queryOptions: any = {};
  protected includeOptions: IncludeOptions;
  protected order: Order = [];
  protected where: WhereOptions<Attributes<M>> = [];
  protected include: Includeable[] = [];
  protected additionalOptions;
  protected limit = 0;
  protected isPagination = false;
  protected FILTER_OPERATORS: {
    pattern: any;
    originOperator: string;
    operator: 'ne' | 'in' | 'notIn' | 'gt' | 'gte' | 'lt' | 'lte';
  }[] = [
    {
      pattern: /!$/,
      originOperator: '!',
      operator: 'ne',
    },
    {
      pattern: /\{\}$/,
      originOperator: '{}',
      operator: 'in',
    },
    {
      pattern: /\{notin\}$/,
      originOperator: '{notin}',
      operator: 'notIn',
    },
    {
      pattern: /\{gt\}$/,
      originOperator: '{gt}',
      operator: 'gt',
    },
    {
      pattern: /\{gte\}$/,
      originOperator: '{gte}',
      operator: 'gte',
    },
    {
      pattern: /\{lt\}$/,
      originOperator: '{lt}',
      operator: 'lt',
    },
    {
      pattern: /\{lte\}$/,
      originOperator: '{lte}',
      operator: 'lte',
    },
  ];

  constructor(
    queryData: SearchParams & any,
    includeOptions: IncludeOptions | undefined,
    additionalOptions?: CriteriaOptions<M>,
    isPagination = false,
  ) {
    this.queryOptions = [];
    this.order = [];
    this.include = [];
    this.queryData = queryData ?? {};
    this.includeOptions = includeOptions ?? {};
    this.additionalOptions = additionalOptions;
    this.isPagination = isPagination;
    this.parseQuery();
  }

  protected parseQuery() {
    const { orderBy, limit, include, ...filterOptions } = this.queryData;
    this.limit = limit;
    let includeOpts: Includeable[] | any = [...Object.values(this.additionalOptions?.include ?? {})];
    // where options
    const whereOpts: WhereOptions & any = Object.assign({}, this.additionalOptions?.where);
    Object.keys(filterOptions).map((field: string) => {
      const filterValue = filterOptions[field];
      if (this.isLikeQuery(filterValue)) {
        whereOpts[field] = { [Op.like]: filterValue.replaceAll('*', '%') };
      } else {
        const filterType = this.isOperatorQuery(field);
        if (filterType) {
          let whereValue = filterValue;
          if (filterType.originOperator === '{}' || filterType.originOperator === '{notin}') {
            whereValue = [...JSON.parse(filterValue)];
          }
          if (filterType.originOperator === '!') {
            whereValue = filterValue === '[null]' ? null : filterValue;
          }
          whereOpts[field.replace(filterType.originOperator, '')] = {
            [Op[filterType.operator]]: whereValue,
          };
        } else {
          if (filterValue === '[null]') {
            whereOpts[field] = { [Op.is]: null };
          } else {
            whereOpts[field] = filterValue;
          }
        }
      }
    });
    // include
    if (include) {
      if (include === 'all' || include === 'true') {
        includeOpts = [{ all: true }];
      } else {
        const includeArray = include.split('|');
        includeArray.forEach((includeKey: string) => {
          // the include from additionOptions is priority
          // skip if include name is already exists in addtionalOptions
          let isSkipInclude = false;
          const addtionIncludes = this.additionalOptions?.include;
          if (addtionIncludes) {
            isSkipInclude = !!Object.keys(addtionIncludes).find((key) => key === includeKey);
          }
          if (!isSkipInclude) {
            const includeKeyArr = includeKey.split(',');
            includeKey = includeKeyArr[0];
            let includeRequired = false;
            if (includeKeyArr.length === 2 && includeKeyArr[1] === 'required') {
              includeRequired = true;
            }
            // use include in Model if exists
            if (this.includeOptions[includeKey]) {
              (includeOpts as Includeable[]).push(this.includeOptions[includeKey](includeRequired));
            } else {
              (includeOpts as Includeable[]).push(includeKey);
            }
          }
        });
      }
    }
    // orderBy
    const orderOpts: Order = [];
    if (orderBy) {
      const orderArray = orderBy.split('|');
      orderArray.forEach((orderField: string) => {
        const [field, direction = 'asc'] = orderField.split(',');
        orderOpts.push([field, direction]);
      });
    }
    this.where = whereOpts;
    this.order = orderOpts;
    this.include = includeOpts;
  }

  getCriteria() {
    return {
      ...(this.where ? { where: this.where } : {}),
      ...(this.order ? { order: this.order } : {}),
      ...(this.limit ? { limit: Number(this.limit) } : {}),
      ...(this.include ? { include: this.include } : {}),
      ...(this.additionalOptions?.group ? { group: this.additionalOptions.group } : []),
    } as FindOptions<Attributes<M> & any>;
  }
  isLikeQuery(value: string) {
    return /^\*|.*\*$|^\*.*\*$/.test(value);
  }
  isOperatorQuery(value: string) {
    return this.FILTER_OPERATORS.find((filter) => filter.pattern.test(value));
  }
}

export default Criteria;
