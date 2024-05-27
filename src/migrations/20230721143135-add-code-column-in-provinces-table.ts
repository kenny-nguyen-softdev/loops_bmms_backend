'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    try {
      await queryInterface.addColumn('provinces', 'code', {
        type: Sequelize.STRING,
        allowNull: true,
      });
    } catch (error) {
      throw error;
    }
  },

  async down(queryInterface) {
    try {
      await queryInterface.removeColumn('provinces', 'code');
    } catch (error) {
      throw error;
    }
  },
};
