'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.bulkInsert(
      'status_types',
      [
        {
          name: 'Refund Money Status',
          key: 'refund_money_status',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Returned Product Status',
          key: 'returned_product_status',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
      ],
      {},
    );
  },

  async down(queryInterface, Sequelize) {
    await queryInterface.bulkDelete('status_types', null, {});
  },
};
