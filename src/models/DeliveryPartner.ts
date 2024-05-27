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
import { DeliveryPartnerGroup } from './DeliveryPartnerGroup';
import { PersonGroupType } from './PersonGroupType';
import { Ward } from './Ward';
import { IncludeOptions } from '../app/core/types';

export class DeliveryPartner extends Model<InferAttributes<DeliveryPartner>, InferCreationAttributes<DeliveryPartner>> {
  declare id: CreationOptional<number>;
  declare name: string;
  declare code: string;
  declare email: string;
  declare mobile: string;
  declare company: string;
  declare address: string;
  declare shippingFee: number;
  declare description: string;
  declare wardId?: ForeignKey<Ward['id']> | null;
  declare deliveryPartnerGroupId?: ForeignKey<DeliveryPartnerGroup['id']> | null;
  declare personGroupTypeId: ForeignKey<PersonGroupType['id']>;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
  static INCLUDE_OPTIONS: IncludeOptions = {
    DeliveryPartnerGroup: () => ({
      model: DeliveryPartnerGroup,
      as: 'deliveryPartnerGroup',
    }),
    Ward: () => ({
      model: Ward,
      as: 'ward',
    }),
    PersonGroupType: () => ({
      model: PersonGroupType,
      as: 'personGroupType',
    }),
  };
}

export type DeliveryPartnerInput = CreationAttributes<DeliveryPartner>;
export type DeliveryPartnerOutput = Required<DeliveryPartner>;

DeliveryPartner.init(
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
    email: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    mobile: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    code: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    company: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    address: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    description: {
      allowNull: true,
      type: DataTypes.TEXT,
    },
    shippingFee: {
      allowNull: true,
      type: DataTypes.BIGINT,
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
    deliveryPartnerGroupId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'delivery_partner_groups',
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
    tableName: 'delivery_partners',
    paranoid: true,
    modelName: 'DeliveryPartner',
    sequelize: sequelizeConnection,
  },
);
export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const DeliveryPartnerAttributes = Object.keys(DeliveryPartner.getAttributes()).filter(
  (attr) => !readonlyAttributes.includes(attr),
);
