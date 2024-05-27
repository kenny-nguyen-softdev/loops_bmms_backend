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
import { SupplierGroup } from './SupplierGroup';
import { PersonGroupType } from './PersonGroupType';
import { Ward } from './Ward';
import { IncludeOptions } from '../app/core/types';
import { PurchaseOrder } from './PurchaseOrder';
import { Debt } from './Debt';
import { User } from './User';
import { Status } from './Status';

export class Supplier extends Model<InferAttributes<Supplier>, InferCreationAttributes<Supplier>> {
  declare id: CreationOptional<number>;
  declare name: string;
  declare supplierGroupId?: ForeignKey<SupplierGroup['id']> | null;
  declare code: string;
  declare email: string;
  declare mobile: string;
  declare company: string;
  declare faxId: string;
  declare taxId: string;
  declare website: string;
  declare address: string;
  declare wardId?: ForeignKey<Ward['id']> | null;
  declare description: string;
  declare personGroupTypeId: ForeignKey<PersonGroupType['id']>;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;

  static INCLUDE_OPTIONS: IncludeOptions = {
    SupplierGroup: () => ({
      model: SupplierGroup,
      as: 'supplierGroup',
    }),
    Ward: () => ({
      model: Ward,
      as: 'ward',
    }),
    PersonGroupType: () => ({
      model: PersonGroupType,
      as: 'personGroupType',
    }),
    PurchaseOrders: () => ({
      model: PurchaseOrder,
      as: 'purchaseOrders',
      include: [
        {
          model: User,
          as: 'staff',
        },
        {
          model: Status,
          as: 'importStatus',
        },
        {
          model: Status,
          as: 'paymentStatus',
        },
      ],
    }),
    Debts: () => ({
      model: Debt,
      as: 'debts',
    }),
  };
}

export type SupplierInput = CreationAttributes<Supplier>;
export type SupplierOutput = Required<Supplier>;

Supplier.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
    },
    supplierGroupId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'supplier_groups',
        key: 'id',
      },
    },
    code: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    name: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    email: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    mobile: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    company: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    faxId: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    taxId: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    website: {
      allowNull: true,
      type: DataTypes.STRING,
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
    description: {
      allowNull: true,
      type: DataTypes.TEXT,
    },
    personGroupTypeId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'person_group_types',
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
    tableName: 'suppliers',
    paranoid: true,
    modelName: 'Supplier',
    sequelize: sequelizeConnection,
  },
);
export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const SupplierAttributes = Object.keys(Supplier.getAttributes()).filter(
  (attr) => !readonlyAttributes.includes(attr),
);
