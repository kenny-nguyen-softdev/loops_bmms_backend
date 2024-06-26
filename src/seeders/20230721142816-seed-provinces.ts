'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    try {
      return await queryInterface.sequelize.query(`
      INSERT INTO provinces ("name", "code") VALUES
      ('Hồ Chí Minh', 'SG'),
      ('Hà Nội', 'HN'),
      ('Đà Nẵng', 'DDN'),
      ('Bình Dương', 'BD'),
      ('Đồng Nai', 'DNA'),
      ('Khánh Hòa', 'KH'),
      ('Hải Phòng', 'HP'),
      ('Long An', 'LA'),
      ('Quảng Nam', 'QNA'),
      ('Bà Rịa Vũng Tàu', 'VT'),
      ('Đắk Lắk', 'DDL'),
      ('Cần Thơ', 'CT'),
      ('Bình Thuận  ', 'BTH'),
      ('Lâm Đồng', 'LDD'),
      ('Thừa Thiên Huế', 'TTH'),
      ('Kiên Giang', 'KG'),
      ('Bắc Ninh', 'BN'),
      ('Quảng Ninh', 'QNI'),
      ('Thanh Hóa', 'TH'),
      ('Nghệ An', 'NA'),
      ('Hải Dương', 'HD'),
      ('Gia Lai', 'GL'),
      ('Bình Phước', 'BP'),
      ('Hưng Yên', 'HY'),
      ('Bình Định', 'BDD'),
      ('Tiền Giang', 'TG'),
      ('Thái Bình', 'TB'),
      ('Bắc Giang', 'BG'),
      ('Hòa Bình', 'HB'),
      ('An Giang', 'AG'),
      ('Vĩnh Phúc', 'VP'),
      ('Tây Ninh', 'TNI'),
      ('Thái Nguyên', 'TN'),
      ('Lào Cai', 'LCA'),
      ('Nam Định', 'NDD'),
      ('Quảng Ngãi', 'QNG'),
      ('Bến Tre', 'BTR'),
      ('Đắk Nông', 'DNO'),
      ('Cà Mau', 'CM'),
      ('Vĩnh Long', 'VL'),
      ('Ninh Bình', 'NB'),
      ('Phú Thọ', 'PT'),
      ('Ninh Thuận', 'NT'),
      ('Phú Yên', 'PY'),
      ('Hà Nam', 'HNA'),
      ('Hà Tĩnh', 'HT'),
      ('Đồng Tháp', 'DDT'),
      ('Sóc Trăng', 'ST'),
      ('Kon Tum', 'KT'),
      ('Quảng Bình', 'QB'),
      ('Quảng Trị', 'QT'),
      ('Trà Vinh', 'TV'),
      ('Hậu Giang', 'HGI'),
      ('Sơn La', 'SL'),
      ('Bạc Liêu', 'BL'),
      ('Yên Bái', 'YB'),
      ('Tuyên Quang', 'TQ'),
      ('Điện Biên', 'DDB'),
      ('Lai Châu', 'LCH'),
      ('Lạng Sơn', 'LS'),
      ('Hà Giang', 'HG'),
      ('Bắc Kạn', 'BK'),
      ('Cao Bằng', 'CB');
    `);
    } catch (error) {
      throw error;
    }
  },

  async down(queryInterface, Sequelize) {},
};
