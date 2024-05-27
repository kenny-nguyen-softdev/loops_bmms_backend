'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('taxes', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
      },
      taxTypeId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'tax_types',
          key: 'id',
        },
      },
      name: {
        allowNull: true,
        type: Sequelize.STRING,
      },
      code: {
        allowNull: true,
        type: Sequelize.STRING,
      },
      percentageNumber: {
        allowNull: false,
        type: Sequelize.INTEGER,
        defaultValue: 0,
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
    await queryInterface.dropTable('taxes');
  },
};
