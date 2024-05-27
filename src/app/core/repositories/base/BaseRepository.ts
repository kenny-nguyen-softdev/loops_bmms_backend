import { Col, Fn, Literal, MakeNullishOptional } from 'sequelize/types/utils';
import { NotFoundError } from '../../response/BaseResponse';
import Sequelize, {
  Attributes,
  FindAttributeOptions,
  FindOptions,
  Includeable,
  UpdateOptions,
  WhereAttributeHashValue,
  WhereOptions,
  DataType,
  AggregateOptions,
  Model,
  ModelStatic,
} from 'sequelize';
import { IBaseRepository } from '../interfaces/IBaseRepository';
import Criteria from '../Criteria/Criteria';
import { CriteriaOptions, IncludeOptions } from '../../types';

interface IStaticModel<M extends Model> extends ModelStatic<M> {
  INCLUDE_OPTIONS?: IncludeOptions;
}

export default abstract class BaseRepository<M extends Sequelize.Model> implements IBaseRepository<M> {
  protected readonly model!: IStaticModel<M>;

  constructor(model: IStaticModel<M>) {
    this.model = model;
  }

  /**
   * Find list of resource with pagination
   * @param options where condition
   * @param page number
   * @param limit number
   * @param include Includeable
   * @returns rows: M[]; count: number
   */
  public async paginate(
    options: FindOptions<Attributes<M>>,
    page: number,
    limit: number,
    include?: Includeable | Includeable[],
  ): Promise<{ rows: M[]; count: number }> {
    limit = limit ? Number(limit) : 10;
    page = page ? Number(page) : 1;
    return await this.model.findAndCountAll({
      ...options,
      include,
      offset: (page - 1) * limit,
      limit,
    });
  }

  /**
   * Find list of resource with pagination
   * @param filterData any
   * @param options where condition
   * @returns rows: M[]; count: number
   */
  public async paginateByCriteria(
    filterData: any,
    options?: CriteriaOptions<M>,
  ): Promise<{ rows: M[]; count: number }> {
    const { page: _page, limit: _limit, ...filters } = filterData ?? {};
    let limit = _limit;
    let page = _page;
    const criteria = new Criteria<M>(filters, this.model.INCLUDE_OPTIONS, options);
    const criteriaOptions = criteria.getCriteria();
    if (limit === 'unlimited') {
      const rows = await this.model.findAll(criteriaOptions);
      return { rows, count: rows.length };
    }
    limit = limit ? Number(limit) : 10;
    page = page ? Number(page) : 1;
    return await this.model.findAndCountAll({
      ...criteriaOptions,
      offset: (page - 1) * limit,
      limit,
    });
  }

  /**
   * Find list of resources
   * @param options where conditions
   * @param include Includeable
   * @param attributes Array
   * @returns M[]
   */
  public async find(
    options?: FindOptions<Attributes<M>>,
    include?: Includeable | Includeable[],
    attributes?: FindAttributeOptions,
  ): Promise<M[]> {
    return await this.model.findAll({ ...options, ...(include && { include }), ...(attributes && { attributes }) });
  }

  /**
   * Find list of resources by criteria
   * @param filterData any
   * @param options where conditions
   * @param attributes Array
   * @returns M[]
   */
  public async findByCriteria(
    filterData: any,
    options?: CriteriaOptions<M>,
    attributes?: FindAttributeOptions,
  ): Promise<M[]> {
    const criteria = new Criteria<M>(filterData, this.model.INCLUDE_OPTIONS, options);
    const criteriaOptions = criteria.getCriteria();
    return await this.model.findAll({
      ...criteriaOptions,
      ...(attributes && { attributes }),
    });
  }

  /**
   * Find one resource
   * @param options where conditions
   * @param include Includeable
   * @returns M | null
   */
  public async findOne(options?: FindOptions<Attributes<M>>, include?: Includeable | Includeable[]): Promise<M | null> {
    return await this.model.findOne({ ...options, ...(include && { include }) });
  }

  /**
   * Find one resource by criteria
   * @param filterData any
   * @param options where condition
   * @param attributes Array
   * @returns M | null
   */
  public async findOneByCriteria(
    filterData: any = {},
    options?: CriteriaOptions<M>,
    attributes?: FindAttributeOptions,
  ): Promise<M | null> {
    const criteria = new Criteria<M>(filterData, this.model.INCLUDE_OPTIONS, options);
    const criteriaOptions = criteria.getCriteria();
    return await this.model.findOne({
      ...criteriaOptions,
      ...(attributes && { attributes }),
    });
  }

  /**
   * Find one resource or throw error
   * @param options number
   * @param include Includeable
   * @returns M | null
   */
  public async findOneOrFail(options?: FindOptions<Attributes<M>>, include?: Includeable | Includeable[]): Promise<M> {
    const doc = await this.model.findOne({ ...options, ...(include && { include }) });
    if (!doc) {
      throw new NotFoundError('Not Found');
    }
    return doc;
  }

  /**
   * Find one resource or throw error
   * @param options number
   * @param include Includeable
   * @returns M | null
   */
  public async findOneOrFailByCriteria(filterData: any = {}, options?: CriteriaOptions<M>): Promise<M | null> {
    const criteria = new Criteria<M>(filterData, this.model.INCLUDE_OPTIONS, options);
    const criteriaOptions = criteria.getCriteria();
    const doc = await this.model.findOne(criteriaOptions);
    if (!doc) {
      throw new NotFoundError('Not Found');
    }
    return doc;
  }

  /**
   * Find resource by id
   * @param id number
   * @returns M | null
   */
  public async findById(id: number, options?: Omit<FindOptions<Attributes<M>>, 'where'>): Promise<M | null> {
    return await this.model.findByPk(id, options);
  }

  /**
   * Find one resource or throw error
   * @param options number
   * @param include Includeable
   * @returns M | null
   */
  public async findByIdByCriteria(id: number, filterData: any = {}, options?: CriteriaOptions<M>): Promise<M | null> {
    const criteria = new Criteria<M>(filterData, this.model.INCLUDE_OPTIONS, options);
    const criteriaOptions = criteria.getCriteria();
    return await this.model.findByPk(id, criteriaOptions);
  }

  /**
   * Find resource by id or throw error
   * @param id number
   * @returns M | null
   */
  public async findByIdOrFail(id: number, options?: Omit<FindOptions<Attributes<M>>, 'where'>): Promise<M> {
    const doc = await this.model.findByPk(id, options);
    if (!doc) {
      throw new NotFoundError('Not Found');
    }
    return doc;
  }

  /**
   * Find one resource or throw error
   * @param options number
   * @param include Includeable
   * @returns M | null
   */
  public async findByIdOrFailByCriteria(id: number, filterData: any = {}, options?: CriteriaOptions<M>): Promise<M> {
    const criteria = new Criteria<M>(filterData, this.model.INCLUDE_OPTIONS, options);
    const criteriaOptions = criteria.getCriteria();
    criteriaOptions.where = { ...criteriaOptions.where, ...{ id } };
    const doc = await this.model.findOne(criteriaOptions);
    if (!doc) {
      throw new NotFoundError('Not Found');
    }
    return doc;
  }

  /**
   * Check if resource is exist or not
   * @param options where conditions
   * @returns boolean
   */
  public async exists(options?: FindOptions<Attributes<M>>): Promise<boolean> {
    const doc = await this.findOne(options);
    if (doc) {
      return true;
    }
    return false;
  }

  /**
   * Create new resource
   * @param data Object
   * @returns M
   */
  public async create(data: MakeNullishOptional<M['_creationAttributes']>): Promise<M> {
    return await this.model.create(data);
  }

  /**
   * Get the first record matching the attributes or create it.
   * @param attributes Object
   * @returns M
   */
  public async firstOrCreate(
    attributes: {
      [key in keyof Attributes<M>]?: Attributes<M>[key] | Fn | Col | Literal;
    },
    values?:
      | {
          [key in keyof Attributes<M>]?: Attributes<M>[key] | Fn | Col | Literal;
        }
      | any,
    updateIfExist?: boolean,
  ): Promise<M> {
    let doc = await this.findOne({ where: attributes as WhereOptions<Attributes<M>> });
    if (doc) {
      if (updateIfExist && values) {
        doc = await this.update(doc, values);
      }
      return doc;
    }
    return await this.create({ ...attributes, ...values } as MakeNullishOptional<M['_creationAttributes']>);
  }

  /**
   *  Create or update a record matching the attributes, and fill it with values.
   * @param data Object
   * @returns M
   */
  public async updateOrCreate(
    attributes: {
      [key in keyof Attributes<M>]?: Attributes<M>[key] | Fn | Col | Literal;
    },
    values?: {
      [key in keyof Attributes<M>]?: Attributes<M>[key] | Fn | Col | Literal;
    },
  ): Promise<M> {
    return await this.firstOrCreate(attributes, values, true);
  }

  /**
   * Multiple ureate or update a record matching the attributes, and fill it with values.
   * @param data Object
   * @returns M
   */
  public async multipleUpdateOrCreate(
    array: {
      attributes: MakeNullishOptional<M['_creationAttributes']>;
      values?: MakeNullishOptional<M['_creationAttributes']>;
    }[],
  ): Promise<M[]> {
    const promises = array.map((item) => this.updateOrCreate(item.attributes, item.values));
    return await Promise.all(promises);
  }

  /**
   * Update a specified resource in storage.
   * @param id number
   * @param payload Object
   * @returns M
   */

  public async update(id: number | M, payload: MakeNullishOptional<M['_creationAttributes']>): Promise<M> {
    let doc: M | null;
    if (typeof id === 'number') {
      doc = (await this.findByIdOrFail(id)) as M;
    } else {
      doc = id;
    }
    const updatedDoc = await doc.update(payload);
    return updatedDoc;
  }

  public async updateAll(
    values: {
      [key in keyof Attributes<M>]?: Attributes<M>[key] | Fn | Col | Literal;
    },
    options: UpdateOptions<Attributes<M>>,
  ): Promise<[affectedCount: number]> {
    const updatedDocs = await this.model.update(values, options);
    return updatedDocs;
  }

  /**
   * Update resources with conditions.
   * @param id number
   * @param payload Object
   * @returns M
   */
  public async updateWhere(
    where: WhereOptions<Attributes<M>>,
    payload: MakeNullishOptional<M['_creationAttributes']>,
  ): Promise<[affectedCount: number]> {
    return await this.model.update(payload, { where });
  }

  /**
   * Activate a specified resource from storage
   * @param id number
   * @param field string
   * @returns M
   */
  public async active(id: number | M, field = 'isActive'): Promise<M> {
    let doc: M | null;
    if (typeof id === 'number') {
      doc = (await this.findByIdOrFail(id)) as M;
    } else {
      doc = id;
    }
    const updatedDoc = await doc.update({ [field]: true });
    return updatedDoc;
  }

  /**
   * Deactivate a specified resource from storage
   * @param id number
   * @param field string
   * @returns M
   */
  public async deactive(id: number | M, field = 'isActive'): Promise<M> {
    let doc: M | null;
    if (typeof id === 'number') {
      doc = (await this.findById(id)) as M;
    } else {
      doc = id;
    }
    const updatedDoc = await doc.update({ [field]: false });
    return updatedDoc;
  }

  /**
   * Deactivate a specified resource from storage
   * @param id number
   * @param field string
   * @returns M
   */
  public async deactiveWhere(
    where: WhereOptions<Attributes<M> & any>,
    field = 'isActive',
  ): Promise<[affectedCount: number]> {
    return await this.model.update({ [field]: false } as MakeNullishOptional<M['_creationAttributes']>, {
      where,
    });
  }

  /**
   * Remove a specified resource by id from storage
   * @param id number
   * @returns boolean
   */
  public async deleteById(id: number | number[]): Promise<boolean> {
    const where: WhereOptions<Attributes<M>> = {
      id: Array.isArray(id) ? { in: id } : (id as WhereAttributeHashValue<Attributes<M>[string]>),
    };
    const deletedOptionCount = await this.model.destroy({
      where,
      individualHooks: true,
    });
    return !!deletedOptionCount;
  }

  /**
   * Remove a specified resource from storage
   * @param options where conditions
   * @returns boolean
   */
  public async delete(options: FindOptions<Attributes<M>> | any): Promise<boolean> {
    const deletedOptionCount = await this.model.destroy({ ...options, individualHooks: true });
    return !!deletedOptionCount;
  }

  /**
   * Count number of result
   * @param options where conditions
   * @returns number
   */
  public async count(options: Sequelize.FindOptions<Sequelize.Attributes<M>>): Promise<number> {
    return await this.model.count(options);
  }

  /**
   * Return an array of a specific field
   * @param options where conditions
   * @param key name of field
   * @returns Array
   */
  public async pluck(options: Sequelize.FindOptions<Sequelize.Attributes<M>>, key: string): Promise<any[]> {
    return (await this.model.findAll({ ...options, attributes: [key], raw: true })).map((doc: M) => doc.get(key));
  }

  /**
   * Create and insert multiple instances in bulk.
   *
   * @param records List of objects (key/value pairs) to create instances from
   */
  public async bulkCreate(
    records: readonly MakeNullishOptional<M['_creationAttributes']>[],
    options?: Sequelize.BulkCreateOptions<Sequelize.Attributes<M>> | undefined,
    returningOptions?: Sequelize.FindOptions<Sequelize.Attributes<M>>,
  ): Promise<M[]> {
    const createdDocs = await this.model.bulkCreate(records, options);
    if (options?.returning === true) {
      const result = await this.find(returningOptions);
      return result;
    }
    return createdDocs;
  }

  /**
   * Update multiple instances in bulk.
   *
   * @param records List of objects (key/value pairs) to create instances from
   */
  public async bulkUpdate(
    records: readonly MakeNullishOptional<M['_creationAttributes']>[],
    options?: Sequelize.BulkCreateOptions<Sequelize.Attributes<M>> | undefined,
    returningOptions?: Sequelize.FindOptions<Sequelize.Attributes<M>>,
  ): Promise<M[]> {
    const updatedAt = new Date();
    records = records.map((record) => ({ ...record, updatedAt }));
    const updatedDocs = await this.model.bulkCreate(records, options);
    if (options?.returning === true) {
      const result = await this.find(returningOptions);
      return result;
    }
    return updatedDocs;
  }

  /**
   * Find the maximum value of field
   */
  public async max<T extends DataType | unknown>(
    field: keyof Sequelize.Attributes<M>,
    options?: AggregateOptions<T, Attributes<M>>,
  ): Promise<T> {
    return await this.model.max(field, options);
  }

  /**
   * Find the minimum value of field
   */
  public async min<T extends DataType | unknown>(
    field: keyof Sequelize.Attributes<M>,
    options?: AggregateOptions<T, Attributes<M>>,
  ): Promise<T> {
    return await this.model.min(field, options);
  }

  /**
   * Find the sum of field
   */
  public async sum<T extends DataType | unknown>(
    field: keyof Sequelize.Attributes<M>,
    options?: AggregateOptions<T, Attributes<M>>,
  ): Promise<number> {
    return await this.model.sum(field, options);
  }
}
