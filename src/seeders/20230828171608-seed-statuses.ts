'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.bulkInsert(
      'statuses',
      [
        {
          name: 'Stock Checking',
          key: 'stock-checking',
          statusTypeId: 3,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Balanced',
          key: 'balanced',
          statusTypeId: 3,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Deleted',
          key: 'deleted',
          statusTypeId: 3,
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
