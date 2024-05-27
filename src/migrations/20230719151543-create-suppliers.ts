'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('suppliers', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
      },
      supplierGroupId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'supplier_groups',
          key: 'id',
        },
      },
      code: {
        allowNull: true,
        type: Sequelize.STRING,
      },
      name: {
        allowNull: true,
        type: Sequelize.STRING,
      },
      email: {
        allowNull: true,
        type: Sequelize.STRING,
      },
      mobile: {
        allowNull: true,
        type: Sequelize.STRING,
      },
      company: {
        allowNull: true,
        type: Sequelize.STRING,
      },
      faxId: {
        allowNull: true,
        type: Sequelize.STRING,
      },
      taxId: {
        allowNull: true,
        type: Sequelize.STRING,
      },
      website: {
        allowNull: true,
        type: Sequelize.STRING,
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
      description: {
        allowNull: true,
        type: Sequelize.TEXT,
      },
      personGroupTypeId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'person_group_types',
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
    await queryInterface.dropTable('suppliers');
  },
};
