/* eslint-disable no-unused-vars */
import { Attributes, GroupOption, Includeable, Model, WhereOptions } from 'sequelize';

export type SearchParams = { search: string; page: string; limit: string; include?: string };

export type IncludeOptions = { [key: string]: (required?: boolean) => Includeable };

export type CriteriaOptions<M extends Model> = {
  where?: WhereOptions<Attributes<M>>;
  include?: { [key: string]: Includeable };
  group?: GroupOption;
};
