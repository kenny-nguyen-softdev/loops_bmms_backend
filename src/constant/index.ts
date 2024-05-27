export const DEBT_TYPES = {
  supplierDebt: 'supplier_debt',
  customerDebt: 'customer_debt',
};

export const VOUCHER_TYPES = {
  receiptVoucher: 'receipt_voucher',
  paymentVoucher: 'payment_voucher',
  purchaseOrder: 'purchase_order',
  returnedPurchaseOrder: 'returned_purchase_order',
};

export const PERSON_GROUP_TYPES = {
  staff: 'staff',
  customer: 'customer',
  supplier: 'supplier',
  delivery: 'delivery',
  other: 'other',
};

export const STATUS_TYPES = {
  paymentStatus: 'payment_status',
  importInventoryStatus: 'import_inventory_status',
  balanceInventoryStatus: 'balance_inventory_status',
  refundMoneyStatus: 'refund_money_status',
  returnedProductStatus: 'returned_product_status',
  orderStatus: 'order_status',
  exportingInventoryStatus: 'exporting_inventory_status',
  approvedStatus: 'approved_status',
  shippingStatus: 'shipping_status',
  orderPaymentStatus: 'order_payment_status'
};

export const STATUSES = {
  unpaid: 'unpaid',
  trading: 'trading',
  paid: 'paid',
  unimported: 'un-imported',
  imported: 'imported',
  unrefunded: 'un-refunded',
  partialrefund: 'partial-refund',
  fullrefund: 'full-refund',
  notreturnedproduct: 'not-returned-product',
  returnedproduct: 'returned-product',
  stockChecking: 'stock-checking',
  balanced: 'balanced',
  deleted: 'deleted',
  ordered: 'ordered',
  orderProcessing: 'order-processing',
  orderCompleted: 'order-completed',
  orderCanceled: 'order-canceled',
  notReleasedFromStock: 'not-released-from-stock',
  fullyExported: 'fully-exported',
  notApprovedOrder: 'not-approved-order',
  approvedOrder: 'approved-order',
  shippingProcessing: 'shipping-processing',
  shipping: 'shipping',
  shipped: 'shipped',
  shippingCanceled: 'shipping-canceled',
  orderUnpaid: 'order-unpaid',
  orderPartialPaid: 'order-partial-paid',
  orderFullPaid: 'order-full-paid',
};

export const DELIVERY_METHODS = {
  receiveInStore: 'receive-in-store',
  shipping: 'shipping'
};

export const PAYMENT_METHODS = {
  banking: 'banking',
  cod: 'cod',
  cash: 'cash',
  card: 'card'
};

export const PAPER_SIZES = {
  A0: { width: 2383.94, height: 3370.39 },
  A1: { width: 1683.78, height: 2383.94 },
  A2: { width: 1190.55, height: 1683.78 },
  A3: { width: 841.89, height: 1190.55 },
  A4: { width: 595.28, height: 841.89 },
  A5: { width: 419.53, height: 595.28 },
  A6: { width: 297.64, height: 419.53 },
  A7: { width: 209.76, height: 297.64 },
  A8: { width: 147.4, height: 209.76 },
  A9: { width: 104.88, height: 147.4 },
  A10: { width: 73.7, height: 104.88 },
};

