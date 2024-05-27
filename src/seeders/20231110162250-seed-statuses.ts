'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.bulkInsert(
      'statuses',
      [
        {
          name: 'Ordered',
          key: 'ordered',
          statusTypeId: 6,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Order Processing',
          key: 'order-processing',
          statusTypeId: 6,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Order Completed',
          key: 'order-completed',
          statusTypeId: 6,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Order Canceled',
          key: 'order-canceled',
          statusTypeId: 6,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Not Released From Stock',
          key: 'not-released-from-stock',
          statusTypeId: 7,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Fully Exported',
          key: 'fully-exported',
          statusTypeId: 7,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Not Approved Order',
          key: 'not-approved-order',
          statusTypeId: 8,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Approved Order',
          key: 'approved-order',
          statusTypeId: 8,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Shipping Processing',
          key: 'shipping-processing',
          statusTypeId: 9,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Shipping',
          key: 'shipping',
          statusTypeId: 9,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Shipped',
          key: 'shipped',
          statusTypeId: 9,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Shipping Canceled',
          key: 'shipping-canceled',
          statusTypeId: 9,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Order Unpaid',
          key: 'order-unpaid',
          statusTypeId: 10,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Order Partial Paid',
          key: 'order-partial-paid',
          statusTypeId: 10,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Order Full Paid',
          key: 'order-full-paid',
          statusTypeId: 10,
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
