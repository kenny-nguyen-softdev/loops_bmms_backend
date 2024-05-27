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
import { PurchaseOrder } from './PurchaseOrder';
import { Voucher } from './Voucher';
import { DebtType } from './DebtType';
import { ReturnedPurchaseOrder } from './ReturnedPurchaseOrder';
import { Customer } from './Customer';
import { Order } from './Order';

export class Debt extends Model<InferAttributes<Debt>, InferCreationAttributes<Debt>> {
  declare id: CreationOptional<number>;
  declare supplierId: ForeignKey<Supplier['id']> | null;
  declare staffId: ForeignKey<User['id']> | null;
  declare purchaseOrderId: ForeignKey<PurchaseOrder['id']> | null;
  declare voucherId: ForeignKey<Voucher['id']> | null;
  declare recordedDate: Date;
  declare debtAmount: number;
  declare debtTypeId: ForeignKey<DebtType['id']>;
  declare returnedPurchaseOrderId: ForeignKey<ReturnedPurchaseOrder['id']> | null;
  declare customerId: ForeignKey<Customer['id']> | null;
  declare orderId: ForeignKey<Order['id']> | null;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
}

export type DebtInput = CreationAttributes<Debt>;
export type DebtOutput = Required<Debt>;

Debt.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
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
    purchaseOrderId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'purchase_orders',
        key: 'id',
      },
    },
    voucherId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'vouchers',
        key: 'id',
      },
    },
    recordedDate: {
      allowNull: true,
      type: DataTypes.DATE,
    },
    debtAmount: {
      allowNull: true,
      type: DataTypes.BIGINT,
    },
    debtTypeId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'debt_types',
        key: 'id',
      },
    },
    returnedPurchaseOrderId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'returned_purchase_orders',
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
    orderId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'orders',
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
    tableName: 'debts',
    paranoid: true,
    modelName: 'Debt',
    sequelize: sequelizeConnection,
  },
);

export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const DebtAttributes = Object.keys(Debt.getAttributes()).filter((attr) => !readonlyAttributes.includes(attr));
