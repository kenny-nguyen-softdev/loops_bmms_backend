'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    try {
      await queryInterface.addColumn('images', 'comboId', {
        type: Sequelize.INTEGER,
        allowNull: true,
        references: {
          model: 'combos',
          key: 'id',
        },
      });
    } catch (error) {
      throw error;
    }
  },

  async down(queryInterface, Sequelize) {
    try {
      await queryInterface.removeColumn('images', 'comboId');
    } catch (error) {
      throw error;
    }
  },
};
