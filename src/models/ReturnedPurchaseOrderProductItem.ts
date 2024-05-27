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
import { ReturnedPurchaseOrder } from './ReturnedPurchaseOrder';
import { Product } from './Product';

export class ReturnedPurchaseOrderProductItem extends Model<
  InferAttributes<ReturnedPurchaseOrderProductItem>,
  InferCreationAttributes<ReturnedPurchaseOrderProductItem>
> {
  declare id: CreationOptional<number>;
  declare returnedPurchaseOrderId: ForeignKey<ReturnedPurchaseOrder['id']> | null;
  declare productId: ForeignKey<Product['id']>;
  declare returnedQuantity: number;
  declare price: number;
  declare discount: number;
  declare totalPrice: number;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
}

export type ReturnedPurchaseOrderProductItemInput = CreationAttributes<ReturnedPurchaseOrderProductItem>;
export type ReturnedPurchaseOrderProductItemOutput = Required<ReturnedPurchaseOrderProductItem>;

ReturnedPurchaseOrderProductItem.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
    },
    returnedPurchaseOrderId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'returned_purchase_orders',
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
    returnedQuantity: {
      type: DataTypes.INTEGER,
      allowNull: true,
    },
    price: {
      type: DataTypes.BIGINT,
      allowNull: true,
    },
    discount: {
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
    tableName: 'returned_purchase_order_product_items',
    paranoid: true,
    modelName: 'ReturnedPurchaseOrderProductItem',
    sequelize: sequelizeConnection,
  },
);
export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const ReturnedPurchaseOrderProductItemAttributes = Object.keys(
  ReturnedPurchaseOrderProductItem.getAttributes(),
).filter((attr) => !readonlyAttributes.includes(attr));
