import {
  Model,
  InferAttributes,
  InferCreationAttributes,
  CreationOptional,
  ForeignKey,
  CreationAttributes,
  DataTypes,
} from 'sequelize';
import { Product } from './Product';
import sequelizeConnection from '../app/core/db/connection';
import { OrderSupplier } from './OrderSupplier';

export class OrderSupplierProductItem extends Model<
  InferAttributes<OrderSupplierProductItem>,
  InferCreationAttributes<OrderSupplierProductItem>
> {
  declare id: CreationOptional<number>;
  declare orderSupplierId: ForeignKey<OrderSupplier['id']>;
  declare productId: ForeignKey<Product['id']>;
  declare quantity: number;
  declare price: number;
  declare discount: number;
  declare totalPrice: number;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
}
export type OrderSupplierProductItemInput = CreationAttributes<OrderSupplierProductItem>;
export type OrderSupplierProductItemOutput = Required<OrderSupplierProductItem>;

OrderSupplierProductItem.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
    },
    orderSupplierId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'order_suppliers',
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
    tableName: 'order_supplier_product_items',
    paranoid: true,
    modelName: 'OrderSupplierProductItem',
    sequelize: sequelizeConnection,
  },
);
export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const OrderSupplierProductItemAttributes = Object.keys(OrderSupplierProductItem.getAttributes()).filter(
  (attr) => !readonlyAttributes.includes(attr),
);
