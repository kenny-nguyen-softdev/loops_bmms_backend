'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('vouchers', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
      },
      voucherTypeId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'voucher_types',
          key: 'id',
        },
      },
      code: {
        allowNull: true,
        type: Sequelize.STRING,
      },
      value: {
        allowNull: true,
        type: Sequelize.BIGINT,
      },
      description: {
        allowNull: true,
        type: Sequelize.TEXT,
      },
      recordedDate: {
        allowNull: true,
        type: Sequelize.DATE,
      },
      voucherGroupId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'voucher_groups',
          key: 'id',
        },
      },
      customerId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'customers',
          key: 'id',
        },
      },
      supplierId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'suppliers',
          key: 'id',
        },
      },
      staffId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'users',
          key: 'id',
        },
      },
      personGroupTypeId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'person_group_types',
          key: 'id',
        },
      },
      paymentMethodId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'payment_methods',
          key: 'id',
        },
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
  async down(queryInterface) {
    await queryInterface.dropTable('vouchers');
  },
};
