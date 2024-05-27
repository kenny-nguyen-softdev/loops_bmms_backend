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
import { Product } from './Product';

export class PurchaseOrderProductItem extends Model<
  InferAttributes<PurchaseOrderProductItem>,
  InferCreationAttributes<PurchaseOrderProductItem>
> {
  declare id: CreationOptional<number>;
  declare purchaseOrderId: ForeignKey<PurchaseOrder['id']>;
  declare productId: ForeignKey<Product['id']>;
  declare quantity: number;
  declare price: number;
  declare discount: number;
  declare totalPrice: number;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
}

export type PurchaseOrderProductItemInput = CreationAttributes<PurchaseOrderProductItem>;
export type PurchaseOrderProductItemOutput = Required<PurchaseOrderProductItem>;

PurchaseOrderProductItem.init(
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
    productId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'products',
        key: 'id',
      },
    },
    quantity: {
      allowNull: true,
      type: DataTypes.INTEGER,
    },
    price: {
      allowNull: true,
      type: DataTypes.BIGINT,
    },
    discount: {
      allowNull: true,
      type: DataTypes.BIGINT,
    },
    totalPrice: {
      allowNull: true,
      type: DataTypes.BIGINT,
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
    tableName: 'purchase_order_product_items',
    paranoid: true,
    modelName: 'PurchaseOrderProductItem',
    sequelize: sequelizeConnection,
  },
);
export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const PurchaseOrderProductItemAttributes = Object.keys(PurchaseOrderProductItem.getAttributes()).filter(
  (attr) => !readonlyAttributes.includes(attr),
);
