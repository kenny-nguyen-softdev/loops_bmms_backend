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
import { StatusType } from './StatusType';

export class Status extends Model<InferAttributes<Status>, InferCreationAttributes<Status>> {
  declare id: CreationOptional<number>;
  declare statusTypeId: ForeignKey<StatusType['id']>;
  declare name: string;
  declare key: string;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
}

export type StatusInput = CreationAttributes<Status>;
export type StatusOutput = Required<Status>;

Status.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
    },
    statusTypeId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'status_types',
        key: 'id',
      },
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
    tableName: 'statuses',
    paranoid: true,
    modelName: 'Status',
    sequelize: sequelizeConnection,
  },
);

export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const StatusAttributes = Object.keys(Status.getAttributes()).filter(
  (attr) => !readonlyAttributes.includes(attr),
);
