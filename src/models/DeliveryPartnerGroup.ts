import {
  DataTypes,
  Model,
  InferAttributes,
  InferCreationAttributes,
  CreationOptional,
  CreationAttributes,
} from 'sequelize';
import sequelizeConnection from '../app/core/db/connection';

export class DeliveryPartnerGroup extends Model<
  InferAttributes<DeliveryPartnerGroup>,
  InferCreationAttributes<DeliveryPartnerGroup>
> {
  declare id: CreationOptional<number>;
  declare name: string;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
}

export type DeliveryPartnerGroupInput = CreationAttributes<DeliveryPartnerGroup>;
export type DeliveryPartnerGroupOutput = Required<DeliveryPartnerGroup>;

DeliveryPartnerGroup.init(
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
    tableName: 'delivery_partner_groups',
    paranoid: true,
    modelName: 'DeliveryPartnerGroup',
    sequelize: sequelizeConnection,
  },
);

export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const DeliveryPartnerGroupAttributes = Object.keys(DeliveryPartnerGroup.getAttributes()).filter(
  (attr) => !readonlyAttributes.includes(attr),
);
