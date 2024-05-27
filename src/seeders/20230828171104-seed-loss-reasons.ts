'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.bulkInsert(
      'loss_reasons',
      [
        {
          name: 'Damaged',
          key: 'damaged',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Atrophy',
          key: 'atrophy',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Returns',
          key: 'returns',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Shipping',
          key: 'shipping',
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

  async down(queryInterface, Sequelize) {
    await queryInterface.bulkDelete('loss_reasons', null, {});
  },
};
