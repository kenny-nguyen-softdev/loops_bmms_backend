import {
  DataTypes,
  Model,
  InferAttributes,
  InferCreationAttributes,
  CreationOptional,
  CreationAttributes,
} from 'sequelize';
import sequelizeConnection from '../app/core/db/connection';

export class VoucherGroupType extends Model<
  InferAttributes<VoucherGroupType>,
  InferCreationAttributes<VoucherGroupType>
> {
  declare id: CreationOptional<number>;
  declare name: string;
  declare key: string;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
}

export type VoucherGroupTypeInput = CreationAttributes<VoucherGroupType>;
export type VoucherGroupTypeOutput = Required<VoucherGroupType>;

VoucherGroupType.init(
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
    key: {
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
    tableName: 'voucher_group_types',
    paranoid: true,
    modelName: 'VoucherGroupType',
    sequelize: sequelizeConnection,
  },
);
export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const VoucherGroupTypeAttributes = Object.keys(VoucherGroupType.getAttributes()).filter(
  (attr) => !readonlyAttributes.includes(attr),
);
