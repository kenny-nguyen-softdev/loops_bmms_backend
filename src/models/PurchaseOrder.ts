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
import { Supplier } from './Supplier';
import { User } from './User';
import { Status } from './Status';
import { VoucherType } from './VoucherType';
import { IncludeOptions } from '../app/core/types';
import { Product } from './Product';
import { PurchaseOrderProductItem } from './PurchaseOrderProductItem';
import { PurchaseOrderPayment } from './PurchaseOrderPayment';
import { Tax } from './Tax';
import { PaymentMethod } from './PaymentMethod';
import { ReturnedPurchaseOrder } from './ReturnedPurchaseOrder';
import { OrderSupplier } from './OrderSupplier';

export class PurchaseOrder extends Model<InferAttributes<PurchaseOrder>, InferCreationAttributes<PurchaseOrder>> {
  declare id: CreationOptional<number>;
  declare voucherTypeId?: ForeignKey<VoucherType['id']>;
  declare supplierId?: ForeignKey<Supplier['id']>;
  declare staffId?: ForeignKey<User['id']>;
  declare code?: string;
  declare deliveredDate?: Date;
  declare note?: string;
  declare quantityTotal?: number;
  declare totalPrice?: number;
  declare discount?: number;
  declare totalTaxPrice?: number;
  declare debtAmount: number;
  declare importDate?: Date;
  declare paymentStatusId?: ForeignKey<Status['id']>;
  declare importStatusId?: ForeignKey<Status['id']>;
  declare orderSupplierId?: ForeignKey<OrderSupplier['id']>;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
  static INCLUDE_OPTIONS: IncludeOptions = {
    VoucherType: () => ({
      model: VoucherType,
      as: 'voucherType',
    }),
    Supplier: () => ({
      model: Supplier,
      as: 'supplier',
    }),
    Staff: () => ({
      model: User,
      as: 'staff',
    }),
    PaymentStatus: () => ({
      model: Status,
      as: 'paymentStatus',
    }),
    ImportStatus: () => ({
      model: Status,
      as: 'importStatus',
    }),
    PurchaseOrderProductItems: () => ({
      model: PurchaseOrderProductItem,
      as: 'purchaseOrderProductItems',
      include: [
        {
          model: Product,
          as: 'product',
          include: [
            {
              model: Tax,
              as: 'inputTax',
            },
          ],
        },
      ],
    }),
    PurchaseOrderPayments: () => ({
      model: PurchaseOrderPayment,
      as: 'purchaseOrderPayments',
      include: [
        {
          model: PaymentMethod,
          as: 'paymentMethod',
        },
      ],
    }),
    ReturnedPurchaseOrders: () => ({
      model: ReturnedPurchaseOrder,
      as: 'returnedPurchaseOrders',
    }),
    OrderSupplier: () => ({
      model: OrderSupplier,
      as: 'orderSupplier',
    }),
  };
}

export type PurchaseOrderInput = CreationAttributes<PurchaseOrder>;
export type PurchaseOrderOutput = Required<PurchaseOrder>;

PurchaseOrder.init(
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
        model: 'voucher_types',
        key: 'id',
      },
    },
    supplierId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'suppliers',
        key: 'id',
      },
    },
    staffId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'users',
        key: 'id',
      },
    },
    code: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    deliveredDate: {
      allowNull: true,
      type: DataTypes.DATE,
    },
    note: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    quantityTotal: {
      allowNull: true,
      type: DataTypes.INTEGER,
    },
    totalPrice: {
      allowNull: true,
      type: DataTypes.BIGINT,
    },
    discount: {
      allowNull: true,
      type: DataTypes.BIGINT,
    },
    totalTaxPrice: {
      allowNull: true,
      type: DataTypes.BIGINT,
    },
    debtAmount: {
      allowNull: true,
      type: DataTypes.BIGINT,
    },
    importDate: {
      allowNull: true,
      type: DataTypes.DATE,
    },
    paymentStatusId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'statuses',
        key: 'id',
      },
    },
    importStatusId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'statuses',
        key: 'id',
      },
    },
    orderSupplierId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'order_suppliers',
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
    tableName: 'purchase_orders',
    paranoid: true,
    modelName: 'PurchaseOrder',
    sequelize: sequelizeConnection,
  },
);
export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const PurchaseOrderAttributes = Object.keys(PurchaseOrder.getAttributes()).filter(
  (attr) => !readonlyAttributes.includes(attr),
);
