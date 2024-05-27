import {
  DataTypes,
  Model,
  InferAttributes,
  InferCreationAttributes,
  CreationOptional,
  CreationAttributes,
} from 'sequelize';
import sequelizeConnection from '../app/core/db/connection';
import { Unit } from './Unit';

export class UnitType extends Model<InferAttributes<UnitType>, InferCreationAttributes<UnitType>> {
  declare id: CreationOptional<number>;
  declare name: string;
  declare key: string;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
}

export type UnitTypeInput = CreationAttributes<UnitType>;
export type UnitTypeOutput = Required<UnitType>;

UnitType.init(
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
    tableName: 'unit_types',
    paranoid: true,
    modelName: 'UnitType',
    sequelize: sequelizeConnection,
    hooks: {
      beforeDestroy: async (unitType: UnitType) => {
        await Unit.update({ unitTypeId: null }, { where: { unitTypeId: unitType.id } });
      },
    },
  },
);

export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const UnitTypeAttributes = Object.keys(UnitType.getAttributes()).filter(
  (attr) => !readonlyAttributes.includes(attr),
);
