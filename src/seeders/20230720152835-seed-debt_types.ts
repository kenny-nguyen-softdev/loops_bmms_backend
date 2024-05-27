'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.bulkInsert(
      'debt_types',
      [
        {
          name: 'Supplier Debt',
          key: 'supplier_debt',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Customer Debt',
          key: 'customer_debt',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
      ],
      {},
    );
  },

  async down(queryInterface, Sequelize) {
    await queryInterface.bulkDelete('debt_types', null, {});
  },
};
