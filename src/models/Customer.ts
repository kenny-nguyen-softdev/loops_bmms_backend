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
import { PersonGroupType } from './PersonGroupType';
import { Ward } from './Ward';
import { IncludeOptions } from '../app/core/types';
import { CustomerGroup } from './CustomerGroup';
import { Debt } from './Debt';
import { Order } from './Order';
import { User } from './User';
import { Status } from './Status';

export class Customer extends Model<
  InferAttributes<Customer>,
  InferCreationAttributes<Customer>
> {
  declare id: CreationOptional<number>;
  declare customerGroupId?: ForeignKey<CustomerGroup['id']> | null;
  declare name: string;
  declare email: string;
  declare phoneNumber: string;
  declare birthday: Date;
  declare address: string;
  declare wardId: ForeignKey<Ward['id']>;
  declare personGroupTypeId: ForeignKey<PersonGroupType['id']>;
  declare isActive: boolean;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
  static INCLUDE_OPTIONS: IncludeOptions = {
    Ward: () => ({
      model: Ward,
      as: 'ward',
    }),
    PersonGroupType: () => ({
      model: PersonGroupType,
      as: 'personGroupType',
    }),
    Debts: () => ({
      model: Debt,
      as: 'debts',
    }),
    Orders: () => ({
      model: Order,
      as: 'orders',
      include: [
        {
          model: User,
          as: 'staff',
        },
        {
          model: Status,
          as: 'orderStatus',
        },
        {
          model: Status,
          as: 'paymentStatus',
        },
      ],
    }),
  };
}

export type CustomerInput = CreationAttributes<Customer>;
export type CustomerOutput = Required<Customer>;

Customer.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
    },
    customerGroupId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'customer_groups',
        key: 'id',
      },
    },
    name: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    email: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    phoneNumber: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    birthday: {
      allowNull: true,
      type: DataTypes.DATEONLY,
    },
    address: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    wardId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'wards',
        key: 'id',
      },
    },
    personGroupTypeId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'person_group_types',
        key: 'id',
      },
    },
    isActive: {
      type: DataTypes.BOOLEAN,
      defaultValue: true,
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
    tableName: 'customers',
    paranoid: true,
    modelName: 'Customer',
    sequelize: sequelizeConnection,
  }
);
export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const CustomerAttributes = Object.keys(Customer.getAttributes()).filter(
  (attr) => !readonlyAttributes.includes(attr)
);
