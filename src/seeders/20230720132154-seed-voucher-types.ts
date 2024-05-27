'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.bulkInsert(
      'voucher_types',
      [
        {
          name: 'Receipt Voucher',
          key: 'receipt_voucher',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Payment Voucher',
          key: 'payment_voucher',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Purchase Order',
          key: 'purchase_order',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Returned Purchase Order',
          key: 'returned_purchase_orders',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
      ],
      {},
    );
  },

  async down(queryInterface, Sequelize) {
    await queryInterface.bulkDelete('voucher_types', null, {});
  },
};
