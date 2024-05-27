'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    try {
      await queryInterface.addColumn('purchase_orders', 'voucherTypeId', {
        type: Sequelize.INTEGER,
        allowNull: true,
        references: {
          model: 'voucher_types',
          key: 'id',
        },
      });
    } catch (error) {
      throw error;
    }
  },

  async down(queryInterface) {
    try {
      await queryInterface.removeColumn('purchase_orders', 'voucherTypeId');
    } catch (error) {
      throw error;
    }
  },
};
