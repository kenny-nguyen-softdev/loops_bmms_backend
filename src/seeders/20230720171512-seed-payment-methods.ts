'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.bulkInsert(
      'payment_methods',
      [
        {
          name: 'Banking',
          key: 'banking',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'COD',
          key: 'cod',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Cash',
          key: 'cash',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Card',
          key: 'card',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
      ],
      {},
    );
  },

  async down(queryInterface, Sequelize) {
    await queryInterface.bulkDelete('payment_methods', null, {});
  },
};
