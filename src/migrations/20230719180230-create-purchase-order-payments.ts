'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('purchase_order_payments', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
      },
      purchaseOrderId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'purchase_orders',
          key: 'id',
        },
      },
      amount: {
        allowNull: true,
        type: Sequelize.BIGINT,
      },
      paidDate: {
        allowNull: true,
        type: Sequelize.DATE,
      },
      paymentMethodId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'payment_methods',
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
  async down(queryInterface) {
    await queryInterface.dropTable('purchase_order_payments');
  },
};
