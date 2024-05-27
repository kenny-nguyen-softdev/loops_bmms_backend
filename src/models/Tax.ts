import {
  DataTypes,
  Model,
  InferAttributes,
  InferCreationAttributes,
  CreationOptional,
  CreationAttributes,
  ForeignKey,
} from 'sequelize';
import sequelizeConnection from '../app/core/db/connection';
import { TaxType } from './TaxType';

export class Tax extends Model<InferAttributes<Tax>, InferCreationAttributes<Tax>> {
  declare id: CreationOptional<number>;
  declare taxTypeId: ForeignKey<TaxType['id']> | null;
  declare name: string;
  declare code: string;
  declare percentageNumber: number;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
}

export type TaxInput = CreationAttributes<Tax>;
export type TaxOutput = Required<Tax>;

Tax.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
    },
    taxTypeId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'tax_types',
        key: 'id',
      },
    },
    name: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    code: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    percentageNumber: {
      allowNull: false,
      type: DataTypes.INTEGER,
      defaultValue: 0,
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
    tableName: 'taxes',
    paranoid: true,
    modelName: 'Tax',
    sequelize: sequelizeConnection,
  },
);
export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const TaxAttributes = Object.keys(Tax.getAttributes()).filter((attr) => !readonlyAttributes.includes(attr));
