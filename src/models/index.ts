import { User, UserInput, UserAttributes, UserOutput } from './User';
import { Category, CategoryAttributes, CategoryInput, CategoryOutput } from './Category';
import { Brand, BrandAttributes, BrandInput, BrandOutput } from './Brand';
import { Service, ServiceAttributes, ServiceInput, ServiceOutput } from './Service';
import { RefreshToken, RefreshTokenInput, RefreshTokenOutput, RefreshTokenAttributes } from './RefreshToken';
import { UnitType, UnitTypeAttributes, UnitTypeInput, UnitTypeOutput } from './UnitType';
import { Unit, UnitAttributes, UnitInput, UnitOutput } from './Unit';
import { Product, ProductAttributes, ProductInput, ProductOutput } from './Product';
import { Combo, ComboAttributes, ComboInput, ComboOutput } from './Combo';
import { Image, ImageAttributes, ImageInput, ImageOutput } from './Image';
import { TaxType, TaxTypeAttributes, TaxTypeInput, TaxTypeOutput } from './TaxType';
import { Tax, TaxAttributes, TaxInput, TaxOutput } from './Tax';
import { StatusType, StatusTypeAttributes, StatusTypeInput, StatusTypeOutput } from './StatusType';
import { Status, StatusAttributes, StatusInput, StatusOutput } from './Status';
import { PaymentMethod, PaymentMethodAttributes, PaymentMethodInput, PaymentMethodOutput } from './PaymentMethod';
import { SupplierGroup, SupplierGroupAttributes, SupplierGroupInput, SupplierGroupOutput } from './SupplierGroup';
import {
  PersonGroupType,
  PersonGroupTypeAttributes,
  PersonGroupTypeInput,
  PersonGroupTypeOutput,
} from './PersonGroupType';
import { Province, ProvinceAttributes, ProvinceInput, ProvinceOutput } from './Province';
import { District, DistrictAttributes, DistrictInput, DistrictOutput } from './District';
import { Ward, WardAttributes, WardInput, WardOutput } from './Ward';
import { Supplier, SupplierAttributes, SupplierInput, SupplierOutput } from './Supplier';
import { DebtType, DebtTypeAttributes, DebtTypeInput, DebtTypeOutput } from './DebtType';
import { Debt, DebtAttributes, DebtInput, DebtOutput } from './Debt';
import { PurchaseOrder, PurchaseOrderAttributes, PurchaseOrderInput, PurchaseOrderOutput } from './PurchaseOrder';
import {
  PurchaseOrderProductItem,
  PurchaseOrderProductItemAttributes,
  PurchaseOrderProductItemInput,
  PurchaseOrderProductItemOutput,
} from './PurchaseOrderProductItem';
import {
  PurchaseOrderPayment,
  PurchaseOrderPaymentAttributes,
  PurchaseOrderPaymentInput,
  PurchaseOrderPaymentOutput,
} from './PurchaseOrderPayment';
import { Customer, CustomerAttributes, CustomerInput, CustomerOutput } from './Customer';
import { VoucherType, VoucherTypeAttributes, VoucherTypeInput, VoucherTypeOutput } from './VoucherType';
import {
  VoucherGroupType,
  VoucherGroupTypeAttributes,
  VoucherGroupTypeInput,
  VoucherGroupTypeOutput,
} from './VoucherGroupType';
import { VoucherGroup, VoucherGroupAttributes, VoucherGroupInput, VoucherGroupOutput } from './VoucherGroup';
import { Voucher, VoucherAttributes, VoucherInput, VoucherOutput } from './Voucher';
import { ComboItem, ComboItemOutput, ComboItemAttributes, ComboItemInput } from './ComboItem';
import {
  ReturnedPurchaseOrderProductItemInput,
  ReturnedPurchaseOrderProductItemOutput,
} from './ReturnedPurchaseOrderProductItem';
import {
  ReturnedPurchaseOrderProductItem,
  ReturnedPurchaseOrderProductItemAttributes,
} from './ReturnedPurchaseOrderProductItem';
import {
  ReturnedPurchaseOrder,
  ReturnedPurchaseOrderAttributes,
  ReturnedPurchaseOrderInput,
  ReturnedPurchaseOrderOutput,
} from './ReturnedPurchaseOrder';
import {
  OrderSupplierProductItem,
  OrderSupplierProductItemInput,
  OrderSupplierProductItemOutput,
  OrderSupplierProductItemAttributes,
} from './OrderSupplierProductItem';
import { OrderSupplier, OrderSupplierInput, OrderSupplierOutput, OrderSupplierAttributes } from './OrderSupplier';
import {
  StockAdjustment,
  StockAdjustmentAttributes,
  StockAdjustmentInput,
  StockAdjustmentOutput,
} from './StockAdjustment';
import { LossReason, LossReasonAttributes, LossReasonInput, LossReasonOutput } from './LossReason';
import {
  StockAdjustmentProductItem,
  StockAdjustmentProductItemAttributes,
  StockAdjustmentProductItemInput,
  StockAdjustmentProductItemOutput,
} from './StockAdjustmentProductItem';
import { CustomerGroup, CustomerGroupAttributes, CustomerGroupInput, CustomerGroupOutput } from './CustomerGroup';
import {
  DeliveryPartnerGroup,
  DeliveryPartnerGroupAttributes,
  DeliveryPartnerGroupInput,
  DeliveryPartnerGroupOutput,
} from './DeliveryPartnerGroup';
import {
  DeliveryPartner,
  DeliveryPartnerAttributes,
  DeliveryPartnerInput,
  DeliveryPartnerOutput,
} from './DeliveryPartner';
import { DeliveryMethod, DeliveryMethodAttributes, DeliveryMethodInput, DeliveryMethodOutput } from './DeliveryMethod';
import { Order, OrderAttributes, OrderInput, OrderOutput } from './Order';
import { OrderItem, OrderItemAttributes, OrderItemInput, OrderItemOutput } from './OrderItem';
import { OrderPayment, OrderPaymentAttributes, OrderPaymentInput, OrderPaymentOutput } from './OrderPayment';
import {ProductUnit, ProductUnitAttributes, ProductUnitInput, ProductUnitOutput} from './ProductUnit';
import {SizeUnit, SizeUnitAttributes, SizeUnitInput, SizeUnitOutput} from './SizeUnit';
import {SpecificationType, SpecificationTypeAttributes, SpecificationTypeInput, SpecificationTypeOutput} from './SpecificationType';
import {Specification, SpecificationAttributes, SpecificationInput, SpecificationOutput} from './Specification';
import { ReturnedOrder, ReturnedOrderAttributes, ReturnedOrderInput, ReturnedOrderOutput } from './ReturnedOrder';
import { ReturnedOrderItem, ReturnedOrderItemAttributes, ReturnedOrderItemInput, ReturnedOrderItemOutput } from './ReturnedOrderItem';

export {
  User,
  UserAttributes,
  UserInput,
  UserOutput,
  RefreshToken,
  RefreshTokenAttributes,
  RefreshTokenInput,
  RefreshTokenOutput,
  Category,
  CategoryAttributes,
  CategoryInput,
  CategoryOutput,
  Brand,
  BrandAttributes,
  BrandInput,
  BrandOutput,
  UnitType,
  UnitTypeAttributes,
  UnitTypeInput,
  UnitTypeOutput,
  Unit,
  UnitAttributes,
  UnitInput,
  UnitOutput,
  Product,
  ProductAttributes,
  ProductInput,
  ProductOutput,
  Image,
  ImageAttributes,
  ImageInput,
  ImageOutput,
  Service,
  ServiceAttributes,
  ServiceInput,
  ServiceOutput,
  TaxType,
  TaxTypeAttributes,
  TaxTypeInput,
  TaxTypeOutput,
  Tax,
  TaxAttributes,
  TaxInput,
  TaxOutput,
  StatusType,
  StatusTypeAttributes,
  StatusTypeInput,
  StatusTypeOutput,
  Status,
  StatusAttributes,
  StatusInput,
  StatusOutput,
  PaymentMethod,
  PaymentMethodAttributes,
  PaymentMethodInput,
  PaymentMethodOutput,
  SupplierGroup,
  SupplierGroupAttributes,
  SupplierGroupInput,
  SupplierGroupOutput,
  PersonGroupType,
  PersonGroupTypeAttributes,
  PersonGroupTypeInput,
  PersonGroupTypeOutput,
  Province,
  ProvinceAttributes,
  ProvinceInput,
  ProvinceOutput,
  District,
  DistrictAttributes,
  DistrictInput,
  DistrictOutput,
  Ward,
  WardAttributes,
  WardInput,
  WardOutput,
  Supplier,
  SupplierAttributes,
  SupplierInput,
  SupplierOutput,
  DebtType,
  DebtTypeAttributes,
  DebtTypeInput,
  DebtTypeOutput,
  Debt,
  DebtAttributes,
  DebtInput,
  DebtOutput,
  PurchaseOrder,
  Combo,
  ComboAttributes,
  ComboInput,
  ComboOutput,
  ComboItem,
  ComboItemInput,
  ComboItemOutput,
  ComboItemAttributes,
  PurchaseOrderAttributes,
  PurchaseOrderInput,
  PurchaseOrderOutput,
  PurchaseOrderProductItem,
  PurchaseOrderProductItemAttributes,
  PurchaseOrderProductItemInput,
  PurchaseOrderProductItemOutput,
  PurchaseOrderPayment,
  PurchaseOrderPaymentAttributes,
  PurchaseOrderPaymentInput,
  PurchaseOrderPaymentOutput,
  Customer,
  CustomerAttributes,
  CustomerInput,
  CustomerOutput,
  VoucherType,
  VoucherTypeAttributes,
  VoucherTypeInput,
  VoucherTypeOutput,
  VoucherGroupType,
  VoucherGroupTypeAttributes,
  VoucherGroupTypeInput,
  VoucherGroupTypeOutput,
  VoucherGroup,
  VoucherGroupAttributes,
  VoucherGroupInput,
  VoucherGroupOutput,
  Voucher,
  VoucherAttributes,
  VoucherInput,
  VoucherOutput,
  ReturnedPurchaseOrder,
  ReturnedPurchaseOrderAttributes,
  ReturnedPurchaseOrderInput,
  ReturnedPurchaseOrderOutput,
  ReturnedPurchaseOrderProductItem,
  ReturnedPurchaseOrderProductItemAttributes,
  ReturnedPurchaseOrderProductItemInput,
  ReturnedPurchaseOrderProductItemOutput,
  OrderSupplier,
  OrderSupplierInput,
  OrderSupplierOutput,
  OrderSupplierAttributes,
  OrderSupplierProductItem,
  OrderSupplierProductItemInput,
  OrderSupplierProductItemOutput,
  OrderSupplierProductItemAttributes,
  StockAdjustment,
  StockAdjustmentAttributes,
  StockAdjustmentInput,
  StockAdjustmentOutput,
  LossReason,
  LossReasonAttributes,
  LossReasonInput,
  LossReasonOutput,
  StockAdjustmentProductItem,
  StockAdjustmentProductItemAttributes,
  StockAdjustmentProductItemInput,
  StockAdjustmentProductItemOutput,
  CustomerGroup,
  CustomerGroupAttributes,
  CustomerGroupInput,
  CustomerGroupOutput,
  DeliveryPartnerGroup,
  DeliveryPartnerGroupAttributes,
  DeliveryPartnerGroupInput,
  DeliveryPartnerGroupOutput,
  DeliveryPartner,
  DeliveryPartnerAttributes,
  DeliveryPartnerInput,
  DeliveryPartnerOutput,
  DeliveryMethod,
  DeliveryMethodAttributes,
  DeliveryMethodInput,
  DeliveryMethodOutput,
  Order,
  OrderAttributes,
  OrderInput,
  OrderOutput,
  OrderItem,
  OrderItemAttributes,
  OrderItemInput,
  OrderItemOutput,
  OrderPayment,
  OrderPaymentAttributes,
  OrderPaymentInput,
  OrderPaymentOutput,
  ProductUnit,
  ProductUnitAttributes,
  ProductUnitInput,
  ProductUnitOutput,
  SizeUnit,
  SizeUnitAttributes,
  SizeUnitInput,
  SizeUnitOutput,
  SpecificationType,
  SpecificationTypeAttributes,
  SpecificationTypeInput,
  SpecificationTypeOutput,
  Specification,
  SpecificationAttributes,
  SpecificationInput,
  SpecificationOutput,
  ReturnedOrder,
  ReturnedOrderAttributes,
  ReturnedOrderInput,
  ReturnedOrderOutput,
  ReturnedOrderItem,
  ReturnedOrderItemAttributes,
  ReturnedOrderItemInput,
  ReturnedOrderItemOutput,
};

// User
User.hasMany(RefreshToken, { foreignKey: 'userId' });
User.belongsTo(PersonGroupType, { foreignKey: 'personGroupTypeId' });

// RefreshToken
RefreshToken.belongsTo(User, { foreignKey: 'userId' });

// Category
Category.hasMany(Category, { foreignKey: 'categoryId', as: '_children' });
Category.belongsTo(Category, { foreignKey: 'categoryId' });
Category.hasMany(Product, { foreignKey: 'categoryId' });
Category.hasMany(Service, { foreignKey: 'categoryId' });
Category.hasMany(Combo, { foreignKey: 'categoryId' });

// UnitType
UnitType.hasMany(Unit, { foreignKey: 'unitTypeId' });

// Unit
Unit.belongsTo(UnitType, { foreignKey: 'unitTypeId' });

// Product
Product.belongsTo(Category, { foreignKey: 'categoryId', as: 'category' });
Product.belongsTo(Brand, { foreignKey: 'brandId', as: 'brand' });
Product.hasMany(Image, { foreignKey: 'productId', as: 'images' });
Product.belongsTo(Unit, { foreignKey: 'weightUnitId', as: 'weightUnit' });
Product.belongsTo(Unit, { foreignKey: 'sizeUnitId', as: 'sizeUnit' });
Product.belongsToMany(PurchaseOrder, { foreignKey: 'productId', through: 'purchase_order_product_items' });
Product.belongsTo(Tax, { foreignKey: 'inputTaxId', as: 'inputTax' });
Product.belongsTo(Tax, { foreignKey: 'outputTaxId', as: 'outputTax' });
Product.hasMany(ProductUnit, { as: 'productUnits', foreignKey: 'productId' });
Product.hasMany(Specification, { as: 'specifications', foreignKey: 'productId' });
Product.belongsToMany(Order, { foreignKey: 'productId', through: 'order_items' });


// PurchaseOrder
PurchaseOrder.belongsToMany(Product, {
  foreignKey: 'productId',
  through: 'purchase_order_product_items',
});
PurchaseOrder.hasMany(PurchaseOrderProductItem, { foreignKey: 'purchaseOrderId', as: 'purchaseOrderProductItems' });
PurchaseOrder.hasMany(PurchaseOrderPayment, { foreignKey: 'purchaseOrderId', as: 'purchaseOrderPayments' });
PurchaseOrder.hasMany(ReturnedPurchaseOrder, { foreignKey: 'purchaseOrderId', as: 'returnedPurchaseOrders' });
PurchaseOrder.belongsTo(VoucherType, { foreignKey: 'voucherTypeId', as: 'voucherType' });
PurchaseOrder.belongsTo(Supplier, { foreignKey: 'supplierId', as: 'supplier' });
PurchaseOrder.belongsTo(User, { foreignKey: 'staffId', as: 'staff' });
PurchaseOrder.belongsTo(Status, { foreignKey: 'paymentStatusId', as: 'paymentStatus' });
PurchaseOrder.belongsTo(Status, { foreignKey: 'importStatusId', as: 'importStatus' });
PurchaseOrder.belongsTo(OrderSupplier, { foreignKey: 'orderSupplierId', as: 'orderSupplier' });

// OrderSupplier
OrderSupplier.belongsToMany(Product, {
  foreignKey: 'productId',
  through: 'order_supplier_product_items',
});
OrderSupplier.hasMany(OrderSupplierProductItem, { foreignKey: 'orderSupplierId', as: 'orderSupplierProductItems' });
OrderSupplier.hasMany(PurchaseOrder, { foreignKey: 'orderSupplierId', as: 'purchaseOrders' });
OrderSupplier.belongsTo(User, { foreignKey: 'staffId', as: 'staff' });
OrderSupplier.belongsTo(Supplier, { foreignKey: 'supplierId', as: 'supplier' });
OrderSupplier.belongsTo(Status, { foreignKey: 'importStatusId', as: 'importStatus' });

// OrderSupplierProductItem
OrderSupplierProductItem.belongsTo(Product, { foreignKey: 'productId', as: 'product' });
OrderSupplierProductItem.belongsTo(OrderSupplier, { foreignKey: 'orderSupplierId', as: 'orderSupplier' });

// StockAdjustment
StockAdjustment.belongsToMany(Product, {
  foreignKey: 'productId',
  through: 'stock_adjustment_product_items',
  as: 'products',
});
StockAdjustment.hasMany(StockAdjustmentProductItem, {
  foreignKey: 'stockAdjustmentId',
  as: 'stockAdjustmentProductItems',
});
StockAdjustment.belongsTo(User, { foreignKey: 'createdStaffId', as: 'createdStaff' });
StockAdjustment.belongsTo(User, { foreignKey: 'checkingStaffId', as: 'checkingStaff' });
StockAdjustment.belongsTo(User, { foreignKey: 'adjustmentStaffId', as: 'adjustmentStaff' });
StockAdjustment.belongsTo(Status, { foreignKey: 'adjustmentStatusId', as: 'adjustmentStatus' });
StockAdjustment.belongsToMany(Product, {
  foreignKey: 'productId',
  through: 'stock_adjustment_product_items',
});

// StockAdjustmentProductItem
StockAdjustmentProductItem.belongsTo(Product, { foreignKey: 'productId', as: 'product' });
StockAdjustmentProductItem.belongsTo(StockAdjustment, { foreignKey: 'stockAdjustmentId', as: 'stockAdjustment' });
StockAdjustmentProductItem.belongsTo(LossReason, { foreignKey: 'lossReasonId', as: 'lossReason' });

// ReturnedPurchaseOrder
ReturnedPurchaseOrder.hasMany(ReturnedPurchaseOrderProductItem, {
  foreignKey: 'returnedPurchaseOrderId',
  as: 'returnedPurchaseOrderProductItems',
});
ReturnedPurchaseOrder.belongsTo(VoucherType, { foreignKey: 'voucherTypeId', as: 'voucherType' });
ReturnedPurchaseOrder.belongsTo(PurchaseOrder, { foreignKey: 'purchaseOrderId', as: 'purchaseOrder' });
ReturnedPurchaseOrder.belongsTo(PaymentMethod, { foreignKey: 'paymentMethodId', as: 'paymentMethod' });
ReturnedPurchaseOrder.belongsTo(Status, { foreignKey: 'returnedStatusId', as: 'returnedStatus' });
ReturnedPurchaseOrder.belongsTo(Status, { foreignKey: 'refundStatusId', as: 'refundStatus' });
ReturnedPurchaseOrder.belongsToMany(Product, {
  foreignKey: 'productId',
  through: 'returned_purchase_order_product_items',
});

// PurchaseOrderProductItem
PurchaseOrderProductItem.belongsTo(Product, { foreignKey: 'productId', as: 'product' });
PurchaseOrderProductItem.belongsTo(PurchaseOrder, { foreignKey: 'purchaseOrderId', as: 'purchaseOrder' });

// ReturnedPurchaseOrderProductItem
ReturnedPurchaseOrderProductItem.belongsTo(Product, { foreignKey: 'productId', as: 'product' });
ReturnedPurchaseOrderProductItem.belongsTo(ReturnedPurchaseOrder, {
  foreignKey: 'returnedPurchaseOrderId',
  as: 'returnedPurchaseOrder',
});

// PurchaseOrderPayment
PurchaseOrderPayment.belongsTo(PurchaseOrder, { foreignKey: 'purchaseOrderId', as: 'purchaseOrder' });
PurchaseOrderPayment.belongsTo(PaymentMethod, { foreignKey: 'paymentMethodId', as: 'paymentMethod' });

// Brand
Brand.hasMany(Product, { foreignKey: 'brandId' });
Brand.hasMany(Combo, { foreignKey: 'brandId' });

// Image
Image.belongsTo(Product, { foreignKey: 'productId' });
Image.belongsTo(Service, { foreignKey: 'serviceId' });
Image.belongsTo(Combo, { foreignKey: 'comboId' });

// Service
Service.belongsTo(Category, { foreignKey: 'categoryId', as: 'category' });
Service.hasMany(Image, { foreignKey: 'serviceId', as: 'images' });
Service.belongsTo(Tax, { foreignKey: 'inputTaxId', as: 'inputTax' });
Service.belongsTo(Tax, { foreignKey: 'outputTaxId', as: 'outputTax' });

// TaxType
TaxType.hasMany(Tax, { foreignKey: 'taxTypeId' });

// Tax
Tax.belongsTo(TaxType, { foreignKey: 'taxTypeId' });

//Combo
Combo.hasMany(Image, { foreignKey: 'comboId', as: 'images' });
Combo.belongsTo(Tax, { foreignKey: 'inputTaxId', as: 'inputTax' });
Combo.belongsTo(Tax, { foreignKey: 'outputTaxId', as: 'outputTax' });
Combo.belongsTo(Category, { foreignKey: 'categoryId', as: 'category' });
Combo.belongsTo(Brand, { foreignKey: 'brandId', as: 'brand' });
Combo.belongsTo(Unit, { foreignKey: 'weightUnitId', as: 'weightUnit' });
Combo.belongsToMany(Service, { foreignKey: 'serviceId', through: 'combo_items' });
Combo.belongsToMany(Product, { foreignKey: 'productId', through: 'combo_items' });

// ComboItem
ComboItem.belongsTo(Combo, { foreignKey: 'comboId', as: 'combo' });
ComboItem.belongsTo(Service, { foreignKey: 'serviceId', as: 'service' });
ComboItem.belongsTo(Product, { foreignKey: 'productId', as: 'product' });

// Province
Province.hasMany(District, { foreignKey: 'provinceId' });

// District
District.belongsTo(Province, { foreignKey: 'provinceId', as: 'province' });
District.hasMany(Ward, { foreignKey: 'districtId' });

// Ward
Ward.belongsTo(District, { foreignKey: 'districtId', as: 'district' });

// SupplierGroup
SupplierGroup.hasMany(Supplier, { foreignKey: 'supplierGroupId' });

// Supplier
Supplier.belongsTo(SupplierGroup, { foreignKey: 'supplierGroupId', as: 'supplierGroup' });
Supplier.belongsTo(Ward, { foreignKey: 'wardId', as: 'ward' });
Supplier.belongsTo(PersonGroupType, { foreignKey: 'personGroupTypeId', as: 'personGroupType' });
Supplier.hasMany(PurchaseOrder, { foreignKey: 'supplierId', as: 'purchaseOrders' });
Supplier.hasMany(Debt, { foreignKey: 'supplierId', as: 'debts' });

// DeliveryPartnerGroup
DeliveryPartnerGroup.hasMany(DeliveryPartner, { foreignKey: 'deliveryPartnerGroupId' });

// DeliveryPartner
DeliveryPartner.belongsTo(DeliveryPartnerGroup, { foreignKey: 'deliveryPartnerGroupId', as: 'deliveryPartnerGroup' });
DeliveryPartner.belongsTo(Ward, { foreignKey: 'wardId', as: 'ward' });
DeliveryPartner.belongsTo(PersonGroupType, { foreignKey: 'personGroupTypeId', as: 'personGroupType' });

// CustomerGroup
CustomerGroup.hasMany(Customer, { foreignKey: 'customerGroupId' });

// Customer
Customer.belongsTo(Ward, { foreignKey: 'wardId', as: 'ward' });
Customer.belongsTo(PersonGroupType, { foreignKey: 'personGroupTypeId', as: 'personGroupType' });
Customer.belongsTo(CustomerGroup, { foreignKey: 'customerGroupId', as: 'customerGroup' });
Customer.hasMany(Order, { foreignKey: 'customerId', as: 'orders' });
Customer.hasMany(Debt, { foreignKey: 'customerId', as: 'debts' });

// VoucherGroupType
VoucherGroupType.hasMany(VoucherGroup, { foreignKey: 'voucherGroupTypeId' });

// VoucherGroup
VoucherGroup.belongsTo(VoucherGroupType, { foreignKey: 'voucherGroupTypeId' });

// Voucher
Voucher.belongsTo(VoucherType, { foreignKey: 'voucherTypeId', as: 'voucherType' });
Voucher.belongsTo(VoucherGroup, { foreignKey: 'voucherGroupId', as: 'voucherGroup' });
Voucher.belongsTo(Customer, { foreignKey: 'customerId', as: 'customer' });
Voucher.belongsTo(Supplier, { foreignKey: 'supplierId', as: 'supplier' });
Voucher.belongsTo(User, { foreignKey: 'staffId', as: 'staff' });
Voucher.belongsTo(PersonGroupType, { foreignKey: 'personGroupTypeId', as: 'personGroupType' });
Voucher.belongsTo(PaymentMethod, { foreignKey: 'paymentMethodId', as: 'paymentMethod' });

// Debt
Debt.belongsTo(User, { foreignKey: 'staffId', as: 'staff' });
Debt.belongsTo(DebtType, { foreignKey: 'debtTypeId', as: 'debtType' });
Debt.belongsTo(Voucher, { foreignKey: 'voucherId', as: 'voucher' });
Debt.belongsTo(PurchaseOrder, { foreignKey: 'purchaseOrderId', as: 'purchaseOrder' });
Debt.belongsTo(ReturnedPurchaseOrder, { foreignKey: 'returnedPurchaseOrderId', as: 'returnedPurchaseOrder' });
Debt.belongsTo(Order, { foreignKey: 'orderId', as: 'order' });
Debt.belongsTo(Customer, { foreignKey: 'customerId', as: 'customer' });
Debt.belongsTo(Supplier, { foreignKey: 'supplierId', as: 'supplier' });

// Order
Order.hasMany(OrderPayment, { foreignKey: 'orderId', as: 'orderPayments' });
Order.hasMany(OrderItem, { foreignKey: 'orderId', as: 'orderItems' });
Order.belongsTo(Customer, { foreignKey: 'customerId', as: 'customer' });
Order.belongsTo(Status, { foreignKey: 'orderStatusId', as: 'orderStatus' });
Order.belongsTo(Status, { foreignKey: 'approvedStatusId', as: 'approvedStatus' });
Order.belongsTo(Status, { foreignKey: 'shippingStatusId', as: 'shippingStatus' });
Order.belongsTo(Status, { foreignKey: 'paymentStatusId', as: 'paymentStatus' });
Order.belongsTo(Status, { foreignKey: 'exportedInventoryStatusId', as: 'exportedInventoryStatus' });
Order.belongsTo(DeliveryMethod, { foreignKey: 'deliveryMethodId', as: 'deliveryMethod' });
Order.belongsTo(DeliveryPartner, { foreignKey: 'deliveryPartnerId', as: 'deliveryPartner' });
Order.belongsTo(PaymentMethod, { foreignKey: 'paymentMethodId', as: 'paymentMethod' });
Order.belongsTo(User, { foreignKey: 'staffId', as: 'staff' });
Order.belongsToMany(Product, { foreignKey: 'productId', through: 'order_items' });
Order.belongsToMany(Combo, { foreignKey: 'comboId', through: 'order_items' });
Order.belongsToMany(Service, { foreignKey: 'serviceId', through: 'order_items' });
Order.hasMany(Specification, { as: 'specifications', foreignKey: 'orderId' });

// OrderItem
OrderItem.belongsTo(Order, { foreignKey: 'orderId', as: 'order' });
OrderItem.belongsTo(Product, { foreignKey: 'productId', as: 'product' });
OrderItem.belongsTo(Combo, { foreignKey: 'comboId', as: 'combo' });
OrderItem.belongsTo(Service, { foreignKey: 'serviceId', as: 'service' });
OrderItem.belongsTo(ProductUnit, { foreignKey: 'productUnitId', as: 'productUnit' });

// OrderPayment
OrderPayment.belongsTo(Order, { foreignKey: 'orderId', as: 'order' });
OrderPayment.belongsTo(PaymentMethod, { foreignKey: 'paymentMethodId', as: 'paymentMethod' });

// ProductUnit
ProductUnit.belongsTo(Product, { foreignKey: 'productId', as: 'product' });

//Specification
Specification.belongsTo(SpecificationType, { foreignKey: 'specificationTypeId', as: 'specificationType' });
Specification.belongsTo(SizeUnit, { foreignKey: 'sizeUnitId', as: 'sizeUnit' });
Specification.belongsTo(Product, { foreignKey: 'productId', as: 'product' });
Specification.belongsTo(Order, { foreignKey: 'orderId', as: 'order' });

// ReturnedOrder
ReturnedOrder.belongsTo(Order, { foreignKey: 'orderId', as: 'order' });
ReturnedOrder.belongsTo(Status, { foreignKey: 'returnedOrderStatusId', as: 'returnedOrderStatus' });
ReturnedOrder.belongsTo(Customer, { foreignKey: 'customerId', as: 'customer' });
ReturnedOrder.belongsTo(PaymentMethod, { foreignKey: 'paymentMethodId', as: 'paymentMethod' });
ReturnedOrder.belongsTo(Status, { foreignKey: 'refundStatusId', as: 'refundStatus' });
ReturnedOrder.hasMany(ReturnedOrderItem, {
  foreignKey: 'returnedOrderId',
  as: 'returnedOrderItems',
});
ReturnedOrder.belongsToMany(Product, {
  foreignKey: 'productId',
  through: 'returned_order_items',
});

// ReturnedOrderItem
ReturnedOrderItem.belongsTo(Product, { foreignKey: 'productId', as: 'product' });
ReturnedOrderItem.belongsTo(Service, { foreignKey: 'serviceId', as: 'service' });
ReturnedOrderItem.belongsTo(Combo, { foreignKey: 'comboId', as: 'combo' });
ReturnedOrderItem.belongsTo(ReturnedOrder, {
  foreignKey: 'returnedOrderId',
  as: 'returnedOrder',
});
