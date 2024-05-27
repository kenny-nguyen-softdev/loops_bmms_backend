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
import { VoucherGroupType } from './VoucherGroupType';

export class VoucherGroup extends Model<InferAttributes<VoucherGroup>, InferCreationAttributes<VoucherGroup>> {
  declare id: CreationOptional<number>;
  declare name: string;
  declare code: string;
  declare description: string;
  declare voucherGroupTypeId: ForeignKey<VoucherGroupType['id']>;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
}

export type VoucherGroupInput = CreationAttributes<VoucherGroup>;
export type VoucherGroupOutput = Required<VoucherGroup>;

VoucherGroup.init(
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
    code: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    description: {
      allowNull: true,
      type: DataTypes.TEXT,
    },
    voucherGroupTypeId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'voucher_group_types',
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
    tableName: 'voucher_groups',
    paranoid: true,
    modelName: 'VoucherGroup',
    sequelize: sequelizeConnection,
  },
);
export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const VoucherGroupAttributes = Object.keys(VoucherGroup.getAttributes()).filter(
  (attr) => !readonlyAttributes.includes(attr),
);
