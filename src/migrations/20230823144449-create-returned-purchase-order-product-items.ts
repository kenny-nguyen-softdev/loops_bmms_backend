'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('returned_purchase_order_product_items', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
      },
      returnedPurchaseOrderId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'returned_purchase_orders',
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
      returnedQuantity: {
        type: Sequelize.INTEGER,
        allowNull: true,
      },
      price: {
        type: Sequelize.BIGINT,
        allowNull: true,
      },
      discount: {
        type: Sequelize.BIGINT,
        allowNull: true,
      },
      totalPrice: {
        type: Sequelize.BIGINT,
        allowNull: true,
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
    await queryInterface.dropTable('returned_purchase_order_product_items');
  },
};
