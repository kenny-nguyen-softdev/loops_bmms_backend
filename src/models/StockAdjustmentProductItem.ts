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
import { StockAdjustment } from './StockAdjustment';
import { Product } from './Product';
import { LossReason } from './LossReason';

export class StockAdjustmentProductItem extends Model<
  InferAttributes<StockAdjustmentProductItem>,
  InferCreationAttributes<StockAdjustmentProductItem>
> {
  declare id: CreationOptional<number>;
  declare stockAdjustmentId: ForeignKey<StockAdjustment['id']>;
  declare productId: ForeignKey<Product['id']>;
  declare lossReasonId: ForeignKey<LossReason['id']>;
  declare actualQuantity: number;
  declare quantityDifference: number;
  declare note: string;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
}

export type StockAdjustmentProductItemInput = CreationAttributes<StockAdjustmentProductItem>;
export type StockAdjustmentProductItemOutput = Required<StockAdjustmentProductItem>;

StockAdjustmentProductItem.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
    },
    stockAdjustmentId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'stock_adjustments',
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
    lossReasonId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'loss_reasons',
        key: 'id',
      },
    },
    actualQuantity: {
      allowNull: true,
      type: DataTypes.INTEGER,
    },
    quantityDifference: {
      allowNull: true,
      type: DataTypes.INTEGER,
    },
    note: {
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
    tableName: 'stock_adjustment_product_items',
    paranoid: true,
    modelName: 'StockAdjustmentProductItem',
    sequelize: sequelizeConnection,
  },
);
export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const StockAdjustmentProductItemAttributes = Object.keys(StockAdjustmentProductItem.getAttributes()).filter(
  (attr) => !readonlyAttributes.includes(attr),
);
