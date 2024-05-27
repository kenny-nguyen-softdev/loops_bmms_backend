'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface) {
    await queryInterface.bulkInsert(
      'unit_types',
      [
        {
          name: 'Weight Unit',
          key: 'weight-unit',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Size Unit',
          key: 'size-unit',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
      ],
      {},
    );
  },

  async down(queryInterface) {
    await queryInterface.bulkDelete('unit_types', null, {});
  },
};
