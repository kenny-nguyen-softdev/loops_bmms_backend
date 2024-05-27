'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('voucher_groups', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
      },
      name: {
        allowNull: true,
        type: Sequelize.STRING,
      },
      code: {
        allowNull: true,
        type: Sequelize.STRING,
      },
      description: {
        allowNull: true,
        type: Sequelize.TEXT,
      },
      voucherGroupTypeId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'voucher_group_types',
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
    await queryInterface.dropTable('voucher_groups');
  },
};
