'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    try {
      await queryInterface.addColumn('debts', 'returnedPurchaseOrderId', {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'returned_purchase_orders',
          key: 'id',
        },
      });
    } catch (error) {
      throw error;
    }
  },

  async down(queryInterface) {
    try {
      await queryInterface.removeColumn('debts', 'returnedPurchaseOrderId');
    } catch (error) {
      throw error;
    }
  },
};
