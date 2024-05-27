'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('statuses', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
      },
      statusTypeId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'status_types',
          key: 'id',
        },
      },
      name: {
        allowNull: true,
        type: Sequelize.STRING,
      },
      key: {
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
  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('statuses');
  },
};
