'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up (queryInterface, Sequelize) {
    await queryInterface.bulkInsert(
      'specification_types',
      [
        {
          name: 'Tấm/miếng (Tôn, Nhựa, Kính,...)',
          key: 'sheet_plank_specification',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          name: 'Viên/miếng (Gạch ốp, sàn gỗ,..)',
          key: 'brick_plank_specification',
          createdAt: new Date(),
          updatedAt: new Date(),
        },
      ],
      {},
    );
  },

  async down (queryInterface, Sequelize) {
    await queryInterface.bulkDelete('specification_types', null, {});
  }
};
