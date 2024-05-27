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
import { PurchaseOrder } from './PurchaseOrder';
import { PaymentMethod } from './PaymentMethod';
import { IncludeOptions } from '../app/core/types';

export class PurchaseOrderPayment extends Model<
  InferAttributes<PurchaseOrderPayment>,
  InferCreationAttributes<PurchaseOrderPayment>
> {
  declare id: CreationOptional<number>;
  declare purchaseOrderId: ForeignKey<PurchaseOrder['id']>;
  declare amount: number;
  declare paidDate: Date;
  declare paymentMethodId: ForeignKey<PaymentMethod['id']>;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
  static INCLUDE_OPTIONS: IncludeOptions = {
    PurchaseOrder: () => ({
      model: PurchaseOrder,
      as: 'purchaseOrder',
    }),
    PaymentMethod: () => ({
      model: PaymentMethod,
      as: 'paymentMethod',
    }),
  };
}

export type PurchaseOrderPaymentInput = CreationAttributes<PurchaseOrderPayment>;
export type PurchaseOrderPaymentOutput = Required<PurchaseOrderPayment>;

PurchaseOrderPayment.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
    },
    purchaseOrderId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'purchase_orders',
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
    tableName: 'purchase_order_payments',
    paranoid: true,
    modelName: 'PurchaseOrderPayment',
    sequelize: sequelizeConnection,
  },
);
export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const PurchaseOrderPaymentAttributes = Object.keys(PurchaseOrderPayment.getAttributes()).filter(
  (attr) => !readonlyAttributes.includes(attr),
);
