'use strict';

/** @type {import('sequelize-cli').Migration} */

module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.changeColumn('products', 'inventoryQuantity', {
      type: Sequelize.DECIMAL(10, 2),
      allowNull: true,  
    });
  },

  async down(queryInterface, Sequelize) {
    await queryInterface.changeColumn('products', 'inventoryQuantity', {
      allowNull: true,
      type: Sequelize.INTEGER,
    });
  }
};
