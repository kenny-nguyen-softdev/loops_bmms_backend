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
import { VoucherType } from './VoucherType';
import { VoucherGroup } from './VoucherGroup';
import { Customer } from './Customer';
import { Supplier } from './Supplier';
import { User } from './User';
import { PersonGroupType } from './PersonGroupType';
import { PaymentMethod } from './PaymentMethod';
import { IncludeOptions } from '../app/core/types';

export class Voucher extends Model<InferAttributes<Voucher>, InferCreationAttributes<Voucher>> {
  declare id: CreationOptional<number>;
  declare voucherTypeId: ForeignKey<VoucherType['id']> | null;
  declare code: string;
  declare value: number;
  declare description: string;
  declare recordedDate: Date;
  declare voucherGroupId: ForeignKey<VoucherGroup['id']> | null;
  declare customerId: ForeignKey<Customer['id']> | null;
  declare supplierId: ForeignKey<Supplier['id']> | null;
  declare staffId: ForeignKey<User['id']> | null;
  declare personGroupTypeId: ForeignKey<PersonGroupType['id']> | null;
  declare paymentMethodId: ForeignKey<PaymentMethod['id']> | null;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
  static INCLUDE_OPTIONS: IncludeOptions = {
    VoucherType: () => ({
      model: VoucherType,
      as: 'voucherType',
    }),
    Supplier: () => ({
      model: Supplier,
      as: 'supplier',
    }),
    Customer: () => ({
      model: Customer,
      as: 'customer',
    }),
    Staff: () => ({
      model: User,
      as: 'staff',
    }),
    VoucherGroup: () => ({
      model: VoucherGroup,
      as: 'voucherGroup',
    }),
    PersonGroupType: () => ({
      model: PersonGroupType,
      as: 'personGroupType',
    }),
    PaymentMethod: () => ({
      model: PaymentMethod,
      as: 'paymentMethod',
    }),
  };
}

export type VoucherInput = CreationAttributes<Voucher>;
export type VoucherOutput = Required<Voucher>;

Voucher.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
    },
    voucherTypeId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'voucher_types',
        key: 'id',
      },
    },
    code: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    value: {
      allowNull: true,
      type: DataTypes.BIGINT,
    },
    description: {
      allowNull: true,
      type: DataTypes.TEXT,
    },
    recordedDate: {
      allowNull: true,
      type: DataTypes.DATE,
    },
    voucherGroupId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'voucher_groups',
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
    supplierId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'suppliers',
        key: 'id',
      },
    },
    staffId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'users',
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
    paymentMethodId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'payment_methods',
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
    tableName: 'vouchers',
    paranoid: true,
    modelName: 'Voucher',
    sequelize: sequelizeConnection,
  },
);
export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const VoucherAttributes = Object.keys(Voucher.getAttributes()).filter(
  (attr) => !readonlyAttributes.includes(attr),
);
