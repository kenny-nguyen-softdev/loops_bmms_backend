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
import { Image } from './Image';
import { Tax } from './Tax';
import { Unit } from './Unit';
import { Brand } from './Brand';
import { Category } from './Category';
import { ComboItem } from './ComboItem';

export class Product extends Model<InferAttributes<Product>, InferCreationAttributes<Product>> {
  declare id: CreationOptional<number>;
  declare categoryId?: ForeignKey<Category['id']> | null;
  declare brandId?: ForeignKey<Brand['id']> | null;
  declare sku?: string;
  declare barcode?: string;
  declare name?: string;
  declare description?: string;
  declare costPrice?: number;
  declare salePrice?: number;
  declare wholesalePrice?: number;
  declare inventoryQuantity: number;
  declare standardUnit?: string;
  declare isInventory?: boolean;
  declare weight?: number;
  declare weightUnitId?: ForeignKey<Unit['id']> | null;
  declare width?: number;
  declare length?: number;
  declare sizeUnitId?: ForeignKey<Unit['id']> | null;
  declare isActive?: boolean;
  declare isConsistOfSalePrice?: boolean;
  declare inputTaxId?: ForeignKey<Tax['id']>;
  declare outputTaxId?: ForeignKey<Tax['id']>;

  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;

  declare category?: NonAttribute<Category>;
  declare brand?: NonAttribute<Brand>;
  declare weightUnit?: NonAttribute<Unit>;
  declare sizeUnit?: NonAttribute<Unit>;
  declare inputTax?: NonAttribute<Tax>;
  declare outputTax?: NonAttribute<Tax>;
}

export type ProductInput = CreationAttributes<Product>;
export type ProductOutput = Required<Product>;

Product.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
    },
    categoryId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'categories',
        key: 'id',
      },
    },
    brandId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'brands',
        key: 'id',
      },
    },
    sku: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    barcode: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    name: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    description: {
      allowNull: true,
      type: DataTypes.TEXT,
    },
    costPrice: {
      allowNull: true,
      type: DataTypes.BIGINT,
    },
    salePrice: {
      allowNull: true,
      type: DataTypes.BIGINT,
    },
    wholesalePrice: {
      allowNull: true,
      type: DataTypes.BIGINT,
    },
    inventoryQuantity: {
      allowNull: true,
      type: DataTypes.INTEGER,
    },
    standardUnit: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    isInventory: {
      defaultValue: false,
      type: DataTypes.BOOLEAN,
    },
    weight: {
      allowNull: true,
      type: DataTypes.DECIMAL(10, 2),
    },
    weightUnitId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'units',
        key: 'id',
      },
    },
    width: {
      allowNull: true,
      type: DataTypes.DECIMAL(10, 2),
    },
    length: {
      allowNull: true,
      type: DataTypes.DECIMAL(10, 2),
    },
    sizeUnitId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'units',
        key: 'id',
      },
    },
    isActive: {
      type: DataTypes.BOOLEAN,
      defaultValue: true,
    },
    isConsistOfSalePrice: {
      allowNull: true,
      type: DataTypes.BOOLEAN,
      defaultValue: false,
    },
    inputTaxId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'taxes',
        key: 'id',
      },
    },
    outputTaxId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'taxes',
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
    tableName: 'products',
    paranoid: true,
    modelName: 'Product',
    sequelize: sequelizeConnection,
    hooks: {
      beforeDestroy: async (product: Product) => {
        await Image.update({ productId: null }, { where: { productId: product.id } });
        await ComboItem.update({ productId: null }, { where: { productId: product.id } });
      },
    },
  },
);

export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const ProductAttributes = Object.keys(Product.getAttributes()).filter(
  (attr) => !readonlyAttributes.includes(attr),
);
