import {
  DataTypes,
  Model,
  InferAttributes,
  InferCreationAttributes,
  CreationOptional,
  CreationAttributes,
} from 'sequelize';
import sequelizeConnection from '../app/core/db/connection';
import { Customer } from './Customer';

export class CustomerGroup extends Model<InferAttributes<CustomerGroup>, InferCreationAttributes<CustomerGroup>> {
  declare id: CreationOptional<number>;
  declare name: string;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
}

export type CustomerGroupInput = CreationAttributes<CustomerGroup>;
export type CustomerGroupOutput = Required<CustomerGroup>;

CustomerGroup.init(
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
    tableName: 'customer_groups',
    paranoid: true,
    modelName: 'CustomerGroup',
    sequelize: sequelizeConnection,
    hooks: {
      beforeDestroy: async (customerGroup: CustomerGroup) => {
        await Customer.update({ customerGroupId: null }, { where: { customerGroupId: customerGroup.id } });
      },
    },
  },
);

export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const CustomerGroupAttributes = Object.keys(CustomerGroup.getAttributes()).filter(
  (attr) => !readonlyAttributes.includes(attr),
);
