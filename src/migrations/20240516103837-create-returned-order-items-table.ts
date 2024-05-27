'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('returned_order_items', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
      },
      returnedOrderId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'returned_orders',
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
      comboId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'combos',
          key: 'id',
        },
      },
      serviceId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'services',
          key: 'id',
        },
      },
      discount: {
        type: Sequelize.INTEGER,
        allowNull: true,
      },
      price: {
        type: Sequelize.BIGINT,
        allowNull: true,
      },
      quantity: {
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
    await queryInterface.dropTable('returned_order_items');
  },
};
