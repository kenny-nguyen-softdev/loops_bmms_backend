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
import { Voucher } from './Voucher';
import { PaymentMethod } from './PaymentMethod';
import { PurchaseOrder } from './PurchaseOrder';
import { Status } from './Status';
import { ReturnedPurchaseOrderProductItem } from './ReturnedPurchaseOrderProductItem';
import { IncludeOptions } from '../app/core/types';
import { Product } from './Product';
import { Image } from './Image';

export class ReturnedPurchaseOrder extends Model<
  InferAttributes<ReturnedPurchaseOrder>,
  InferCreationAttributes<ReturnedPurchaseOrder>
> {
  declare id: CreationOptional<number>;
  declare voucherTypeId: ForeignKey<Voucher['id']> | null;
  declare note: string;
  declare returnedQuantityTotal: number;
  declare discount: number;
  declare totalTaxPrice: number;
  declare refundPriceTotal: number;
  declare receivedRefundAmount: number;
  declare refundDate: Date;
  declare purchaseOrderId: ForeignKey<PurchaseOrder['id']> | null;
  declare paymentMethodId: ForeignKey<PaymentMethod['id']> | null;
  declare returnedStatusId: ForeignKey<Status['id']> | null;
  declare refundStatusId: ForeignKey<Status['id']> | null;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
  declare returnedPurchaseOrderProductItems: NonAttribute<ReturnedPurchaseOrderProductItem>;
  static INCLUDE_OPTIONS: IncludeOptions = {
    PurchaseOrder: () => ({
      model: PurchaseOrder,
      as: 'purchaseOrder',
    }),
    ReturnedStatus: () => ({
      model: Status,
      as: 'returnedStatus',
    }),
    RefundStatus: () => ({
      model: Status,
      as: 'refundStatus',
    }),
    ReturnedPurchaseOrderProductItems: () => ({
      model: ReturnedPurchaseOrderProductItem,
      as: 'returnedPurchaseOrderProductItems',
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

export type ReturnedPurchaseOrderInput = CreationAttributes<ReturnedPurchaseOrder>;
export type ReturnedPurchaseOrderOutput = Required<ReturnedPurchaseOrder>;

ReturnedPurchaseOrder.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
    },
    voucherTypeId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'returnedPurchaseOrder_types',
        key: 'id',
      },
    },
    note: {
      type: DataTypes.TEXT,
      allowNull: true,
    },
    returnedQuantityTotal: {
      type: DataTypes.INTEGER,
      allowNull: true,
    },
    discount: {
      type: DataTypes.BIGINT,
      allowNull: true,
    },
    totalTaxPrice: {
      type: DataTypes.BIGINT,
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
    purchaseOrderId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'purchase_orders',
        key: 'id',
      },
    },
    paymentMethodId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'payment_methods',
        key: 'id',
      },
    },
    returnedStatusId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'statuses',
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
    tableName: 'returned_purchase_orders',
    paranoid: true,
    modelName: 'ReturnedPurchaseOrder',
    sequelize: sequelizeConnection,
  },
);
export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const ReturnedPurchaseOrderAttributes = Object.keys(ReturnedPurchaseOrder.getAttributes()).filter(
  (attr) => !readonlyAttributes.includes(attr),
);
