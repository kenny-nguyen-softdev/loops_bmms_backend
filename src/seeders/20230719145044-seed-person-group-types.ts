'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.bulkInsert(
      'person_group_types',
      [
        {
          name: 'Staff',
          key: 'staff',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Customer',
          key: 'customer',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Supplier',
          key: 'supplier',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Delivery',
          key: 'delivery',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Other',
          key: 'other',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
      ],
      {},
    );
  },

  async down(queryInterface) {
    await queryInterface.bulkDelete('person_group_types', null, {});
  },
};
