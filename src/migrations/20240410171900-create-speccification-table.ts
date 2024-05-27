'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('specifications', {
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
      specificationTypeId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'specification_types',
          key: 'id'
        },
      },
      sizeUnitId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'size_units',
          key: 'id'
        },
      },
      value: {
        allowNull: true,
        type: Sequelize.DECIMAL
      },
      groupId: {
        allowNull: true,
        type: Sequelize.INTEGER
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
    await queryInterface.dropTable('specifications');
  }
};
