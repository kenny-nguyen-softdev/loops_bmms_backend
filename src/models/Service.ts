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
import { Category } from './Category';
import { Tax } from './Tax';
import { ComboItem } from './ComboItem';

export class Service extends Model<InferAttributes<Service>, InferCreationAttributes<Service>> {
  declare id: CreationOptional<number>;
  declare sku: string;
  declare name: string;
  declare description: string;
  declare categoryId: ForeignKey<Category['id']> | null;
  declare costPrice: number;
  declare salePrice: number;
  declare wholesalePrice: number;
  declare standardUnit: string;
  declare isActive: boolean;
  declare isConsistOfSalePrice: boolean;
  declare inputTaxId: ForeignKey<Tax['id']>;
  declare outputTaxId: ForeignKey<Tax['id']>;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
  declare category?: NonAttribute<Category>;
  declare inputTax?: NonAttribute<Tax>;
  declare outputTax?: NonAttribute<Tax>;
}

export type ServiceInput = CreationAttributes<Service>;
export type ServiceOutput = Required<Service>;

Service.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
    },
    sku: {
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
    categoryId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'categories',
        key: 'id',
      },
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
    tableName: 'services',
    paranoid: true,
    modelName: 'Service',
    sequelize: sequelizeConnection,
    hooks: {
      beforeDestroy: async (service: Service) => {
        await Image.update({ serviceId: null }, { where: { serviceId: service.id } });
        await ComboItem.update({ serviceId: null }, { where: { serviceId: service.id } });
      },
    },
  },
);
export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const ServiceAttributes = Object.keys(Service.getAttributes()).filter(
  (attr) => !readonlyAttributes.includes(attr),
);
