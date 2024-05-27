'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await Promise.all([
      queryInterface.changeColumn('order_items', 'quantity', {
        allowNull: true,  
        type: Sequelize.DECIMAL(10, 2),
      }),
      queryInterface.changeColumn('order_items', 'totalPrice', {
        allowNull: true,
        type: Sequelize.DECIMAL(10, 2),
      })
    ]);
  },

  async down(queryInterface, Sequelize) {
    await Promise.all([
      queryInterface.changeColumn('order_items', 'quantity', {
        allowNull: true,
        type: Sequelize.INTEGER,
      }),
      queryInterface.changeColumn('order_items', 'totalPrice', {
        allowNull: true,
        type: Sequelize.BIGINT,
      })
    ]);
  }
};
