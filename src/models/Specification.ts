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
import { Product } from './Product';
import { SpecificationType } from './SpecificationType';
import { SizeUnit } from './SizeUnit';
import { Order } from './Order';
  
  export class Specification extends Model<InferAttributes<Specification>, InferCreationAttributes<Specification>> {
    declare id: CreationOptional<number>;
    declare specificationTypeId: ForeignKey<SpecificationType['id']>;
    declare sizeUnitId: ForeignKey<SizeUnit['id']>;
    declare productId: ForeignKey<Product['id']>;
    declare orderId: ForeignKey<Order['id']>;
    declare value: number;
    declare groupId: number;
    declare createdAt: CreationOptional<Date>;
    declare updatedAt: CreationOptional<Date>;
    declare deletedAt: CreationOptional<Date>;
  }
  
  export type SpecificationInput = CreationAttributes<Specification>;
  export type SpecificationOutput = Required<Specification>;
  
  Specification.init(
    {
      id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
        allowNull: false,
      },
      productId: {
        allowNull: true,
        type: DataTypes.INTEGER,
        references: {
          model: 'products',
          key: 'id',
        },
      },
      orderId: {
        allowNull: true,
        type: DataTypes.INTEGER,
        references: {
          model: 'orders',
          key: 'id',
        },
      },
      specificationTypeId: {
        allowNull: true,
        type: DataTypes.INTEGER,
        references: {
          model: 'specification_types',
          key: 'id',
        },
      },
      sizeUnitId: {
        allowNull: true,
        type: DataTypes.INTEGER,
        references: {
          model: 'size_units',
          key: 'id',
        },
      },
      value: {
        allowNull: true,
        type: DataTypes.DECIMAL
      },
      groupId: {
        allowNull: true,
        type: DataTypes.INTEGER
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
      tableName: 'specifications',
      paranoid: true,
      modelName: 'Specification',
      sequelize: sequelizeConnection,
    },
  );
  export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];
  
  export const SpecificationAttributes = Object.keys(Specification.getAttributes()).filter(
    (attr) => !readonlyAttributes.includes(attr),
  );
  