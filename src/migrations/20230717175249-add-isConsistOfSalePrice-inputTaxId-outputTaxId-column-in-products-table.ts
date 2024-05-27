'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    const transaction = await queryInterface.sequelize.transaction();
    try {
      await queryInterface.addColumn('products', 'isConsistOfSalePrice', {
        type: Sequelize.BOOLEAN,
        allowNull: true,
        defaultValue: false,
        after: 'isActive',
        transaction,
      });
      await queryInterface.addColumn('products', 'inputTaxId', {
        type: Sequelize.INTEGER,
        allowNull: true,
        references: {
          model: 'taxes',
          key: 'id',
        },
        after: 'isConsistOfSalePrice',
        transaction,
      });
      await queryInterface.addColumn('products', 'outputTaxId', {
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
      await queryInterface.removeColumn('products', 'isConsistOfSalePrice'), { transaction };
      await queryInterface.removeColumn('products', 'inputTaxId', { transaction });
      await queryInterface.removeColumn('products', 'outputTaxId', { transaction });
      await transaction.commit();
    } catch (err) {
      await transaction.rollback();
      throw err;
    }
  },
};
