'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up (queryInterface, Sequelize) {
    await queryInterface.addColumn('users', 'customerId', {
      allowNull: true,
      type: Sequelize.INTEGER,
      references: {
        model: 'customers',
        key: 'id',
      },
    });
  },

  async down (queryInterface, Sequelize) {
    await queryInterface.removeColumn('users', 'customerId');
  }
};
