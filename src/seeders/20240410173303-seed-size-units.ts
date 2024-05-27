'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up (queryInterface, Sequelize) {
    await queryInterface.bulkInsert(
      'size_units',
      [
        {
          name: 'Rộng',
          key: 'width',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Dài',
          key: 'length',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Cao',
          key: 'height',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'SL/Hệ Số',
          key: 'coefficient',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
      ],
      {},
    );
  },

  async down (queryInterface, Sequelize) {
    await queryInterface.bulkDelete('size_units', null, {});
  }
};
