'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.bulkInsert(
      'voucher_group_types',
      [
        {
          name: 'Receipt Voucher Group',
          key: 'receipt_voucher_group',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Payment Voucher Group',
          key: 'payment_voucher_group',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
      ],
      {},
    );
  },

  async down(queryInterface) {
    await queryInterface.bulkDelete('voucher_group_types', null, {});
  },
};
