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
import { User } from './User';

export class RefreshToken extends Model<InferAttributes<RefreshToken>, InferCreationAttributes<RefreshToken>> {
  declare id: CreationOptional<number>;
  declare userId: ForeignKey<User['id']> | null;
  declare token: string;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
}

export type RefreshTokenInput = CreationAttributes<RefreshToken>;
export type RefreshTokenOutput = Required<RefreshToken>;

RefreshToken.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
    },
    userId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'users',
        key: 'id',
      },
    },
    token: {
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
    tableName: 'refresh_tokens',
    paranoid: true,
    modelName: 'RefreshToken',
    sequelize: sequelizeConnection,
  },
);
export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const RefreshTokenAttributes = Object.keys(RefreshToken.getAttributes()).filter(
  (attr) => !readonlyAttributes.includes(attr),
);
