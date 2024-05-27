'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('services', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      sku: {
        allowNull: true,
        type: Sequelize.STRING
      },
      name: {
        allowNull: true,
        type: Sequelize.STRING
      },
      description: {
        allowNull: true,
        type: Sequelize.STRING
      },
      categoryId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'categories',
          key: 'id',
        },
      },
      costPrice: {
        allowNull: true,
        type: Sequelize.BIGINT
      },
      salePrice: {
        allowNull: true,
        type: Sequelize.BIGINT
      },
      wholesalePrice: {
        allowNull: true,
        type: Sequelize.BIGINT
      },
      standardUnit: {
        allowNull: true,
        type: Sequelize.STRING
      },
      isActive: {
        type: Sequelize.BOOLEAN,
        defaultValue: true,
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
        type: Sequelize.DATE,
      },
    });
  },
  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('services');
  }
};