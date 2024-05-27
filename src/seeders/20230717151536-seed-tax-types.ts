'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.bulkInsert(
      'tax_types',
      [
        {
          name: 'Input Tax',
          key: 'input-tax',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Output Tax',
          key: 'output-tax',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
      ],
      {},
    );
  },

  async down(queryInterface, Sequelize) {
    await queryInterface.bulkDelete('tax_types', null, {});
  },
};
