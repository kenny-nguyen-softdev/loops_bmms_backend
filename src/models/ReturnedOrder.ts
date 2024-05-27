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
import { Order } from './Order';
import { Status } from './Status';
import { Customer } from './Customer';
import { PaymentMethod } from './PaymentMethod';
import { IncludeOptions } from '../app/core/types';
import { Product } from './Product';
import { ReturnedOrderItem } from './ReturnedOrderItem';
import { Image } from './Image';

export class ReturnedOrder extends Model<
  InferAttributes<ReturnedOrder>,
  InferCreationAttributes<ReturnedOrder>
> {
  declare id: CreationOptional<number>;
  declare orderId: ForeignKey<Order['id']> | null;
  declare returnedOrderStatusId: ForeignKey<Status['id']> | null;
  declare customerId: ForeignKey<Customer['id']> | null;
  declare code: string;
  declare note: string;
  declare returnedQuantityTotal: number;
  declare refundPriceTotal: number;
  declare receivedRefundAmount: number;
  declare refundDate: Date;
  declare paymentMethodId: ForeignKey<PaymentMethod['id']> | null;
  declare refundStatusId: ForeignKey<Status['id']> | null;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
  declare returnedOrderItems: NonAttribute<ReturnedOrderItem>;
  static INCLUDE_OPTIONS: IncludeOptions = {
    Order: () => ({
      model: Order,
      as: 'order',
    }),
    ReturnedStatus: () => ({
      model: Status,
      as: 'returnedOrderStatus',
    }),
    RefundStatus: () => ({
      model: Status,
      as: 'refundStatus',
    }),
    ReturnedOrderItems: () => ({
      model: ReturnedOrderItem,
      as: 'returnedOrderItems',
      include: [
        {
          model: Product,
          as: 'product',
          include: [{ model: Image, as: 'images' }],
        },
      ],
    }),
  };
}

export type ReturnedOrderInput = CreationAttributes<ReturnedOrder>;
export type ReturnedOrderOutput = Required<ReturnedOrder>;

ReturnedOrder.init(
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
    returnedOrderStatusId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'statuses',
        key: 'id',
      },
    },
    customerId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'customers',
        key: 'id',
      },
    },
    code: {
      type: DataTypes.STRING,
      allowNull: true,
    },
    note: {
      type: DataTypes.TEXT,
      allowNull: true,
    },
    returnedQuantityTotal: {
      type: DataTypes.INTEGER,
      allowNull: true,
    },
    refundPriceTotal: {
      type: DataTypes.BIGINT,
      allowNull: true,
    },
    receivedRefundAmount: {
      type: DataTypes.BIGINT,
      allowNull: true,
    },
    refundDate: {
      type: DataTypes.DATE,
      allowNull: true,
    },
    paymentMethodId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'payment_methods',
        key: 'id',
      },
    },
    refundStatusId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'statuses',
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
    tableName: 'returned_orders',
    paranoid: true,
    modelName: 'ReturnedOrder',
    sequelize: sequelizeConnection,
  }
);
export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const ReturnedOrderAttributes = Object.keys(
  ReturnedOrder.getAttributes()
).filter((attr) => !readonlyAttributes.includes(attr));
