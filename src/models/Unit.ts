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
import { Product } from './Product';
import { UnitType } from './UnitType';

export class Unit extends Model<InferAttributes<Unit>, InferCreationAttributes<Unit>> {
  declare id: CreationOptional<number>;
  declare unitTypeId: ForeignKey<UnitType['id']> | null;
  declare name: string;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
}

export type UnitInput = CreationAttributes<Unit>;
export type UnitOutput = Required<Unit>;

Unit.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
    },
    unitTypeId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'unit_types',
        key: 'id',
      },
    },
    name: {
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
    tableName: 'units',
    paranoid: true,
    modelName: 'Unit',
    sequelize: sequelizeConnection,
    hooks: {
      beforeDestroy: async (unit: Unit) => {
        await Product.update({ weightUnitId: null }, { where: { weightUnitId: unit.id } });
        await Product.update({ sizeUnitId: null }, { where: { sizeUnitId: unit.id } });
      },
    },
  },
);
export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const UnitAttributes = Object.keys(Unit.getAttributes()).filter((attr) => !readonlyAttributes.includes(attr));
