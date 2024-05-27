import {
  DataTypes,
  Model,
  InferAttributes,
  InferCreationAttributes,
  CreationOptional,
  CreationAttributes,
} from 'sequelize';
import sequelizeConnection from '../app/core/db/connection';

export class VoucherType extends Model<InferAttributes<VoucherType>, InferCreationAttributes<VoucherType>> {
  declare id: CreationOptional<number>;
  declare name: string;
  declare key: string;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
}

export type VoucherTypeInput = CreationAttributes<VoucherType>;
export type VoucherTypeOutput = Required<VoucherType>;

VoucherType.init(
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
    tableName: 'voucher_types',
    paranoid: true,
    modelName: 'VoucherType',
    sequelize: sequelizeConnection,
  },
);
export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const VoucherTypeAttributes = Object.keys(VoucherType.getAttributes()).filter(
  (attr) => !readonlyAttributes.includes(attr),
);
