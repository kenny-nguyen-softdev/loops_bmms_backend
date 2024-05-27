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
import { Order } from './Order';
import { Product } from './Product';
import { Combo } from './Combo';
import { Service } from './Service';
import { ProductUnit } from './ProductUnit';

export class OrderItem extends Model<InferAttributes<OrderItem>, InferCreationAttributes<OrderItem>> {
  declare id: CreationOptional<number>;
  declare orderId: ForeignKey<Order['id']> | null;
  declare productId: ForeignKey<Product['id']> | null;
  declare comboId: ForeignKey<Combo['id']> | null;
  declare serviceId: ForeignKey<Service['id']> | null;
  declare quantity: number;
  declare discount: number;
  declare price: number;
  declare totalPrice: number;
  declare description: string;
  declare productUnitId: ForeignKey<ProductUnit['id']> | null;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
}

export type OrderItemInput = CreationAttributes<OrderItem>;
export type OrderItemOutput = Required<OrderItem>;

OrderItem.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
    },
    orderId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'orders',
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
    quantity: {
      allowNull: true,
      type: DataTypes.INTEGER,
    },
    discount: {
      allowNull: true,
      type: DataTypes.BIGINT,
    },
    price: {
      allowNull: true,
      type: DataTypes.BIGINT,
    },
    totalPrice: {
      allowNull: true,
      type: DataTypes.BIGINT,
    },
    description: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    productUnitId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'product_units',
        key: 'id',
      },
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
    tableName: 'order_items',
    paranoid: true,
    modelName: 'OrderItem',
    sequelize: sequelizeConnection,
  },
);
export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const OrderItemAttributes = Object.keys(OrderItem.getAttributes()).filter(
  (attr) => !readonlyAttributes.includes(attr),
);
