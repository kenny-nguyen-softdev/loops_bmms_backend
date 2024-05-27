'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('returned_orders', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
      },
      orderId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'orders',
          key: 'id',
        },
      },
      returnedOrderStatusId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'statuses',
          key: 'id',
        },
      },
      customerId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'customers',
          key: 'id',
        },
      },
      code: {
        type: Sequelize.STRING,
        allowNull: true,
      },
      note: {
        type: Sequelize.TEXT,
        allowNull: true,
      },
      returnedQuantityTotal: {
        type: Sequelize.INTEGER,
        allowNull: true,
      },
      refundPriceTotal: {
        type: Sequelize.BIGINT,
        allowNull: true,
      },
      receivedRefundAmount: {
        type: Sequelize.BIGINT,
        allowNull: true,
      },
      refundDate: {
        type: Sequelize.DATE,
        allowNull: true,
      },
      paymentMethodId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'payment_methods',
          key: 'id',
        },
      },
      refundStatusId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'statuses',
          key: 'id',
        },
      },
      createdAt: {
        type: Sequelize.DATE,
        allowNull: true,
      },
      updatedAt: {
        type: Sequelize.DATE,
        allowNull: true,
      },
      deletedAt: {
        type: Sequelize.DATE,
        allowNull: true,
      },
    });
  },
  async down(queryInterface) {
    await queryInterface.dropTable('returned_orders');
  },
};
