'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('combos', {
      id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true,
      },
      categoryId: {
        type: Sequelize.INTEGER,
        allowNull: true,
        references: {
          model: 'categories',
          key: 'id',
        },
      },
      brandId: {
        type: Sequelize.INTEGER,
        allowNull: true,
        references: {
          model: 'brands',
          key: 'id',
        },
      },
      sku: {
        type: Sequelize.STRING,
        allowNull: true,
      },
      barcode: {
        type: Sequelize.STRING,
        allowNull: true,
      },
      name: {
        type: Sequelize.STRING,
        allowNull: true,
      },
      description: {
        type: Sequelize.TEXT,
        allowNull: true,
      },
      costPrice: {
        type: Sequelize.BIGINT,
        allowNull: true,
      },
      salePrice: {
        type: Sequelize.BIGINT,
        allowNull: true,
      },
      wholesalePrice: {
        type: Sequelize.BIGINT,
        allowNull: true,
      },
      standardUnit: {
        type: Sequelize.STRING,
        allowNull: true,
      },
      weight: {
        type: Sequelize.DECIMAL(10, 2),
        allowNull: true,
      },
      weightUnitId: {
        type: Sequelize.INTEGER,
        allowNull: true,
        references: {
          model: 'units',
          key: 'id',
        },
      },
      isActive: {
        type: Sequelize.BOOLEAN,
        defaultValue: true,
      },
      isConsistOfSalePrice: {
        type: Sequelize.BOOLEAN,
        allowNull: true,
        defaultValue: true,
      },
      inputTaxId: {
        type: Sequelize.INTEGER,
        allowNull: true,
        references: {
          model: 'taxes',
          key: 'id',
        },
      },
      outputTaxId: {
        type: Sequelize.INTEGER,
        allowNull: true,
        references: {
          model: 'taxes',
          key: 'id',
        },
      },
      createdAt: {
        type: Sequelize.DATE,
        allowNull: true,
      },
      updatedAt: {
        type: Sequelize.DATE,
        allowNull: true,
      },
      deletedAt: {
        type: Sequelize.DATE,
        allowNull: true,
      },
    });
  },

  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable('combos');
  },
};
