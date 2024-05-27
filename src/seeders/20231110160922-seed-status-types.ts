'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.bulkInsert(
      'status_types',
      [
        {
          name: 'Order Status',
          key: 'order_status',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Exporting Inventory Status',
          key: 'exporting_inventory_status',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Approved Status',
          key: 'approved_status',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Shipping Status',
          key: 'shipping_status',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Order Payment Status',
          key: 'order_payment_status',
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
