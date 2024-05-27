import {
  Model,
  InferAttributes,
  InferCreationAttributes,
  CreationOptional,
  ForeignKey,
  CreationAttributes,
  DataTypes,
} from 'sequelize';
import { Status } from './Status';
import { Supplier } from './Supplier';
import { User } from './User';
import sequelizeConnection from '../app/core/db/connection';
import { IncludeOptions } from '../app/core/types';
import { Product } from './Product';
import { Tax } from './Tax';
import { OrderSupplierProductItem } from './OrderSupplierProductItem';
import { PurchaseOrder } from './PurchaseOrder';
export class OrderSupplier extends Model<InferAttributes<OrderSupplier>, InferCreationAttributes<OrderSupplier>> {
  declare id: CreationOptional<number>;
  declare supplierId?: ForeignKey<Supplier['id']>;
  declare staffId?: ForeignKey<User['id']>;
  declare importDate?: Date;
  declare deliveredDate?: Date;
  declare code?: string;
  declare note?: string;
  declare quantityTotal?: number;
  declare totalPrice?: number;
  declare discount?: number;
  declare totalTaxPrice?: number;
  declare importStatusId?: ForeignKey<Status['id']>;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
  static INCLUDE_OPTIONS: IncludeOptions = {
    Supplier: () => ({
      model: Supplier,
      as: 'supplier',
    }),
    Staff: () => ({
      model: User,
      as: 'staff',
    }),
    ImportStatus: () => ({
      model: Status,
      as: 'importStatus',
    }),
    OrderSupplierProductItems: () => ({
      model: OrderSupplierProductItem,
      as: 'orderSupplierProductItems',
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
    PurchaseOrders: () => ({
      model: PurchaseOrder,
      as: 'purchaseOrders',
      include: [
        {
          model: Status,
          as: 'importStatus',
        },
        {
          model: Status,
          as: 'paymentStatus',
        },
        {
          model: User,
          as: 'staff',
        },
      ],
    }),
  };
}
export type OrderSupplierInput = CreationAttributes<OrderSupplier>;
export type OrderSupplierOutput = Required<OrderSupplier>;

OrderSupplier.init(
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
    importDate: {
      allowNull: true,
      type: DataTypes.DATE,
    },
    deliveredDate: {
      allowNull: true,
      type: DataTypes.DATE,
    },
    code: {
      allowNull: true,
      type: DataTypes.STRING,
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
    importStatusId: {
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
    tableName: 'order_suppliers',
    paranoid: true,
    modelName: 'OrderSupplier',
    sequelize: sequelizeConnection,
  },
);
export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const OrderSupplierAttributes = Object.keys(OrderSupplier.getAttributes()).filter(
  (attr) => !readonlyAttributes.includes(attr),
);
