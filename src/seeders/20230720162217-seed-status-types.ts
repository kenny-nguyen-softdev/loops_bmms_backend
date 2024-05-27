'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.bulkInsert(
      'status_types',
      [
        {
          name: 'Payment Status',
          key: 'payment_status',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Import Inventory Status',
          key: 'import_inventory_status',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Balance Inventory Status',
          key: 'balance_inventory_status',
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
