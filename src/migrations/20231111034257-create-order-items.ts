'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('order_items', {
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
      quantity: {
        allowNull: true,
        type: Sequelize.INTEGER,
      },
      discount: {
        allowNull: true,
        type: Sequelize.BIGINT,
      },
      price: {
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
  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('order_items');
  },
};
