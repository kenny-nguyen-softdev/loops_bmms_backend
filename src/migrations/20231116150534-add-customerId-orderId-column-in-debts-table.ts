'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up (queryInterface, Sequelize) {
    const transaction = await queryInterface.sequelize.transaction();
    try {
      await queryInterface.addColumn('debts', 'customerId', {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'customers',
          key: 'id',
        },
        transaction,
      });
      await queryInterface.addColumn('debts', 'orderId', {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'orders',
          key: 'id',
        },
        transaction,
      });
      await transaction.commit();
    } catch (error) {
      await transaction.rollback();
      throw error;
    }
  },

  async down (queryInterface, Sequelize) {
    const transaction = await queryInterface.sequelize.transaction();
    try {
      await queryInterface.removeColumn('debts', 'customerId'), { transaction };
      await queryInterface.removeColumn('debts', 'orderId', { transaction });
      await transaction.commit();
    } catch (err) {
      await transaction.rollback();
      throw err;
    }
  }
};
