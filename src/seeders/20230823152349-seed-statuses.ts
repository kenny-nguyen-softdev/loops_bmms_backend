'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.bulkInsert(
      'statuses',
      [
        {
          name: 'Unrefunded',
          key: 'un-refunded',
          statusTypeId: 4,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Partial Refund',
          key: 'partial-refund',
          statusTypeId: 4,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Full Refund',
          key: 'full-refund',
          statusTypeId: 4,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Not returned product',
          key: 'not-returned-product',
          statusTypeId: 5,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Returned Product',
          key: 'returned-product',
          statusTypeId: 5,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
      ],
      {},
    );
  },

  async down(queryInterface) {
    await queryInterface.bulkDelete('statuses', null, {});
  },
};
