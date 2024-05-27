import {
    DataTypes,
    Model,
    InferAttributes,
    InferCreationAttributes,
    CreationOptional,
    CreationAttributes,
  } from 'sequelize';
  import sequelizeConnection from '../app/core/db/connection';
  
  export class SpecificationType extends Model<InferAttributes<SpecificationType>, InferCreationAttributes<SpecificationType>> {
    declare id: CreationOptional<number>;
    declare name: string;
    declare key: string;
    declare createdAt: CreationOptional<Date>;
    declare updatedAt: CreationOptional<Date>;
    declare deletedAt: CreationOptional<Date>;
  }
  
  export type SpecificationTypeInput = CreationAttributes<SpecificationType>;
  export type SpecificationTypeOutput = Required<SpecificationType>;
  
  SpecificationType.init(
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
      tableName: 'specification_types',
      paranoid: true,
      modelName: 'SpecificationType',
      sequelize: sequelizeConnection,
    },
  );
  export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];
  
  export const SpecificationTypeAttributes = Object.keys(SpecificationType.getAttributes()).filter(
    (attr) => !readonlyAttributes.includes(attr),
  );
  