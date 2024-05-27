'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('stock_adjustment_product_items', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
      },
      stockAdjustmentId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'stock_adjustments',
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
      lossReasonId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'loss_reasons',
          key: 'id',
        },
      },
      actualQuantity: {
        allowNull: true,
        type: Sequelize.INTEGER,
      },
      quantityDifference: {
        allowNull: true,
        type: Sequelize.INTEGER,
      },
      note: {
        allowNull: true,
        type: Sequelize.STRING,
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
    await queryInterface.dropTable('stock_adjustment_product_items');
  },
};
