import {
  DataTypes,
  Model,
  InferAttributes,
  InferCreationAttributes,
  CreationOptional,
  CreationAttributes,
  ForeignKey,
  NonAttribute
} from 'sequelize';
import sequelizeConnection from '../app/core/db/connection';
import { Customer } from './Customer';
import { Status } from './Status';
import { DeliveryMethod } from './DeliveryMethod';
import { DeliveryPartner } from './DeliveryPartner';
import { PaymentMethod } from './PaymentMethod';
import { IncludeOptions } from '../app/core/types';
import { User } from './User';
import { OrderItem } from './OrderItem';
import { Product } from './Product';
import { Tax } from './Tax';
import { Service } from './Service';
import { Combo } from './Combo';
import { OrderPayment } from './OrderPayment';
import { ProductUnit } from './ProductUnit';

export class Order extends Model<InferAttributes<Order>, InferCreationAttributes<Order>> {
  declare id: CreationOptional<number>;
  declare customerId?: ForeignKey<Customer['id']> | null;
  declare orderStatusId?: ForeignKey<Status['id']> | null;
  declare approvedStatusId?: ForeignKey<Status['id']> | null;
  declare shippingStatusId?: ForeignKey<Status['id']> | null;
  declare paymentStatusId?: ForeignKey<Status['id']> | null;
  declare exportedInventoryStatusId?: ForeignKey<Status['id']> | null;
  declare deliveryMethodId?: ForeignKey<DeliveryMethod['id']> | null;
  declare code?: string;
  declare deliveryDate?: Date;
  declare quantityTotal?: number;
  declare shippingFee?: number;
  declare totalPrice?: number;
  declare discount?: number;
  declare totalTaxPrice?: number;
  declare debtAmount: number;
  declare note?: string;
  declare deliveryPartnerId?: ForeignKey<DeliveryPartner['id']> | null;
  declare paymentMethodId?: ForeignKey<PaymentMethod['id']> | null;
  declare staffId?: ForeignKey<User['id']> | null;
  declare orderItems?: NonAttribute<OrderItem[]>;
  declare createdAt: CreationOptional<Date>;
  declare updatedAt: CreationOptional<Date>;
  declare deletedAt: CreationOptional<Date>;
  static INCLUDE_OPTIONS: IncludeOptions = {
    Staff: () => ({
      model: User,
      as: 'staff',
    }),
    Customer: () => ({
      model: Customer,
      as: 'customer',
    }),
    OrderStatus: () => ({
      model: Status,
      as: 'orderStatus',
    }),
    ApprovedStatus: () => ({
      model: Status,
      as: 'approvedStatus',
    }),
    ShippingStatus: () => ({
      model: Status,
      as: 'shippingStatus',
    }),
    PaymentStatus: () => ({
      model: Status,
      as: 'paymentStatus',
    }),
    ExportedInventoryStatus: () => ({
      model: Status,
      as: 'exportedInventoryStatus',
    }),
    DeliveryMethod: () => ({
      model: DeliveryMethod,
      as: 'deliveryMethod',
    }),
    DeliveryPartner: () => ({
      model: DeliveryPartner,
      as: 'deliveryPartner',
    }),
    PaymentMethod: () => ({
      model: PaymentMethod,
      as: 'paymentMethod',
    }),
    OrderItems: () => ({
      model: OrderItem,
      as: 'orderItems',
      include: [
        {
          model: Product,
          as: 'product',
          include: [
            {
              model: Tax,
              as: 'inputTax',
            },
          ],
        },
        {
          model: Service,
          as: 'service',
          include: [
            {
              model: Tax,
              as: 'inputTax',
            },
          ],
        },
        {
          model: Combo,
          as: 'combo',
          include: [
            {
              model: Tax,
              as: 'inputTax',
            },
          ],
        },
        {
          model: ProductUnit,
          as: 'productUnit',
        },
      ],
    }),
    OrderPayments: () => ({
      model: OrderPayment,
      as: 'orderPayments',
      include: [
        {
          model: PaymentMethod,
          as: 'paymentMethod',
        },
      ],
    }),
  };
}

export type OrderInput = CreationAttributes<Order>;
export type OrderOutput = Required<Order>;

Order.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
    },
    customerId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'customers',
        key: 'id',
      },
    },
    orderStatusId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'statuses',
        key: 'id',
      },
    },
    approvedStatusId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'statuses',
        key: 'id',
      },
    },
    shippingStatusId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'statuses',
        key: 'id',
      },
    },
    paymentStatusId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'statuses',
        key: 'id',
      },
    },
    exportedInventoryStatusId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'statuses',
        key: 'id',
      },
    },
    deliveryMethodId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'delivery_methods',
        key: 'id',
      },
    },
    code: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    deliveryDate: {
      allowNull: true,
      type: DataTypes.DATE,
    },
    quantityTotal: {
      allowNull: true,
      type: DataTypes.INTEGER,
    },
    shippingFee: {
      allowNull: true,
      type: DataTypes.BIGINT,
    },
    discount: {
      allowNull: true,
      type: DataTypes.BIGINT,
    },
    totalPrice: {
      allowNull: true,
      type: DataTypes.BIGINT,
    },
    totalTaxPrice: {
      allowNull: true,
      type: DataTypes.BIGINT,
    },
    debtAmount: {
      allowNull: true,
      type: DataTypes.BIGINT,
    },
    note: {
      allowNull: true,
      type: DataTypes.STRING,
    },
    deliveryPartnerId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'delivery_partners',
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
    staffId: {
      allowNull: true,
      type: DataTypes.INTEGER,
      references: {
        model: 'users',
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
    tableName: 'orders',
    paranoid: true,
    modelName: 'Order',
    sequelize: sequelizeConnection,
  },
);
export const readonlyAttributes = ['createdAt', 'updatedAt', 'deletedAt'];

export const OrderAttributes = Object.keys(Order.getAttributes()).filter((attr) => !readonlyAttributes.includes(attr));
