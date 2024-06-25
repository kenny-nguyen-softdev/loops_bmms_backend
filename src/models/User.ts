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
import { RefreshToken } from './RefreshToken';
import { PersonGroupType } from './PersonGroupType';
import { Customer } from './Customer';

export class User extends Model<InferAttributes<User>, InferCreationAttributes<User>> {
  declare id: CreationOptional<number>;
  declare name: string;
  declare username: string;
  declare email: string;
  declare password: string;
  declare privateImage: string;
  declare isActive: boolean;
  declare personGroupTypeId: ForeignKey<PersonGroupType['id']>;
  declare customerId: ForeignKey<Customer['id']>;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;

  declare customerInfo?: Customer;
}

export type UserInput = CreationAttributes<User>;
export type UserOutput = Required<User>;

User.init(
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
    username: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    email: {
      allowNull: false,
      unique: true,
      type: DataTypes.STRING,
    },
    password: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    privateImage: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    isActive: {
      type: DataTypes.BOOLEAN,
      defaultValue: true,
    },
    personGroupTypeId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'person_group_types',
        key: 'id',
      },
    },
    customerId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'customers',
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
    tableName: 'users',
    paranoid: true,
    modelName: 'User',
    sequelize: sequelizeConnection,
    hooks: {
      beforeDestroy: async (user: User) => {
        await RefreshToken.update({ userId: null }, { where: { userId: user.id } });
      },
    },
  },
);
export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const UserAttributes = Object.keys(User.getAttributes()).filter((attr) => !readonlyAttributes.includes(attr));
