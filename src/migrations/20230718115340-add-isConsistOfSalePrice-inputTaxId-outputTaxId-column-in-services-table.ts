'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    const transaction = await queryInterface.sequelize.transaction();
    try {
      await queryInterface.addColumn('services', 'isConsistOfSalePrice', {
        type: Sequelize.BOOLEAN,
        allowNull: true,
        defaultValue: false,
        after: 'isActive',
        transaction,
      });
      await queryInterface.addColumn('services', 'inputTaxId', {
        type: Sequelize.INTEGER,
        allowNull: true,
        references: {
          model: 'taxes',
          key: 'id',
        },
        after: 'isConsistOfSalePrice',
        transaction,
      });
      await queryInterface.addColumn('services', 'outputTaxId', {
        type: Sequelize.INTEGER,
        allowNull: true,
        references: {
          model: 'taxes',
          key: 'id',
        },

        after: 'inputTaxId',
        transaction,
      });
      await transaction.commit();
    } catch (err) {
      await transaction.rollback();
      throw err;
    }
  },

  async down(queryInterface, Sequelize) {
    const transaction = await queryInterface.sequelize.transaction();
    try {
      await queryInterface.removeColumn('services', 'isConsistOfSalePrice'), { transaction };
      await queryInterface.removeColumn('services', 'inputTaxId', { transaction });
      await queryInterface.removeColumn('services', 'outputTaxId', { transaction });
      await transaction.commit();
    } catch (err) {
      await transaction.rollback();
      throw err;
    }
  },
};
