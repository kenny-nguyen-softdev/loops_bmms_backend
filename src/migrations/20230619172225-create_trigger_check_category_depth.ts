'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    // Add the trigger
    await queryInterface.sequelize.query(`
      CREATE OR REPLACE FUNCTION check_category_depth() RETURNS TRIGGER AS $$
      BEGIN
        DECLARE
          parent_category_id INTEGER;
          depth_level INTEGER := 0;
        BEGIN
          parent_category_id := NEW."categoryId";

          -- Iterate through parent categories until reaching the top or depth level four
          WHILE parent_category_id IS NOT NULL AND depth_level < 4 LOOP
            SELECT "categoryId" INTO parent_category_id
            FROM categories
            WHERE id = parent_category_id;

            depth_level := depth_level + 1;
          END LOOP;

          -- Raise an exception if the depth level is four or greater
          IF depth_level >= 3 THEN
            RAISE EXCEPTION 'Category depth level exceeded (maximum depth: 3)';
          END IF;

          RETURN NEW;
        END;
      END;
      $$ LANGUAGE plpgsql;
    `);

    await queryInterface.sequelize.query(`
      CREATE TRIGGER before_insert_update_category
      BEFORE INSERT OR UPDATE ON categories
      FOR EACH ROW
      EXECUTE FUNCTION check_category_depth();
    `);
  },

  down: async (queryInterface, Sequelize) => {
    await queryInterface.sequelize.query(`
      DROP TRIGGER before_insert_update_category ON categories;
    `);

    await queryInterface.sequelize.query(`
      DROP FUNCTION check_category_depth();
    `);
  },
};
