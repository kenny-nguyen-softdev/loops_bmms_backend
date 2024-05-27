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
import { Combo } from './Combo';
import { Service } from './Service';
import { Product } from './Product';
import sequelizeConnection from '../app/core/db/connection';
import { IncludeOptions } from '../app/core/types';

export class ComboItem extends Model<InferAttributes<ComboItem>, InferCreationAttributes<ComboItem>> {
  declare id: CreationOptional<number>;
  declare comboId: ForeignKey<Combo['id']> | null;
  declare serviceId: ForeignKey<Service['id']> | null;
  declare productId: ForeignKey<Product['id']> | null;
  declare quantity: number;
  declare product?: NonAttribute<Product[]>;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
  static INCLUDE_OPTIONS: IncludeOptions = {
    Combo: () => ({
      model: Combo,
      as: 'combo',
    }),
    Product: () => ({
      model: Product,
      as: 'product',
    }),
    Service: () => ({
      model: Service,
      as: 'service',
    }),
  };
}

export type ComboItemInput = CreationAttributes<ComboItem>;
export type ComboItemOutput = Required<ComboItem>;

ComboItem.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
    },
    comboId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'combos',
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
    productId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'products',
        key: 'id',
      },
    },
    quantity: {
      type: DataTypes.INTEGER,
      defaultValue: 0,
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
    tableName: 'combo_items',
    paranoid: true,
    modelName: 'ComboItem',
    sequelize: sequelizeConnection,
  },
);

export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const ComboItemAttributes = Object.keys(ComboItem.getAttributes()).filter(
  (attr) => !readonlyAttributes.includes(attr),
);
