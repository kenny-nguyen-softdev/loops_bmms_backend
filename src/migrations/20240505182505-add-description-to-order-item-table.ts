'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up (queryInterface, Sequelize) {
    await queryInterface.addColumn('order_items', 'description', {
      allowNull: true,
      type: Sequelize.STRING
    });
  },

  async down (queryInterface) {
    await queryInterface.removeColumn('order_items', 'description');
  }
};
