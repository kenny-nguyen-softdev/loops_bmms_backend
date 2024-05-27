import {
  CreationAttributes,
  CreationOptional,
  DataTypes,
  ForeignKey,
  InferAttributes,
  InferCreationAttributes,
  Model,
  NonAttribute,
} from 'sequelize';
import { Unit } from './Unit';
import { Category } from './Category';
import { Tax } from './Tax';
import sequelizeConnection from '../app/core/db/connection';
import { Image } from './Image';
import { ComboItem } from './ComboItem';
import { Brand } from './Brand';
import { IncludeOptions } from '../app/core/types';

export class Combo extends Model<InferAttributes<Combo>, InferCreationAttributes<Combo>> {
  declare id: CreationOptional<number>;
  declare categoryId: ForeignKey<Category['id']> | null;
  declare brandId: ForeignKey<Brand['id']> | null;
  declare sku: string;
  declare barcode: string;
  declare name: string;
  declare description: string;
  declare costPrice: number;
  declare salePrice: number;
  declare wholesalePrice: number;
  declare standardUnit: string;
  declare weight: number;
  declare weightUnitId: ForeignKey<Unit['id']> | null;
  declare isActive: boolean;
  declare isConsistOfSalePrice: boolean;
  declare inputTaxId: ForeignKey<Tax['id']>;
  declare outputTaxId: ForeignKey<Tax['id']>;
  declare comboItems?: NonAttribute<ComboItem[]>;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;

  static INCLUDE_OPTIONS: IncludeOptions = {
    Category: () => ({
      model: Category,
      as: 'category',
    }),
    Brand: () => ({
      model: Brand,
      as: 'brand',
    }),
    WeightUnit: () => ({
      model: Unit,
      as: 'weightUnit',
    }),
    InputTax: () => ({
      model: Tax,
      as: 'inputTax',
    }),
    OutputTax: () => ({
      model: Tax,
      as: 'outputTax',
    }),
    Images: () => ({
      model: Image,
      as: 'images',
    }),
  };
}

export type ComboInput = CreationAttributes<Combo>;
export type ComboOutput = Required<Combo>;

Combo.init(
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
    standardUnit: {
      allowNull: true,
      type: DataTypes.STRING,
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
    tableName: 'combos',
    paranoid: true,
    modelName: 'Combo',
    sequelize: sequelizeConnection,
    hooks: {
      beforeDestroy: async (combo: Combo) => {
        await Image.update({ comboId: null }, { where: { comboId: combo.id } });
        await ComboItem.update({ comboId: null }, { where: { comboId: combo.id } });
      },
    },
  },
);
export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const ComboAttributes = Object.keys(Combo.getAttributes()).filter((attr) => !readonlyAttributes.includes(attr));
