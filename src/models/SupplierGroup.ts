import {
  DataTypes,
  Model,
  InferAttributes,
  InferCreationAttributes,
  CreationOptional,
  CreationAttributes,
} from 'sequelize';
import sequelizeConnection from '../app/core/db/connection';
import { Supplier } from './Supplier';

export class SupplierGroup extends Model<InferAttributes<SupplierGroup>, InferCreationAttributes<SupplierGroup>> {
  declare id: CreationOptional<number>;
  declare name: string;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
}

export type SupplierGroupInput = CreationAttributes<SupplierGroup>;
export type SupplierGroupOutput = Required<SupplierGroup>;

SupplierGroup.init(
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
    tableName: 'supplier_groups',
    paranoid: true,
    modelName: 'SupplierGroup',
    sequelize: sequelizeConnection,
    hooks: {
      beforeDestroy: async (supplierGroup: SupplierGroup) => {
        await Supplier.update({ supplierGroupId: null }, { where: { supplierGroupId: supplierGroup.id } });
      },
    },
  },
);

export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const SupplierGroupAttributes = Object.keys(SupplierGroup.getAttributes()).filter(
  (attr) => !readonlyAttributes.includes(attr),
);
