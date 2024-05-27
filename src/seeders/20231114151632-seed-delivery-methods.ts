'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up (queryInterface, Sequelize) {
    await queryInterface.bulkInsert(
      'delivery_methods',
      [
        {
          name: 'Receive In Store',
          key: 'receive-in-store',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Shipping',
          key: 'shipping',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
      ],
      {},
    );
  },

  async down (queryInterface, Sequelize) {
    await queryInterface.bulkDelete('delivery_methods', null, {});
  }
};
