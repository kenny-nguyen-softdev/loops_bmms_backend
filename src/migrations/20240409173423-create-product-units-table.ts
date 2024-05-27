'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('product_units', {
      id: {
        allowNull: true,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      productId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'products',
          key: 'id'
        },
      },
      name: {
        allowNull: true,
        type: Sequelize.STRING
      },
      quantity: {
        allowNull: true,
        type: Sequelize.DECIMAL(10, 2),
      },
      salePrice: {
        allowNull: true,
        type: Sequelize.BIGINT
      },
      isDefaultPrice: {
        allowNull: true,
        type: Sequelize.BOOLEAN
      },
      isActive: {
        allowNull: true,
        type: Sequelize.BOOLEAN
      },
      createdAt: {
        allowNull: true,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: true,
        type: Sequelize.DATE
      },
      deletedAt: {
        allowNull: true,
        type: Sequelize.DATE
      }
    });
  },

  async down(queryInterface) {
    await queryInterface.dropTable('product_units');
  }
};
