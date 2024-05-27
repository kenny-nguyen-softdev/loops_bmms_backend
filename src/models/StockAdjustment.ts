import {
  DataTypes,
  Model,
  InferAttributes,
  InferCreationAttributes,
  CreationOptional,
  CreationAttributes,
  ForeignKey,
  NonAttribute,
  BelongsToManySetAssociationsMixin,
  BelongsToCreateAssociationMixin,
} from 'sequelize';
import sequelizeConnection from '../app/core/db/connection';
import { User } from './User';
import { Status } from './Status';
import { Product } from './Product';
import { StockAdjustmentProductItem } from './StockAdjustmentProductItem';
import { IncludeOptions } from '../app/core/types/index';
import { LossReason } from './LossReason';

export class StockAdjustment extends Model<InferAttributes<StockAdjustment>, InferCreationAttributes<StockAdjustment>> {
  declare id: CreationOptional<number>;
  declare createdStaffId: ForeignKey<User['id']>;
  declare checkingStaffId: ForeignKey<User['id']>;
  declare adjustmentStaffId: ForeignKey<User['id']>;
  declare code: string;
  declare note: string;
  declare adjustmentDate: Date;
  declare adjustmentStatusId: ForeignKey<Status['id']>;
  declare adjustmentStatus?: NonAttribute<Status>;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
  declare stockAdjustmentProductItems?: NonAttribute<StockAdjustmentProductItem[]>;
  declare products?: NonAttribute<Product[]>;
  declare addProducts: BelongsToCreateAssociationMixin<Product>;
  declare setProducts: BelongsToManySetAssociationsMixin<Product, number>;
  static INCLUDE_OPTIONS: IncludeOptions = {
    StockAdjustmentProductItems: () => ({
      model: StockAdjustmentProductItem,
      as: 'stockAdjustmentProductItems',
      include: [
        {
          model: Product,
          as: 'product',
        },
        {
          model: LossReason,
          as: 'lossReason',
        },
      ],
    }),
  };
}

export type StockAdjustmentInput = CreationAttributes<StockAdjustment>;
export type StockAdjustmentOutput = Required<StockAdjustment>;

StockAdjustment.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
    },
    createdStaffId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'users',
        key: 'id',
      },
    },
    checkingStaffId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'users',
        key: 'id',
      },
    },
    adjustmentStaffId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'users',
        key: 'id',
      },
    },
    code: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    note: {
      allowNull: true,
      type: DataTypes.TEXT,
    },
    adjustmentDate: {
      allowNull: true,
      type: DataTypes.DATE,
    },
    adjustmentStatusId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'statuses',
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
    tableName: 'stock_adjustments',
    paranoid: true,
    modelName: 'StockAdjustment',
    sequelize: sequelizeConnection,
  },
);
export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const StockAdjustmentAttributes = Object.keys(StockAdjustment.getAttributes()).filter(
  (attr) => !readonlyAttributes.includes(attr),
);
