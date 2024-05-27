'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    try {
      await queryInterface.changeColumn('users', 'privateImage', {
        allowNull: true,
        type: Sequelize.TEXT('long'),
      });
    } catch (err) {
      throw err;
    }
  },

  async down(queryInterface, Sequelize) {
    try {
      await queryInterface.changeColumn('users', 'privateImage', {
        allowNull: true,
        type: Sequelize.STRING,
      });
    } catch (err) {
      throw err;
    }
  },
};
