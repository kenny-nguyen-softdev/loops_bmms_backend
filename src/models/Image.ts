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
import { Service } from './Service';
import { Combo } from './Combo';

export class Image extends Model<InferAttributes<Image>, InferCreationAttributes<Image>> {
  declare id: CreationOptional<number>;
  declare productId?: ForeignKey<Product['id']> | null;
  declare serviceId?: ForeignKey<Service['id']> | null;
  declare comboId?: ForeignKey<Combo['id']> | null;
  declare name: string;
  declare path: string;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
}

export type ImageInput = CreationAttributes<Image>;
export type ImageOutput = Required<Image>;

Image.init(
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
    serviceId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'services',
        key: 'id',
      },
    },
    comboId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'combos',
        key: 'id',
      },
    },
    name: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    path: {
      allowNull: true,
      type: DataTypes.STRING,
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
    tableName: 'images',
    paranoid: true,
    modelName: 'Image',
    sequelize: sequelizeConnection,
  },
);

export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const ImageAttributes = Object.keys(Image.getAttributes()).filter((attr) => !readonlyAttributes.includes(attr));
