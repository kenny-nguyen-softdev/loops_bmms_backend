'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    try {
      await queryInterface.addColumn('users', 'personGroupTypeId', {
        type: Sequelize.INTEGER,
        allowNull: true,
        references: {
          model: 'person_group_types',
          key: 'id',
        },
        after: 'isActive',
      });
    } catch (error) {
      throw error;
    }
  },

  async down(queryInterface) {
    try {
      await queryInterface.removeColumn('users', 'personGroupTypeId');
    } catch (error) {
      throw error;
    }
  },
};
