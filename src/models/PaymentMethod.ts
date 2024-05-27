import {
  DataTypes,
  Model,
  InferAttributes,
  InferCreationAttributes,
  CreationOptional,
  CreationAttributes,
} from 'sequelize';
import sequelizeConnection from '../app/core/db/connection';

export class PaymentMethod extends Model<InferAttributes<PaymentMethod>, InferCreationAttributes<PaymentMethod>> {
  declare id: CreationOptional<number>;
  declare name: string;
  declare key: string;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
}

export type PaymentMethodInput = CreationAttributes<PaymentMethod>;
export type PaymentMethodOutput = Required<PaymentMethod>;

PaymentMethod.init(
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
    tableName: 'payment_methods',
    paranoid: true,
    modelName: 'PaymentMethod',
    sequelize: sequelizeConnection,
  },
);

export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const PaymentMethodAttributes = Object.keys(PaymentMethod.getAttributes()).filter(
  (attr) => !readonlyAttributes.includes(attr),
);
