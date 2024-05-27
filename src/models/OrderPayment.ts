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
import { PaymentMethod } from './PaymentMethod';
import { IncludeOptions } from '../app/core/types';

export class OrderPayment extends Model<InferAttributes<OrderPayment>, InferCreationAttributes<OrderPayment>> {
  declare id: CreationOptional<number>;
  declare orderId: ForeignKey<Order['id']>;
  declare amount: number;
  declare paidDate: Date;
  declare paymentMethodId: ForeignKey<PaymentMethod['id']>;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
  static INCLUDE_OPTIONS: IncludeOptions = {
    Order: () => ({
      model: Order,
      as: 'order',
    }),
    PaymentMethod: () => ({
      model: PaymentMethod,
      as: 'paymentMethod',
    }),
  };
}

export type OrderPaymentInput = CreationAttributes<OrderPayment>;
export type OrderPaymentOutput = Required<OrderPayment>;

OrderPayment.init(
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
    amount: {
      allowNull: true,
      type: DataTypes.BIGINT,
    },
    paidDate: {
      allowNull: true,
      type: DataTypes.DATE,
    },
    paymentMethodId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'payment_methods',
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
    tableName: 'order_payments',
    paranoid: true,
    modelName: 'OrderPayment',
    sequelize: sequelizeConnection,
  },
);
export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const OrderPaymentAttributes = Object.keys(OrderPayment.getAttributes()).filter(
  (attr) => !readonlyAttributes.includes(attr),
);
