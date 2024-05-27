'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('returned_purchase_orders', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
      },
      voucherTypeId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'voucher_types',
          key: 'id',
        },
      },
      note: {
        type: Sequelize.TEXT,
        allowNull: true,
      },
      returnedQuantityTotal: {
        type: Sequelize.INTEGER,
        allowNull: true,
      },
      discount: {
        type: Sequelize.BIGINT,
        allowNull: true,
      },
      totalTaxPrice: {
        type: Sequelize.BIGINT,
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
      purchaseOrderId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'purchase_orders',
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
      returnedStatusId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'statuses',
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
    await queryInterface.dropTable('returned_purchase_orders');
  },
};
