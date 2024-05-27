'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up (queryInterface, Sequelize) {
    await queryInterface.createTable('order_supplier_product_items', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
      },
      orderSupplierId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'order_suppliers',
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

  async down (queryInterface, Sequelize) {
    await queryInterface.dropTable('order_supplier_product_items');
  }
};
