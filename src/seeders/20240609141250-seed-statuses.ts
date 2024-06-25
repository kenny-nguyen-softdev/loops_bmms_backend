'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    const data = [
      { key: 'unpaid', label_vn: 'Chưa thanh toán' },
      { key: 'trading', label_vn: 'Đang giao dịch' },
      { key: 'paid', label_vn: 'Đã thanh toán' },
      { key: 'un-imported', label_vn: 'Chưa nhập' },
      { key: 'imported', label_vn: 'Đã nhập' },
      { key: 'un-refunded', label_vn: 'Chưa hoàn tiền' },
      { key: 'partial-refund', label_vn: 'Hoàn tiền một phần' },
      { key: 'full-refund', label_vn: 'Hoàn tiền toàn bộ' },
      { key: 'not-returned-product', label_vn: 'Chưa hoàn' },
      { key: 'returned-product', label_vn: 'Đã hoàn' },
      { key: 'stock-checking', label_vn: 'Đang kiểm kho' },
      { key: 'balanced', label_vn: 'Đã cân bằng' },
      { key: 'deleted', label_vn: 'Đã hủy' },
      { key: 'ordered', label_vn: 'Đã đặt hàng' },
      { key: 'order-processing', label_vn: 'Đang xử lý' },
      { key: 'order-completed', label_vn: 'Đã hoàn thành' },
      { key: 'order-canceled', label_vn: 'Đã hủy' },
      { key: 'not-released-from-stock', label_vn: 'Chưa xuất kho' },
      { key: 'fully-exported', label_vn: 'Xuất kho toàn bộ' },
      { key: 'not-approved-order', label_vn: 'Chưa duyệt' },
      { key: 'approved-order', label_vn: 'Đã duyệt' },
      { key: 'shipping-processing', label_vn: 'Đang xử lý giao hàng' },
      { key: 'shipping', label_vn: 'Đang giao hàng' },
      { key: 'shipped', label_vn: 'Đã giao hàng' },
      { key: 'shipping-canceled', label_vn: 'Đã hủy giao hàng' },
      { key: 'order-unpaid', label_vn: 'Chưa thanh toán' },
      { key: 'order-partial-paid', label_vn: 'Thanh toán một phần' },
      { key: 'order-full-paid', label_vn: 'Thanh toán toàn bộ' },
    ];

    for (const item of data) {
      await queryInterface.bulkUpdate(
        'statuses',
        { name: item.label_vn },
        { key: item.key }
      );
    }
  },

  async down(queryInterface, Sequelize) {
    const originalData = [
      { key: 'unpaid', name: 'Unpaid' },
      { key: 'trading', name: 'Trading' },
      { key: 'paid', name: 'Paid' },
      { key: 'un-imported', name: 'Unimported' },
      { key: 'imported', name: 'imported' },
      { key: 'un-refunded', name: 'Unrefunded' },
      { key: 'partial-refund', name: 'Partial Refund' },
      { key: 'full-refund', name: 'Full Refund' },
      { key: 'not-returned-product', name: 'Not returned product' },
      { key: 'returned-product', name: 'Returned Product' },
      { key: 'stock-checking', name: 'Stock Checking' },
      { key: 'balanced', name: 'Balanced' },
      { key: 'deleted', name: 'Deleted' },
      { key: 'ordered', name: 'Ordered' },
      { key: 'order-processing', name: 'Order Processing' },
      { key: 'order-completed', name: 'Order Completed' },
      { key: 'order-canceled', name: 'Order Canceled' },
      { key: 'not-released-from-stock', name: 'Not Released From Stock' },
      { key: 'fully-exported', name: 'Fully Exported' },
      { key: 'not-approved-order', name: 'Not Approved Order' },
      { key: 'approved-order', name: 'Approved Order' },
      { key: 'shipping-processing', name: 'Shipping Processing' },
      { key: 'shipping', name: 'Shipping' },
      { key: 'shipped', name: 'Shipped' },
      { key: 'shipping-canceled', name: 'Shipping Canceled' },
      { key: 'order-unpaid', name: 'Order Unpaid' },
      { key: 'order-partial-paid', name: 'Order Partial Paid' },
      { key: 'order-full-paid', name: 'Order Full Paid' },
    ];

    for (const item of originalData) {
      await queryInterface.bulkUpdate(
        'statuses',
        { name: item.name },
        { key: item.key }
      );
    }
  }
};
