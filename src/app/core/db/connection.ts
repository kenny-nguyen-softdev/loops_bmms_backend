import { Sequelize } from 'sequelize';
import { createNamespace } from 'cls-hooked';
import postgres from 'pg';
const host = process.env.DB_HOST ?? '';
const user = process.env.DB_USERNAME ?? '';
const password = process.env.DB_PASSWORD ?? '';
const database = process.env.DB_DATABASE ?? '';
const sequelizeConnection = new Sequelize(database, user, password, {
  host: host,
  dialect: 'postgres',
  dialectModule: postgres,
  timezone: 'Asia/Ho_Chi_Minh',
  logging: false,
});
const cls = createNamespace('bmms-loops-namespace');
Sequelize.useCLS(cls);
export default sequelizeConnection;
