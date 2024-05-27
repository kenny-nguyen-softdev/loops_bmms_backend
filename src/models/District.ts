import {
  DataTypes,
  Model,
  InferAttributes,
  InferCreationAttributes,
  CreationOptional,
  CreationAttributes,
  ForeignKey,
  NonAttribute,
} from 'sequelize';
import sequelizeConnection from '../app/core/db/connection';
import { Province } from './Province';
import { IncludeOptions } from '../app/core/types';

export class District extends Model<InferAttributes<District>, InferCreationAttributes<District>> {
  declare id: CreationOptional<number>;
  declare provinceId: ForeignKey<Province['id']>;
  declare name: string;
  declare prefix: string;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
  declare province?: NonAttribute<Province>;
  static INCLUDE_OPTIONS: IncludeOptions = {
    Province: () => ({
      model: Province,
      as: 'province',
    }),
  };
}

export type DistrictInput = CreationAttributes<District>;
export type DistrictOutput = Required<District>;

District.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
    },
    provinceId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'provinces',
        key: 'id',
      },
    },
    name: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    prefix: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    createdAt: {
      type: DataTypes.DATE,
      allowNull: true,
    },
    updatedAt: {
      type: DataTypes.DATE,
      allowNull: true,
    },
    deletedAt: {
      type: DataTypes.DATE,
      allowNull: true,
    },
  },
  {
    tableName: 'districts',
    paranoid: true,
    modelName: 'District',
    sequelize: sequelizeConnection,
  },
);
export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const DistrictAttributes = Object.keys(District.getAttributes()).filter(
  (attr) => !readonlyAttributes.includes(attr),
);
