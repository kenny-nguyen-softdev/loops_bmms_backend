'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('products', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
      },
      categoryId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'categories',
          key: 'id',
        },
      },
      brandId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'brands',
          key: 'id',
        },
      },
      sku: {
        allowNull: true,
        type: Sequelize.STRING,
      },
      barcode: {
        allowNull: true,
        type: Sequelize.STRING,
      },
      name: {
        allowNull: true,
        type: Sequelize.STRING,
      },
      description: {
        allowNull: true,
        type: Sequelize.TEXT,
      },
      costPrice: {
        allowNull: true,
        type: Sequelize.BIGINT,
      },
      salePrice: {
        allowNull: true,
        type: Sequelize.BIGINT,
      },
      wholesalePrice: {
        allowNull: true,
        type: Sequelize.BIGINT,
      },
      inventoryQuantity: {
        allowNull: true,
        type: Sequelize.INTEGER,
      },
      standardUnit: {
        allowNull: true,
        type: Sequelize.STRING,
      },
      isInventory: {
        defaultValue: false,
        type: Sequelize.BOOLEAN,
      },
      weight: {
        allowNull: true,
        type: Sequelize.DECIMAL(10, 2),
      },
      weightUnitId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'units',
          key: 'id',
        },
      },
      width: {
        allowNull: true,
        type: Sequelize.DECIMAL(10, 2),
      },
      length: {
        allowNull: true,
        type: Sequelize.DECIMAL(10, 2),
      },
      sizeUnitId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'units',
          key: 'id',
        },
      },
      isActive: {
        type: Sequelize.BOOLEAN,
        defaultValue: true,
      },
      createdAt: {
        allowNull: true,
        type: Sequelize.DATE,
      },
      updatedAt: {
        allowNull: true,
        type: Sequelize.DATE,
      },
      deletedAt: {
        allowNull: true,
        type: Sequelize.DATE,
      },
    });
  },
  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('products');
  },
};
