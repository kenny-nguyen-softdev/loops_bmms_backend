import {
  DataTypes,
  Model,
  InferAttributes,
  InferCreationAttributes,
  CreationOptional,
  CreationAttributes,
} from 'sequelize';
import sequelizeConnection from '../app/core/db/connection';

export class StatusType extends Model<InferAttributes<StatusType>, InferCreationAttributes<StatusType>> {
  declare id: CreationOptional<number>;
  declare name: string;
  declare key: string;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
}

export type StatusTypeInput = CreationAttributes<StatusType>;
export type StatusTypeOutput = Required<StatusType>;

StatusType.init(
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
    tableName: 'status_types',
    paranoid: true,
    modelName: 'StatusType',
    sequelize: sequelizeConnection,
  },
);

export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const StatusTypeAttributes = Object.keys(StatusType.getAttributes()).filter(
  (attr) => !readonlyAttributes.includes(attr),
);
