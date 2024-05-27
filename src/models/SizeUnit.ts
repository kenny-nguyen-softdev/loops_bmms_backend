import {
    DataTypes,
    Model,
    InferAttributes,
    InferCreationAttributes,
    CreationOptional,
    CreationAttributes,
  } from 'sequelize';
  import sequelizeConnection from '../app/core/db/connection';
  
  export class SizeUnit extends Model<InferAttributes<SizeUnit>, InferCreationAttributes<SizeUnit>> {
    declare id: CreationOptional<number>;
    declare name: string;
    declare key: string;
    declare createdAt: CreationOptional<Date>;
    declare updatedAt: CreationOptional<Date>;
    declare deletedAt: CreationOptional<Date>;
  }
  
  export type SizeUnitInput = CreationAttributes<SizeUnit>;
  export type SizeUnitOutput = Required<SizeUnit>;
  
  SizeUnit.init(
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
      tableName: 'size_units',
      paranoid: true,
      modelName: 'SizeUnit',
      sequelize: sequelizeConnection,
    },
  );
  export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];
  
  export const SizeUnitAttributes = Object.keys(SizeUnit.getAttributes()).filter(
    (attr) => !readonlyAttributes.includes(attr),
  );
  