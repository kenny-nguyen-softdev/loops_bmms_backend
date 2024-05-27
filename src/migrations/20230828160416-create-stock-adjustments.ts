'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('stock_adjustments', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
      },
      createdStaffId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'users',
          key: 'id',
        },
      },
      checkingStaffId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'users',
          key: 'id',
        },
      },
      adjustmentStaffId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'users',
          key: 'id',
        },
      },
      code: {
        allowNull: true,
        type: Sequelize.STRING,
      },
      note: {
        allowNull: true,
        type: Sequelize.TEXT,
      },
      adjustmentDate: {
        allowNull: true,
        type: Sequelize.DATE,
      },
      adjustmentStatusId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'statuses',
          key: 'id',
        },
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
    await queryInterface.dropTable('stock_adjustments');
  },
};
