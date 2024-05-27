import {
  DataTypes,
  Model,
  InferAttributes,
  InferCreationAttributes,
  CreationOptional,
  CreationAttributes,
} from 'sequelize';
import sequelizeConnection from '../app/core/db/connection';
import { Product } from './Product';

export class Brand extends Model<InferAttributes<Brand>, InferCreationAttributes<Brand>> {
  declare id: CreationOptional<number>;
  declare name: string;
  declare isActive: boolean;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
}

export type BrandInput = CreationAttributes<Brand>;
export type BrandOutput = Required<Brand>;

Brand.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
    },
    name: {
      allowNull: true,
      type: DataTypes.STRING,
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
    tableName: 'brands',
    paranoid: true,
    modelName: 'Brand',
    sequelize: sequelizeConnection,
    hooks: {
      beforeDestroy: async (brand: Brand) => {
        await Product.update({ brandId: null }, { where: { brandId: brand.id } });
      },
    },
  },
);

export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const BrandAttributes = Object.keys(Brand.getAttributes()).filter((attr) => !readonlyAttributes.includes(attr));
