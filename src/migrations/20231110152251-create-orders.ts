'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('orders', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
      },
      customerId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'customers',
          key: 'id',
        },
      },
      orderStatusId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'statuses',
          key: 'id',
        },
      },
      approvedStatusId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'statuses',
          key: 'id',
        },
      },
      shippingStatusId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'statuses',
          key: 'id',
        },
      },
      paymentStatusId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'statuses',
          key: 'id',
        },
      },
      exportedInventoryStatusId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'statuses',
          key: 'id',
        },
      },
      deliveryMethodId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'delivery_methods',
          key: 'id',
        },
      },
      code: {
        allowNull: true,
        type: Sequelize.STRING,
      },
      deliveryDate: {
        allowNull: true,
        type: Sequelize.DATE,
      },
      quantityTotal: {
        allowNull: true,
        type: Sequelize.INTEGER,
      },
      shippingFee: {
        allowNull: true,
        type: Sequelize.BIGINT,
      },
      discount: {
        allowNull: true,
        type: Sequelize.BIGINT,
      },
      totalPrice: {
        allowNull: true,
        type: Sequelize.BIGINT,
      },
      totalTaxPrice: {
        allowNull: true,
        type: Sequelize.BIGINT,
      },
      debtAmount: {
        allowNull: true,
        type: Sequelize.BIGINT,
      },
      note: {
        allowNull: true,
        type: Sequelize.STRING,
      },
      deliveryPartnerId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'delivery_partners',
          key: 'id',
        },
      },
      paymentMethodId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'payment_methods',
          key: 'id',
        },
      },
      staffId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'users',
          key: 'id',
        },
      },
      createdAt: {
        allowNull: true,
        type: Sequelize.DATE,
      },
      updatedAt: {
        allowNull: true,
        type: Sequelize.DATE,
      },
      deletedAt: {
        allowNull: true,
        type: Sequelize.DATE,
      },
    });
  },
  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('orders');
  },
};
