'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('combo_items', {
      id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true,
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
      productId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'products',
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

  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable('combo_items');
  },
};
