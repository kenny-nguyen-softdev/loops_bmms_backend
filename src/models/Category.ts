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
import { Service } from './Service';
import { Product } from './Product';
import { IncludeOptions } from '../app/core/types';

export class Category extends Model<InferAttributes<Category>, InferCreationAttributes<Category>> {
  declare id: CreationOptional<number>;
  declare categoryId: ForeignKey<Category['id']> | null;
  declare name: string;
  declare isActive: boolean;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
  static INCLUDE_OPTIONS: IncludeOptions = {
    Categories: () => ({
      model: Category,
      as: '_children',
      include: [
        {
          model: Category,
          as: '_children',
        },
      ],
    }),
  };
}

export type CategoryInput = CreationAttributes<Category>;
export type CategoryOutput = Required<Category>;

Category.init(
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
    tableName: 'categories',
    paranoid: true,
    modelName: 'Category',
    sequelize: sequelizeConnection,
    hooks: {
      beforeDestroy: async (category: Category) => {
        await Category.update({ categoryId: null }, { where: { categoryId: category.id } });
        await Product.update({ categoryId: null }, { where: { categoryId: category.id } });
        await Service.update({ categoryId: null }, { where: { categoryId: category.id } });
      },
    },
  },
);

export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const CategoryAttributes = Object.keys(Category.getAttributes()).filter(
  (attr) => !readonlyAttributes.includes(attr),
);
