'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    try {
      await queryInterface.addColumn('customers', 'customerGroupId', {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'customer_groups',
          key: 'id',
        },
      });
    } catch (error) {
      throw error;
    }
  },

  async down(queryInterface) {
    try {
      await queryInterface.removeColumn('customers', 'customerGroupId');
    } catch (error) {
      throw error;
    }
  },
};
