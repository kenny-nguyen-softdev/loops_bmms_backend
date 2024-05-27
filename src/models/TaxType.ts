import {
  DataTypes,
  Model,
  InferAttributes,
  InferCreationAttributes,
  CreationOptional,
  CreationAttributes,
} from 'sequelize';
import sequelizeConnection from '../app/core/db/connection';
import { Tax } from './Tax';

export class TaxType extends Model<InferAttributes<TaxType>, InferCreationAttributes<TaxType>> {
  declare id: CreationOptional<number>;
  declare name: string;
  declare key: string;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
}

export type TaxTypeInput = CreationAttributes<TaxType>;
export type TaxTypeOutput = Required<TaxType>;

TaxType.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
    },
    name: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    key: {
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
    tableName: 'tax_types',
    paranoid: true,
    modelName: 'TaxType',
    sequelize: sequelizeConnection,
    hooks: {
      beforeDestroy: async (taxType: TaxType) => {
        await Tax.update({ taxTypeId: null }, { where: { taxTypeId: taxType.id } });
      },
    },
  },
);
export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const TaxTypeAttributes = Object.keys(TaxType.getAttributes()).filter(
  (attr) => !readonlyAttributes.includes(attr),
);
