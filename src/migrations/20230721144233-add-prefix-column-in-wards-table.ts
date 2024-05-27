'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    try {
      await queryInterface.addColumn('wards', 'prefix', {
        type: Sequelize.STRING,
        allowNull: true,
      });
    } catch (error) {
      throw error;
    }
  },

  async down(queryInterface, Sequelize) {
    try {
      await queryInterface.removeColumn('wards', 'prefix');
    } catch (error) {
      throw error;
    }
  },
};
