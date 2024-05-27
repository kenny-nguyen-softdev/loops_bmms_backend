'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('delivery_partners', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
      },
      name: {
        allowNull: true,
        type: Sequelize.STRING,
      },
      email: {
        allowNull: true,
        type: Sequelize.STRING,
      },
      mobile: {
        allowNull: true,
        type: Sequelize.STRING,
      },
      code: {
        allowNull: true,
        type: Sequelize.STRING,
      },
      company: {
        allowNull: true,
        type: Sequelize.STRING,
      },
      address: {
        allowNull: true,
        type: Sequelize.STRING,
      },
      description: {
        allowNull: true,
        type: Sequelize.TEXT,
      },
      shippingFee: {
        allowNull: true,
        type: Sequelize.BIGINT,
      },
      wardId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'wards',
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
      deliveryPartnerGroupId: {
        allowNull: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'delivery_partner_groups',
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
  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('delivery_partners');
  },
};
