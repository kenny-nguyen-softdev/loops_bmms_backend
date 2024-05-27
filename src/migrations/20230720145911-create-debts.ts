'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('debts', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
      },
      supplierId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'suppliers',
          key: 'id',
        },
      },
      staffId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'users',
          key: 'id',
        },
      },
      purchaseOrderId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'purchase_orders',
          key: 'id',
        },
      },
      voucherId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'vouchers',
          key: 'id',
        },
      },
      recordedDate: {
        allowNull: true,
        type: Sequelize.DATE,
      },
      debtAmount: {
        allowNull: true,
        type: Sequelize.BIGINT,
      },
      debtTypeId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'debt_types',
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
    await queryInterface.dropTable('debts');
  },
};
