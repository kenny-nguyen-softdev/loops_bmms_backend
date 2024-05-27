'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('purchase_order_product_items', {
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
      productId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'products',
          key: 'id',
        },
      },
      quantity: {
        allowNull: true,
        type: Sequelize.INTEGER,
      },
      price: {
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
    await queryInterface.dropTable('purchase_order_product_items');
  },
};
