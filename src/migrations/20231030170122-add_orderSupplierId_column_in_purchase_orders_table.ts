'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    try {
      await queryInterface.addColumn('purchase_orders', 'orderSupplierId', {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'order_suppliers',
          key: 'id',
        },
      });
    } catch (error) {
      throw error;
    }
  },

  async down(queryInterface) {
    try {
      await queryInterface.removeColumn('purchase_orders', 'orderSupplierId');
    } catch (error) {
      throw error;
    }
  },
};
