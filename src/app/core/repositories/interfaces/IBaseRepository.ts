/* eslint-disable @typescript-eslint/ban-types */
/* eslint-disable no-unused-vars */
import { Col, Fn, Literal, MakeNullishOptional } from 'sequelize/types/utils';
import Sequelize, {
  Attributes,
  BulkCreateOptions,
  FindAttributeOptions,
  FindOptions,
  Includeable,
  UpdateOptions,
  DataType,
  AggregateOptions,
  WhereOptions,
} from 'sequelize';
import { CriteriaOptions } from '../../types';

/**
 * Base repository interface.
 */
export interface IBaseRepository<M extends Sequelize.Model> {
  /**
   * Find list of resource with pagination
   * @param options where condition
   * @param page number
   * @param limit number
   * @param include Includeable
   * @returns rows: M[]; count: number
   */
  paginate(
    options: FindOptions<Attributes<M>>,
    page: number,
    limit: number,
    include?: Includeable | Includeable[],
  ): Promise<{ rows: M[]; count: number }>;

  /**
   * Find list of resource with pagination by criteria
   * @param options where condition
   * @param page number
   * @param limit number
   * @param include Includeable
   * @returns rows: M[]; count: number
   */
  paginateByCriteria(filterData: any, options?: CriteriaOptions<M>): Promise<{ rows: M[]; count: number }>;

  /**
   * Find list of resources
   * @param options where conditions
   * @param include Includeable
   * @param attributes Array
   * @returns M[]
   */
  find(
    options?: FindOptions<Attributes<M>>,
    include?: Includeable | Includeable[],
    attributes?: FindAttributeOptions,
  ): Promise<M[]>;

  /**
   * Find list of resources by criteria
   * @param options where conditions
   * @param include Includeable
   * @param attributes Array
   * @returns M[]
   */
  findByCriteria(filterData: any, options?: CriteriaOptions<M>, attributes?: FindAttributeOptions): Promise<M[]>;

  /**
   * Find one resource
   * @param options where conditions
   * @param include Includeable
   * @returns M | null
   */
  findOne(options?: FindOptions<Attributes<M>>, include?: Includeable | Includeable[]): Promise<M | null>;

  /**
   * Find one resource by criteria
   * @param options where conditions
   * @param include Includeable
   * @returns M | null
   */
  findOneByCriteria(
    filterData: any,
    options?: CriteriaOptions<M>,
    attributes?: FindAttributeOptions,
  ): Promise<M | null>;

  /**
   * Find one resource or throw error
   * @param options number
   * @param include Includeable
   * @returns M | null
   */
  findOneOrFail(options?: FindOptions<Attributes<M>>, include?: Includeable | Includeable[]): Promise<M | null>;

  /**
   * Find one resource or throw error by criterial
   * @param options number
   * @param include Includeable
   * @returns M | null
   */
  findOneOrFailByCriteria(filterData: any, options?: CriteriaOptions<M>): Promise<M | null>;

  /**
   * Find resource by id
   * @param id number
   * @returns M | null
   */
  findById(id: number, options?: Omit<FindOptions<Attributes<M>>, 'where'>): Promise<M | null>;

  /**
   * Find resource by id by criteria
   * @param id number
   * @returns M | null
   */
  findByIdByCriteria(id: number, filterData: any, options?: CriteriaOptions<M>): Promise<M | null>;

  /**
   * Find resource by id or throw error
   * @param id number
   * @returns M | null
   */
  findByIdOrFail(id: number, options?: Omit<FindOptions<Attributes<M>>, 'where'>): Promise<M>;

  /**
   * Find resource by id or throw error by criteria
   * @param id number
   * @returns M | null
   */
  findByIdOrFailByCriteria(id: number, filterData: any, options?: CriteriaOptions<M>): Promise<M>;

  /**
   * Check if resource is exist or not
   * @param options where conditions
   * @returns boolean
   */
  exists(options?: FindOptions<Attributes<M>>): Promise<boolean>;

  /**
   * Create new resource
   * @param data Object
   * @returns M
   */
  create(data: MakeNullishOptional<M['_creationAttributes']>): Promise<M>;

  /**
   * Get the first record matching the attributes or create it.
   * @param data Object
   * @returns M
   */
  firstOrCreate(
    attributes: {
      [key in keyof Attributes<M>]?: Attributes<M>[key] | Fn | Col | Literal;
    },
    values?: {
      [key in keyof Attributes<M>]?: Attributes<M>[key] | Fn | Col | Literal;
    },
    updateIfExist?: boolean,
  ): Promise<M>;

  /**
   * Create or update a record matching the attributes, and fill it with values.
   * @param data Object
   * @returns M
   */
  updateOrCreate(
    attributes: {
      [key in keyof Attributes<M>]?: Attributes<M>[key] | Fn | Col | Literal;
    },
    values?: {
      [key in keyof Attributes<M>]?: Attributes<M>[key] | Fn | Col | Literal;
    },
  ): Promise<M>;

  /**
   * Multiple ureate or update a record matching the attributes, and fill it with values.
   * @param data Object
   * @returns M
   */
  multipleUpdateOrCreate(
    array: {
      attributes: MakeNullishOptional<M['_creationAttributes']>;
      values?: MakeNullishOptional<M['_creationAttributes']>;
    }[],
  ): Promise<M[]>;

  /**
   * Update a specified resource in storage.
   * @param id number
   * @param payload Object
   * @returns M
   */
  update(id: number | M, payload: MakeNullishOptional<M['_creationAttributes']>): Promise<M>;

  /**
   * Update a specified resource in storage.
   * @param id number
   * @param payload Object
   * @returns M
   */
  updateAll(
    values: {
      [key in keyof Attributes<M>]?: Attributes<M>[key] | Fn | Col | Literal;
    },
    payload: UpdateOptions<Attributes<M>>,
  ): Promise<[affectedCount: number]>;

  /**
   * Update resources with conditions.
   * @param id number
   * @param payload Object
   * @returns M
   */
  updateWhere(
    where: WhereOptions<Attributes<M> & any>,
    payload: {
      [key in keyof Attributes<M>]?: Attributes<M>[key] | Fn | Col | Literal;
    },
  ): Promise<[affectedCount: number]>;

  /**
   * Activate a specified resource from storage
   * @param id number
   * @param field string
   * @returns M
   */
  active(id: number | M, field: string): Promise<M>;

  /**
   * Deactivate a specified resource from storage
   * @param id number
   * @param field string
   * @returns M
   */
  deactive(id: number | M, field: string): Promise<M>;

  /**
   * Deactivate resources with conditions
   * @param id number
   * @param field string
   * @returns M
   */
  deactiveWhere(where: WhereOptions<Attributes<M> & any>, field: string): Promise<[affectedCount: number]>;

  /**
   * Remove a specified resource by id from storage
   * @param id number
   * @returns boolean
   */
  deleteById(id: number | number[]): Promise<boolean>;

  /**
   * Remove a specified resource from storage
   * @param options where conditions
   * @returns boolean
   */
  delete(options: FindOptions<Attributes<M>>): Promise<boolean>;

  /**
   * Count number of result
   * @param options where conditions
   * @returns number
   */
  count(options: FindOptions<Attributes<M>>): Promise<number>;

  /**
   * Return an array of a specific field
   * @param options where conditions
   * @param key name of field
   * @returns Array
   */
  pluck(options: FindOptions<Attributes<M>>, key: string): Promise<any[]>;

  /**
   * Create and insert multiple instances in bulk.
   *
   * @param records List of objects (key/value pairs) to create instances from
   */
  bulkCreate(
    records: readonly MakeNullishOptional<M['_creationAttributes']>[],
    options?: BulkCreateOptions<Attributes<M>>,
    returningOptions?: Sequelize.FindOptions<Sequelize.Attributes<M>>,
  ): Promise<M[]>;

  /**
   * Update multiple instances in bulk.
   *
   * @param records List of objects (key/value pairs) to create instances from
   */
  bulkUpdate(
    records: readonly MakeNullishOptional<M['_creationAttributes']>[],
    options?: Sequelize.BulkCreateOptions<Sequelize.Attributes<M>> | undefined,
    returningOptions?: Sequelize.FindOptions<Sequelize.Attributes<M>>,
  ): Promise<M[]>;

  /**
   * Find the maximum value of field
   */
  max<T extends DataType | unknown>(
    field: keyof Sequelize.Attributes<M>,
    options?: AggregateOptions<T, Attributes<M>>,
  ): Promise<T>;

  /**
   * Find the minimum value of field
   */
  min<T extends DataType | unknown>(
    field: keyof Sequelize.Attributes<M>,
    options?: AggregateOptions<T, Attributes<M>>,
  ): Promise<T>;

  /**
   * Find the sum of field
   */
  sum<T extends DataType | unknown>(
    field: keyof Sequelize.Attributes<M>,
    options?: AggregateOptions<T, Attributes<M>>,
  ): Promise<number>;
}
