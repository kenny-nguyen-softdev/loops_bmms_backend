'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('purchase_orders', {
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
      code: {
        allowNull: true,
        type: Sequelize.STRING,
      },
      deliveredDate: {
        allowNull: true,
        type: Sequelize.DATE,
      },
      note: {
        allowNull: true,
        type: Sequelize.STRING,
      },
      quantityTotal: {
        allowNull: true,
        type: Sequelize.INTEGER,
      },
      totalPrice: {
        allowNull: true,
        type: Sequelize.BIGINT,
      },
      discount: {
        allowNull: true,
        type: Sequelize.BIGINT,
      },
      totalTaxPrice: {
        allowNull: true,
        type: Sequelize.BIGINT,
      },
      debtAmount: {
        allowNull: true,
        type: Sequelize.BIGINT,
      },
      importDate: {
        allowNull: true,
        type: Sequelize.DATE,
      },
      paymentStatusId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'statuses',
          key: 'id',
        },
      },
      importStatusId: {
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
    await queryInterface.dropTable('purchase_orders');
  },
};
