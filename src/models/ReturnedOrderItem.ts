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
import { ReturnedOrder } from './ReturnedOrder';
import { Product } from './Product';
import { Combo } from './Combo';
import { Service } from './Service';
import { IncludeOptions } from '../app/core/types';

export class ReturnedOrderItem extends Model<
  InferAttributes<ReturnedOrderItem>,
  InferCreationAttributes<ReturnedOrderItem>
> {
  declare id: CreationOptional<number>;
  declare returnedOrderId: ForeignKey<ReturnedOrder['id']> | null;
  declare productId: ForeignKey<Product['id']>;
  declare comboId: ForeignKey<Combo['id']>;
  declare serviceId: ForeignKey<Service['id']>;
  declare discount: number;
  declare quantity: number;
  declare price: number;
  declare totalPrice: number;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
}

export type ReturnedOrderItemInput = CreationAttributes<ReturnedOrderItem>;
export type ReturnedOrderItemOutput = Required<ReturnedOrderItem>;

ReturnedOrderItem.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
    },
    returnedOrderId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'returned_orders',
        key: 'id',
      },
    },
    productId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'products',
        key: 'id',
      },
    },
    comboId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'combos',
        key: 'id',
      },
    },
    serviceId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'services',
        key: 'id',
      },
    },
    discount: {
      type: DataTypes.INTEGER,
      allowNull: true,
    },
    price: {
      type: DataTypes.BIGINT,
      allowNull: true,
    },
    quantity: {
      type: DataTypes.BIGINT,
      allowNull: true,
    },
    totalPrice: {
      type: DataTypes.BIGINT,
      allowNull: true,
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
    tableName: 'returned_order_items',
    paranoid: true,
    modelName: 'ReturnedOrderItem',
    sequelize: sequelizeConnection,
  }
);
export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const ReturnedOrderItemAttributes = Object.keys(
  ReturnedOrderItem.getAttributes()
).filter((attr) => !readonlyAttributes.includes(attr));
