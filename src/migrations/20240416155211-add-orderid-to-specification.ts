'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up (queryInterface, Sequelize) {
    await queryInterface.addColumn('specifications', 'orderId', {
      allowNull: true,
      type: Sequelize.INTEGER,
      references: {
        model: 'orders',
        key: 'id',
      },
    });
  },

  async down (queryInterface, Sequelize) {
    await queryInterface.removeColumn('specifications', 'orderId');
  }
};
