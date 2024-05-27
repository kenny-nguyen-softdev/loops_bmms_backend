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
import { District } from './District';
import { Supplier } from './Supplier';
import { IncludeOptions } from '../app/core/types';

export class Ward extends Model<InferAttributes<Ward>, InferCreationAttributes<Ward>> {
  declare id: CreationOptional<number>;
  declare districtId: ForeignKey<District['id']>;
  declare name: string;
  declare prefix: string;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
  declare district?: NonAttribute<District>;
  static INCLUDE_OPTIONS: IncludeOptions = {
    District: () => ({
      model: District,
      as: 'district',
    }),
  };
}

export type WardInput = CreationAttributes<Ward>;
export type WardOutput = Required<Ward>;

Ward.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
    },
    districtId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'districts',
        key: 'id',
      },
    },
    name: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    prefix: {
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
    tableName: 'wards',
    paranoid: true,
    modelName: 'Ward',
    sequelize: sequelizeConnection,
    hooks: {
      beforeDestroy: async (ward: Ward) => {
        await Supplier.update({ wardId: null }, { where: { wardId: ward.id } });
      },
    },
  },
);
export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const WardAttributes = Object.keys(Ward.getAttributes()).filter((attr) => !readonlyAttributes.includes(attr));
