'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up (queryInterface, Sequelize) {
    await queryInterface.addColumn('order_items', 'productUnitId', {
      allowNull: true,
      type: Sequelize.INTEGER,
      references: {
        model: 'product_units',
        key: 'id',
      },
    });
  },

  async down (queryInterface) {
    await queryInterface.removeColumn('order_items', 'productUnitId');
  }
};
