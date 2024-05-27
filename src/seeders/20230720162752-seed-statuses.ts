'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.bulkInsert(
      'statuses',
      [
        {
          name: 'Unpaid',
          key: 'unpaid',
          statusTypeId: 1,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Trading',
          key: 'trading',
          statusTypeId: 1,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Paid',
          key: 'paid',
          statusTypeId: 1,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Unimported',
          key: 'un-imported',
          statusTypeId: 2,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'imported',
          key: 'imported',
          statusTypeId: 2,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
      ],
      {},
    );
  },

  async down(queryInterface, Sequelize) {
    await queryInterface.bulkDelete('statuses', null, {});
  },
};
