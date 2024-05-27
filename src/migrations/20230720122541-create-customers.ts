'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('customers', {
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
      email: {
        allowNull: true,
        type: Sequelize.STRING,
      },
      phoneNumber: {
        allowNull: true,
        type: Sequelize.STRING,
      },
      birthday: {
        allowNull: true,
        type: Sequelize.DATEONLY,
      },
      address: {
        allowNull: true,
        type: Sequelize.STRING,
      },
      wardId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'wards',
          key: 'id',
        },
      },
      personGroupTypeId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'person_group_types',
          key: 'id',
        },
      },
      isActive: {
        type: Sequelize.BOOLEAN,
        defaultValue: true,
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
    await queryInterface.dropTable('customers');
  },
};
