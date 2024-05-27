'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    try {
      await queryInterface.addColumn('images', 'serviceId', {
        type: Sequelize.INTEGER,
        allowNull: true,
        references: {
          model: 'services',
          key: 'id',
        },
      });
    } catch (error) {
      throw error;
    }
  },

  async down(queryInterface, Sequelize) {
    try {
      await queryInterface.removeColumn('images', 'serviceId');
    } catch (error) {
      throw error;
    }
  },
};
