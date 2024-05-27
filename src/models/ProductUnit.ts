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
import { Product } from './Product';
  
  export class ProductUnit extends Model<InferAttributes<ProductUnit>, InferCreationAttributes<ProductUnit>> {
    declare id: CreationOptional<number>;
    declare productId: ForeignKey<Product['id']>;
    declare name: string;
    declare quantity: number;
    declare salePrice: number;
    declare isDefaultPrice: boolean;
    declare isActive: boolean;
    declare createdAt: CreationOptional<Date>;
    declare updatedAt: CreationOptional<Date>;
    declare deletedAt: CreationOptional<Date>;
  }
  
  export type ProductUnitInput = CreationAttributes<ProductUnit>;
  export type ProductUnitOutput = Required<ProductUnit>;
  
  ProductUnit.init(
    {
      id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
        allowNull: false,
      },
      productId: {
        allowNull: true,
        type: DataTypes.INTEGER,
        references: {
          model: 'products',
          key: 'id',
        },
      },
      name: {
        allowNull: true,
        type: DataTypes.STRING,
      },
      quantity: {
        allowNull: true,
        type: DataTypes.FLOAT,
      },
      salePrice: {
        allowNull: true,
        type: DataTypes.FLOAT,
      },
      isDefaultPrice: {
        allowNull: true,
        type: DataTypes.BOOLEAN,
      },
      isActive: {
        type: DataTypes.BOOLEAN,
        defaultValue: true,
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
      tableName: 'product_units',
      paranoid: true,
      modelName: 'ProductUnit',
      sequelize: sequelizeConnection,
    },
  );
  export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];
  
  export const ProductUnitAttributes = Object.keys(ProductUnit.getAttributes()).filter(
    (attr) => !readonlyAttributes.includes(attr),
  );
  