'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    try {
      await queryInterface.addColumn('combo_items', 'quantity', {
        type: Sequelize.INTEGER,
        defaultValue: 0,
      });
    } catch (error) {
      throw error;
    }
  },

  async down(queryInterface) {
    try {
      await queryInterface.removeColumn('combo_items', 'quantity');
    } catch (error) {
      throw error;
    }
  },
};
