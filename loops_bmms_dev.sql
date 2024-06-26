-- public."SequelizeMeta" definition

-- Drop table

-- DROP TABLE public."SequelizeMeta";

CREATE TABLE public."SequelizeMeta" (
	"name" varchar(255) NOT NULL,
	CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name)
);


-- public.brands definition

-- Drop table

-- DROP TABLE public.brands;

CREATE TABLE public.brands (
	id serial4 NOT NULL,
	"name" varchar(255) NULL,
	"isActive" bool NULL DEFAULT true,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT brands_pkey PRIMARY KEY (id)
);


-- public.customer_groups definition

-- Drop table

-- DROP TABLE public.customer_groups;

CREATE TABLE public.customer_groups (
	id serial4 NOT NULL,
	"name" varchar(255) NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT customer_groups_pkey PRIMARY KEY (id)
);


-- public.debt_types definition

-- Drop table

-- DROP TABLE public.debt_types;

CREATE TABLE public.debt_types (
	id serial4 NOT NULL,
	"name" varchar(255) NULL,
	"key" varchar(255) NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT debt_types_pkey PRIMARY KEY (id)
);


-- public.delivery_methods definition

-- Drop table

-- DROP TABLE public.delivery_methods;

CREATE TABLE public.delivery_methods (
	id serial4 NOT NULL,
	"name" varchar(255) NULL,
	"key" varchar(255) NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT delivery_methods_pkey PRIMARY KEY (id)
);


-- public.delivery_partner_groups definition

-- Drop table

-- DROP TABLE public.delivery_partner_groups;

CREATE TABLE public.delivery_partner_groups (
	id serial4 NOT NULL,
	"name" varchar(255) NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT delivery_partner_groups_pkey PRIMARY KEY (id)
);


-- public.loss_reasons definition

-- Drop table

-- DROP TABLE public.loss_reasons;

CREATE TABLE public.loss_reasons (
	id serial4 NOT NULL,
	"name" varchar(255) NULL,
	"key" varchar(255) NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT loss_reasons_pkey PRIMARY KEY (id)
);


-- public.payment_methods definition

-- Drop table

-- DROP TABLE public.payment_methods;

CREATE TABLE public.payment_methods (
	id serial4 NOT NULL,
	"name" varchar(255) NULL,
	"key" varchar(255) NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT payment_methods_pkey PRIMARY KEY (id)
);


-- public.person_group_types definition

-- Drop table

-- DROP TABLE public.person_group_types;

CREATE TABLE public.person_group_types (
	id serial4 NOT NULL,
	"name" varchar(255) NULL,
	"key" varchar(255) NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT person_group_types_pkey PRIMARY KEY (id)
);


-- public.provinces definition

-- Drop table

-- DROP TABLE public.provinces;

CREATE TABLE public.provinces (
	id serial4 NOT NULL,
	"name" varchar(255) NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	code varchar(255) NULL,
	CONSTRAINT provinces_pkey PRIMARY KEY (id)
);


-- public.size_units definition

-- Drop table

-- DROP TABLE public.size_units;

CREATE TABLE public.size_units (
	id serial4 NOT NULL,
	"name" varchar(255) NULL,
	"key" varchar(255) NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT size_units_pkey PRIMARY KEY (id)
);


-- public.specification_types definition

-- Drop table

-- DROP TABLE public.specification_types;

CREATE TABLE public.specification_types (
	id serial4 NOT NULL,
	"name" varchar(255) NULL,
	"key" varchar(255) NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT specification_types_pkey PRIMARY KEY (id)
);


-- public.status_types definition

-- Drop table

-- DROP TABLE public.status_types;

CREATE TABLE public.status_types (
	id serial4 NOT NULL,
	"name" varchar(255) NULL,
	"key" varchar(255) NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT status_types_pkey PRIMARY KEY (id)
);


-- public.supplier_groups definition

-- Drop table

-- DROP TABLE public.supplier_groups;

CREATE TABLE public.supplier_groups (
	id serial4 NOT NULL,
	"name" varchar(255) NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT supplier_groups_pkey PRIMARY KEY (id)
);


-- public.tax_types definition

-- Drop table

-- DROP TABLE public.tax_types;

CREATE TABLE public.tax_types (
	id serial4 NOT NULL,
	"name" varchar(255) NULL,
	"key" varchar(255) NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT tax_types_pkey PRIMARY KEY (id)
);


-- public.unit_types definition

-- Drop table

-- DROP TABLE public.unit_types;

CREATE TABLE public.unit_types (
	id serial4 NOT NULL,
	"name" varchar(255) NULL,
	"key" varchar(255) NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT unit_types_pkey PRIMARY KEY (id)
);


-- public.voucher_group_types definition

-- Drop table

-- DROP TABLE public.voucher_group_types;

CREATE TABLE public.voucher_group_types (
	id serial4 NOT NULL,
	"name" varchar(255) NULL,
	"key" varchar(255) NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT voucher_group_types_pkey PRIMARY KEY (id)
);


-- public.voucher_types definition

-- Drop table

-- DROP TABLE public.voucher_types;

CREATE TABLE public.voucher_types (
	id serial4 NOT NULL,
	"name" varchar(255) NULL,
	"key" varchar(255) NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT voucher_types_pkey PRIMARY KEY (id)
);


-- public.categories definition

-- Drop table

-- DROP TABLE public.categories;

CREATE TABLE public.categories (
	id serial4 NOT NULL,
	"categoryId" int4 NULL,
	"name" varchar(255) NULL,
	"isActive" bool NULL DEFAULT true,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT categories_pkey PRIMARY KEY (id),
	CONSTRAINT "categories_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES public.categories(id)
);

-- Table Triggers

create trigger before_insert_update_category before
insert
    or
update
    on
    public.categories for each row execute function check_category_depth();


-- public.districts definition

-- Drop table

-- DROP TABLE public.districts;

CREATE TABLE public.districts (
	id serial4 NOT NULL,
	"provinceId" int4 NULL,
	"name" varchar(255) NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	prefix varchar(255) NULL,
	CONSTRAINT districts_pkey PRIMARY KEY (id),
	CONSTRAINT "districts_provinceId_fkey" FOREIGN KEY ("provinceId") REFERENCES public.provinces(id)
);


-- public.statuses definition

-- Drop table

-- DROP TABLE public.statuses;

CREATE TABLE public.statuses (
	id serial4 NOT NULL,
	"statusTypeId" int4 NULL,
	"name" varchar(255) NULL,
	"key" varchar(255) NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT statuses_pkey PRIMARY KEY (id),
	CONSTRAINT "statuses_statusTypeId_fkey" FOREIGN KEY ("statusTypeId") REFERENCES public.status_types(id)
);


-- public.taxes definition

-- Drop table

-- DROP TABLE public.taxes;

CREATE TABLE public.taxes (
	id serial4 NOT NULL,
	"taxTypeId" int4 NULL,
	"name" varchar(255) NULL,
	code varchar(255) NULL,
	"percentageNumber" int4 NOT NULL DEFAULT 0,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT taxes_pkey PRIMARY KEY (id),
	CONSTRAINT "taxes_taxTypeId_fkey" FOREIGN KEY ("taxTypeId") REFERENCES public.tax_types(id)
);


-- public.units definition

-- Drop table

-- DROP TABLE public.units;

CREATE TABLE public.units (
	id serial4 NOT NULL,
	"unitTypeId" int4 NULL,
	"name" varchar(255) NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT units_pkey PRIMARY KEY (id),
	CONSTRAINT "units_unitTypeId_fkey" FOREIGN KEY ("unitTypeId") REFERENCES public.unit_types(id)
);


-- public.users definition

-- Drop table

-- DROP TABLE public.users;

CREATE TABLE public.users (
	id serial4 NOT NULL,
	"name" varchar(255) NULL,
	username varchar(255) NULL,
	email varchar(255) NOT NULL,
	"password" varchar(255) NULL,
	"privateImage" text NULL,
	"isActive" bool NULL DEFAULT true,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	"personGroupTypeId" int4 NULL,
	CONSTRAINT users_email_key UNIQUE (email),
	CONSTRAINT users_pkey PRIMARY KEY (id),
	CONSTRAINT "users_personGroupTypeId_fkey" FOREIGN KEY ("personGroupTypeId") REFERENCES public.person_group_types(id)
);


-- public.voucher_groups definition

-- Drop table

-- DROP TABLE public.voucher_groups;

CREATE TABLE public.voucher_groups (
	id serial4 NOT NULL,
	"name" varchar(255) NULL,
	code varchar(255) NULL,
	description text NULL,
	"voucherGroupTypeId" int4 NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT voucher_groups_pkey PRIMARY KEY (id),
	CONSTRAINT "voucher_groups_voucherGroupTypeId_fkey" FOREIGN KEY ("voucherGroupTypeId") REFERENCES public.voucher_group_types(id)
);


-- public.wards definition

-- Drop table

-- DROP TABLE public.wards;

CREATE TABLE public.wards (
	id serial4 NOT NULL,
	"districtId" int4 NULL,
	"name" varchar(255) NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	prefix varchar(255) NULL,
	CONSTRAINT wards_pkey PRIMARY KEY (id),
	CONSTRAINT "wards_districtId_fkey" FOREIGN KEY ("districtId") REFERENCES public.districts(id)
);


-- public.combos definition

-- Drop table

-- DROP TABLE public.combos;

CREATE TABLE public.combos (
	id serial4 NOT NULL,
	"categoryId" int4 NULL,
	"brandId" int4 NULL,
	sku varchar(255) NULL,
	barcode varchar(255) NULL,
	"name" varchar(255) NULL,
	description text NULL,
	"costPrice" int8 NULL,
	"salePrice" int8 NULL,
	"wholesalePrice" int8 NULL,
	"standardUnit" varchar(255) NULL,
	weight numeric(10, 2) NULL,
	"weightUnitId" int4 NULL,
	"isActive" bool NULL DEFAULT true,
	"isConsistOfSalePrice" bool NULL DEFAULT true,
	"inputTaxId" int4 NULL,
	"outputTaxId" int4 NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT combos_pkey PRIMARY KEY (id),
	CONSTRAINT "combos_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES public.brands(id),
	CONSTRAINT "combos_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES public.categories(id),
	CONSTRAINT "combos_inputTaxId_fkey" FOREIGN KEY ("inputTaxId") REFERENCES public.taxes(id),
	CONSTRAINT "combos_outputTaxId_fkey" FOREIGN KEY ("outputTaxId") REFERENCES public.taxes(id),
	CONSTRAINT "combos_weightUnitId_fkey" FOREIGN KEY ("weightUnitId") REFERENCES public.units(id)
);


-- public.customers definition

-- Drop table

-- DROP TABLE public.customers;

CREATE TABLE public.customers (
	id serial4 NOT NULL,
	"name" varchar(255) NULL,
	email varchar(255) NULL,
	"phoneNumber" varchar(255) NULL,
	birthday date NULL,
	address varchar(255) NULL,
	"wardId" int4 NULL,
	"personGroupTypeId" int4 NULL,
	"isActive" bool NULL DEFAULT true,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	"customerGroupId" int4 NULL,
	CONSTRAINT customers_pkey PRIMARY KEY (id),
	CONSTRAINT "customers_customerGroupId_fkey" FOREIGN KEY ("customerGroupId") REFERENCES public.customer_groups(id),
	CONSTRAINT "customers_personGroupTypeId_fkey" FOREIGN KEY ("personGroupTypeId") REFERENCES public.person_group_types(id),
	CONSTRAINT "customers_wardId_fkey" FOREIGN KEY ("wardId") REFERENCES public.wards(id)
);


-- public.delivery_partners definition

-- Drop table

-- DROP TABLE public.delivery_partners;

CREATE TABLE public.delivery_partners (
	id serial4 NOT NULL,
	"name" varchar(255) NULL,
	email varchar(255) NULL,
	mobile varchar(255) NULL,
	code varchar(255) NULL,
	company varchar(255) NULL,
	address varchar(255) NULL,
	description text NULL,
	"shippingFee" int8 NULL,
	"wardId" int4 NULL,
	"personGroupTypeId" int4 NULL,
	"deliveryPartnerGroupId" int4 NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT delivery_partners_pkey PRIMARY KEY (id),
	CONSTRAINT "delivery_partners_deliveryPartnerGroupId_fkey" FOREIGN KEY ("deliveryPartnerGroupId") REFERENCES public.delivery_partner_groups(id),
	CONSTRAINT "delivery_partners_personGroupTypeId_fkey" FOREIGN KEY ("personGroupTypeId") REFERENCES public.person_group_types(id),
	CONSTRAINT "delivery_partners_wardId_fkey" FOREIGN KEY ("wardId") REFERENCES public.wards(id)
);


-- public.orders definition

-- Drop table

-- DROP TABLE public.orders;

CREATE TABLE public.orders (
	id serial4 NOT NULL,
	"customerId" int4 NULL,
	"orderStatusId" int4 NULL,
	"approvedStatusId" int4 NULL,
	"shippingStatusId" int4 NULL,
	"paymentStatusId" int4 NULL,
	"exportedInventoryStatusId" int4 NULL,
	"deliveryMethodId" int4 NULL,
	code varchar(255) NULL,
	"deliveryDate" timestamptz NULL,
	"quantityTotal" int4 NULL,
	"shippingFee" int8 NULL,
	discount int8 NULL,
	"totalPrice" int8 NULL,
	"totalTaxPrice" int8 NULL,
	"debtAmount" int8 NULL,
	note varchar(255) NULL,
	"deliveryPartnerId" int4 NULL,
	"paymentMethodId" int4 NULL,
	"staffId" int4 NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT orders_pkey PRIMARY KEY (id),
	CONSTRAINT "orders_approvedStatusId_fkey" FOREIGN KEY ("approvedStatusId") REFERENCES public.statuses(id),
	CONSTRAINT "orders_customerId_fkey" FOREIGN KEY ("customerId") REFERENCES public.customers(id),
	CONSTRAINT "orders_deliveryMethodId_fkey" FOREIGN KEY ("deliveryMethodId") REFERENCES public.delivery_methods(id),
	CONSTRAINT "orders_deliveryPartnerId_fkey" FOREIGN KEY ("deliveryPartnerId") REFERENCES public.delivery_partners(id),
	CONSTRAINT "orders_exportedInventoryStatusId_fkey" FOREIGN KEY ("exportedInventoryStatusId") REFERENCES public.statuses(id),
	CONSTRAINT "orders_orderStatusId_fkey" FOREIGN KEY ("orderStatusId") REFERENCES public.statuses(id),
	CONSTRAINT "orders_paymentMethodId_fkey" FOREIGN KEY ("paymentMethodId") REFERENCES public.payment_methods(id),
	CONSTRAINT "orders_paymentStatusId_fkey" FOREIGN KEY ("paymentStatusId") REFERENCES public.statuses(id),
	CONSTRAINT "orders_shippingStatusId_fkey" FOREIGN KEY ("shippingStatusId") REFERENCES public.statuses(id),
	CONSTRAINT "orders_staffId_fkey" FOREIGN KEY ("staffId") REFERENCES public.users(id)
);


-- public.products definition

-- Drop table

-- DROP TABLE public.products;

CREATE TABLE public.products (
	id serial4 NOT NULL,
	"categoryId" int4 NULL,
	"brandId" int4 NULL,
	sku varchar(255) NULL,
	barcode varchar(255) NULL,
	"name" varchar(255) NULL,
	description text NULL,
	"costPrice" int8 NULL,
	"salePrice" int8 NULL,
	"wholesalePrice" int8 NULL,
	"inventoryQuantity" numeric(10, 2) NULL,
	"standardUnit" varchar(255) NULL,
	"isInventory" bool NULL DEFAULT false,
	weight numeric(10, 2) NULL,
	"weightUnitId" int4 NULL,
	width numeric(10, 2) NULL,
	length numeric(10, 2) NULL,
	"sizeUnitId" int4 NULL,
	"isActive" bool NULL DEFAULT true,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	"isConsistOfSalePrice" bool NULL DEFAULT false,
	"inputTaxId" int4 NULL,
	"outputTaxId" int4 NULL,
	CONSTRAINT products_pkey PRIMARY KEY (id),
	CONSTRAINT "products_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES public.brands(id),
	CONSTRAINT "products_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES public.categories(id),
	CONSTRAINT "products_inputTaxId_fkey" FOREIGN KEY ("inputTaxId") REFERENCES public.taxes(id),
	CONSTRAINT "products_outputTaxId_fkey" FOREIGN KEY ("outputTaxId") REFERENCES public.taxes(id),
	CONSTRAINT "products_sizeUnitId_fkey" FOREIGN KEY ("sizeUnitId") REFERENCES public.units(id),
	CONSTRAINT "products_weightUnitId_fkey" FOREIGN KEY ("weightUnitId") REFERENCES public.units(id)
);


-- public.refresh_tokens definition

-- Drop table

-- DROP TABLE public.refresh_tokens;

CREATE TABLE public.refresh_tokens (
	id serial4 NOT NULL,
	"userId" int4 NULL,
	"token" varchar(255) NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT refresh_tokens_pkey PRIMARY KEY (id),
	CONSTRAINT "refresh_tokens_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id)
);


-- public.returned_orders definition

-- Drop table

-- DROP TABLE public.returned_orders;

CREATE TABLE public.returned_orders (
	id serial4 NOT NULL,
	"orderId" int4 NULL,
	"returnedOrderStatusId" int4 NULL,
	"customerId" int4 NULL,
	code varchar(255) NULL,
	note text NULL,
	"returnedQuantityTotal" int4 NULL,
	"refundPriceTotal" int8 NULL,
	"receivedRefundAmount" int8 NULL,
	"refundDate" timestamptz NULL,
	"paymentMethodId" int4 NULL,
	"refundStatusId" int4 NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT returned_orders_pkey PRIMARY KEY (id),
	CONSTRAINT "returned_orders_customerId_fkey" FOREIGN KEY ("customerId") REFERENCES public.customers(id),
	CONSTRAINT "returned_orders_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES public.orders(id),
	CONSTRAINT "returned_orders_paymentMethodId_fkey" FOREIGN KEY ("paymentMethodId") REFERENCES public.payment_methods(id),
	CONSTRAINT "returned_orders_refundStatusId_fkey" FOREIGN KEY ("refundStatusId") REFERENCES public.statuses(id),
	CONSTRAINT "returned_orders_returnedOrderStatusId_fkey" FOREIGN KEY ("returnedOrderStatusId") REFERENCES public.statuses(id)
);


-- public.services definition

-- Drop table

-- DROP TABLE public.services;

CREATE TABLE public.services (
	id serial4 NOT NULL,
	sku varchar(255) NULL,
	"name" varchar(255) NULL,
	description varchar(255) NULL,
	"categoryId" int4 NULL,
	"costPrice" int8 NULL,
	"salePrice" int8 NULL,
	"wholesalePrice" int8 NULL,
	"standardUnit" varchar(255) NULL,
	"isActive" bool NULL DEFAULT true,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	"isConsistOfSalePrice" bool NULL DEFAULT false,
	"inputTaxId" int4 NULL,
	"outputTaxId" int4 NULL,
	CONSTRAINT services_pkey PRIMARY KEY (id),
	CONSTRAINT "services_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES public.categories(id),
	CONSTRAINT "services_inputTaxId_fkey" FOREIGN KEY ("inputTaxId") REFERENCES public.taxes(id),
	CONSTRAINT "services_outputTaxId_fkey" FOREIGN KEY ("outputTaxId") REFERENCES public.taxes(id)
);


-- public.specifications definition

-- Drop table

-- DROP TABLE public.specifications;

CREATE TABLE public.specifications (
	id serial4 NOT NULL,
	"productId" int4 NULL,
	"specificationTypeId" int4 NULL,
	"sizeUnitId" int4 NULL,
	value numeric NULL,
	"groupId" int4 NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	"orderId" int4 NULL,
	CONSTRAINT specifications_pkey PRIMARY KEY (id),
	CONSTRAINT "specifications_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES public.orders(id),
	CONSTRAINT "specifications_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id),
	CONSTRAINT "specifications_sizeUnitId_fkey" FOREIGN KEY ("sizeUnitId") REFERENCES public.size_units(id),
	CONSTRAINT "specifications_specificationTypeId_fkey" FOREIGN KEY ("specificationTypeId") REFERENCES public.specification_types(id)
);


-- public.stock_adjustments definition

-- Drop table

-- DROP TABLE public.stock_adjustments;

CREATE TABLE public.stock_adjustments (
	id serial4 NOT NULL,
	"createdStaffId" int4 NULL,
	"checkingStaffId" int4 NULL,
	"adjustmentStaffId" int4 NULL,
	code varchar(255) NULL,
	note text NULL,
	"adjustmentDate" timestamptz NULL,
	"adjustmentStatusId" int4 NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT stock_adjustments_pkey PRIMARY KEY (id),
	CONSTRAINT "stock_adjustments_adjustmentStaffId_fkey" FOREIGN KEY ("adjustmentStaffId") REFERENCES public.users(id),
	CONSTRAINT "stock_adjustments_adjustmentStatusId_fkey" FOREIGN KEY ("adjustmentStatusId") REFERENCES public.statuses(id),
	CONSTRAINT "stock_adjustments_checkingStaffId_fkey" FOREIGN KEY ("checkingStaffId") REFERENCES public.users(id),
	CONSTRAINT "stock_adjustments_createdStaffId_fkey" FOREIGN KEY ("createdStaffId") REFERENCES public.users(id)
);


-- public.suppliers definition

-- Drop table

-- DROP TABLE public.suppliers;

CREATE TABLE public.suppliers (
	id serial4 NOT NULL,
	"supplierGroupId" int4 NULL,
	code varchar(255) NULL,
	"name" varchar(255) NULL,
	email varchar(255) NULL,
	mobile varchar(255) NULL,
	company varchar(255) NULL,
	"faxId" varchar(255) NULL,
	"taxId" varchar(255) NULL,
	website varchar(255) NULL,
	address varchar(255) NULL,
	"wardId" int4 NULL,
	description text NULL,
	"personGroupTypeId" int4 NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT suppliers_pkey PRIMARY KEY (id),
	CONSTRAINT "suppliers_personGroupTypeId_fkey" FOREIGN KEY ("personGroupTypeId") REFERENCES public.person_group_types(id),
	CONSTRAINT "suppliers_supplierGroupId_fkey" FOREIGN KEY ("supplierGroupId") REFERENCES public.supplier_groups(id),
	CONSTRAINT "suppliers_wardId_fkey" FOREIGN KEY ("wardId") REFERENCES public.wards(id)
);


-- public.vouchers definition

-- Drop table

-- DROP TABLE public.vouchers;

CREATE TABLE public.vouchers (
	id serial4 NOT NULL,
	"voucherTypeId" int4 NULL,
	code varchar(255) NULL,
	value int8 NULL,
	description text NULL,
	"recordedDate" timestamptz NULL,
	"voucherGroupId" int4 NULL,
	"customerId" int4 NULL,
	"supplierId" int4 NULL,
	"staffId" int4 NULL,
	"personGroupTypeId" int4 NULL,
	"paymentMethodId" int4 NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT vouchers_pkey PRIMARY KEY (id),
	CONSTRAINT "vouchers_customerId_fkey" FOREIGN KEY ("customerId") REFERENCES public.customers(id),
	CONSTRAINT "vouchers_paymentMethodId_fkey" FOREIGN KEY ("paymentMethodId") REFERENCES public.payment_methods(id),
	CONSTRAINT "vouchers_personGroupTypeId_fkey" FOREIGN KEY ("personGroupTypeId") REFERENCES public.person_group_types(id),
	CONSTRAINT "vouchers_staffId_fkey" FOREIGN KEY ("staffId") REFERENCES public.users(id),
	CONSTRAINT "vouchers_supplierId_fkey" FOREIGN KEY ("supplierId") REFERENCES public.suppliers(id),
	CONSTRAINT "vouchers_voucherGroupId_fkey" FOREIGN KEY ("voucherGroupId") REFERENCES public.voucher_groups(id),
	CONSTRAINT "vouchers_voucherTypeId_fkey" FOREIGN KEY ("voucherTypeId") REFERENCES public.voucher_types(id)
);


-- public.combo_items definition

-- Drop table

-- DROP TABLE public.combo_items;

CREATE TABLE public.combo_items (
	id serial4 NOT NULL,
	"comboId" int4 NULL,
	"serviceId" int4 NULL,
	"productId" int4 NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	quantity int4 NULL DEFAULT 0,
	CONSTRAINT combo_items_pkey PRIMARY KEY (id),
	CONSTRAINT "combo_items_comboId_fkey" FOREIGN KEY ("comboId") REFERENCES public.combos(id),
	CONSTRAINT "combo_items_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id),
	CONSTRAINT "combo_items_serviceId_fkey" FOREIGN KEY ("serviceId") REFERENCES public.services(id)
);


-- public.images definition

-- Drop table

-- DROP TABLE public.images;

CREATE TABLE public.images (
	id serial4 NOT NULL,
	"productId" int4 NULL,
	"name" varchar(255) NULL,
	"path" text NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	"serviceId" int4 NULL,
	"comboId" int4 NULL,
	CONSTRAINT images_pkey PRIMARY KEY (id),
	CONSTRAINT "images_comboId_fkey" FOREIGN KEY ("comboId") REFERENCES public.combos(id),
	CONSTRAINT "images_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id),
	CONSTRAINT "images_serviceId_fkey" FOREIGN KEY ("serviceId") REFERENCES public.services(id)
);


-- public.order_payments definition

-- Drop table

-- DROP TABLE public.order_payments;

CREATE TABLE public.order_payments (
	id serial4 NOT NULL,
	"orderId" int4 NULL,
	amount int8 NULL,
	"paidDate" timestamptz NULL,
	"paymentMethodId" int4 NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT order_payments_pkey PRIMARY KEY (id),
	CONSTRAINT "order_payments_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES public.orders(id),
	CONSTRAINT "order_payments_paymentMethodId_fkey" FOREIGN KEY ("paymentMethodId") REFERENCES public.payment_methods(id)
);


-- public.order_suppliers definition

-- Drop table

-- DROP TABLE public.order_suppliers;

CREATE TABLE public.order_suppliers (
	id serial4 NOT NULL,
	"supplierId" int4 NULL,
	"staffId" int4 NULL,
	"importDate" timestamptz NULL,
	"deliveredDate" timestamptz NULL,
	code varchar(255) NULL,
	note varchar(255) NULL,
	"quantityTotal" int4 NULL,
	"totalPrice" int8 NULL,
	discount int8 NULL,
	"totalTaxPrice" int8 NULL,
	"importStatusId" int4 NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT order_suppliers_pkey PRIMARY KEY (id),
	CONSTRAINT "order_suppliers_importStatusId_fkey" FOREIGN KEY ("importStatusId") REFERENCES public.statuses(id),
	CONSTRAINT "order_suppliers_staffId_fkey" FOREIGN KEY ("staffId") REFERENCES public.users(id),
	CONSTRAINT "order_suppliers_supplierId_fkey" FOREIGN KEY ("supplierId") REFERENCES public.suppliers(id)
);


-- public.product_units definition

-- Drop table

-- DROP TABLE public.product_units;

CREATE TABLE public.product_units (
	id serial4 NOT NULL,
	"productId" int4 NULL,
	"name" varchar(255) NULL,
	quantity numeric(10, 2) NULL,
	"salePrice" int8 NULL,
	"isDefaultPrice" bool NULL,
	"isActive" bool NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT product_units_pkey PRIMARY KEY (id),
	CONSTRAINT "product_units_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id)
);


-- public.purchase_orders definition

-- Drop table

-- DROP TABLE public.purchase_orders;

CREATE TABLE public.purchase_orders (
	id serial4 NOT NULL,
	"supplierId" int4 NULL,
	"staffId" int4 NULL,
	code varchar(255) NULL,
	"deliveredDate" timestamptz NULL,
	note varchar(255) NULL,
	"quantityTotal" int4 NULL,
	"totalPrice" int8 NULL,
	discount int8 NULL,
	"totalTaxPrice" int8 NULL,
	"debtAmount" int8 NULL,
	"importDate" timestamptz NULL,
	"paymentStatusId" int4 NULL,
	"importStatusId" int4 NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	"voucherTypeId" int4 NULL,
	"orderSupplierId" int4 NULL,
	CONSTRAINT purchase_orders_pkey PRIMARY KEY (id),
	CONSTRAINT "purchase_orders_importStatusId_fkey" FOREIGN KEY ("importStatusId") REFERENCES public.statuses(id),
	CONSTRAINT "purchase_orders_orderSupplierId_fkey" FOREIGN KEY ("orderSupplierId") REFERENCES public.order_suppliers(id),
	CONSTRAINT "purchase_orders_paymentStatusId_fkey" FOREIGN KEY ("paymentStatusId") REFERENCES public.statuses(id),
	CONSTRAINT "purchase_orders_staffId_fkey" FOREIGN KEY ("staffId") REFERENCES public.users(id),
	CONSTRAINT "purchase_orders_supplierId_fkey" FOREIGN KEY ("supplierId") REFERENCES public.suppliers(id),
	CONSTRAINT "purchase_orders_voucherTypeId_fkey" FOREIGN KEY ("voucherTypeId") REFERENCES public.voucher_types(id)
);


-- public.returned_order_items definition

-- Drop table

-- DROP TABLE public.returned_order_items;

CREATE TABLE public.returned_order_items (
	id serial4 NOT NULL,
	"returnedOrderId" int4 NULL,
	"productId" int4 NULL,
	"comboId" int4 NULL,
	"serviceId" int4 NULL,
	discount int4 NULL,
	price int8 NULL,
	quantity int8 NULL,
	"totalPrice" int8 NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT returned_order_items_pkey PRIMARY KEY (id),
	CONSTRAINT "returned_order_items_comboId_fkey" FOREIGN KEY ("comboId") REFERENCES public.combos(id),
	CONSTRAINT "returned_order_items_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id),
	CONSTRAINT "returned_order_items_returnedOrderId_fkey" FOREIGN KEY ("returnedOrderId") REFERENCES public.returned_orders(id),
	CONSTRAINT "returned_order_items_serviceId_fkey" FOREIGN KEY ("serviceId") REFERENCES public.services(id)
);


-- public.returned_purchase_orders definition

-- Drop table

-- DROP TABLE public.returned_purchase_orders;

CREATE TABLE public.returned_purchase_orders (
	id serial4 NOT NULL,
	"voucherTypeId" int4 NULL,
	note text NULL,
	"returnedQuantityTotal" int4 NULL,
	discount int8 NULL,
	"totalTaxPrice" int8 NULL,
	"refundPriceTotal" int8 NULL,
	"receivedRefundAmount" int8 NULL,
	"refundDate" timestamptz NULL,
	"purchaseOrderId" int4 NULL,
	"paymentMethodId" int4 NULL,
	"returnedStatusId" int4 NULL,
	"refundStatusId" int4 NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT returned_purchase_orders_pkey PRIMARY KEY (id),
	CONSTRAINT "returned_purchase_orders_paymentMethodId_fkey" FOREIGN KEY ("paymentMethodId") REFERENCES public.payment_methods(id),
	CONSTRAINT "returned_purchase_orders_purchaseOrderId_fkey" FOREIGN KEY ("purchaseOrderId") REFERENCES public.purchase_orders(id),
	CONSTRAINT "returned_purchase_orders_refundStatusId_fkey" FOREIGN KEY ("refundStatusId") REFERENCES public.statuses(id),
	CONSTRAINT "returned_purchase_orders_returnedStatusId_fkey" FOREIGN KEY ("returnedStatusId") REFERENCES public.statuses(id),
	CONSTRAINT "returned_purchase_orders_voucherTypeId_fkey" FOREIGN KEY ("voucherTypeId") REFERENCES public.voucher_types(id)
);


-- public.stock_adjustment_product_items definition

-- Drop table

-- DROP TABLE public.stock_adjustment_product_items;

CREATE TABLE public.stock_adjustment_product_items (
	id serial4 NOT NULL,
	"stockAdjustmentId" int4 NULL,
	"productId" int4 NULL,
	"lossReasonId" int4 NULL,
	"actualQuantity" int4 NULL,
	"quantityDifference" int4 NULL,
	note varchar(255) NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT stock_adjustment_product_items_pkey PRIMARY KEY (id),
	CONSTRAINT "stock_adjustment_product_items_lossReasonId_fkey" FOREIGN KEY ("lossReasonId") REFERENCES public.loss_reasons(id),
	CONSTRAINT "stock_adjustment_product_items_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id),
	CONSTRAINT "stock_adjustment_product_items_stockAdjustmentId_fkey" FOREIGN KEY ("stockAdjustmentId") REFERENCES public.stock_adjustments(id)
);


-- public.debts definition

-- Drop table

-- DROP TABLE public.debts;

CREATE TABLE public.debts (
	id serial4 NOT NULL,
	"supplierId" int4 NULL,
	"staffId" int4 NULL,
	"purchaseOrderId" int4 NULL,
	"voucherId" int4 NULL,
	"recordedDate" timestamptz NULL,
	"debtAmount" int8 NULL,
	"debtTypeId" int4 NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	"returnedPurchaseOrderId" int4 NULL,
	"customerId" int4 NULL,
	"orderId" int4 NULL,
	CONSTRAINT debts_pkey PRIMARY KEY (id),
	CONSTRAINT "debts_customerId_fkey" FOREIGN KEY ("customerId") REFERENCES public.customers(id),
	CONSTRAINT "debts_debtTypeId_fkey" FOREIGN KEY ("debtTypeId") REFERENCES public.debt_types(id),
	CONSTRAINT "debts_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES public.orders(id),
	CONSTRAINT "debts_purchaseOrderId_fkey" FOREIGN KEY ("purchaseOrderId") REFERENCES public.purchase_orders(id),
	CONSTRAINT "debts_returnedPurchaseOrderId_fkey" FOREIGN KEY ("returnedPurchaseOrderId") REFERENCES public.returned_purchase_orders(id),
	CONSTRAINT "debts_staffId_fkey" FOREIGN KEY ("staffId") REFERENCES public.users(id),
	CONSTRAINT "debts_supplierId_fkey" FOREIGN KEY ("supplierId") REFERENCES public.suppliers(id),
	CONSTRAINT "debts_voucherId_fkey" FOREIGN KEY ("voucherId") REFERENCES public.vouchers(id)
);


-- public.order_items definition

-- Drop table

-- DROP TABLE public.order_items;

CREATE TABLE public.order_items (
	id serial4 NOT NULL,
	"orderId" int4 NULL,
	"productId" int4 NULL,
	"comboId" int4 NULL,
	"serviceId" int4 NULL,
	quantity numeric(10, 2) NULL,
	discount int8 NULL,
	price int8 NULL,
	"totalPrice" numeric(10, 2) NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	description varchar(255) NULL,
	"productUnitId" int4 NULL,
	CONSTRAINT order_items_pkey PRIMARY KEY (id),
	CONSTRAINT "order_items_comboId_fkey" FOREIGN KEY ("comboId") REFERENCES public.combos(id),
	CONSTRAINT "order_items_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES public.orders(id),
	CONSTRAINT "order_items_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id),
	CONSTRAINT "order_items_productUnitId_fkey" FOREIGN KEY ("productUnitId") REFERENCES public.product_units(id),
	CONSTRAINT "order_items_serviceId_fkey" FOREIGN KEY ("serviceId") REFERENCES public.services(id)
);


-- public.order_supplier_product_items definition

-- Drop table

-- DROP TABLE public.order_supplier_product_items;

CREATE TABLE public.order_supplier_product_items (
	id serial4 NOT NULL,
	"orderSupplierId" int4 NULL,
	"productId" int4 NULL,
	quantity int4 NULL,
	price int8 NULL,
	discount int8 NULL,
	"totalPrice" int8 NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT order_supplier_product_items_pkey PRIMARY KEY (id),
	CONSTRAINT "order_supplier_product_items_orderSupplierId_fkey" FOREIGN KEY ("orderSupplierId") REFERENCES public.order_suppliers(id),
	CONSTRAINT "order_supplier_product_items_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id)
);


-- public.purchase_order_payments definition

-- Drop table

-- DROP TABLE public.purchase_order_payments;

CREATE TABLE public.purchase_order_payments (
	id serial4 NOT NULL,
	"purchaseOrderId" int4 NULL,
	amount int8 NULL,
	"paidDate" timestamptz NULL,
	"paymentMethodId" int4 NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT purchase_order_payments_pkey PRIMARY KEY (id),
	CONSTRAINT "purchase_order_payments_paymentMethodId_fkey" FOREIGN KEY ("paymentMethodId") REFERENCES public.payment_methods(id),
	CONSTRAINT "purchase_order_payments_purchaseOrderId_fkey" FOREIGN KEY ("purchaseOrderId") REFERENCES public.purchase_orders(id)
);


-- public.purchase_order_product_items definition

-- Drop table

-- DROP TABLE public.purchase_order_product_items;

CREATE TABLE public.purchase_order_product_items (
	id serial4 NOT NULL,
	"purchaseOrderId" int4 NULL,
	"productId" int4 NULL,
	quantity int4 NULL,
	price int8 NULL,
	discount int8 NULL,
	"totalPrice" int8 NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT purchase_order_product_items_pkey PRIMARY KEY (id),
	CONSTRAINT "purchase_order_product_items_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id),
	CONSTRAINT "purchase_order_product_items_purchaseOrderId_fkey" FOREIGN KEY ("purchaseOrderId") REFERENCES public.purchase_orders(id)
);


-- public.returned_purchase_order_product_items definition

-- Drop table

-- DROP TABLE public.returned_purchase_order_product_items;

CREATE TABLE public.returned_purchase_order_product_items (
	id serial4 NOT NULL,
	"returnedPurchaseOrderId" int4 NULL,
	"productId" int4 NULL,
	"returnedQuantity" int4 NULL,
	price int8 NULL,
	discount int8 NULL,
	"totalPrice" int8 NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	"deletedAt" timestamptz NULL,
	CONSTRAINT returned_purchase_order_product_items_pkey PRIMARY KEY (id),
	CONSTRAINT "returned_purchase_order_product_it_returnedPurchaseOrderId_fkey" FOREIGN KEY ("returnedPurchaseOrderId") REFERENCES public.returned_purchase_orders(id),
	CONSTRAINT "returned_purchase_order_product_items_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id)
);

INSERT INTO public."SequelizeMeta" ("name") VALUES
	 ('20230603141307-create-users-table.ts'),
	 ('20230604165637-create-refresh-tokens.ts'),
	 ('20230610124425-create-category.ts'),
	 ('20230619141154-create-brands.ts'),
	 ('20230619172225-create_trigger_check_category_depth.ts'),
	 ('20230621144920-create-unit-types.ts'),
	 ('20230621150821-create-units.ts'),
	 ('20230621151932-create-products.ts'),
	 ('20230621160507-create-images.ts'),
	 ('20230703174442-create-services.ts');
INSERT INTO public."SequelizeMeta" ("name") VALUES
	 ('20230704081141-add-serviceId-to-images.ts'),
	 ('20230709053503-modify_path_column_in_images_table.ts'),
	 ('20230717144639-create-tax-types.ts'),
	 ('20230717145628-create-taxes.ts'),
	 ('20230717175249-add-isConsistOfSalePrice-inputTaxId-outputTaxId-column-in-products-table.ts'),
	 ('20230718115340-add-isConsistOfSalePrice-inputTaxId-outputTaxId-column-in-services-table.ts'),
	 ('20230718170207-create-status-types.ts'),
	 ('20230718170527-create-statuses.ts'),
	 ('20230719020543-create-payment-methods.ts'),
	 ('20230719023516-create-supplier-groups.ts');
INSERT INTO public."SequelizeMeta" ("name") VALUES
	 ('20230719144003-create-person-group-types.ts'),
	 ('20230719144455-add-personGroupTypeId-column-in-users-table.ts'),
	 ('20230719145912-create-provinces.ts'),
	 ('20230719150227-create-districts.ts'),
	 ('20230719150805-create-wards.ts'),
	 ('20230719151543-create-suppliers.ts'),
	 ('20230719153258-create-debt-types.ts'),
	 ('20230719173049-create-purchase-orders.ts'),
	 ('20230719174712-create-purchase-order-product-items.ts'),
	 ('20230719180230-create-purchase-order-payments.ts');
INSERT INTO public."SequelizeMeta" ("name") VALUES
	 ('20230720122541-create-customers.ts'),
	 ('20230720131528-create-voucher-types.ts'),
	 ('20230720133204-add-voucherTypeId-column-in-purchase-orders-table.ts'),
	 ('20230720133628-create-voucher-group-types.ts'),
	 ('20230720134114-create-voucher-groups.ts'),
	 ('20230720141255-create-vouchers.ts'),
	 ('20230720145911-create-debts.ts'),
	 ('20230720160424-create-combo.ts'),
	 ('20230720163642-add-comboId-to-images.ts'),
	 ('20230720165417-create-combo-items.ts');
INSERT INTO public."SequelizeMeta" ("name") VALUES
	 ('20230721143135-add-code-column-in-provinces-table.ts'),
	 ('20230721144122-add-prefix-column-in-districts-table.ts'),
	 ('20230721144233-add-prefix-column-in-wards-table.ts'),
	 ('20230723060323-add-quantity-column-in-combo-items-table.ts'),
	 ('20230813144310-modify-private-image-column-in-users-table.ts'),
	 ('20230822161546-create-returned-purchase-orders.ts'),
	 ('20230823144449-create-returned-purchase-order-product-items.ts'),
	 ('20230823151128-add-returnedPurchaseOrderId-column-in-debts-table.ts'),
	 ('20230827094233-create-orders-supplier.ts'),
	 ('20230827094352-create-order-supplier-product-items.ts');
INSERT INTO public."SequelizeMeta" ("name") VALUES
	 ('20230828160416-create-stock-adjustments.ts'),
	 ('20230828162519-create-loss-reasons.ts'),
	 ('20230828163456-create-stock-adjustment-product-items.ts'),
	 ('20231030170122-add_orderSupplierId_column_in_purchase_orders_table.ts'),
	 ('20231103162139-create-customer-group.ts'),
	 ('20231103162645-add_customerGroupId_column_in_customers_table.ts'),
	 ('20231109164925-create-delivery-partner-groups.ts'),
	 ('20231109170300-create-delivery-partners.ts'),
	 ('20231110140945-create-delivery-methods.ts'),
	 ('20231110152251-create-orders.ts');
INSERT INTO public."SequelizeMeta" ("name") VALUES
	 ('20231111034257-create-order-items.ts'),
	 ('20231112113150-create-order-payments.ts'),
	 ('20231116150534-add-customerId-orderId-column-in-debts-table.ts'),
	 ('20240409173423-create-product-units-table.ts'),
	 ('20240409173851-modify-inventory-quantity-column-product-table.ts'),
	 ('20240409174404-modify-quantity-column-order-items-table.ts'),
	 ('20240410165116-create-size-units-table.ts'),
	 ('20240410165958-create-speccification-types-table.ts'),
	 ('20240410171900-create-speccification-table.ts'),
	 ('20240416155211-add-orderid-to-specification.ts');
INSERT INTO public."SequelizeMeta" ("name") VALUES
	 ('20240505182505-add-description-to-order-item-table.ts'),
	 ('20240516102723-create-returned-orders-table.ts'),
	 ('20240516103837-create-returned-order-items-table.ts'),
	 ('20240518150307-add_productUnitId_column_to_order_item_table.ts');
INSERT INTO public.brands ("name","isActive","createdAt","updatedAt","deletedAt") VALUES
	 ('Hoa Sen',true,'2024-02-25 20:54:08.614+07','2024-02-25 20:54:08.614+07',NULL);
INSERT INTO public.categories ("categoryId","name","isActive","createdAt","updatedAt","deletedAt") VALUES
	 (NULL,'Sắt',true,'2024-02-25 20:53:51.546+07','2024-02-25 20:53:51.546+07',NULL),
	 (NULL,'Tôn',true,'2024-04-06 21:47:21.59+07','2024-04-06 21:47:21.59+07',NULL),
	 (NULL,'user',true,'2024-04-11 21:56:25.973+07','2024-04-11 21:56:25.973+07',NULL);
INSERT INTO public.combos ("categoryId","brandId",sku,barcode,"name",description,"costPrice","salePrice","wholesalePrice","standardUnit",weight,"weightUnitId","isActive","isConsistOfSalePrice","inputTaxId","outputTaxId","createdAt","updatedAt","deletedAt") VALUES
	 (NULL,NULL,'CBVN69895','CBVN98757','Bán tại quầy','<p>Mô tả combo - đóng gói...</p>',0,0,0,'combo',NULL,NULL,true,false,NULL,NULL,'2024-02-25 21:18:29.613+07','2024-02-25 21:18:29.613+07',NULL);
INSERT INTO public.customers ("name",email,"phoneNumber",birthday,address,"wardId","personGroupTypeId","isActive","createdAt","updatedAt","deletedAt","customerGroupId") VALUES
	 ('Sâm','','0258557465','2024-03-31','',1315,2,true,'2024-03-31 14:52:30.012+07','2024-04-01 22:30:53.16+07',NULL,NULL),
	 ('Long','longtran@gmail.com','025855566','2024-03-30','Thôn 1 xã cư suê, huyện cưmgar',NULL,2,true,'2024-03-30 22:51:40.687+07','2024-04-01 22:31:21.605+07',NULL,NULL),
	 ('Khách vãng lai','','0358857134','2024-02-25','phường 5, huyện Linh Trung, Thành Phố Thủ Đức, Hồ Chí Minh',NULL,2,true,'2024-02-25 21:15:50.335+07','2024-02-25 21:15:50.335+07',NULL,NULL);
INSERT INTO public.debt_types ("name","key","createdAt","updatedAt","deletedAt") VALUES
	 ('Supplier Debt','supplier_debt','2024-02-25 20:50:39.135+07','2024-02-25 20:50:39.135+07',NULL),
	 ('Customer Debt','customer_debt','2024-02-25 20:50:39.135+07','2024-02-25 20:50:39.135+07',NULL);
INSERT INTO public.debts ("supplierId","staffId","purchaseOrderId","voucherId","recordedDate","debtAmount","debtTypeId","createdAt","updatedAt","deletedAt","returnedPurchaseOrderId","customerId","orderId") VALUES
	 (1,1,1,NULL,'2024-02-25 20:55:41.472+07',3150000,1,'2024-02-25 20:55:41.473+07','2024-02-25 20:55:41.473+07',NULL,NULL,NULL,NULL),
	 (1,NULL,NULL,1,'2024-02-25 20:55:54.948+07',0,1,'2024-02-25 20:55:54.96+07','2024-02-25 20:55:54.96+07',NULL,NULL,NULL,NULL),
	 (1,1,1,NULL,'2024-02-25 20:55:58.326+07',-1575000,1,'2024-02-25 21:00:27.375+07','2024-02-25 21:00:27.375+07',NULL,3,NULL,NULL),
	 (1,NULL,NULL,2,'2024-02-25 21:00:27.389+07',0,1,'2024-02-25 21:00:27.395+07','2024-02-25 21:00:27.395+07',NULL,NULL,NULL,NULL),
	 (1,1,2,NULL,'2024-02-25 21:05:34.961+07',3150000,1,'2024-02-25 21:05:34.963+07','2024-02-25 21:05:34.963+07',NULL,NULL,NULL,NULL),
	 (NULL,1,NULL,NULL,'2024-02-25 21:18:49.678+07',150000,2,'2024-02-25 21:18:49.712+07','2024-02-25 21:18:49.712+07',NULL,NULL,1,1),
	 (NULL,NULL,NULL,3,'2024-02-25 21:19:35.816+07',149850,2,'2024-02-25 21:19:35.826+07','2024-02-25 21:19:35.826+07',NULL,NULL,1,NULL),
	 (NULL,NULL,NULL,4,'2024-02-25 21:19:45.018+07',134865,2,'2024-02-25 21:19:45.026+07','2024-02-25 21:19:45.026+07',NULL,NULL,1,NULL),
	 (NULL,NULL,NULL,5,'2024-02-25 21:20:11.387+07',134731,2,'2024-02-25 21:20:11.396+07','2024-02-25 21:20:11.396+07',NULL,NULL,1,NULL),
	 (NULL,NULL,NULL,6,'2024-02-25 21:20:21.718+07',121256,2,'2024-02-25 21:20:21.726+07','2024-02-25 21:20:21.726+07',NULL,NULL,1,NULL);
INSERT INTO public.debts ("supplierId","staffId","purchaseOrderId","voucherId","recordedDate","debtAmount","debtTypeId","createdAt","updatedAt","deletedAt","returnedPurchaseOrderId","customerId","orderId") VALUES
	 (NULL,NULL,NULL,7,'2024-02-25 21:20:54.78+07',231,2,'2024-02-25 21:20:54.79+07','2024-02-25 21:20:54.79+07',NULL,NULL,1,NULL),
	 (NULL,NULL,NULL,8,'2024-02-25 21:23:07.74+07',0,2,'2024-02-25 21:23:07.749+07','2024-02-25 21:23:07.749+07',NULL,NULL,1,NULL),
	 (NULL,1,NULL,NULL,'2024-02-27 23:11:20.688+07',150000,2,'2024-02-27 23:11:20.785+07','2024-02-27 23:11:20.785+07',NULL,NULL,1,2),
	 (NULL,NULL,NULL,10,'2024-02-27 23:11:41.069+07',0,2,'2024-02-27 23:11:41.089+07','2024-02-27 23:11:41.089+07',NULL,NULL,1,NULL),
	 (NULL,1,NULL,NULL,'2024-03-05 22:53:13.922+07',150000,2,'2024-03-05 22:53:14.009+07','2024-03-05 22:53:14.009+07',NULL,NULL,1,3),
	 (NULL,NULL,NULL,11,'2024-03-05 22:53:33.675+07',0,2,'2024-03-05 22:53:33.689+07','2024-03-05 22:53:33.689+07',NULL,NULL,1,NULL),
	 (NULL,1,NULL,NULL,'2024-03-14 20:38:14.358+07',150000,2,'2024-03-14 20:38:14.496+07','2024-03-14 20:38:14.496+07',NULL,NULL,1,4),
	 (NULL,NULL,NULL,12,'2024-03-14 22:12:58.218+07',0,2,'2024-03-14 22:12:58.233+07','2024-03-14 22:12:58.233+07',NULL,NULL,1,NULL),
	 (NULL,1,NULL,NULL,'2024-03-14 22:13:32.565+07',315000,2,'2024-03-14 22:13:32.622+07','2024-03-14 22:13:32.622+07',NULL,NULL,1,5),
	 (NULL,NULL,NULL,13,'2024-03-14 22:13:46.436+07',0,2,'2024-03-14 22:13:46.45+07','2024-03-14 22:13:46.45+07',NULL,NULL,1,NULL);
INSERT INTO public.debts ("supplierId","staffId","purchaseOrderId","voucherId","recordedDate","debtAmount","debtTypeId","createdAt","updatedAt","deletedAt","returnedPurchaseOrderId","customerId","orderId") VALUES
	 (NULL,1,NULL,NULL,'2024-03-14 22:24:28.478+07',0,2,'2024-03-14 22:24:28.555+07','2024-03-14 22:24:28.555+07',NULL,NULL,1,6),
	 (NULL,NULL,NULL,14,'2024-03-14 22:25:42.813+07',0,2,'2024-03-14 22:25:42.832+07','2024-03-14 22:25:42.832+07',NULL,NULL,1,NULL),
	 (NULL,1,NULL,NULL,'2024-03-26 23:43:58.796+07',0,2,'2024-03-26 23:43:58.854+07','2024-03-26 23:43:58.854+07',NULL,NULL,1,7),
	 (NULL,1,NULL,NULL,'2024-03-27 00:28:28.862+07',3150000,2,'2024-03-27 00:28:28.958+07','2024-03-27 00:28:28.958+07',NULL,NULL,1,8),
	 (NULL,NULL,NULL,15,'2024-03-27 00:29:18.445+07',2950000,2,'2024-03-27 00:29:18.461+07','2024-03-27 00:29:18.461+07',NULL,NULL,1,NULL),
	 (1,1,3,NULL,'2024-03-30 14:15:37.266+07',3150000,1,'2024-03-30 14:15:37.267+07','2024-03-30 14:15:37.267+07',NULL,NULL,NULL,NULL),
	 (1,NULL,NULL,17,'2024-03-30 14:15:50.418+07',0,1,'2024-03-30 14:15:50.427+07','2024-03-30 14:15:50.427+07',NULL,NULL,NULL,NULL),
	 (NULL,1,NULL,NULL,'2024-03-30 14:38:48.128+07',150000,2,'2024-03-30 14:38:48.249+07','2024-03-30 14:38:48.249+07',NULL,NULL,1,9),
	 (NULL,NULL,NULL,18,'2024-03-30 14:39:02.812+07',0,2,'2024-03-30 14:39:02.823+07','2024-03-30 14:39:02.823+07',NULL,NULL,1,NULL),
	 (NULL,1,NULL,NULL,'2024-03-30 16:48:39.254+07',65000,2,'2024-03-30 16:48:45+07','2024-03-30 16:48:45+07',NULL,NULL,1,10);
INSERT INTO public.debts ("supplierId","staffId","purchaseOrderId","voucherId","recordedDate","debtAmount","debtTypeId","createdAt","updatedAt","deletedAt","returnedPurchaseOrderId","customerId","orderId") VALUES
	 (NULL,NULL,NULL,19,'2024-03-30 22:00:10.922+07',0,2,'2024-03-30 22:00:10.957+07','2024-03-30 22:00:10.957+07',NULL,NULL,1,NULL),
	 (NULL,NULL,NULL,20,'2024-03-30 22:47:27.192+07',2450000,2,'2024-03-30 22:47:27.224+07','2024-03-30 22:47:27.224+07',NULL,NULL,1,NULL),
	 (NULL,1,NULL,NULL,'2024-03-30 22:52:04.718+07',65000,2,'2024-03-30 22:52:04.825+07','2024-03-30 22:52:04.825+07',NULL,NULL,2,11),
	 (NULL,1,NULL,NULL,'2024-03-30 22:53:13.851+07',1575000,2,'2024-03-30 22:53:13.941+07','2024-03-30 22:53:13.941+07',NULL,NULL,2,12),
	 (NULL,1,NULL,NULL,'2024-03-31 13:54:35.952+07',150000,2,'2024-03-31 13:54:36.02+07','2024-03-31 13:54:36.02+07',NULL,NULL,2,13),
	 (NULL,1,NULL,NULL,'2024-03-31 13:56:15.783+07',65000,2,'2024-03-31 13:56:15.84+07','2024-03-31 13:56:15.84+07',NULL,NULL,2,14),
	 (NULL,1,NULL,NULL,'2024-03-31 14:52:50.919+07',150000,2,'2024-03-31 14:52:50.984+07','2024-03-31 14:52:50.984+07',NULL,NULL,3,15),
	 (NULL,1,NULL,NULL,'2024-03-31 14:56:02.06+07',787500,2,'2024-03-31 14:56:02.097+07','2024-03-31 14:56:02.097+07',NULL,NULL,3,16),
	 (NULL,NULL,NULL,24,'2024-03-31 15:09:14.433+07',50000,2,'2024-03-31 15:09:14.447+07','2024-03-31 15:09:14.447+07',NULL,NULL,3,15),
	 (NULL,NULL,NULL,23,'2024-03-31 14:56:47.14+07',100000,2,'2024-03-31 14:56:47.15+07','2024-03-31 14:56:47.15+07',NULL,NULL,3,15);
INSERT INTO public.debts ("supplierId","staffId","purchaseOrderId","voucherId","recordedDate","debtAmount","debtTypeId","createdAt","updatedAt","deletedAt","returnedPurchaseOrderId","customerId","orderId") VALUES
	 (NULL,NULL,NULL,21,'2024-03-30 22:55:09.092+07',1000000,2,'2024-03-30 22:55:09.128+07','2024-03-30 22:55:09.128+07',NULL,NULL,2,12),
	 (NULL,NULL,NULL,22,'2024-03-31 14:50:37.74+07',0,2,'2024-03-31 14:50:37.75+07','2024-03-31 14:50:37.75+07',NULL,NULL,2,14),
	 (NULL,1,NULL,NULL,'2024-04-02 21:54:00.705+07',65000,2,'2024-04-02 21:54:00.825+07','2024-04-02 21:54:00.825+07',NULL,NULL,3,17),
	 (NULL,1,NULL,NULL,'2024-04-02 21:54:24.284+07',150000,2,'2024-04-02 21:54:24.321+07','2024-04-02 21:54:24.321+07',NULL,NULL,2,18),
	 (NULL,1,NULL,NULL,'2024-04-02 22:30:14.664+07',65000,2,'2024-04-02 22:30:14.724+07','2024-04-02 22:30:14.724+07',NULL,NULL,1,19),
	 (NULL,NULL,NULL,25,'2024-04-05 23:13:24.336+07',50000,2,'2024-04-05 23:13:24.354+07','2024-04-05 23:13:24.354+07',NULL,NULL,1,19),
	 (1,1,4,NULL,'2024-04-06 14:28:42.328+07',65000,1,'2024-04-06 14:28:42.329+07','2024-04-06 14:28:42.329+07',NULL,NULL,NULL,NULL),
	 (1,1,5,NULL,'2024-04-06 15:44:20.296+07',150000,1,'2024-04-06 15:44:20.298+07','2024-04-06 15:44:20.298+07',NULL,NULL,NULL,NULL),
	 (NULL,1,NULL,NULL,'2024-04-27 21:09:52.564+07',0,2,'2024-04-27 21:09:52.627+07','2024-04-27 21:09:52.627+07',NULL,NULL,1,20),
	 (NULL,1,NULL,NULL,'2024-04-27 21:11:53.559+07',0,2,'2024-04-27 21:11:53.596+07','2024-04-27 21:11:53.596+07',NULL,NULL,3,21);
INSERT INTO public.debts ("supplierId","staffId","purchaseOrderId","voucherId","recordedDate","debtAmount","debtTypeId","createdAt","updatedAt","deletedAt","returnedPurchaseOrderId","customerId","orderId") VALUES
	 (NULL,1,NULL,NULL,'2024-04-27 21:16:14.676+07',0,2,'2024-04-27 21:16:14.717+07','2024-04-27 21:16:14.717+07',NULL,NULL,1,22),
	 (NULL,1,NULL,NULL,'2024-04-28 15:34:55.257+07',504000,2,'2024-04-28 15:34:55.321+07','2024-04-28 15:34:55.321+07',NULL,NULL,3,23),
	 (NULL,1,NULL,NULL,'2024-05-03 17:42:53.97+07',279200,2,'2024-05-03 17:42:54.142+07','2024-05-03 17:42:54.142+07',NULL,NULL,2,24),
	 (NULL,1,NULL,NULL,'2024-05-04 08:46:31.875+07',78000,2,'2024-05-04 08:46:31.959+07','2024-05-04 08:46:31.959+07',NULL,NULL,2,25),
	 (NULL,1,NULL,NULL,'2024-05-04 13:28:02.975+07',0,2,'2024-05-04 13:28:03.029+07','2024-05-04 13:28:03.029+07',NULL,NULL,2,26),
	 (NULL,1,NULL,NULL,'2024-05-04 13:34:46.944+07',0,2,'2024-05-04 13:34:46.983+07','2024-05-04 13:34:46.983+07',NULL,NULL,1,27),
	 (NULL,1,NULL,NULL,'2024-05-04 13:51:13.3+07',0,2,'2024-05-04 13:51:13.371+07','2024-05-04 13:51:13.371+07',NULL,NULL,2,28),
	 (NULL,1,NULL,NULL,'2024-05-04 14:12:02.059+07',100000,2,'2024-05-04 14:12:02.151+07','2024-05-04 14:12:02.151+07',NULL,NULL,2,29),
	 (NULL,1,NULL,NULL,'2024-05-04 14:13:31.292+07',0,2,'2024-05-04 14:13:31.37+07','2024-05-04 14:13:31.37+07',NULL,NULL,2,30),
	 (NULL,1,NULL,NULL,'2024-05-04 14:54:10.032+07',0,2,'2024-05-04 14:54:10.076+07','2024-05-04 14:54:10.076+07',NULL,NULL,2,31);
INSERT INTO public.debts ("supplierId","staffId","purchaseOrderId","voucherId","recordedDate","debtAmount","debtTypeId","createdAt","updatedAt","deletedAt","returnedPurchaseOrderId","customerId","orderId") VALUES
	 (NULL,1,NULL,NULL,'2024-05-04 15:00:50.259+07',0,2,'2024-05-04 15:00:50.327+07','2024-05-04 15:00:50.327+07',NULL,NULL,2,32),
	 (NULL,1,NULL,NULL,'2024-05-04 16:52:02.631+07',0,2,'2024-05-04 16:52:02.695+07','2024-05-04 16:52:02.695+07',NULL,NULL,3,33),
	 (NULL,1,NULL,NULL,'2024-05-04 16:59:05.959+07',0,2,'2024-05-04 16:59:06.003+07','2024-05-04 16:59:06.003+07',NULL,NULL,2,34),
	 (NULL,1,NULL,NULL,'2024-05-04 17:03:12.363+07',0,2,'2024-05-04 17:03:12.406+07','2024-05-04 17:03:12.406+07',NULL,NULL,2,35),
	 (NULL,1,NULL,NULL,'2024-05-04 17:27:06.252+07',70000,2,'2024-05-04 17:27:06.338+07','2024-05-04 17:27:06.338+07',NULL,NULL,2,36),
	 (NULL,1,NULL,NULL,'2024-05-04 17:28:57.483+07',0,2,'2024-05-04 17:28:57.521+07','2024-05-04 17:28:57.521+07',NULL,NULL,2,37),
	 (NULL,1,NULL,NULL,'2024-05-04 22:27:56.503+07',175000,2,'2024-05-04 22:27:56.652+07','2024-05-04 22:27:56.652+07',NULL,NULL,3,38),
	 (NULL,1,NULL,NULL,'2024-05-04 22:38:20.703+07',175000,2,'2024-05-04 22:38:20.89+07','2024-05-04 22:38:20.89+07',NULL,NULL,3,39),
	 (NULL,NULL,NULL,26,'2024-05-04 22:55:08.597+07',75000,2,'2024-05-04 22:55:08.625+07','2024-05-04 22:55:08.625+07',NULL,NULL,3,39),
	 (NULL,1,NULL,NULL,'2024-05-05 00:44:49.441+07',0,2,'2024-05-05 00:44:49.516+07','2024-05-05 00:44:49.516+07',NULL,NULL,2,40);
INSERT INTO public.debts ("supplierId","staffId","purchaseOrderId","voucherId","recordedDate","debtAmount","debtTypeId","createdAt","updatedAt","deletedAt","returnedPurchaseOrderId","customerId","orderId") VALUES
	 (NULL,1,NULL,NULL,'2024-05-05 00:45:24.79+07',0,2,'2024-05-05 00:45:24.84+07','2024-05-05 00:45:24.84+07',NULL,NULL,2,41),
	 (NULL,1,NULL,NULL,'2024-05-05 00:52:02.699+07',110000,2,'2024-05-05 00:52:02.782+07','2024-05-05 00:52:02.782+07',NULL,NULL,2,42),
	 (NULL,1,NULL,NULL,'2024-05-05 01:03:27.97+07',0,2,'2024-05-05 01:03:28.031+07','2024-05-05 01:03:28.031+07',NULL,NULL,2,43),
	 (NULL,1,NULL,NULL,'2024-05-05 01:06:26.358+07',0,2,'2024-05-05 01:06:26.39+07','2024-05-05 01:06:26.39+07',NULL,NULL,1,44),
	 (NULL,1,NULL,NULL,'2024-05-05 01:21:59.713+07',70000,2,'2024-05-05 01:21:59.764+07','2024-05-05 01:21:59.764+07',NULL,NULL,2,45),
	 (NULL,1,NULL,NULL,'2024-05-05 01:22:24.288+07',197200,2,'2024-05-05 01:22:24.312+07','2024-05-05 01:22:24.312+07',NULL,NULL,2,46),
	 (NULL,1,NULL,NULL,'2024-05-05 01:32:24.031+07',367600,2,'2024-05-05 01:32:24.076+07','2024-05-05 01:32:24.076+07',NULL,NULL,2,47),
	 (NULL,1,NULL,NULL,'2024-05-05 22:02:16.384+07',306000,2,'2024-05-05 22:02:16.473+07','2024-05-05 22:02:16.473+07',NULL,NULL,3,48),
	 (NULL,NULL,NULL,27,'2024-05-05 22:02:16.564+07',294000,2,'2024-05-05 22:02:16.58+07','2024-05-05 22:02:16.58+07',NULL,NULL,3,48),
	 (NULL,1,NULL,NULL,'2024-05-05 22:05:51.352+07',318000,2,'2024-05-05 22:05:51.435+07','2024-05-05 22:05:51.435+07',NULL,NULL,2,49);
INSERT INTO public.debts ("supplierId","staffId","purchaseOrderId","voucherId","recordedDate","debtAmount","debtTypeId","createdAt","updatedAt","deletedAt","returnedPurchaseOrderId","customerId","orderId") VALUES
	 (NULL,NULL,NULL,28,'2024-05-05 22:05:51.531+07',305000,2,'2024-05-05 22:05:51.543+07','2024-05-05 22:05:51.543+07',NULL,NULL,2,49),
	 (NULL,1,NULL,NULL,'2024-05-05 22:17:40.119+07',111300,2,'2024-05-05 22:17:40.215+07','2024-05-05 22:17:40.215+07',NULL,NULL,2,50),
	 (NULL,NULL,NULL,29,'2024-05-05 22:17:40.304+07',100000,2,'2024-05-05 22:17:40.316+07','2024-05-05 22:17:40.316+07',NULL,NULL,2,50),
	 (NULL,1,NULL,NULL,'2024-05-05 22:22:54.196+07',70000,2,'2024-05-05 22:22:54.288+07','2024-05-05 22:22:54.288+07',NULL,NULL,2,51),
	 (NULL,NULL,NULL,30,'2024-05-05 22:22:54.39+07',58700,2,'2024-05-05 22:22:54.401+07','2024-05-05 22:22:54.401+07',NULL,NULL,2,51),
	 (NULL,1,NULL,NULL,'2024-05-06 00:36:41.672+07',111300,2,'2024-05-06 00:36:41.862+07','2024-05-06 00:36:41.862+07',NULL,NULL,2,52),
	 (NULL,NULL,NULL,31,'2024-05-06 00:36:41.987+07',110300,2,'2024-05-06 00:36:42.009+07','2024-05-06 00:36:42.009+07',NULL,NULL,2,52),
	 (NULL,1,NULL,NULL,'2024-05-06 00:46:06.632+07',111300,2,'2024-05-06 00:46:06.735+07','2024-05-06 00:46:06.735+07',NULL,NULL,2,53),
	 (NULL,NULL,NULL,32,'2024-05-06 00:46:06.869+07',110300,2,'2024-05-06 00:46:06.883+07','2024-05-06 00:46:06.883+07',NULL,NULL,2,53),
	 (NULL,1,NULL,NULL,'2024-05-06 02:18:25.604+07',318000,2,'2024-05-06 02:18:25.652+07','2024-05-06 02:18:25.652+07',NULL,NULL,2,60);
INSERT INTO public.debts ("supplierId","staffId","purchaseOrderId","voucherId","recordedDate","debtAmount","debtTypeId","createdAt","updatedAt","deletedAt","returnedPurchaseOrderId","customerId","orderId") VALUES
	 (NULL,NULL,NULL,33,'2024-05-06 02:18:25.779+07',310000,2,'2024-05-06 02:18:25.793+07','2024-05-06 02:18:25.793+07',NULL,NULL,2,60),
	 (1,1,3,NULL,'2024-03-30 14:15:39.315+07',-1575000,1,'2024-05-19 16:22:59.205+07','2024-05-19 16:22:59.205+07',NULL,4,NULL,NULL),
	 (1,NULL,NULL,34,'2024-05-19 16:22:59.236+07',0,1,'2024-05-19 16:22:59.256+07','2024-05-19 16:22:59.256+07',NULL,NULL,NULL,NULL),
	 (NULL,1,NULL,NULL,'2024-05-19 19:21:01.556+07',1260000,2,'2024-05-19 19:21:01.626+07','2024-05-19 19:21:01.626+07',NULL,NULL,2,68),
	 (NULL,1,NULL,NULL,'2024-05-19 20:38:45.183+07',1008000,2,'2024-05-19 20:38:45.299+07','2024-05-19 20:38:45.299+07',NULL,NULL,2,69),
	 (NULL,1,NULL,NULL,'2024-05-20 22:36:45.433+07',4560000,2,'2024-05-20 22:36:45.503+07','2024-05-20 22:36:45.503+07',NULL,NULL,1,70),
	 (NULL,1,NULL,NULL,'2024-05-21 23:53:20.919+07',70000,2,'2024-05-21 23:53:20.984+07','2024-05-21 23:53:20.984+07',NULL,NULL,2,73),
	 (NULL,NULL,NULL,51,'2024-05-21 23:53:21.081+07',20000,2,'2024-05-21 23:53:21.093+07','2024-05-21 23:53:21.093+07',NULL,NULL,2,73),
	 (NULL,1,NULL,NULL,'2024-05-22 17:25:35.56+07',318000,2,'2024-05-22 17:25:35.602+07','2024-05-22 17:25:35.602+07',NULL,NULL,2,78),
	 (NULL,NULL,NULL,52,'2024-05-22 17:25:35.744+07',288000,2,'2024-05-22 17:25:35.759+07','2024-05-22 17:25:35.759+07',NULL,NULL,2,78);
INSERT INTO public.debts ("supplierId","staffId","purchaseOrderId","voucherId","recordedDate","debtAmount","debtTypeId","createdAt","updatedAt","deletedAt","returnedPurchaseOrderId","customerId","orderId") VALUES
	 (NULL,1,NULL,NULL,'2024-05-22 17:30:19.795+07',318000,2,'2024-05-22 17:30:19.91+07','2024-05-22 17:30:19.91+07',NULL,NULL,2,79),
	 (NULL,NULL,NULL,53,'2024-05-22 17:30:20.002+07',298000,2,'2024-05-22 17:30:20.012+07','2024-05-22 17:30:20.012+07',NULL,NULL,2,79),
	 (NULL,1,NULL,NULL,'2024-05-22 17:44:54.329+07',298000,2,'2024-05-22 17:44:54.397+07','2024-05-22 17:44:54.397+07',NULL,NULL,3,81),
	 (NULL,NULL,NULL,54,'2024-05-22 17:44:54.473+07',278000,2,'2024-05-22 17:44:54.489+07','2024-05-22 17:44:54.489+07',NULL,NULL,3,81),
	 (NULL,1,NULL,NULL,'2024-05-22 17:47:29.783+07',300000,2,'2024-05-22 17:47:29.833+07','2024-05-22 17:47:29.833+07',NULL,NULL,2,82),
	 (NULL,NULL,NULL,55,'2024-05-22 17:47:29.894+07',202000,2,'2024-05-22 17:47:29.903+07','2024-05-22 17:47:29.903+07',NULL,NULL,2,82),
	 (NULL,1,NULL,NULL,'2024-05-22 17:56:31.424+07',98000,2,'2024-05-22 17:56:31.489+07','2024-05-22 17:56:31.489+07',NULL,NULL,2,86),
	 (NULL,NULL,NULL,56,'2024-05-22 17:56:31.561+07',-202000,2,'2024-05-22 17:56:31.575+07','2024-05-22 17:56:31.575+07',NULL,NULL,2,86),
	 (NULL,1,NULL,NULL,'2024-05-22 18:04:14.272+07',398000,2,'2024-05-22 18:04:14.337+07','2024-05-22 18:04:14.337+07',NULL,NULL,2,87),
	 (NULL,NULL,NULL,57,'2024-05-22 18:04:14.391+07',0,2,'2024-05-22 18:04:14.4+07','2024-05-22 18:04:14.4+07',NULL,NULL,2,87);
INSERT INTO public.debts ("supplierId","staffId","purchaseOrderId","voucherId","recordedDate","debtAmount","debtTypeId","createdAt","updatedAt","deletedAt","returnedPurchaseOrderId","customerId","orderId") VALUES
	 (NULL,1,NULL,NULL,'2024-05-22 22:00:13.042+07',318000,2,'2024-05-22 22:00:13.116+07','2024-05-22 22:00:13.116+07',NULL,NULL,2,89),
	 (NULL,NULL,NULL,58,'2024-05-22 22:00:13.19+07',314367,2,'2024-05-22 22:00:13.201+07','2024-05-22 22:00:13.201+07',NULL,NULL,2,89),
	 (NULL,1,NULL,NULL,'2024-05-22 22:00:47.808+07',398000,2,'2024-05-22 22:00:47.868+07','2024-05-22 22:00:47.868+07',NULL,NULL,2,90),
	 (NULL,NULL,NULL,59,'2024-05-22 22:00:47.94+07',300000,2,'2024-05-22 22:00:47.949+07','2024-05-22 22:00:47.949+07',NULL,NULL,2,90),
	 (NULL,1,NULL,NULL,'2024-05-22 22:17:44.974+07',318000,2,'2024-05-22 22:17:45.015+07','2024-05-22 22:17:45.015+07',NULL,NULL,2,91),
	 (NULL,NULL,NULL,60,'2024-05-22 22:17:45.066+07',0,2,'2024-05-22 22:17:45.074+07','2024-05-22 22:17:45.074+07',NULL,NULL,2,91),
	 (NULL,1,NULL,NULL,'2024-05-22 22:22:35.041+07',398000,2,'2024-05-22 22:22:35.076+07','2024-05-22 22:22:35.076+07',NULL,NULL,2,92),
	 (NULL,NULL,NULL,61,'2024-05-22 22:22:35.141+07',0,2,'2024-05-22 22:22:35.151+07','2024-05-22 22:22:35.151+07',NULL,NULL,2,92),
	 (NULL,1,NULL,NULL,'2024-05-22 22:28:08.598+07',398000,2,'2024-05-22 22:28:08.659+07','2024-05-22 22:28:08.659+07',NULL,NULL,3,93),
	 (NULL,NULL,NULL,62,'2024-05-22 22:28:08.71+07',0,2,'2024-05-22 22:28:08.722+07','2024-05-22 22:28:08.722+07',NULL,NULL,3,93);
INSERT INTO public.debts ("supplierId","staffId","purchaseOrderId","voucherId","recordedDate","debtAmount","debtTypeId","createdAt","updatedAt","deletedAt","returnedPurchaseOrderId","customerId","orderId") VALUES
	 (NULL,1,NULL,NULL,'2024-05-22 22:35:14.089+07',388000,2,'2024-05-22 22:35:14.156+07','2024-05-22 22:35:14.156+07',NULL,NULL,2,94),
	 (NULL,NULL,NULL,63,'2024-05-22 22:35:14.334+07',70000,2,'2024-05-22 22:35:14.353+07','2024-05-22 22:35:14.353+07',NULL,NULL,2,94),
	 (NULL,1,NULL,NULL,'2024-05-22 22:43:35.726+07',398000,2,'2024-05-22 22:43:35.78+07','2024-05-22 22:43:35.78+07',NULL,NULL,2,95),
	 (NULL,NULL,NULL,64,'2024-05-22 22:43:35.856+07',0,2,'2024-05-22 22:43:35.87+07','2024-05-22 22:43:35.87+07',NULL,NULL,2,95),
	 (NULL,1,NULL,NULL,'2024-05-22 22:44:04.512+07',318000,2,'2024-05-22 22:44:04.548+07','2024-05-22 22:44:04.548+07',NULL,NULL,2,96),
	 (NULL,1,NULL,NULL,'2024-05-22 22:49:49.169+07',318000,2,'2024-05-22 22:49:49.234+07','2024-05-22 22:49:49.234+07',NULL,NULL,2,97),
	 (NULL,1,NULL,NULL,'2024-05-22 22:51:02.836+07',318000,2,'2024-05-22 22:51:02.879+07','2024-05-22 22:51:02.879+07',NULL,NULL,2,98),
	 (NULL,1,NULL,NULL,'2024-05-22 22:52:26.283+07',318000,2,'2024-05-22 22:52:26.342+07','2024-05-22 22:52:26.342+07',NULL,NULL,2,99),
	 (NULL,1,NULL,NULL,'2024-05-22 23:18:46.983+07',318000,2,'2024-05-22 23:18:47.149+07','2024-05-22 23:18:47.149+07',NULL,NULL,1,100),
	 (NULL,1,NULL,NULL,'2024-05-22 23:33:44.684+07',398000,2,'2024-05-22 23:33:44.786+07','2024-05-22 23:33:44.786+07',NULL,NULL,1,101);
INSERT INTO public.debts ("supplierId","staffId","purchaseOrderId","voucherId","recordedDate","debtAmount","debtTypeId","createdAt","updatedAt","deletedAt","returnedPurchaseOrderId","customerId","orderId") VALUES
	 (NULL,1,NULL,NULL,'2024-05-24 17:49:18.664+07',150000,2,'2024-05-24 17:49:18.763+07','2024-05-24 17:49:18.763+07',NULL,NULL,3,102),
	 (NULL,1,NULL,NULL,'2024-05-24 17:54:14.487+07',150000,2,'2024-05-24 17:54:14.528+07','2024-05-24 17:54:14.528+07',NULL,NULL,3,103),
	 (NULL,1,NULL,NULL,'2024-05-24 17:55:44.281+07',150000,2,'2024-05-24 17:55:44.316+07','2024-05-24 17:55:44.316+07',NULL,NULL,3,104),
	 (NULL,1,NULL,NULL,'2024-05-24 18:08:09.991+07',1190000,2,'2024-05-24 18:08:10.028+07','2024-05-24 18:08:10.028+07',NULL,NULL,2,105),
	 (NULL,1,NULL,NULL,'2024-05-24 18:16:22.319+07',360000,2,'2024-05-24 18:16:22.348+07','2024-05-24 18:16:22.348+07',NULL,NULL,2,107),
	 (NULL,NULL,NULL,67,'2024-05-24 18:16:22.43+07',0,2,'2024-05-24 18:16:22.439+07','2024-05-24 18:16:22.439+07',NULL,NULL,2,107),
	 (NULL,1,NULL,NULL,'2024-05-24 20:27:24.63+07',8984000,2,'2024-05-24 20:27:24.643+07','2024-05-24 20:27:24.643+07',NULL,NULL,2,109),
	 (NULL,NULL,NULL,68,'2024-05-24 20:27:24.705+07',0,2,'2024-05-24 20:27:24.715+07','2024-05-24 20:27:24.715+07',NULL,NULL,2,109),
	 (NULL,1,NULL,NULL,'2024-05-24 20:37:40.741+07',5088000,2,'2024-05-24 20:37:40.785+07','2024-05-24 20:37:40.785+07',NULL,NULL,3,110),
	 (NULL,NULL,NULL,69,'2024-05-24 20:37:40.856+07',0,2,'2024-05-24 20:37:40.869+07','2024-05-24 20:37:40.869+07',NULL,NULL,3,110);
INSERT INTO public.delivery_methods ("name","key","createdAt","updatedAt","deletedAt") VALUES
	 ('Receive In Store','receive-in-store','2024-02-25 20:50:40.13+07','2024-02-25 20:50:40.13+07',NULL),
	 ('Shipping','shipping','2024-02-25 20:50:40.13+07','2024-02-25 20:50:40.13+07',NULL);
INSERT INTO public.delivery_partners ("name",email,mobile,code,company,address,description,"shippingFee","wardId","personGroupTypeId","deliveryPartnerGroupId","createdAt","updatedAt","deletedAt") VALUES
	 ('Long','','2658857234','DSPN87092','','','<p>Mô tả đơn vị vận chuyển...</p>',80000,NULL,4,NULL,'2024-04-02 22:29:46.631+07','2024-04-02 22:30:28.796+07',NULL);
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (1,'Bình Chánh',NULL,NULL,NULL,'Huyện'),
	 (1,'Bình Tân',NULL,NULL,NULL,'Quận'),
	 (1,'Bình Thạnh',NULL,NULL,NULL,'Quận'),
	 (1,'Cần Giờ',NULL,NULL,NULL,'Huyện'),
	 (1,'Củ Chi',NULL,NULL,NULL,'Huyện'),
	 (1,'Gò Vấp',NULL,NULL,NULL,'Quận'),
	 (1,'Hóc Môn',NULL,NULL,NULL,'Huyện'),
	 (1,'Nhà Bè',NULL,NULL,NULL,'Huyện'),
	 (1,'Phú Nhuận',NULL,NULL,NULL,'Quận'),
	 (1,'Quận 1',NULL,NULL,NULL,'');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (1,'Quận 10',NULL,NULL,NULL,''),
	 (1,'Quận 11',NULL,NULL,NULL,''),
	 (1,'Quận 12',NULL,NULL,NULL,''),
	 (1,'Quận 2',NULL,NULL,NULL,''),
	 (1,'Quận 3',NULL,NULL,NULL,''),
	 (1,'Quận 4',NULL,NULL,NULL,''),
	 (1,'Quận 5',NULL,NULL,NULL,''),
	 (1,'Quận 6',NULL,NULL,NULL,''),
	 (1,'Quận 7',NULL,NULL,NULL,''),
	 (1,'Quận 8',NULL,NULL,NULL,'');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (1,'Quận 9',NULL,NULL,NULL,''),
	 (1,'Tân Bình',NULL,NULL,NULL,'Quận'),
	 (1,'Tân Phú',NULL,NULL,NULL,'Quận'),
	 (1,'Thủ Đức',NULL,NULL,NULL,'Quận'),
	 (2,'Ba Đình',NULL,NULL,NULL,'Quận'),
	 (2,'Ba Vì',NULL,NULL,NULL,'Huyện'),
	 (2,'Bắc Từ Liêm',NULL,NULL,NULL,'Quận'),
	 (2,'Cầu Giấy',NULL,NULL,NULL,'Quận'),
	 (2,'Chương Mỹ',NULL,NULL,NULL,'Huyện'),
	 (2,'Đan Phượng',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (2,'Đông Anh',NULL,NULL,NULL,'Huyện'),
	 (2,'Đống Đa',NULL,NULL,NULL,'Quận'),
	 (2,'Gia Lâm',NULL,NULL,NULL,'Huyện'),
	 (2,'Hà Đông',NULL,NULL,NULL,'Quận'),
	 (2,'Hai Bà Trưng',NULL,NULL,NULL,'Quận'),
	 (2,'Hoài Đức',NULL,NULL,NULL,'Huyện'),
	 (2,'Hoàn Kiếm',NULL,NULL,NULL,'Quận'),
	 (2,'Hoàng Mai',NULL,NULL,NULL,'Quận'),
	 (2,'Long Biên',NULL,NULL,NULL,'Quận'),
	 (2,'Mê Linh',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (2,'Mỹ Đức',NULL,NULL,NULL,'Huyện'),
	 (2,'Nam Từ Liêm',NULL,NULL,NULL,'Quận'),
	 (2,'Phú Xuyên',NULL,NULL,NULL,'Huyện'),
	 (2,'Phúc Thọ',NULL,NULL,NULL,'Huyện'),
	 (2,'Quốc Oai',NULL,NULL,NULL,'Huyện'),
	 (2,'Sóc Sơn',NULL,NULL,NULL,'Huyện'),
	 (2,'Sơn Tây',NULL,NULL,NULL,'Thị xã'),
	 (2,'Tây Hồ',NULL,NULL,NULL,'Quận'),
	 (2,'Thạch Thất',NULL,NULL,NULL,'Huyện'),
	 (2,'Thanh Oai',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (2,'Thanh Trì',NULL,NULL,NULL,'Huyện'),
	 (2,'Thanh Xuân',NULL,NULL,NULL,'Quận'),
	 (2,'Thường Tín',NULL,NULL,NULL,'Huyện'),
	 (2,'Ứng Hòa',NULL,NULL,NULL,'Huyện'),
	 (3,'Cẩm Lệ',NULL,NULL,NULL,'Quận'),
	 (3,'Hải Châu',NULL,NULL,NULL,'Quận'),
	 (3,'Hòa Vang',NULL,NULL,NULL,'Huyện'),
	 (3,'Hoàng Sa',NULL,NULL,NULL,'Huyện'),
	 (3,'Liên Chiểu',NULL,NULL,NULL,'Quận'),
	 (3,'Ngũ Hành Sơn',NULL,NULL,NULL,'Quận');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (3,'Sơn Trà',NULL,NULL,NULL,'Quận'),
	 (3,'Thanh Khê',NULL,NULL,NULL,'Quận'),
	 (4,'Bàu Bàng',NULL,NULL,NULL,'Huyện'),
	 (4,'Bến Cát',NULL,NULL,NULL,'Thị xã'),
	 (4,'Dầu Tiếng',NULL,NULL,NULL,'Huyện'),
	 (4,'Dĩ An',NULL,NULL,NULL,'Thị xã'),
	 (4,'Phú Giáo',NULL,NULL,NULL,'Huyện'),
	 (4,'Tân Uyên',NULL,NULL,NULL,'Huyện'),
	 (4,'Thủ Dầu Một',NULL,NULL,NULL,'Thị xã'),
	 (4,'Thuận An',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (5,'Biên Hòa',NULL,NULL,NULL,'Thành phố'),
	 (5,'Cẩm Mỹ',NULL,NULL,NULL,'Huyện'),
	 (5,'Định Quán',NULL,NULL,NULL,'Huyện'),
	 (5,'Long Khánh',NULL,NULL,NULL,'Thị xã'),
	 (5,'Long Thành',NULL,NULL,NULL,'Huyện'),
	 (5,'Nhơn Trạch',NULL,NULL,NULL,'Huyện'),
	 (5,'Tân Phú',NULL,NULL,NULL,'Quận'),
	 (5,'Thống Nhất',NULL,NULL,NULL,'Huyện'),
	 (5,'Trảng Bom',NULL,NULL,NULL,'Huyện'),
	 (5,'Vĩnh Cửu',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (5,'Xuân Lộc',NULL,NULL,NULL,'Huyện'),
	 (6,'Cam Lâm',NULL,NULL,NULL,'Huyện'),
	 (6,'Cam Ranh',NULL,NULL,NULL,'Thành phố'),
	 (6,'Diên Khánh',NULL,NULL,NULL,'Huyện'),
	 (6,'Khánh Sơn',NULL,NULL,NULL,'Huyện'),
	 (6,'Khánh Vĩnh',NULL,NULL,NULL,'Huyện'),
	 (6,'Nha Trang',NULL,NULL,NULL,'Thành phố'),
	 (6,'Ninh Hòa',NULL,NULL,NULL,'Thị xã'),
	 (6,'Trường Sa',NULL,NULL,NULL,'Huyện'),
	 (6,'Vạn Ninh',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (7,'An Dương',NULL,NULL,NULL,'Huyện'),
	 (7,'An Lão',NULL,NULL,NULL,'Huyện'),
	 (7,'Bạch Long Vĩ',NULL,NULL,NULL,'Huyện'),
	 (7,'Cát Hải',NULL,NULL,NULL,'Huyện'),
	 (7,'Đồ Sơn',NULL,NULL,NULL,'Quận'),
	 (7,'Dương Kinh',NULL,NULL,NULL,'Quận'),
	 (7,'Hải An',NULL,NULL,NULL,'Quận'),
	 (7,'Hồng Bàng',NULL,NULL,NULL,'Quận'),
	 (7,'Kiến An',NULL,NULL,NULL,'Quận'),
	 (7,'Kiến Thụy',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (7,'Lê Chân',NULL,NULL,NULL,'Quận'),
	 (7,'Ngô Quyền',NULL,NULL,NULL,'Quận'),
	 (7,'Thủy Nguyên',NULL,NULL,NULL,'Huyện'),
	 (7,'Tiên Lãng',NULL,NULL,NULL,'Huyện'),
	 (7,'Vĩnh Bảo',NULL,NULL,NULL,'Huyện'),
	 (8,'Bến Lức',NULL,NULL,NULL,'Huyện'),
	 (8,'Cần Đước',NULL,NULL,NULL,'Huyện'),
	 (8,'Cần Giuộc',NULL,NULL,NULL,'Huyện'),
	 (8,'Châu Thành',NULL,NULL,NULL,'Huyện'),
	 (8,'Đức Hòa',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (8,'Đức Huệ',NULL,NULL,NULL,'Huyện'),
	 (8,'Kiến Tường',NULL,NULL,NULL,'Thị xã'),
	 (8,'Mộc Hóa',NULL,NULL,NULL,'Huyện'),
	 (8,'Tân An',NULL,NULL,NULL,'Thành phố'),
	 (8,'Tân Hưng',NULL,NULL,NULL,'Huyện'),
	 (8,'Tân Thạnh',NULL,NULL,NULL,'Huyện'),
	 (8,'Tân Trụ',NULL,NULL,NULL,'Huyện'),
	 (8,'Thạnh Hóa',NULL,NULL,NULL,'Huyện'),
	 (8,'Thủ Thừa',NULL,NULL,NULL,'Huyện'),
	 (8,'Vĩnh Hưng',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (9,'Bắc Trà My',NULL,NULL,NULL,'Huyện'),
	 (9,'Đại Lộc',NULL,NULL,NULL,'Huyện'),
	 (9,'Điện Bàn',NULL,NULL,NULL,'Huyện'),
	 (9,'Đông Giang',NULL,NULL,NULL,'Huyện'),
	 (9,'Duy Xuyên',NULL,NULL,NULL,'Huyện'),
	 (9,'Hiệp Đức',NULL,NULL,NULL,'Huyện'),
	 (9,'Hội An',NULL,NULL,NULL,'Thành phố'),
	 (9,'Nam Giang',NULL,NULL,NULL,'Huyện'),
	 (9,'Nam Trà My',NULL,NULL,NULL,'Huyện'),
	 (9,'Nông Sơn',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (9,'Núi Thành',NULL,NULL,NULL,'Huyện'),
	 (9,'Phú Ninh',NULL,NULL,NULL,'Huyện'),
	 (9,'Phước Sơn',NULL,NULL,NULL,'Huyện'),
	 (9,'Quế Sơn',NULL,NULL,NULL,'Huyện'),
	 (9,'Tam Kỳ',NULL,NULL,NULL,'Thành phố'),
	 (9,'Tây Giang',NULL,NULL,NULL,'Huyện'),
	 (9,'Thăng Bình',NULL,NULL,NULL,'Huyện'),
	 (9,'Tiên Phước',NULL,NULL,NULL,'Huyện'),
	 (10,'Bà Rịa',NULL,NULL,NULL,'Thị xã'),
	 (10,'Châu Đức',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (10,'Côn Đảo',NULL,NULL,NULL,'Huyện'),
	 (10,'Đất Đỏ',NULL,NULL,NULL,'Huyện'),
	 (10,'Long Điền',NULL,NULL,NULL,'Huyện'),
	 (10,'Tân Thành',NULL,NULL,NULL,'Huyện'),
	 (10,'Vũng Tàu',NULL,NULL,NULL,'Thành phố'),
	 (10,'Xuyên Mộc',NULL,NULL,NULL,'Huyện'),
	 (11,'Buôn Đôn',NULL,NULL,NULL,'Huyện'),
	 (11,'Buôn Hồ',NULL,NULL,NULL,'Thị xã'),
	 (11,'Buôn Ma Thuột',NULL,NULL,NULL,'Thành phố'),
	 (11,'Cư Kuin',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (11,'Cư M''gar',NULL,NULL,NULL,'Huyện'),
	 (11,'Ea H''Leo',NULL,NULL,NULL,'Huyện'),
	 (11,'Ea Kar',NULL,NULL,NULL,'Huyện'),
	 (11,'Ea Súp',NULL,NULL,NULL,'Huyện'),
	 (11,'Krông Ana',NULL,NULL,NULL,'Huyện'),
	 (11,'Krông Bông',NULL,NULL,NULL,'Huyện'),
	 (11,'Krông Buk',NULL,NULL,NULL,'Huyện'),
	 (11,'Krông Năng',NULL,NULL,NULL,'Huyện'),
	 (11,'Krông Pắc',NULL,NULL,NULL,'Huyện'),
	 (11,'Lăk',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (11,'M''Đrăk',NULL,NULL,NULL,'Huyện'),
	 (12,'Thới Lai',NULL,NULL,NULL,'Huyện'),
	 (12,'Bình Thủy',NULL,NULL,NULL,'Quận'),
	 (12,'Cái Răng',NULL,NULL,NULL,'Quận'),
	 (12,'Cờ Đỏ',NULL,NULL,NULL,'Huyện'),
	 (12,'Ninh Kiều',NULL,NULL,NULL,'Quận'),
	 (12,'Ô Môn',NULL,NULL,NULL,'Quận'),
	 (12,'Phong Điền',NULL,NULL,NULL,'Huyện'),
	 (12,'Thốt Nốt',NULL,NULL,NULL,'Quận'),
	 (12,'Vĩnh Thạnh',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (13,'Bắc Bình',NULL,NULL,NULL,'Huyện'),
	 (13,'Đảo Phú Quý',NULL,NULL,NULL,'Huyện'),
	 (13,'Đức Linh',NULL,NULL,NULL,'Huyện'),
	 (13,'Hàm Tân',NULL,NULL,NULL,'Huyện'),
	 (13,'Hàm Thuận Bắc',NULL,NULL,NULL,'Huyện'),
	 (13,'Hàm Thuận Nam',NULL,NULL,NULL,'Huyện'),
	 (13,'La Gi',NULL,NULL,NULL,'Thị xã'),
	 (13,'Phan Thiết',NULL,NULL,NULL,'Thành phố'),
	 (13,'Tánh Linh',NULL,NULL,NULL,'Huyện'),
	 (13,'Tuy Phong',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (14,'Bảo Lâm',NULL,NULL,NULL,'Huyện'),
	 (14,'Bảo Lộc',NULL,NULL,NULL,'Thành phố'),
	 (14,'Cát Tiên',NULL,NULL,NULL,'Huyện'),
	 (14,'Đạ Huoai',NULL,NULL,NULL,'Huyện'),
	 (14,'Đà Lạt',NULL,NULL,NULL,'Thành phố'),
	 (14,'Đạ Tẻh',NULL,NULL,NULL,'Huyện'),
	 (14,'Đam Rông',NULL,NULL,NULL,'Huyện'),
	 (14,'Di Linh',NULL,NULL,NULL,'Huyện'),
	 (14,'Đơn Dương',NULL,NULL,NULL,'Huyện'),
	 (14,'Đức Trọng',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (14,'Lạc Dương',NULL,NULL,NULL,'Huyện'),
	 (14,'Lâm Hà',NULL,NULL,NULL,'Huyện'),
	 (15,'A Lưới',NULL,NULL,NULL,'Huyện'),
	 (15,'Huế',NULL,NULL,NULL,'Thành phố'),
	 (15,'Hương Thủy',NULL,NULL,NULL,'Thị xã'),
	 (15,'Hương Trà',NULL,NULL,NULL,'Huyện'),
	 (15,'Nam Đông',NULL,NULL,NULL,'Huyện'),
	 (15,'Phong Điền',NULL,NULL,NULL,'Huyện'),
	 (15,'Phú Lộc',NULL,NULL,NULL,'Huyện'),
	 (15,'Phú Vang',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (15,'Quảng Điền',NULL,NULL,NULL,'Huyện'),
	 (16,'An Biên',NULL,NULL,NULL,'Huyện'),
	 (16,'An Minh',NULL,NULL,NULL,'Huyện'),
	 (16,'Châu Thành',NULL,NULL,NULL,'Huyện'),
	 (16,'Giang Thành',NULL,NULL,NULL,'Huyện'),
	 (16,'Giồng Riềng',NULL,NULL,NULL,'Huyện'),
	 (16,'Gò Quao',NULL,NULL,NULL,'Huyện'),
	 (16,'Hà Tiên',NULL,NULL,NULL,'Thị xã'),
	 (16,'Hòn Đất',NULL,NULL,NULL,'Huyện'),
	 (16,'Kiên Hải',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (16,'Kiên Lương',NULL,NULL,NULL,'Huyện'),
	 (16,'Phú Quốc',NULL,NULL,NULL,'Huyện'),
	 (16,'Rạch Giá',NULL,NULL,NULL,'Thành phố'),
	 (16,'Tân Hiệp',NULL,NULL,NULL,'Huyện'),
	 (16,'U minh Thượng',NULL,NULL,NULL,'Huyện'),
	 (16,'Vĩnh Thuận',NULL,NULL,NULL,'Huyện'),
	 (17,'Bắc Ninh',NULL,NULL,NULL,'Thành phố'),
	 (17,'Gia Bình',NULL,NULL,NULL,'Huyện'),
	 (17,'Lương Tài',NULL,NULL,NULL,'Huyện'),
	 (17,'Quế Võ',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (17,'Thuận Thành',NULL,NULL,NULL,'Huyện'),
	 (17,'Tiên Du',NULL,NULL,NULL,'Huyện'),
	 (17,'Từ Sơn',NULL,NULL,NULL,'Thị xã'),
	 (17,'Yên Phong',NULL,NULL,NULL,'Huyện'),
	 (18,'Ba Chẽ',NULL,NULL,NULL,'Huyện'),
	 (18,'Bình Liêu',NULL,NULL,NULL,'Huyện'),
	 (18,'Cẩm Phả',NULL,NULL,NULL,'Thành phố'),
	 (18,'Cô Tô',NULL,NULL,NULL,'Huyện'),
	 (18,'Đầm Hà',NULL,NULL,NULL,'Huyện'),
	 (18,'Đông Triều',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (18,'Hạ Long',NULL,NULL,NULL,'Thành phố'),
	 (18,'Hải Hà',NULL,NULL,NULL,'Huyện'),
	 (18,'Hoành Bồ',NULL,NULL,NULL,'Huyện'),
	 (18,'Móng Cái',NULL,NULL,NULL,'Thành phố'),
	 (18,'Quảng Yên',NULL,NULL,NULL,'Huyện'),
	 (18,'Tiên Yên',NULL,NULL,NULL,'Huyện'),
	 (18,'Uông Bí',NULL,NULL,NULL,'Thị xã'),
	 (18,'Vân Đồn',NULL,NULL,NULL,'Huyện'),
	 (19,'Bá Thước',NULL,NULL,NULL,'Huyện'),
	 (19,'Bỉm Sơn',NULL,NULL,NULL,'Thị xã');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (19,'Cẩm Thủy',NULL,NULL,NULL,'Huyện'),
	 (19,'Đông Sơn',NULL,NULL,NULL,'Huyện'),
	 (19,'Hà Trung',NULL,NULL,NULL,'Huyện'),
	 (19,'Hậu Lộc',NULL,NULL,NULL,'Huyện'),
	 (19,'Hoằng Hóa',NULL,NULL,NULL,'Huyện'),
	 (19,'Lang Chánh',NULL,NULL,NULL,'Huyện'),
	 (19,'Mường Lát',NULL,NULL,NULL,'Huyện'),
	 (19,'Nga Sơn',NULL,NULL,NULL,'Huyện'),
	 (19,'Ngọc Lặc',NULL,NULL,NULL,'Huyện'),
	 (19,'Như Thanh',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (19,'Như Xuân',NULL,NULL,NULL,'Huyện'),
	 (19,'Nông Cống',NULL,NULL,NULL,'Huyện'),
	 (19,'Quan Hóa',NULL,NULL,NULL,'Huyện'),
	 (19,'Quan Sơn',NULL,NULL,NULL,'Huyện'),
	 (19,'Quảng Xương',NULL,NULL,NULL,'Huyện'),
	 (19,'Sầm Sơn',NULL,NULL,NULL,'Thị xã'),
	 (19,'Thạch Thành',NULL,NULL,NULL,'Huyện'),
	 (19,'Thanh Hóa',NULL,NULL,NULL,'Thành phố'),
	 (19,'Thiệu Hóa',NULL,NULL,NULL,'Huyện'),
	 (19,'Thọ Xuân',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (19,'Thường Xuân',NULL,NULL,NULL,'Huyện'),
	 (19,'Tĩnh Gia',NULL,NULL,NULL,'Huyện'),
	 (19,'Triệu Sơn',NULL,NULL,NULL,'Huyện'),
	 (19,'Vĩnh Lộc',NULL,NULL,NULL,'Huyện'),
	 (19,'Yên Định',NULL,NULL,NULL,'Huyện'),
	 (20,'Anh Sơn',NULL,NULL,NULL,'Huyện'),
	 (20,'Con Cuông',NULL,NULL,NULL,'Huyện'),
	 (20,'Cửa Lò',NULL,NULL,NULL,'Thị xã'),
	 (20,'Diễn Châu',NULL,NULL,NULL,'Huyện'),
	 (20,'Đô Lương',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (20,'Hoàng Mai',NULL,NULL,NULL,'Thị xã'),
	 (20,'Hưng Nguyên',NULL,NULL,NULL,'Huyện'),
	 (20,'Kỳ Sơn',NULL,NULL,NULL,'Huyện'),
	 (20,'Nam Đàn',NULL,NULL,NULL,'Huyện'),
	 (20,'Nghi Lộc',NULL,NULL,NULL,'Huyện'),
	 (20,'Nghĩa Đàn',NULL,NULL,NULL,'Huyện'),
	 (20,'Quế Phong',NULL,NULL,NULL,'Huyện'),
	 (20,'Quỳ Châu',NULL,NULL,NULL,'Huyện'),
	 (20,'Quỳ Hợp',NULL,NULL,NULL,'Huyện'),
	 (20,'Quỳnh Lưu',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (20,'Tân Kỳ',NULL,NULL,NULL,'Huyện'),
	 (20,'Thái Hòa',NULL,NULL,NULL,'Thị xã'),
	 (20,'Thanh Chương',NULL,NULL,NULL,'Huyện'),
	 (20,'Tương Dương',NULL,NULL,NULL,'Huyện'),
	 (20,'Vinh',NULL,NULL,NULL,'Thành phố'),
	 (20,'Yên Thành',NULL,NULL,NULL,'Huyện'),
	 (21,'Bình Giang',NULL,NULL,NULL,'Huyện'),
	 (21,'Cẩm Giàng',NULL,NULL,NULL,'Huyện'),
	 (21,'Chí Linh',NULL,NULL,NULL,'Thị xã'),
	 (21,'Gia Lộc',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (21,'Hải Dương',NULL,NULL,NULL,'Thành phố'),
	 (21,'Kim Thành',NULL,NULL,NULL,'Huyện'),
	 (21,'Kinh Môn',NULL,NULL,NULL,'Huyện'),
	 (21,'Nam Sách',NULL,NULL,NULL,'Huyện'),
	 (21,'Ninh Giang',NULL,NULL,NULL,'Huyện'),
	 (21,'Thanh Hà',NULL,NULL,NULL,'Huyện'),
	 (21,'Thanh Miện',NULL,NULL,NULL,'Huyện'),
	 (21,'Tứ Kỳ',NULL,NULL,NULL,'Huyện'),
	 (22,'An Khê',NULL,NULL,NULL,'Thị xã'),
	 (22,'AYun Pa',NULL,NULL,NULL,'Thị xã');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (22,'Chư Păh',NULL,NULL,NULL,'Huyện'),
	 (22,'Chư Pưh',NULL,NULL,NULL,'Huyện'),
	 (22,'Chư Sê',NULL,NULL,NULL,'Huyện'),
	 (22,'ChưPRông',NULL,NULL,NULL,'Huyện'),
	 (22,'Đăk Đoa',NULL,NULL,NULL,'Huyện'),
	 (22,'Đăk Pơ',NULL,NULL,NULL,'Huyện'),
	 (22,'Đức Cơ',NULL,NULL,NULL,'Huyện'),
	 (22,'Ia Grai',NULL,NULL,NULL,'Huyện'),
	 (22,'Ia Pa',NULL,NULL,NULL,'Huyện'),
	 (22,'KBang',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (22,'Kông Chro',NULL,NULL,NULL,'Huyện'),
	 (22,'Krông Pa',NULL,NULL,NULL,'Huyện'),
	 (22,'Mang Yang',NULL,NULL,NULL,'Huyện'),
	 (22,'Phú Thiện',NULL,NULL,NULL,'Huyện'),
	 (22,'Plei Ku',NULL,NULL,NULL,'Thành phố'),
	 (23,'Bình Long',NULL,NULL,NULL,'Thị xã'),
	 (23,'Bù Đăng',NULL,NULL,NULL,'Huyện'),
	 (23,'Bù Đốp',NULL,NULL,NULL,'Huyện'),
	 (23,'Bù Gia Mập',NULL,NULL,NULL,'Huyện'),
	 (23,'Chơn Thành',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (23,'Đồng Phú',NULL,NULL,NULL,'Huyện'),
	 (23,'Đồng Xoài',NULL,NULL,NULL,'Thị xã'),
	 (23,'Hớn Quản',NULL,NULL,NULL,'Huyện'),
	 (23,'Lộc Ninh',NULL,NULL,NULL,'Huyện'),
	 (23,'Phú Riềng',NULL,NULL,NULL,'Huyện'),
	 (23,'Phước Long',NULL,NULL,NULL,'Thị xã'),
	 (24,'Ân Thi',NULL,NULL,NULL,'Huyện'),
	 (24,'Hưng Yên',NULL,NULL,NULL,'Thành phố'),
	 (24,'Khoái Châu',NULL,NULL,NULL,'Huyện'),
	 (24,'Kim Động',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (24,'Mỹ Hào',NULL,NULL,NULL,'Huyện'),
	 (24,'Phù Cừ',NULL,NULL,NULL,'Huyện'),
	 (24,'Tiên Lữ',NULL,NULL,NULL,'Huyện'),
	 (24,'Văn Giang',NULL,NULL,NULL,'Huyện'),
	 (24,'Văn Lâm',NULL,NULL,NULL,'Huyện'),
	 (24,'Yên Mỹ',NULL,NULL,NULL,'Huyện'),
	 (25,'An Lão',NULL,NULL,NULL,'Huyện'),
	 (25,'An Nhơn',NULL,NULL,NULL,'Huyện'),
	 (25,'Hoài Ân',NULL,NULL,NULL,'Huyện'),
	 (25,'Hoài Nhơn',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (25,'Phù Cát',NULL,NULL,NULL,'Huyện'),
	 (25,'Phù Mỹ',NULL,NULL,NULL,'Huyện'),
	 (25,'Quy Nhơn',NULL,NULL,NULL,'Thành phố'),
	 (25,'Tây Sơn',NULL,NULL,NULL,'Huyện'),
	 (25,'Tuy Phước',NULL,NULL,NULL,'Huyện'),
	 (25,'Vân Canh',NULL,NULL,NULL,'Huyện'),
	 (25,'Vĩnh Thạnh',NULL,NULL,NULL,'Huyện'),
	 (26,'Cái Bè',NULL,NULL,NULL,'Huyện'),
	 (26,'Cai Lậy',NULL,NULL,NULL,'Thị xã'),
	 (26,'Châu Thành',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (26,'Chợ Gạo',NULL,NULL,NULL,'Huyện'),
	 (26,'Gò Công',NULL,NULL,NULL,'Thị xã'),
	 (26,'Gò Công Đông',NULL,NULL,NULL,'Huyện'),
	 (26,'Gò Công Tây',NULL,NULL,NULL,'Huyện'),
	 (26,'Huyện Cai Lậy',NULL,NULL,NULL,'Huyện'),
	 (26,'Mỹ Tho',NULL,NULL,NULL,'Thành phố'),
	 (26,'Tân Phú Đông',NULL,NULL,NULL,'Huyện'),
	 (26,'Tân Phước',NULL,NULL,NULL,'Huyện'),
	 (27,'Đông Hưng',NULL,NULL,NULL,'Huyện'),
	 (27,'Hưng Hà',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (27,'Kiến Xương',NULL,NULL,NULL,'Huyện'),
	 (27,'Quỳnh Phụ',NULL,NULL,NULL,'Huyện'),
	 (27,'Thái Bình',NULL,NULL,NULL,'Thành phố'),
	 (27,'Thái Thuỵ',NULL,NULL,NULL,'Huyện'),
	 (27,'Tiền Hải',NULL,NULL,NULL,'Huyện'),
	 (27,'Vũ Thư',NULL,NULL,NULL,'Huyện'),
	 (28,'Bắc Giang',NULL,NULL,NULL,'Thành phố'),
	 (28,'Hiệp Hòa',NULL,NULL,NULL,'Huyện'),
	 (28,'Lạng Giang',NULL,NULL,NULL,'Huyện'),
	 (28,'Lục Nam',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (28,'Lục Ngạn',NULL,NULL,NULL,'Huyện'),
	 (28,'Sơn Động',NULL,NULL,NULL,'Huyện'),
	 (28,'Tân Yên',NULL,NULL,NULL,'Huyện'),
	 (28,'Việt Yên',NULL,NULL,NULL,'Huyện'),
	 (28,'Yên Dũng',NULL,NULL,NULL,'Huyện'),
	 (28,'Yên Thế',NULL,NULL,NULL,'Huyện'),
	 (29,'Cao Phong',NULL,NULL,NULL,'Huyện'),
	 (29,'Đà Bắc',NULL,NULL,NULL,'Huyện'),
	 (29,'Hòa Bình',NULL,NULL,NULL,'Thành phố'),
	 (29,'Kim Bôi',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (29,'Kỳ Sơn',NULL,NULL,NULL,'Huyện'),
	 (29,'Lạc Sơn',NULL,NULL,NULL,'Huyện'),
	 (29,'Lạc Thủy',NULL,NULL,NULL,'Huyện'),
	 (29,'Lương Sơn',NULL,NULL,NULL,'Huyện'),
	 (29,'Mai Châu',NULL,NULL,NULL,'Huyện'),
	 (29,'Tân Lạc',NULL,NULL,NULL,'Huyện'),
	 (29,'Yên Thủy',NULL,NULL,NULL,'Huyện'),
	 (30,'An Phú',NULL,NULL,NULL,'Huyện'),
	 (30,'Châu Đốc',NULL,NULL,NULL,'Thị xã'),
	 (30,'Châu Phú',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (30,'Châu Thành',NULL,NULL,NULL,'Huyện'),
	 (30,'Chợ Mới',NULL,NULL,NULL,'Huyện'),
	 (30,'Long Xuyên',NULL,NULL,NULL,'Thành phố'),
	 (30,'Phú Tân',NULL,NULL,NULL,'Huyện'),
	 (30,'Tân Châu',NULL,NULL,NULL,'Thị xã'),
	 (30,'Thoại Sơn',NULL,NULL,NULL,'Huyện'),
	 (30,'Tịnh Biên',NULL,NULL,NULL,'Huyện'),
	 (30,'Tri Tôn',NULL,NULL,NULL,'Huyện'),
	 (31,'Bình Xuyên',NULL,NULL,NULL,'Huyện'),
	 (31,'Lập Thạch',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (31,'Phúc Yên',NULL,NULL,NULL,'Thị xã'),
	 (31,'Sông Lô',NULL,NULL,NULL,'Huyện'),
	 (31,'Tam Đảo',NULL,NULL,NULL,'Huyện'),
	 (31,'Tam Dương',NULL,NULL,NULL,'Huyện'),
	 (31,'Vĩnh Tường',NULL,NULL,NULL,'Huyện'),
	 (31,'Vĩnh Yên',NULL,NULL,NULL,'Thành phố'),
	 (31,'Yên Lạc',NULL,NULL,NULL,'Huyện'),
	 (32,'Bến Cầu',NULL,NULL,NULL,'Huyện'),
	 (32,'Châu Thành',NULL,NULL,NULL,'Huyện'),
	 (32,'Dương Minh Châu',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (32,'Gò Dầu',NULL,NULL,NULL,'Huyện'),
	 (32,'Hòa Thành',NULL,NULL,NULL,'Huyện'),
	 (32,'Tân Biên',NULL,NULL,NULL,'Huyện'),
	 (32,'Tân Châu',NULL,NULL,NULL,'Huyện'),
	 (32,'Tây Ninh',NULL,NULL,NULL,'Thị xã'),
	 (32,'Trảng Bàng',NULL,NULL,NULL,'Huyện'),
	 (33,'Đại Từ',NULL,NULL,NULL,'Huyện'),
	 (33,'Định Hóa',NULL,NULL,NULL,'Huyện'),
	 (33,'Đồng Hỷ',NULL,NULL,NULL,'Huyện'),
	 (33,'Phổ Yên',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (33,'Phú Bình',NULL,NULL,NULL,'Huyện'),
	 (33,'Phú Lương',NULL,NULL,NULL,'Huyện'),
	 (33,'Sông Công',NULL,NULL,NULL,'Thị xã'),
	 (33,'Thái Nguyên',NULL,NULL,NULL,'Thành phố'),
	 (33,'Võ Nhai',NULL,NULL,NULL,'Huyện'),
	 (34,'Bắc Hà',NULL,NULL,NULL,'Huyện'),
	 (34,'Bảo Thắng',NULL,NULL,NULL,'Huyện'),
	 (34,'Bảo Yên',NULL,NULL,NULL,'Huyện'),
	 (34,'Bát Xát',NULL,NULL,NULL,'Huyện'),
	 (34,'Lào Cai',NULL,NULL,NULL,'Thành phố');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (34,'Mường Khương',NULL,NULL,NULL,'Huyện'),
	 (34,'Sa Pa',NULL,NULL,NULL,'Huyện'),
	 (34,'Văn Bàn',NULL,NULL,NULL,'Huyện'),
	 (34,'Xi Ma Cai',NULL,NULL,NULL,'Huyện'),
	 (35,'Giao Thủy',NULL,NULL,NULL,'Huyện'),
	 (35,'Hải Hậu',NULL,NULL,NULL,'Huyện'),
	 (35,'Mỹ Lộc',NULL,NULL,NULL,'Huyện'),
	 (35,'Nam Định',NULL,NULL,NULL,'Thành phố'),
	 (35,'Nam Trực',NULL,NULL,NULL,'Huyện'),
	 (35,'Nghĩa Hưng',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (35,'Trực Ninh',NULL,NULL,NULL,'Huyện'),
	 (35,'Vụ Bản',NULL,NULL,NULL,'Huyện'),
	 (35,'Xuân Trường',NULL,NULL,NULL,'Huyện'),
	 (35,'Ý Yên',NULL,NULL,NULL,'Huyện'),
	 (36,'Ba Tơ',NULL,NULL,NULL,'Huyện'),
	 (36,'Bình Sơn',NULL,NULL,NULL,'Huyện'),
	 (36,'Đức Phổ',NULL,NULL,NULL,'Huyện'),
	 (36,'Lý Sơn',NULL,NULL,NULL,'Huyện'),
	 (36,'Minh Long',NULL,NULL,NULL,'Huyện'),
	 (36,'Mộ Đức',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (36,'Nghĩa Hành',NULL,NULL,NULL,'Huyện'),
	 (36,'Quảng Ngãi',NULL,NULL,NULL,'Thành phố'),
	 (36,'Sơn Hà',NULL,NULL,NULL,'Huyện'),
	 (36,'Sơn Tây',NULL,NULL,NULL,'Huyện'),
	 (36,'Sơn Tịnh',NULL,NULL,NULL,'Huyện'),
	 (36,'Tây Trà',NULL,NULL,NULL,'Huyện'),
	 (36,'Trà Bồng',NULL,NULL,NULL,'Huyện'),
	 (36,'Tư Nghĩa',NULL,NULL,NULL,'Huyện'),
	 (37,'Ba Tri',NULL,NULL,NULL,'Huyện'),
	 (37,'Bến Tre',NULL,NULL,NULL,'Thành phố');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (37,'Bình Đại',NULL,NULL,NULL,'Huyện'),
	 (37,'Châu Thành',NULL,NULL,NULL,'Huyện'),
	 (37,'Chợ Lách',NULL,NULL,NULL,'Huyện'),
	 (37,'Giồng Trôm',NULL,NULL,NULL,'Huyện'),
	 (37,'Mỏ Cày Bắc',NULL,NULL,NULL,'Huyện'),
	 (37,'Mỏ Cày Nam',NULL,NULL,NULL,'Huyện'),
	 (37,'Thạnh Phú',NULL,NULL,NULL,'Huyện'),
	 (38,'Cư Jút',NULL,NULL,NULL,'Huyện'),
	 (38,'Dăk GLong',NULL,NULL,NULL,'Huyện'),
	 (38,'Dăk Mil',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (38,'Dăk R''Lấp',NULL,NULL,NULL,'Huyện'),
	 (38,'Dăk Song',NULL,NULL,NULL,'Huyện'),
	 (38,'Gia Nghĩa',NULL,NULL,NULL,'Thị xã'),
	 (38,'Krông Nô',NULL,NULL,NULL,'Huyện'),
	 (38,'Tuy Đức',NULL,NULL,NULL,'Huyện'),
	 (39,'Cà Mau',NULL,NULL,NULL,'Thành phố'),
	 (39,'Cái Nước',NULL,NULL,NULL,'Huyện'),
	 (39,'Đầm Dơi',NULL,NULL,NULL,'Huyện'),
	 (39,'Năm Căn',NULL,NULL,NULL,'Huyện'),
	 (39,'Ngọc Hiển',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (39,'Phú Tân',NULL,NULL,NULL,'Huyện'),
	 (39,'Thới Bình',NULL,NULL,NULL,'Huyện'),
	 (39,'Trần Văn Thời',NULL,NULL,NULL,'Huyện'),
	 (39,'U Minh',NULL,NULL,NULL,'Huyện'),
	 (40,'Bình Minh',NULL,NULL,NULL,'Huyện'),
	 (40,'Bình Tân',NULL,NULL,NULL,'Quận'),
	 (40,'Long Hồ',NULL,NULL,NULL,'Huyện'),
	 (40,'Mang Thít',NULL,NULL,NULL,'Huyện'),
	 (40,'Tam Bình',NULL,NULL,NULL,'Huyện'),
	 (40,'Trà Ôn',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (40,'Vĩnh Long',NULL,NULL,NULL,'Thành phố'),
	 (40,'Vũng Liêm',NULL,NULL,NULL,'Huyện'),
	 (41,'Gia Viễn',NULL,NULL,NULL,'Huyện'),
	 (41,'Hoa Lư',NULL,NULL,NULL,'Huyện'),
	 (41,'Kim Sơn',NULL,NULL,NULL,'Huyện'),
	 (41,'Nho Quan',NULL,NULL,NULL,'Huyện'),
	 (41,'Ninh Bình',NULL,NULL,NULL,'Thành phố'),
	 (41,'Tam Điệp',NULL,NULL,NULL,'Thị xã'),
	 (41,'Yên Khánh',NULL,NULL,NULL,'Huyện'),
	 (41,'Yên Mô',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (42,'Cẩm Khê',NULL,NULL,NULL,'Huyện'),
	 (42,'Đoan Hùng',NULL,NULL,NULL,'Huyện'),
	 (42,'Hạ Hòa',NULL,NULL,NULL,'Huyện'),
	 (42,'Lâm Thao',NULL,NULL,NULL,'Huyện'),
	 (42,'Phù Ninh',NULL,NULL,NULL,'Huyện'),
	 (42,'Phú Thọ',NULL,NULL,NULL,'Thị xã'),
	 (42,'Tam Nông',NULL,NULL,NULL,'Huyện'),
	 (42,'Tân Sơn',NULL,NULL,NULL,'Huyện'),
	 (42,'Thanh Ba',NULL,NULL,NULL,'Huyện'),
	 (42,'Thanh Sơn',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (42,'Thanh Thủy',NULL,NULL,NULL,'Huyện'),
	 (42,'Việt Trì',NULL,NULL,NULL,'Thành phố'),
	 (42,'Yên Lập',NULL,NULL,NULL,'Huyện'),
	 (43,'Bác Ái',NULL,NULL,NULL,'Huyện'),
	 (43,'Ninh Hải',NULL,NULL,NULL,'Huyện'),
	 (43,'Ninh Phước',NULL,NULL,NULL,'Huyện'),
	 (43,'Ninh Sơn',NULL,NULL,NULL,'Huyện'),
	 (43,'Phan Rang - Tháp Chàm',NULL,NULL,NULL,'Thành phố'),
	 (43,'Thuận Bắc',NULL,NULL,NULL,'Huyện'),
	 (43,'Thuận Nam',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (44,'Đông Hòa',NULL,NULL,NULL,'Huyện'),
	 (44,'Đồng Xuân',NULL,NULL,NULL,'Huyện'),
	 (44,'Phú Hòa',NULL,NULL,NULL,'Huyện'),
	 (44,'Sơn Hòa',NULL,NULL,NULL,'Huyện'),
	 (44,'Sông Cầu',NULL,NULL,NULL,'Thị xã'),
	 (44,'Sông Hinh',NULL,NULL,NULL,'Huyện'),
	 (44,'Tây Hòa',NULL,NULL,NULL,'Huyện'),
	 (44,'Tuy An',NULL,NULL,NULL,'Huyện'),
	 (44,'Tuy Hòa',NULL,NULL,NULL,'Thành phố'),
	 (45,'Bình Lục',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (45,'Duy Tiên',NULL,NULL,NULL,'Huyện'),
	 (45,'Kim Bảng',NULL,NULL,NULL,'Huyện'),
	 (45,'Lý Nhân',NULL,NULL,NULL,'Huyện'),
	 (45,'Phủ Lý',NULL,NULL,NULL,'Thành phố'),
	 (45,'Thanh Liêm',NULL,NULL,NULL,'Huyện'),
	 (46,'Cẩm Xuyên',NULL,NULL,NULL,'Huyện'),
	 (46,'Can Lộc',NULL,NULL,NULL,'Huyện'),
	 (46,'Đức Thọ',NULL,NULL,NULL,'Huyện'),
	 (46,'Hà Tĩnh',NULL,NULL,NULL,'Thành phố'),
	 (46,'Hồng Lĩnh',NULL,NULL,NULL,'Thị xã');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (46,'Hương Khê',NULL,NULL,NULL,'Huyện'),
	 (46,'Hương Sơn',NULL,NULL,NULL,'Huyện'),
	 (46,'Kỳ Anh',NULL,NULL,NULL,'Huyện'),
	 (46,'Lộc Hà',NULL,NULL,NULL,'Huyện'),
	 (46,'Nghi Xuân',NULL,NULL,NULL,'Huyện'),
	 (46,'Thạch Hà',NULL,NULL,NULL,'Huyện'),
	 (46,'Vũ Quang',NULL,NULL,NULL,'Huyện'),
	 (47,'Cao Lãnh',NULL,NULL,NULL,'Thành phố'),
	 (47,'Châu Thành',NULL,NULL,NULL,'Huyện'),
	 (47,'Hồng Ngự',NULL,NULL,NULL,'Thị xã');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (47,'Huyện Cao Lãnh',NULL,NULL,NULL,'Huyện'),
	 (47,'Huyện Hồng Ngự',NULL,NULL,NULL,'Huyện'),
	 (47,'Lai Vung',NULL,NULL,NULL,'Huyện'),
	 (47,'Lấp Vò',NULL,NULL,NULL,'Huyện'),
	 (47,'Sa Đéc',NULL,NULL,NULL,'Thị xã'),
	 (47,'Tam Nông',NULL,NULL,NULL,'Huyện'),
	 (47,'Tân Hồng',NULL,NULL,NULL,'Huyện'),
	 (47,'Thanh Bình',NULL,NULL,NULL,'Huyện'),
	 (47,'Tháp Mười',NULL,NULL,NULL,'Huyện'),
	 (48,'Châu Thành',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (48,'Cù Lao Dung',NULL,NULL,NULL,'Huyện'),
	 (48,'Kế Sách',NULL,NULL,NULL,'Huyện'),
	 (48,'Long Phú',NULL,NULL,NULL,'Huyện'),
	 (48,'Mỹ Tú',NULL,NULL,NULL,'Huyện'),
	 (48,'Mỹ Xuyên',NULL,NULL,NULL,'Huyện'),
	 (48,'Ngã Năm',NULL,NULL,NULL,'Huyện'),
	 (48,'Sóc Trăng',NULL,NULL,NULL,'Thành phố'),
	 (48,'Thạnh Trị',NULL,NULL,NULL,'Huyện'),
	 (48,'Trần Đề',NULL,NULL,NULL,'Huyện'),
	 (48,'Vĩnh Châu',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (49,'Đăk Glei',NULL,NULL,NULL,'Huyện'),
	 (49,'Đăk Hà',NULL,NULL,NULL,'Huyện'),
	 (49,'Đăk Tô',NULL,NULL,NULL,'Huyện'),
	 (49,'Ia H''Drai',NULL,NULL,NULL,'Huyện'),
	 (49,'Kon Plông',NULL,NULL,NULL,'Huyện'),
	 (49,'Kon Rẫy',NULL,NULL,NULL,'Huyện'),
	 (49,'KonTum',NULL,NULL,NULL,'Thành phố'),
	 (49,'Ngọc Hồi',NULL,NULL,NULL,'Huyện'),
	 (49,'Sa Thầy',NULL,NULL,NULL,'Huyện'),
	 (49,'Tu Mơ Rông',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (50,'Ba Đồn',NULL,NULL,NULL,'Thị xã'),
	 (50,'Bố Trạch',NULL,NULL,NULL,'Huyện'),
	 (50,'Đồng Hới',NULL,NULL,NULL,'Thành phố'),
	 (50,'Lệ Thủy',NULL,NULL,NULL,'Huyện'),
	 (50,'Minh Hóa',NULL,NULL,NULL,'Huyện'),
	 (50,'Quảng Ninh',NULL,NULL,NULL,'Huyện'),
	 (50,'Quảng Trạch',NULL,NULL,NULL,'Huyện'),
	 (50,'Tuyên Hóa',NULL,NULL,NULL,'Huyện'),
	 (51,'Cam Lộ',NULL,NULL,NULL,'Huyện'),
	 (51,'Đa Krông',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (51,'Đảo Cồn cỏ',NULL,NULL,NULL,'Huyện'),
	 (51,'Đông Hà',NULL,NULL,NULL,'Thành phố'),
	 (51,'Gio Linh',NULL,NULL,NULL,'Huyện'),
	 (51,'Hải Lăng',NULL,NULL,NULL,'Huyện'),
	 (51,'Hướng Hóa',NULL,NULL,NULL,'Huyện'),
	 (51,'Quảng Trị',NULL,NULL,NULL,'Thị xã'),
	 (51,'Triệu Phong',NULL,NULL,NULL,'Huyện'),
	 (51,'Vĩnh Linh',NULL,NULL,NULL,'Huyện'),
	 (52,'Càng Long',NULL,NULL,NULL,'Huyện'),
	 (52,'Cầu Kè',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (52,'Cầu Ngang',NULL,NULL,NULL,'Huyện'),
	 (52,'Châu Thành',NULL,NULL,NULL,'Huyện'),
	 (52,'Duyên Hải',NULL,NULL,NULL,'Huyện'),
	 (52,'Tiểu Cần',NULL,NULL,NULL,'Huyện'),
	 (52,'Trà Cú',NULL,NULL,NULL,'Huyện'),
	 (52,'Trà Vinh',NULL,NULL,NULL,'Thành phố'),
	 (53,'Châu Thành',NULL,NULL,NULL,'Huyện'),
	 (53,'Châu Thành A',NULL,NULL,NULL,'Huyện'),
	 (53,'Long Mỹ',NULL,NULL,NULL,'Huyện'),
	 (53,'Ngã Bảy',NULL,NULL,NULL,'Thị xã');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (53,'Phụng Hiệp',NULL,NULL,NULL,'Huyện'),
	 (53,'Vị Thanh',NULL,NULL,NULL,'Thành phố'),
	 (53,'Vị Thủy',NULL,NULL,NULL,'Huyện'),
	 (54,'Bắc Yên',NULL,NULL,NULL,'Huyện'),
	 (54,'Mai Sơn',NULL,NULL,NULL,'Huyện'),
	 (54,'Mộc Châu',NULL,NULL,NULL,'Huyện'),
	 (54,'Mường La',NULL,NULL,NULL,'Huyện'),
	 (54,'Phù Yên',NULL,NULL,NULL,'Huyện'),
	 (54,'Quỳnh Nhai',NULL,NULL,NULL,'Huyện'),
	 (54,'Sơn La',NULL,NULL,NULL,'Thành phố');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (54,'Sông Mã',NULL,NULL,NULL,'Huyện'),
	 (54,'Sốp Cộp',NULL,NULL,NULL,'Huyện'),
	 (54,'Thuận Châu',NULL,NULL,NULL,'Huyện'),
	 (54,'Vân Hồ',NULL,NULL,NULL,'Huyện'),
	 (54,'Yên Châu',NULL,NULL,NULL,'Huyện'),
	 (55,'Bạc Liêu',NULL,NULL,NULL,'Thành phố'),
	 (55,'Đông Hải',NULL,NULL,NULL,'Huyện'),
	 (55,'Giá Rai',NULL,NULL,NULL,'Huyện'),
	 (55,'Hòa Bình',NULL,NULL,NULL,'Huyện'),
	 (55,'Hồng Dân',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (55,'Phước Long',NULL,NULL,NULL,'Huyện'),
	 (55,'Vĩnh Lợi',NULL,NULL,NULL,'Huyện'),
	 (56,'Lục Yên',NULL,NULL,NULL,'Huyện'),
	 (56,'Mù Cang Chải',NULL,NULL,NULL,'Huyện'),
	 (56,'Nghĩa Lộ',NULL,NULL,NULL,'Thị xã'),
	 (56,'Trạm Tấu',NULL,NULL,NULL,'Huyện'),
	 (56,'Trấn Yên',NULL,NULL,NULL,'Huyện'),
	 (56,'Văn Chấn',NULL,NULL,NULL,'Huyện'),
	 (56,'Văn Yên',NULL,NULL,NULL,'Huyện'),
	 (56,'Yên Bái',NULL,NULL,NULL,'Thành phố');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (56,'Yên Bình',NULL,NULL,NULL,'Huyện'),
	 (57,'Chiêm Hóa',NULL,NULL,NULL,'Huyện'),
	 (57,'Hàm Yên',NULL,NULL,NULL,'Huyện'),
	 (57,'Lâm Bình',NULL,NULL,NULL,'Huyện'),
	 (57,'Na Hang',NULL,NULL,NULL,'Huyện'),
	 (57,'Sơn Dương',NULL,NULL,NULL,'Huyện'),
	 (57,'Tuyên Quang',NULL,NULL,NULL,'Thành phố'),
	 (57,'Yên Sơn',NULL,NULL,NULL,'Huyện'),
	 (58,'Điện Biên',NULL,NULL,NULL,'Huyện'),
	 (58,'Điện Biên Đông',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (58,'Điện Biên Phủ',NULL,NULL,NULL,'Thành phố'),
	 (58,'Mường Ảng',NULL,NULL,NULL,'Huyện'),
	 (58,'Mường Chà',NULL,NULL,NULL,'Huyện'),
	 (58,'Mường Lay',NULL,NULL,NULL,'Thị xã'),
	 (58,'Mường Nhé',NULL,NULL,NULL,'Huyện'),
	 (58,'Nậm Pồ',NULL,NULL,NULL,'Huyện'),
	 (58,'Tủa Chùa',NULL,NULL,NULL,'Huyện'),
	 (58,'Tuần Giáo',NULL,NULL,NULL,'Huyện'),
	 (59,'Lai Châu',NULL,NULL,NULL,'Thị xã'),
	 (59,'Mường Tè',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (59,'Nậm Nhùn',NULL,NULL,NULL,'Huyện'),
	 (59,'Phong Thổ',NULL,NULL,NULL,'Huyện'),
	 (59,'Sìn Hồ',NULL,NULL,NULL,'Huyện'),
	 (59,'Tam Đường',NULL,NULL,NULL,'Huyện'),
	 (59,'Tân Uyên',NULL,NULL,NULL,'Huyện'),
	 (59,'Than Uyên',NULL,NULL,NULL,'Huyện'),
	 (60,'Bắc Sơn',NULL,NULL,NULL,'Huyện'),
	 (60,'Bình Gia',NULL,NULL,NULL,'Huyện'),
	 (60,'Cao Lộc',NULL,NULL,NULL,'Huyện'),
	 (60,'Chi Lăng',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (60,'Đình Lập',NULL,NULL,NULL,'Huyện'),
	 (60,'Hữu Lũng',NULL,NULL,NULL,'Huyện'),
	 (60,'Lạng Sơn',NULL,NULL,NULL,'Thành phố'),
	 (60,'Lộc Bình',NULL,NULL,NULL,'Huyện'),
	 (60,'Tràng Định',NULL,NULL,NULL,'Huyện'),
	 (60,'Văn Lãng',NULL,NULL,NULL,'Huyện'),
	 (60,'Văn Quan',NULL,NULL,NULL,'Huyện'),
	 (61,'Bắc Mê',NULL,NULL,NULL,'Huyện'),
	 (61,'Bắc Quang',NULL,NULL,NULL,'Huyện'),
	 (61,'Đồng Văn',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (61,'Hà Giang',NULL,NULL,NULL,'Thành phố'),
	 (61,'Hoàng Su Phì',NULL,NULL,NULL,'Huyện'),
	 (61,'Mèo Vạc',NULL,NULL,NULL,'Huyện'),
	 (61,'Quản Bạ',NULL,NULL,NULL,'Huyện'),
	 (61,'Quang Bình',NULL,NULL,NULL,'Huyện'),
	 (61,'Vị Xuyên',NULL,NULL,NULL,'Huyện'),
	 (61,'Xín Mần',NULL,NULL,NULL,'Huyện'),
	 (61,'Yên Minh',NULL,NULL,NULL,'Huyện'),
	 (62,'Ba Bể',NULL,NULL,NULL,'Huyện'),
	 (62,'Bắc Kạn',NULL,NULL,NULL,'Thị xã');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (62,'Bạch Thông',NULL,NULL,NULL,'Huyện'),
	 (62,'Chợ Đồn',NULL,NULL,NULL,'Huyện'),
	 (62,'Chợ Mới',NULL,NULL,NULL,'Huyện'),
	 (62,'Na Rì',NULL,NULL,NULL,'Huyện'),
	 (62,'Ngân Sơn',NULL,NULL,NULL,'Huyện'),
	 (62,'Pác Nặm',NULL,NULL,NULL,'Huyện'),
	 (63,'Bảo Lạc',NULL,NULL,NULL,'Huyện'),
	 (63,'Bảo Lâm',NULL,NULL,NULL,'Huyện'),
	 (63,'Cao Bằng',NULL,NULL,NULL,'Thị xã'),
	 (63,'Hạ Lang',NULL,NULL,NULL,'Huyện');
INSERT INTO public.districts ("provinceId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (63,'Hà Quảng',NULL,NULL,NULL,'Huyện'),
	 (63,'Hòa An',NULL,NULL,NULL,'Huyện'),
	 (63,'Nguyên Bình',NULL,NULL,NULL,'Huyện'),
	 (63,'Phục Hòa',NULL,NULL,NULL,'Huyện'),
	 (63,'Quảng Uyên',NULL,NULL,NULL,'Huyện'),
	 (63,'Thạch An',NULL,NULL,NULL,'Huyện'),
	 (63,'Thông Nông',NULL,NULL,NULL,'Huyện'),
	 (63,'Trà Lĩnh',NULL,NULL,NULL,'Huyện'),
	 (63,'Trùng Khánh',NULL,NULL,NULL,'Huyện');
INSERT INTO public.images ("productId","name","path","createdAt","updatedAt","deletedAt","serviceId","comboId") VALUES
	 (NULL,'2024/04/16/_Image with Fixed Ratio_ copy 6       2024-4-16 21:37:30','https://storage.googleapis.com/loops-bmms-93d1a.appspot.com/2024/04/16/_Image%20with%20Fixed%20Ratio_%20copy%206%20%20%20%20%20%20%202024-4-16%2021%3A37%3A30?GoogleAccessId=firebase-adminsdk-klo6c%40loops-bmms-93d1a.iam.gserviceaccount.com&Expires=2524608000&Signature=Vqav4M0YcHGzZNRggtIFdyrbzHcor1e5ESQLqOtZeIX4PJMypxKbF6vLfm7uvAOLYJYyIifiiHDyegG5vksCAyMftVIutYnX55py71BuPeGfxX5uHZrODK6Xag%2BvMabUJVDLBhFCrcqhOVyp6Y7FJ%2BT1juv%2FhulrNZakVXb%2B0GvCp2TeY4FUyD%2BRZ1Fkey6HKD6iOcko25491GTkoQYV6oXdulIahIClzbR35%2BwuKrIweDwa7WlemrO77TBUqZpua%2FPQ0Tdig%2BOFuTBuDM0TBAp73E%2Ff0e1RE3y8dd%2FlHZI8rqi1a5k4G%2BtdRUCDqNTWz4l9ABs3lOAL%2FT9O%2Fs5TBg%3D%3D','2024-04-16 21:37:34.297+07','2024-05-04 08:53:22.501+07',NULL,NULL,NULL),
	 (NULL,'2024/04/16/_Image with Fixed Ratio_ copy 5       2024-4-16 21:39:26','https://storage.googleapis.com/loops-bmms-93d1a.appspot.com/2024/04/16/_Image%20with%20Fixed%20Ratio_%20copy%205%20%20%20%20%20%20%202024-4-16%2021%3A39%3A26?GoogleAccessId=firebase-adminsdk-klo6c%40loops-bmms-93d1a.iam.gserviceaccount.com&Expires=2524608000&Signature=YWXzDqVLGTGafK2ZE%2FKY74kjvWy%2FMX3DVo1369WN%2F2dhsL%2B3HxpN%2FMLvUdL%2Fsv6hnkuYW0l3CIriOHXapjpW5hipasa7OuctGfWCPJIV%2B5%2BoYgy3oR3rso6OU%2BibPsshdLExmMtpCsF3FGQURXhPc2zQk35KncOQB8JcVdixFIfIz8DUVxZMR9UQhMvsk4RJW5Y4qYqe9BMroHYnUMACX0SqHVFxtKxgXf%2FIBEUrxzbCNJywlhzVerCNeB%2FhuyizhsFgDd6BW7zcFFbFBN2nE43iS31FmXa5jN3hKm9oqVHucvWdMmBJGhL2fjIdpzuBiVoc75CFoxozDuniMYwKpg%3D%3D','2024-04-16 21:39:27.461+07','2024-05-04 08:53:22.501+07',NULL,NULL,NULL),
	 (NULL,'2024/04/16/_Image with Fixed Ratio_ copy 6       2024-4-16 21:39:26','https://storage.googleapis.com/loops-bmms-93d1a.appspot.com/2024/04/16/_Image%20with%20Fixed%20Ratio_%20copy%206%20%20%20%20%20%20%202024-4-16%2021%3A39%3A26?GoogleAccessId=firebase-adminsdk-klo6c%40loops-bmms-93d1a.iam.gserviceaccount.com&Expires=2524608000&Signature=qiN98R069LF%2BzaxzmA0QzavaV5xz%2FFLIU%2Bm%2BmrTbjJwnucwR2%2BfI9S4i1GZ1tXezQtbT%2F0R24n2T5lHkozXwMPAK03Fv8dyNtHSQbB5Y5%2F%2Ftd3yJy2hdRJQVhYPbHvnoYm89rrg1%2BZOwD6RdgP3408VmnWSbMqT95dnF6T46gQzyH755RUN1dWGLKNEKfvnYl5fp9dhxnzIjdHXSH2O%2F5123v34yVHtn2vWxaAcqiFYIpYlr0bhW90cR6hWZWHXdO6KT4XhOHoXRUEA6TehyTFmMJvHTyShnIE9MmfIeJ7UQqfOqcgmkl8JAMnUDhJevYQNj0NPSajXVu9SJporsnA%3D%3D','2024-04-16 21:39:27.75+07','2024-05-04 08:53:22.501+07',NULL,NULL,NULL),
	 (NULL,'2024/04/16/avt       2024-4-16 21:39:26','https://storage.googleapis.com/loops-bmms-93d1a.appspot.com/2024/04/16/avt%20%20%20%20%20%20%202024-4-16%2021%3A39%3A26?GoogleAccessId=firebase-adminsdk-klo6c%40loops-bmms-93d1a.iam.gserviceaccount.com&Expires=2524608000&Signature=bfvHO3qEJKQh84lEk%2BSIPKNhrdrv%2BK5wVI%2FaR3AlDmiRGmj3NwQpATiIS%2Fe1bzaC34BJepXuQzjbSM9QcEsUj2zlBUQEMWydTU3XkSTf1PlfGsFbFNArwhLZKph6qqcXtQdJ4pKzBDwhA%2FghHcR%2BssrTGmVdR8tDgsdWwP%2FQE4ET8QbfCTIxX6FQgtCFoR1yfzH5obGRv6AaKEv5FR4wKtefCrGOkFH5lvap4Wqa%2FeHkrtaFS0mw10h8yPSY6mDBU9ERkaPHMD9NBP%2FJeH48qEwYz5MkhYxm7sR35U3cFSPbxW9RnGLEE7NR54UEyRmI6GpJcqfEonLONW7G6cUBrQ%3D%3D','2024-04-16 21:39:27.968+07','2024-05-04 08:53:22.501+07',NULL,NULL,NULL),
	 (1,'2024/05/04/sat33HS       2024-5-4 8:56:20','https://storage.googleapis.com/loops-bmms-93d1a.appspot.com/2024/05/04/sat33HS%20%20%20%20%20%20%202024-5-4%208%3A56%3A20?GoogleAccessId=firebase-adminsdk-klo6c%40loops-bmms-93d1a.iam.gserviceaccount.com&Expires=2524608000&Signature=io1EJUBFOB5wLFCOEAN26vYflmX2Et7gweErnq8sLbNF9XpXWnr5TEhN72hncGm0ZAB88XXZNI8HTO8PWJqLIZxNWSUNKFCJdKX4EJ%2FUbM%2FSvHXgI8GcdOttkNEtUW0CNqDcWXE5HDyuPhLqAw3%2FJasceB9%2B183t5lcMP4COXe4h41rr74ZW76YQAjZhPZ7yNr5YjiuQQg6RcJLt7lwc9dix0dfDSSZZtdTYCDEfgR611joanMH7B22xfKqiXRHOBHAe4hRIUXeZGoL%2B8nScuGVHyzl5eZfgZuglg6Xxv9Xbwo8DDvFtaG4FgcNHg97tUUgR8dQgOCQcGxOAgpJ1GA%3D%3D','2024-05-04 08:56:23.832+07','2024-05-04 08:56:23.832+07',NULL,NULL,NULL),
	 (56,'2024/05/04/sat36HS       2024-5-4 8:57:39','https://storage.googleapis.com/loops-bmms-93d1a.appspot.com/2024/05/04/sat36HS%20%20%20%20%20%20%202024-5-4%208%3A57%3A39?GoogleAccessId=firebase-adminsdk-klo6c%40loops-bmms-93d1a.iam.gserviceaccount.com&Expires=2524608000&Signature=N1ySRWgkoqY3u6ksiKqZApgHuCy6vIvA%2FlUa3f0ZEhVPxKVuFFxEp2GMw0uPWkh5g49Htn7Oc8PM%2B1XWmvai9oAS44nxWKyayUFINia%2Bqp0HTdKLwBDzb%2Fq5PBDnMPeswv4MDaGHKbFfG8xf818nn2rI2YiyMba4%2Fm5NI7MqIAAai1TT5dSSAxRaioNsIiDwuksp0As6O4t%2BUB6SUDR3s9wtiUzXlkO33ESIzcFiD77NRU6YhVxACa%2FIwkJnZ4WAwh8v9wZo2kpElpvL8pj6dXEVpdPf7aSeigbjGRA6E7LlAATag3qLG2L4DgW4%2Bm5ojQHTsY%2FNpFjsfj4m8JwSLg%3D%3D','2024-05-04 08:57:41.233+07','2024-05-04 08:57:41.233+07',NULL,NULL,NULL),
	 (57,'2024/05/04/tonXanhHS       2024-5-4 8:58:18','https://storage.googleapis.com/loops-bmms-93d1a.appspot.com/2024/05/04/tonXanhHS%20%20%20%20%20%20%202024-5-4%208%3A58%3A18?GoogleAccessId=firebase-adminsdk-klo6c%40loops-bmms-93d1a.iam.gserviceaccount.com&Expires=2524608000&Signature=nkKKSQUD%2FXMB8EDGAq6zqDYqEJu7IZ56KiWUig5Za5d0eRq7qXPBGaQfDvL5aHdoPS81i7ju6J50HUf%2FNuaEjLGSLoKOI98GNVwF%2Bs%2BgIOv%2BOQULQTbKdOTgg%2F%2BktLidR2tgjBWC0%2Bbq9RDPnKi7gNLNu3HKkmWVWnaDpsa2IYwNoRD66PTxGrY7sBajvURXRKA6Oi4wgVkDzmgzalHPjTUGZt7azm5Xpgoc77l30KMayjB9sT39xqaD3vd2wEahJUfr18NVVWX6hoLAeapcguSCT%2Bu3H2VC5PmSnMWrU%2BIjBrHixngpJYzSjJ9GYgUuk%2BuA06r9OkRE%2B0L10F4u4w%3D%3D','2024-05-04 08:58:19.036+07','2024-05-04 08:58:19.036+07',NULL,NULL,NULL),
	 (58,'2024/05/04/tonDoHS       2024-5-4 8:58:46','https://storage.googleapis.com/loops-bmms-93d1a.appspot.com/2024/05/04/tonDoHS%20%20%20%20%20%20%202024-5-4%208%3A58%3A46?GoogleAccessId=firebase-adminsdk-klo6c%40loops-bmms-93d1a.iam.gserviceaccount.com&Expires=2524608000&Signature=REnHiuRMi18d4EIVNWElYm5E0V%2BiD5xKjUgr4MIJOZ5G5KzXNmw4KL9rW0w0ccw8izWg9jK25PiDnn8NgrNRuNUUSO4btm8LChAMXvntUF6Py1o2mLfym1%2FDZh0715anLqwLmkm0OPQfISHYRXuMNmuNWafbNYTtcOZMAppaqEL%2Bth1UsLZu1zNm5nmhb%2Ba%2FtXxTHwIXKSBcaOSPVsn5ELla7sIv3NtwbnVSnx5RNg%2FdPMHmr4%2Bf7GmlF%2Fd89XDCiqpc0nB8wP8vrPMdn%2Bql8rfCeAdDCZstxTswQiXuWRzL4aAgHgzd65hAJljY2Jsn815CdCyAaJf3tTzlUkh9NQ%3D%3D','2024-05-04 08:58:47.419+07','2024-05-04 08:58:47.419+07',NULL,NULL,NULL),
	 (59,'2024/05/04/tonSang       2024-5-4 9:0:32','https://storage.googleapis.com/loops-bmms-93d1a.appspot.com/2024/05/04/tonSang%20%20%20%20%20%20%202024-5-4%209%3A0%3A32?GoogleAccessId=firebase-adminsdk-klo6c%40loops-bmms-93d1a.iam.gserviceaccount.com&Expires=2524608000&Signature=uudX7rwmbdZRL0ogX1%2BvRBToSP3y3Tfwhf627zlx%2FhS%2FxOO6JKemD038OPCmnIR5irhXHpC1DkXytvJHCIz7JaTybPAPodWKW2iXpPWlLCvERnJze0b2TZqBfAFDLZ1HN2nsaFR8rzjVhoi8mYgTUq50PFUpytMcPBdGApOB8Ditg2to8TCYrW2ESVhhFn4VfBAmY81dsmueeAnB9pDGWTNsR8X6xeT5rg08XIWRuAQzmcdjwGBCtpv7AsJiBCuzXEo6%2FnwLzztIuApxzFeRCnxz9nWqNTamCcykuaW4XtPbceXrCq4FmSHav6fGRe8yo23f2XMJ1%2BXUlMTXVCKoiQ%3D%3D','2024-05-04 09:00:32.67+07','2024-05-04 09:00:32.67+07',NULL,NULL,NULL),
	 (60,'2024/05/04/sat44HS       2024-5-4 9:3:12','https://storage.googleapis.com/loops-bmms-93d1a.appspot.com/2024/05/04/sat44HS%20%20%20%20%20%20%202024-5-4%209%3A3%3A12?GoogleAccessId=firebase-adminsdk-klo6c%40loops-bmms-93d1a.iam.gserviceaccount.com&Expires=2524608000&Signature=Lp3wdDXHA9h0gKmH9mExLiuSQ%2B04%2FlqkNsn4sObjUv4XDrf6MnwBqbTHcf%2BvvcsJUxZJyP612g3tUhkle3GLXq4kcxNlPyXUI8zvc3LcuDCW0WzhWf8QL96CYFYF7QszKW1PRigCdMocwYnkB6txGFH%2F%2Bu7q2Mi1snac2aWgAASJTy5wDthT0MYbob%2B3Uim%2BHJe0Gc%2BX%2FVoW97JQNl0uNgtuekNiNaNuXyXjUN%2Bwg%2BHa1gqBWyOJUAgxTSJ6pluBbX0fRajkVzYE5mYRrZHXO5ZTtaMZTQ6v%2F1PdJSwVDt7rveqG9ZU%2BBKKYj8AleTBijxcobp%2BEg5ySVyiuVB4I6g%3D%3D','2024-05-04 09:03:12.732+07','2024-05-04 09:03:12.732+07',NULL,NULL,NULL);
INSERT INTO public.images ("productId","name","path","createdAt","updatedAt","deletedAt","serviceId","comboId") VALUES
	 (61,'2024/05/04/sat24HS       2024-5-4 9:4:41','https://storage.googleapis.com/loops-bmms-93d1a.appspot.com/2024/05/04/sat24HS%20%20%20%20%20%20%202024-5-4%209%3A4%3A41?GoogleAccessId=firebase-adminsdk-klo6c%40loops-bmms-93d1a.iam.gserviceaccount.com&Expires=2524608000&Signature=tWdzNrCyYopWLmFmAI9AlLFjdfaqS2AkLQX03M0vMeZpMpKilkOvtAlAVd2FTfS4B9yh22NW4FKLJCFIfaOCC1I%2BFE4OSuJuSLRrIo74v0PH2XaeIIgpUtUIbdpCLVswAGCqBvC%2FnhKMPyIKQIrHuObFGPNObRJIdYPkGza5693nT6LQCsq7i6nDahRGrIuHAsMdCaa5xVv9ZJiR2QU%2BIvLB7XOBhE89gs%2BhQ6TE0Is8rI3DK9HLYXTLNPhXpGzNlm8sm%2FH5kogmEfWdXm7ZG1xAB8I%2Bn2TgmNl08NVZu7W3se7fL6d7Hfm05bHRWz6Q%2B3O2n5tIPlY929ZGZbvq2g%3D%3D','2024-05-04 09:04:42.43+07','2024-05-04 09:04:42.43+07',NULL,NULL,NULL);
INSERT INTO public.loss_reasons ("name","key","createdAt","updatedAt","deletedAt") VALUES
	 ('Damaged','damaged','2024-02-25 20:50:40.11+07','2024-02-25 20:50:40.11+07',NULL),
	 ('Atrophy','atrophy','2024-02-25 20:50:40.11+07','2024-02-25 20:50:40.11+07',NULL),
	 ('Returns','returns','2024-02-25 20:50:40.11+07','2024-02-25 20:50:40.11+07',NULL),
	 ('Shipping','shipping','2024-02-25 20:50:40.11+07','2024-02-25 20:50:40.11+07',NULL),
	 ('Other','other','2024-02-25 20:50:40.11+07','2024-02-25 20:50:40.11+07',NULL);
INSERT INTO public.order_items ("orderId","productId","comboId","serviceId",quantity,discount,price,"totalPrice","createdAt","updatedAt","deletedAt",description,"productUnitId") VALUES
	 (1,1,NULL,NULL,1.00,0,150000,150000.00,'2024-02-25 21:18:49.69+07','2024-02-25 21:18:49.69+07',NULL,NULL,NULL),
	 (1,NULL,NULL,1,1.00,0,0,0.00,'2024-02-25 21:18:49.698+07','2024-02-25 21:18:49.698+07',NULL,NULL,NULL),
	 (1,NULL,1,NULL,1.00,0,0,0.00,'2024-02-25 21:18:49.702+07','2024-02-25 21:18:49.702+07',NULL,NULL,NULL),
	 (2,1,NULL,NULL,1.00,0,150000,150000.00,'2024-02-27 23:11:20.726+07','2024-02-27 23:11:20.726+07',NULL,NULL,NULL),
	 (2,NULL,NULL,1,1.00,0,0,0.00,'2024-02-27 23:11:20.749+07','2024-02-27 23:11:20.749+07',NULL,NULL,NULL),
	 (2,NULL,1,NULL,1.00,0,0,0.00,'2024-02-27 23:11:20.758+07','2024-02-27 23:11:20.758+07',NULL,NULL,NULL),
	 (3,1,NULL,NULL,1.00,0,150000,150000.00,'2024-03-05 22:53:13.966+07','2024-03-05 22:53:13.966+07',NULL,NULL,NULL),
	 (3,NULL,NULL,1,1.00,0,0,0.00,'2024-03-05 22:53:13.984+07','2024-03-05 22:53:13.984+07',NULL,NULL,NULL),
	 (3,NULL,1,NULL,1.00,0,0,0.00,'2024-03-05 22:53:13.99+07','2024-03-05 22:53:13.99+07',NULL,NULL,NULL),
	 (4,1,NULL,NULL,1.00,0,150000,150000.00,'2024-03-14 20:38:14.417+07','2024-03-14 20:38:14.417+07',NULL,NULL,NULL);
INSERT INTO public.order_items ("orderId","productId","comboId","serviceId",quantity,discount,price,"totalPrice","createdAt","updatedAt","deletedAt",description,"productUnitId") VALUES
	 (4,NULL,NULL,1,1.00,0,0,0.00,'2024-03-14 20:38:14.442+07','2024-03-14 20:38:14.442+07',NULL,NULL,NULL),
	 (4,NULL,1,NULL,1.00,0,0,0.00,'2024-03-14 20:38:14.459+07','2024-03-14 20:38:14.459+07',NULL,NULL,NULL),
	 (5,1,NULL,NULL,2.00,0,150000,315000.00,'2024-03-14 22:13:32.581+07','2024-03-14 22:13:32.581+07',NULL,NULL,NULL),
	 (5,NULL,NULL,1,1.00,0,0,0.00,'2024-03-14 22:13:32.597+07','2024-03-14 22:13:32.597+07',NULL,NULL,NULL),
	 (5,NULL,1,NULL,1.00,0,0,0.00,'2024-03-14 22:13:32.604+07','2024-03-14 22:13:32.604+07',NULL,NULL,NULL),
	 (6,2,NULL,NULL,1.00,0,0,0.00,'2024-03-14 22:24:28.518+07','2024-03-14 22:24:28.518+07',NULL,NULL,NULL),
	 (6,NULL,NULL,1,1.00,0,0,0.00,'2024-03-14 22:24:28.532+07','2024-03-14 22:24:28.532+07',NULL,NULL,NULL),
	 (6,NULL,1,NULL,1.00,0,0,0.00,'2024-03-14 22:24:28.541+07','2024-03-14 22:24:28.541+07',NULL,NULL,NULL),
	 (7,2,NULL,NULL,1.00,0,0,0.00,'2024-03-26 23:43:58.82+07','2024-03-26 23:43:58.82+07',NULL,NULL,NULL),
	 (7,NULL,NULL,1,1.00,0,0,0.00,'2024-03-26 23:43:58.831+07','2024-03-26 23:43:58.831+07',NULL,NULL,NULL);
INSERT INTO public.order_items ("orderId","productId","comboId","serviceId",quantity,discount,price,"totalPrice","createdAt","updatedAt","deletedAt",description,"productUnitId") VALUES
	 (7,NULL,1,NULL,1.00,0,0,0.00,'2024-03-26 23:43:58.838+07','2024-03-26 23:43:58.838+07',NULL,NULL,NULL),
	 (8,1,NULL,NULL,20.00,0,150000,3150000.00,'2024-03-27 00:28:28.908+07','2024-03-27 00:28:28.908+07',NULL,NULL,NULL),
	 (8,NULL,NULL,1,1.00,0,0,0.00,'2024-03-27 00:28:28.925+07','2024-03-27 00:28:28.925+07',NULL,NULL,NULL),
	 (8,NULL,1,NULL,1.00,0,0,0.00,'2024-03-27 00:28:28.935+07','2024-03-27 00:28:28.935+07',NULL,NULL,NULL),
	 (9,1,NULL,NULL,1.00,0,150000,150000.00,'2024-03-30 14:38:48.184+07','2024-03-30 14:38:48.184+07',NULL,NULL,NULL),
	 (9,NULL,NULL,1,1.00,0,0,0.00,'2024-03-30 14:38:48.199+07','2024-03-30 14:38:48.199+07',NULL,NULL,NULL),
	 (9,NULL,1,NULL,1.00,0,0,0.00,'2024-03-30 14:38:48.215+07','2024-03-30 14:38:48.215+07',NULL,NULL,NULL),
	 (10,2,NULL,NULL,1.00,0,65000,65000.00,'2024-03-30 16:48:42.991+07','2024-03-30 16:48:42.991+07',NULL,NULL,NULL),
	 (10,NULL,NULL,1,1.00,0,0,0.00,'2024-03-30 16:48:43.77+07','2024-03-30 16:48:43.77+07',NULL,NULL,NULL),
	 (10,NULL,1,NULL,1.00,0,0,0.00,'2024-03-30 16:48:44.304+07','2024-03-30 16:48:44.304+07',NULL,NULL,NULL);
INSERT INTO public.order_items ("orderId","productId","comboId","serviceId",quantity,discount,price,"totalPrice","createdAt","updatedAt","deletedAt",description,"productUnitId") VALUES
	 (11,2,NULL,NULL,1.00,0,65000,65000.00,'2024-03-30 22:52:04.762+07','2024-03-30 22:52:04.762+07',NULL,NULL,NULL),
	 (11,NULL,NULL,1,1.00,0,0,0.00,'2024-03-30 22:52:04.796+07','2024-03-30 22:52:04.796+07',NULL,NULL,NULL),
	 (11,NULL,1,NULL,1.00,0,0,0.00,'2024-03-30 22:52:04.807+07','2024-03-30 22:52:04.807+07',NULL,NULL,NULL),
	 (12,1,NULL,NULL,10.00,0,150000,1575000.00,'2024-03-30 22:53:13.896+07','2024-03-30 22:53:13.896+07',NULL,NULL,NULL),
	 (12,NULL,NULL,1,1.00,0,0,0.00,'2024-03-30 22:53:13.914+07','2024-03-30 22:53:13.914+07',NULL,NULL,NULL),
	 (12,NULL,1,NULL,1.00,0,0,0.00,'2024-03-30 22:53:13.924+07','2024-03-30 22:53:13.924+07',NULL,NULL,NULL),
	 (13,1,NULL,NULL,1.00,0,150000,150000.00,'2024-03-31 13:54:35.987+07','2024-03-31 13:54:35.987+07',NULL,NULL,NULL),
	 (13,NULL,NULL,1,1.00,0,0,0.00,'2024-03-31 13:54:36+07','2024-03-31 13:54:36+07',NULL,NULL,NULL),
	 (13,NULL,1,NULL,1.00,0,0,0.00,'2024-03-31 13:54:36.007+07','2024-03-31 13:54:36.007+07',NULL,NULL,NULL),
	 (14,2,NULL,NULL,1.00,0,65000,65000.00,'2024-03-31 13:56:15.803+07','2024-03-31 13:56:15.803+07',NULL,NULL,NULL);
INSERT INTO public.order_items ("orderId","productId","comboId","serviceId",quantity,discount,price,"totalPrice","createdAt","updatedAt","deletedAt",description,"productUnitId") VALUES
	 (14,NULL,NULL,1,1.00,0,0,0.00,'2024-03-31 13:56:15.816+07','2024-03-31 13:56:15.816+07',NULL,NULL,NULL),
	 (14,NULL,1,NULL,1.00,0,0,0.00,'2024-03-31 13:56:15.823+07','2024-03-31 13:56:15.823+07',NULL,NULL,NULL),
	 (15,1,NULL,NULL,1.00,0,150000,150000.00,'2024-03-31 14:52:50.948+07','2024-03-31 14:52:50.948+07',NULL,NULL,NULL),
	 (15,NULL,NULL,1,1.00,0,0,0.00,'2024-03-31 14:52:50.964+07','2024-03-31 14:52:50.964+07',NULL,NULL,NULL),
	 (15,NULL,1,NULL,1.00,0,0,0.00,'2024-03-31 14:52:50.971+07','2024-03-31 14:52:50.971+07',NULL,NULL,NULL),
	 (16,1,NULL,NULL,5.00,0,150000,787500.00,'2024-03-31 14:56:02.073+07','2024-03-31 14:56:02.073+07',NULL,NULL,NULL),
	 (16,NULL,NULL,1,1.00,0,0,0.00,'2024-03-31 14:56:02.081+07','2024-03-31 14:56:02.081+07',NULL,NULL,NULL),
	 (16,NULL,1,NULL,1.00,0,0,0.00,'2024-03-31 14:56:02.086+07','2024-03-31 14:56:02.086+07',NULL,NULL,NULL),
	 (17,2,NULL,NULL,1.00,0,65000,65000.00,'2024-04-02 21:54:00.771+07','2024-04-02 21:54:00.771+07',NULL,NULL,NULL),
	 (17,NULL,NULL,1,1.00,0,0,0.00,'2024-04-02 21:54:00.794+07','2024-04-02 21:54:00.794+07',NULL,NULL,NULL);
INSERT INTO public.order_items ("orderId","productId","comboId","serviceId",quantity,discount,price,"totalPrice","createdAt","updatedAt","deletedAt",description,"productUnitId") VALUES
	 (17,NULL,1,NULL,1.00,0,0,0.00,'2024-04-02 21:54:00.802+07','2024-04-02 21:54:00.802+07',NULL,NULL,NULL),
	 (18,1,NULL,NULL,1.00,0,150000,150000.00,'2024-04-02 21:54:24.295+07','2024-04-02 21:54:24.295+07',NULL,NULL,NULL),
	 (18,NULL,NULL,1,1.00,0,0,0.00,'2024-04-02 21:54:24.304+07','2024-04-02 21:54:24.304+07',NULL,NULL,NULL),
	 (18,NULL,1,NULL,1.00,0,0,0.00,'2024-04-02 21:54:24.311+07','2024-04-02 21:54:24.311+07',NULL,NULL,NULL),
	 (19,2,NULL,NULL,1.00,0,65000,65000.00,'2024-04-02 22:30:14.685+07','2024-04-02 22:30:14.685+07',NULL,NULL,NULL),
	 (19,NULL,NULL,1,1.00,0,0,0.00,'2024-04-02 22:30:14.697+07','2024-04-02 22:30:14.697+07',NULL,NULL,NULL),
	 (19,NULL,1,NULL,1.00,0,0,0.00,'2024-04-02 22:30:14.705+07','2024-04-02 22:30:14.705+07',NULL,NULL,NULL),
	 (20,54,NULL,NULL,NULL,2500,NULL,NULL,'2024-04-27 21:09:52.598+07','2024-04-27 21:09:52.598+07',NULL,NULL,NULL),
	 (21,53,NULL,NULL,NULL,0,NULL,NULL,'2024-04-27 21:11:53.577+07','2024-04-27 21:11:53.577+07',NULL,NULL,NULL),
	 (22,50,NULL,NULL,NULL,0,NULL,NULL,'2024-04-27 21:16:14.698+07','2024-04-27 21:16:14.698+07',NULL,NULL,NULL);
INSERT INTO public.order_items ("orderId","productId","comboId","serviceId",quantity,discount,price,"totalPrice","createdAt","updatedAt","deletedAt",description,"productUnitId") VALUES
	 (23,53,NULL,NULL,NULL,0,NULL,NULL,'2024-04-28 15:34:55.3+07','2024-04-28 15:34:55.3+07',NULL,NULL,NULL),
	 (24,50,NULL,NULL,NULL,0,NULL,NULL,'2024-05-03 17:42:54.062+07','2024-05-03 17:42:54.062+07',NULL,NULL,NULL),
	 (24,53,NULL,NULL,NULL,1000,NULL,NULL,'2024-05-03 17:42:54.062+07','2024-05-03 17:42:54.062+07',NULL,NULL,NULL),
	 (24,50,NULL,NULL,NULL,8000,NULL,NULL,'2024-05-03 17:42:54.062+07','2024-05-03 17:42:54.062+07',NULL,NULL,NULL),
	 (24,53,NULL,NULL,NULL,0,NULL,NULL,'2024-05-03 17:42:54.062+07','2024-05-03 17:42:54.062+07',NULL,NULL,NULL),
	 (24,NULL,1,NULL,NULL,0,NULL,NULL,'2024-05-03 17:42:54.103+07','2024-05-03 17:42:54.103+07',NULL,NULL,NULL),
	 (25,50,NULL,NULL,NULL,0,NULL,NULL,'2024-05-04 08:46:31.92+07','2024-05-04 08:46:31.92+07',NULL,NULL,NULL),
	 (25,50,NULL,NULL,NULL,0,NULL,NULL,'2024-05-04 08:46:31.92+07','2024-05-04 08:46:31.92+07',NULL,NULL,NULL),
	 (25,NULL,NULL,1,NULL,0,NULL,NULL,'2024-05-04 08:46:31.939+07','2024-05-04 08:46:31.939+07',NULL,NULL,NULL),
	 (25,NULL,1,NULL,NULL,0,NULL,NULL,'2024-05-04 08:46:31.948+07','2024-05-04 08:46:31.948+07',NULL,NULL,NULL);
INSERT INTO public.order_items ("orderId","productId","comboId","serviceId",quantity,discount,price,"totalPrice","createdAt","updatedAt","deletedAt",description,"productUnitId") VALUES
	 (26,60,NULL,NULL,NULL,20000,NULL,NULL,'2024-05-04 13:28:03.013+07','2024-05-04 13:28:03.013+07',NULL,NULL,NULL),
	 (27,60,NULL,NULL,NULL,0,NULL,NULL,'2024-05-04 13:34:46.969+07','2024-05-04 13:34:46.969+07',NULL,NULL,NULL),
	 (28,61,NULL,NULL,NULL,0,NULL,NULL,'2024-05-04 13:51:13.332+07','2024-05-04 13:51:13.332+07',NULL,NULL,NULL),
	 (29,61,NULL,NULL,NULL,0,NULL,NULL,'2024-05-04 14:12:02.098+07','2024-05-04 14:12:02.098+07',NULL,NULL,NULL),
	 (29,61,NULL,NULL,NULL,0,NULL,NULL,'2024-05-04 14:12:02.098+07','2024-05-04 14:12:02.098+07',NULL,NULL,NULL),
	 (30,61,NULL,NULL,NULL,0,NULL,NULL,'2024-05-04 14:13:31.332+07','2024-05-04 14:13:31.332+07',NULL,NULL,NULL),
	 (31,61,NULL,NULL,1.00,0,NULL,NULL,'2024-05-04 14:54:10.062+07','2024-05-04 14:54:10.062+07',NULL,NULL,NULL),
	 (32,60,NULL,NULL,2.00,10000,120000,NULL,'2024-05-04 15:00:50.296+07','2024-05-04 15:00:50.296+07',NULL,NULL,NULL),
	 (33,61,NULL,NULL,1.00,0,70000,NULL,'2024-05-04 16:52:02.674+07','2024-05-04 16:52:02.674+07',NULL,NULL,NULL),
	 (34,60,NULL,NULL,1.00,0,120000,NULL,'2024-05-04 16:59:05.987+07','2024-05-04 16:59:05.987+07',NULL,NULL,NULL);
INSERT INTO public.order_items ("orderId","productId","comboId","serviceId",quantity,discount,price,"totalPrice","createdAt","updatedAt","deletedAt",description,"productUnitId") VALUES
	 (35,61,NULL,NULL,1.00,0,70000,NULL,'2024-05-04 17:03:12.389+07','2024-05-04 17:03:12.389+07',NULL,NULL,NULL),
	 (36,61,NULL,NULL,2.00,0,70000,NULL,'2024-05-04 17:27:06.306+07','2024-05-04 17:27:06.306+07',NULL,NULL,NULL),
	 (37,61,NULL,NULL,1.00,0,70000,NULL,'2024-05-04 17:28:57.505+07','2024-05-04 17:28:57.505+07',NULL,NULL,NULL),
	 (38,60,NULL,NULL,1.00,0,NULL,110000.00,'2024-05-04 22:27:56.558+07','2024-05-04 22:27:56.558+07',NULL,NULL,NULL),
	 (38,61,NULL,NULL,1.00,0,NULL,65000.00,'2024-05-04 22:27:56.558+07','2024-05-04 22:27:56.558+07',NULL,NULL,NULL),
	 (38,NULL,NULL,1,1.00,0,0,0.00,'2024-05-04 22:27:56.597+07','2024-05-04 22:27:56.597+07',NULL,NULL,NULL),
	 (38,NULL,1,NULL,1.00,0,0,0.00,'2024-05-04 22:27:56.617+07','2024-05-04 22:27:56.617+07',NULL,NULL,NULL),
	 (39,61,NULL,NULL,1.00,0,65000,65000.00,'2024-05-04 22:38:20.793+07','2024-05-04 22:38:20.793+07',NULL,NULL,NULL),
	 (39,60,NULL,NULL,1.00,0,110000,110000.00,'2024-05-04 22:38:20.793+07','2024-05-04 22:38:20.793+07',NULL,NULL,NULL),
	 (39,NULL,NULL,1,1.00,0,0,0.00,'2024-05-04 22:38:20.836+07','2024-05-04 22:38:20.836+07',NULL,NULL,NULL);
INSERT INTO public.order_items ("orderId","productId","comboId","serviceId",quantity,discount,price,"totalPrice","createdAt","updatedAt","deletedAt",description,"productUnitId") VALUES
	 (39,NULL,1,NULL,1.00,0,0,0.00,'2024-05-04 22:38:20.855+07','2024-05-04 22:38:20.855+07',NULL,NULL,NULL),
	 (40,61,NULL,NULL,1.00,0,NULL,NULL,'2024-05-05 00:44:49.486+07','2024-05-05 00:44:49.486+07',NULL,NULL,NULL),
	 (41,61,NULL,NULL,1.00,0,NULL,NULL,'2024-05-05 00:45:24.814+07','2024-05-05 00:45:24.814+07',NULL,NULL,NULL),
	 (42,60,NULL,NULL,1.00,0,110000,110000.00,'2024-05-05 00:52:02.744+07','2024-05-05 00:52:02.744+07',NULL,NULL,NULL),
	 (42,NULL,NULL,1,1.00,0,0,0.00,'2024-05-05 00:52:02.76+07','2024-05-05 00:52:02.76+07',NULL,NULL,NULL),
	 (42,NULL,1,NULL,1.00,0,0,0.00,'2024-05-05 00:52:02.766+07','2024-05-05 00:52:02.766+07',NULL,NULL,NULL),
	 (43,61,NULL,NULL,1.00,0,70000,70000.00,'2024-05-05 01:03:28.006+07','2024-05-05 01:03:28.006+07',NULL,NULL,NULL),
	 (44,60,NULL,NULL,1.00,0,120000,120000.00,'2024-05-05 01:06:26.375+07','2024-05-05 01:06:26.375+07',NULL,NULL,NULL),
	 (45,61,NULL,NULL,1.00,0,70000,70000.00,'2024-05-05 01:21:59.744+07','2024-05-05 01:21:59.744+07',NULL,NULL,NULL),
	 (46,61,NULL,NULL,1.00,0,70000,70000.00,'2024-05-05 01:22:24.299+07','2024-05-05 01:22:24.299+07',NULL,NULL,NULL);
INSERT INTO public.order_items ("orderId","productId","comboId","serviceId",quantity,discount,price,"totalPrice","createdAt","updatedAt","deletedAt",description,"productUnitId") VALUES
	 (46,60,NULL,NULL,1.00,0,120000,120000.00,'2024-05-05 01:22:24.299+07','2024-05-05 01:22:24.299+07',NULL,NULL,NULL),
	 (46,61,NULL,NULL,1.00,0,15000,15000.00,'2024-05-05 01:22:24.299+07','2024-05-05 01:22:24.299+07',NULL,NULL,NULL),
	 (47,61,NULL,NULL,1.00,0,70000,70000.00,'2024-05-05 01:32:24.059+07','2024-05-05 01:32:24.059+07',NULL,NULL,NULL),
	 (47,60,NULL,NULL,2.00,0,120000,240000.00,'2024-05-05 01:32:24.059+07','2024-05-05 01:32:24.059+07',NULL,NULL,NULL),
	 (47,59,NULL,NULL,1.00,0,300000,300000.00,'2024-05-05 01:32:24.059+07','2024-05-05 01:32:24.059+07',NULL,NULL,NULL),
	 (48,59,NULL,NULL,1.00,0,300000,300000.00,'2024-05-05 22:02:16.434+07','2024-05-05 22:02:16.434+07',NULL,NULL,NULL),
	 (49,59,NULL,NULL,1.00,0,300000,300000.00,'2024-05-05 22:05:51.399+07','2024-05-05 22:05:51.399+07',NULL,NULL,NULL),
	 (50,58,NULL,NULL,1.00,0,105000,105000.00,'2024-05-05 22:17:40.174+07','2024-05-05 22:17:40.174+07',NULL,NULL,NULL),
	 (51,61,NULL,NULL,1.00,0,70000,70000.00,'2024-05-05 22:22:54.242+07','2024-05-05 22:22:54.242+07',NULL,NULL,NULL),
	 (51,61,NULL,NULL,1.00,0,15000,15000.00,'2024-05-05 22:22:54.242+07','2024-05-05 22:22:54.242+07',NULL,NULL,NULL);
INSERT INTO public.order_items ("orderId","productId","comboId","serviceId",quantity,discount,price,"totalPrice","createdAt","updatedAt","deletedAt",description,"productUnitId") VALUES
	 (51,NULL,NULL,1,1.00,0,0,0.00,'2024-05-05 22:22:54.26+07','2024-05-05 22:22:54.26+07',NULL,NULL,NULL),
	 (51,NULL,1,NULL,1.00,0,0,0.00,'2024-05-05 22:22:54.272+07','2024-05-05 22:22:54.272+07',NULL,NULL,NULL),
	 (52,58,NULL,NULL,1.00,0,105000,105000.00,'2024-05-06 00:36:41.805+07','2024-05-06 00:36:41.805+07',NULL,NULL,NULL),
	 (53,58,NULL,NULL,1.00,0,105000,105000.00,'2024-05-06 00:46:06.707+07','2024-05-06 00:46:06.707+07',NULL,NULL,NULL),
	 (60,59,NULL,NULL,1.00,0,300000,300000.00,'2024-05-06 02:18:25.626+07','2024-05-06 02:18:25.626+07',NULL,'',NULL),
	 (60,61,NULL,NULL,1.00,0,70000,70000.00,'2024-05-06 02:18:25.626+07','2024-05-06 02:18:25.626+07',NULL,'2cm x 2cm x 2cm x 2|',NULL),
	 (47,60,NULL,NULL,1.00,0,36000,36000.00,'2024-05-05 01:32:24.059+07','2024-05-05 01:32:24.059+07',NULL,NULL,96),
	 (68,60,NULL,NULL,10.00,0,120000,1260000.00,'2024-05-19 19:21:01.589+07','2024-05-19 19:21:01.589+07',NULL,NULL,NULL),
	 (68,NULL,NULL,1,1.00,0,0,0.00,'2024-05-19 19:21:01.601+07','2024-05-19 19:21:01.601+07',NULL,NULL,NULL),
	 (68,NULL,1,NULL,1.00,0,0,0.00,'2024-05-19 19:21:01.609+07','2024-05-19 19:21:01.609+07',NULL,NULL,NULL);
INSERT INTO public.order_items ("orderId","productId","comboId","serviceId",quantity,discount,price,"totalPrice","createdAt","updatedAt","deletedAt",description,"productUnitId") VALUES
	 (69,60,NULL,NULL,8.00,0,120000,1008000.00,'2024-05-19 20:38:45.247+07','2024-05-19 20:38:45.247+07',NULL,NULL,NULL),
	 (69,NULL,NULL,1,1.00,0,0,0.00,'2024-05-19 20:38:45.269+07','2024-05-19 20:38:45.269+07',NULL,NULL,NULL),
	 (69,NULL,1,NULL,1.00,0,0,0.00,'2024-05-19 20:38:45.277+07','2024-05-19 20:38:45.277+07',NULL,NULL,NULL),
	 (70,60,NULL,NULL,10.00,0,120000,1260000.00,'2024-05-20 22:36:45.469+07','2024-05-20 22:36:45.469+07',NULL,NULL,NULL),
	 (70,59,NULL,NULL,10.00,0,300000,3300000.00,'2024-05-20 22:36:45.469+07','2024-05-20 22:36:45.469+07',NULL,NULL,NULL),
	 (70,NULL,NULL,1,1.00,0,0,0.00,'2024-05-20 22:36:45.483+07','2024-05-20 22:36:45.483+07',NULL,NULL,NULL),
	 (70,NULL,1,NULL,1.00,0,0,0.00,'2024-05-20 22:36:45.489+07','2024-05-20 22:36:45.489+07',NULL,NULL,NULL),
	 (73,61,NULL,NULL,1.00,0,70000,70000.00,'2024-05-21 23:53:20.951+07','2024-05-21 23:53:20.951+07',NULL,'',NULL),
	 (78,59,NULL,NULL,1.00,0,300000,300000.00,'2024-05-22 17:25:35.573+07','2024-05-22 17:25:35.573+07',NULL,'',NULL),
	 (79,59,NULL,NULL,1.00,0,300000,300000.00,'2024-05-22 17:30:19.882+07','2024-05-22 17:30:19.882+07',NULL,'',NULL);
INSERT INTO public.order_items ("orderId","productId","comboId","serviceId",quantity,discount,price,"totalPrice","createdAt","updatedAt","deletedAt",description,"productUnitId") VALUES
	 (81,59,NULL,NULL,1.00,0,300000,300000.00,'2024-05-22 17:44:54.378+07','2024-05-22 17:44:54.378+07',NULL,'',NULL),
	 (82,59,NULL,NULL,1.00,0,300000,300000.00,'2024-05-22 17:47:29.81+07','2024-05-22 17:47:29.81+07',NULL,'',NULL),
	 (86,59,NULL,NULL,1.00,0,300000,300000.00,'2024-05-22 17:56:31.465+07','2024-05-22 17:56:31.465+07',NULL,'',NULL),
	 (87,59,NULL,NULL,1.00,0,300000,300000.00,'2024-05-22 18:04:14.319+07','2024-05-22 18:04:14.319+07',NULL,'',NULL),
	 (89,59,NULL,NULL,1.00,0,300000,300000.00,'2024-05-22 22:00:13.074+07','2024-05-22 22:00:13.074+07',NULL,'',NULL),
	 (90,59,NULL,NULL,1.00,0,300000,300000.00,'2024-05-22 22:00:47.845+07','2024-05-22 22:00:47.845+07',NULL,'',NULL),
	 (91,59,NULL,NULL,1.00,0,300000,300000.00,'2024-05-22 22:17:44.993+07','2024-05-22 22:17:44.993+07',NULL,'',NULL),
	 (92,59,NULL,NULL,1.00,0,300000,300000.00,'2024-05-22 22:22:35.063+07','2024-05-22 22:22:35.063+07',NULL,'',NULL),
	 (93,59,NULL,NULL,1.00,0,300000,300000.00,'2024-05-22 22:28:08.634+07','2024-05-22 22:28:08.634+07',NULL,'',NULL),
	 (94,59,NULL,NULL,1.00,0,300000,300000.00,'2024-05-22 22:35:14.134+07','2024-05-22 22:35:14.134+07',NULL,'',NULL);
INSERT INTO public.order_items ("orderId","productId","comboId","serviceId",quantity,discount,price,"totalPrice","createdAt","updatedAt","deletedAt",description,"productUnitId") VALUES
	 (94,61,NULL,NULL,1.00,0,70000,70000.00,'2024-05-22 22:35:14.134+07','2024-05-22 22:35:14.134+07',NULL,'',NULL),
	 (95,59,NULL,NULL,1.00,0,300000,300000.00,'2024-05-22 22:43:35.757+07','2024-05-22 22:43:35.757+07',NULL,'',NULL),
	 (96,59,NULL,NULL,1.00,0,300000,300000.00,'2024-05-22 22:44:04.531+07','2024-05-22 22:44:04.531+07',NULL,'',NULL),
	 (97,59,NULL,NULL,1.00,0,300000,300000.00,'2024-05-22 22:49:49.208+07','2024-05-22 22:49:49.208+07',NULL,'',NULL),
	 (98,59,NULL,NULL,1.00,0,300000,300000.00,'2024-05-22 22:51:02.863+07','2024-05-22 22:51:02.863+07',NULL,'',NULL),
	 (99,59,NULL,NULL,1.00,0,300000,300000.00,'2024-05-22 22:52:26.299+07','2024-05-22 22:52:26.299+07',NULL,'',NULL),
	 (100,59,NULL,NULL,1.00,0,300000,300000.00,'2024-05-22 23:18:47.083+07','2024-05-22 23:18:47.083+07',NULL,'',NULL),
	 (101,59,NULL,NULL,1.00,0,300000,300000.00,'2024-05-22 23:33:44.754+07','2024-05-22 23:33:44.754+07',NULL,'2 x 2 x 2 x 2|',NULL),
	 (102,61,NULL,NULL,1.00,0,70000,70000.00,'2024-05-24 17:49:18.734+07','2024-05-24 17:49:18.734+07',NULL,'2cm x 3cm x 2|1cm x 1cm x 1|',NULL),
	 (103,61,NULL,NULL,1.00,0,70000,70000.00,'2024-05-24 17:54:14.511+07','2024-05-24 17:54:14.511+07',NULL,'2cm x 2cm x 2|3cm x 3cm x 2|',NULL);
INSERT INTO public.order_items ("orderId","productId","comboId","serviceId",quantity,discount,price,"totalPrice","createdAt","updatedAt","deletedAt",description,"productUnitId") VALUES
	 (104,61,NULL,NULL,1.00,0,70000,70000.00,'2024-05-24 17:55:44.304+07','2024-05-24 17:55:44.304+07',NULL,'2cm x 2cm x 2|3cm x 3cm x 2|',NULL),
	 (105,61,NULL,NULL,17.00,0,70000,1190000.00,'2024-05-24 18:08:10.011+07','2024-05-24 18:08:10.011+07',NULL,'2cm x 2cm x 2cm x 2|',NULL),
	 (107,61,NULL,NULL,4.00,0,70000,280000.00,'2024-05-24 18:16:22.334+07','2024-05-24 18:16:22.334+07',NULL,'2cm x 2cm x 1|',NULL),
	 (109,59,NULL,NULL,28.00,0,300000,8400000.00,'2024-05-24 20:27:24.635+07','2024-05-24 20:27:24.635+07',NULL,'2cm x 2cm x 2|5cm x 2cm x 2|',NULL),
	 (110,59,NULL,NULL,16.00,0,300000,4800000.00,'2024-05-24 20:37:40.768+07','2024-05-24 20:37:40.768+07',NULL,'2cm x 2|4cm x 3|',NULL);
INSERT INTO public.order_payments ("orderId",amount,"paidDate","paymentMethodId","createdAt","updatedAt","deletedAt") VALUES
	 (1,150,'2024-02-25 21:19:25.633+07',1,'2024-02-25 21:19:35.773+07','2024-02-25 21:19:35.773+07',NULL),
	 (1,14985,'2024-02-25 21:19:35.999+07',2,'2024-02-25 21:19:44.979+07','2024-02-25 21:19:44.979+07',NULL),
	 (1,134,'2024-02-25 21:19:45.167+07',2,'2024-02-25 21:20:11.348+07','2024-02-25 21:20:11.348+07',NULL),
	 (1,13475,'2024-02-25 21:20:11.558+07',1,'2024-02-25 21:20:21.679+07','2024-02-25 21:20:21.679+07',NULL),
	 (1,121025,'2024-02-25 21:20:21.851+07',1,'2024-02-25 21:20:54.738+07','2024-02-25 21:20:54.738+07',NULL),
	 (1,231,'2024-02-25 21:21:39.3+07',2,'2024-02-25 21:23:07.694+07','2024-02-25 21:23:07.694+07',NULL),
	 (2,150000,'2024-02-27 23:11:27.011+07',1,'2024-02-27 23:11:40.954+07','2024-02-27 23:11:40.954+07',NULL),
	 (3,150000,'2024-03-05 22:53:22.229+07',1,'2024-03-05 22:53:33.616+07','2024-03-05 22:53:33.616+07',NULL),
	 (4,150000,'2024-03-14 22:12:48.283+07',1,'2024-03-14 22:12:58.153+07','2024-03-14 22:12:58.153+07',NULL),
	 (5,315000,'2024-03-14 22:13:37.752+07',2,'2024-03-14 22:13:46.376+07','2024-03-14 22:13:46.376+07',NULL);
INSERT INTO public.order_payments ("orderId",amount,"paidDate","paymentMethodId","createdAt","updatedAt","deletedAt") VALUES
	 (6,0,'2024-03-14 22:25:29.584+07',1,'2024-03-14 22:25:42.725+07','2024-03-14 22:25:42.725+07',NULL),
	 (8,200000,'2024-03-27 00:29:04.447+07',3,'2024-03-27 00:29:18.396+07','2024-03-27 00:29:18.396+07',NULL),
	 (9,150000,'2024-03-30 14:38:53.81+07',1,'2024-03-30 14:39:02.765+07','2024-03-30 14:39:02.765+07',NULL),
	 (10,65000,'2024-03-30 22:00:02.967+07',1,'2024-03-30 22:00:10.772+07','2024-03-30 22:00:10.772+07',NULL),
	 (8,500000,'2024-03-30 22:47:14.391+07',2,'2024-03-30 22:47:27.004+07','2024-03-30 22:47:27.004+07',NULL),
	 (12,575000,'2024-03-30 22:54:59.081+07',1,'2024-03-30 22:55:08.961+07','2024-03-30 22:55:08.961+07',NULL),
	 (14,65000,'2024-03-31 14:50:29.66+07',2,'2024-03-31 14:50:37.678+07','2024-03-31 14:50:37.678+07',NULL),
	 (15,50000,'2024-03-31 14:56:37.554+07',1,'2024-03-31 14:56:47.1+07','2024-03-31 14:56:47.1+07',NULL),
	 (15,50000,'2024-03-31 14:56:47.323+07',3,'2024-03-31 15:09:14.357+07','2024-03-31 15:09:14.357+07',NULL),
	 (19,15000,'2024-04-05 23:13:14.768+07',1,'2024-04-05 23:13:24.247+07','2024-04-05 23:13:24.247+07',NULL);
INSERT INTO public.order_payments ("orderId",amount,"paidDate","paymentMethodId","createdAt","updatedAt","deletedAt") VALUES
	 (39,100000,'2024-05-04 22:55:00.557+07',1,'2024-05-04 22:55:08.458+07','2024-05-04 22:55:08.458+07',NULL),
	 (48,12000,'2024-05-05 22:02:15.737+07',3,'2024-05-05 22:02:16.482+07','2024-05-05 22:02:16.482+07',NULL),
	 (49,13000,'2024-05-05 22:05:51.054+07',1,'2024-05-05 22:05:51.446+07','2024-05-05 22:05:51.446+07',NULL),
	 (50,11300,'2024-05-05 22:17:39.887+07',1,'2024-05-05 22:17:40.227+07','2024-05-05 22:17:40.227+07',NULL),
	 (51,11300,'2024-05-05 22:22:54.021+07',1,'2024-05-05 22:22:54.316+07','2024-05-05 22:22:54.316+07',NULL),
	 (52,1000,'2024-05-06 00:36:41.22+07',2,'2024-05-06 00:36:41.877+07','2024-05-06 00:36:41.877+07',NULL),
	 (53,1000,'2024-05-06 00:46:06.513+07',2,'2024-05-06 00:46:06.755+07','2024-05-06 00:46:06.755+07',NULL),
	 (60,8000,'2024-05-06 02:18:25.422+07',2,'2024-05-06 02:18:25.687+07','2024-05-06 02:18:25.687+07',NULL),
	 (73,50000,'2024-05-21 23:53:20.754+07',2,'2024-05-21 23:53:20.994+07','2024-05-21 23:53:20.994+07',NULL),
	 (78,30000,'2024-05-22 17:25:35.466+07',2,'2024-05-22 17:25:35.617+07','2024-05-22 17:25:35.617+07',NULL);
INSERT INTO public.order_payments ("orderId",amount,"paidDate","paymentMethodId","createdAt","updatedAt","deletedAt") VALUES
	 (79,20000,'2024-05-22 17:30:19.41+07',2,'2024-05-22 17:30:19.922+07','2024-05-22 17:30:19.922+07',NULL),
	 (81,20000,'2024-05-22 17:44:54.154+07',2,'2024-05-22 17:44:54.408+07','2024-05-22 17:44:54.408+07',NULL),
	 (82,98000,'2024-05-22 17:47:29.561+07',2,'2024-05-22 17:47:29.84+07','2024-05-22 17:47:29.84+07',NULL),
	 (86,300000,'2024-05-22 17:56:30.914+07',1,'2024-05-22 17:56:31.497+07','2024-05-22 17:56:31.497+07',NULL),
	 (87,398000,'2024-05-22 18:04:14.11+07',2,'2024-05-22 18:04:14.343+07','2024-05-22 18:04:14.343+07',NULL),
	 (89,3633,'2024-05-22 22:00:12.823+07',1,'2024-05-22 22:00:13.13+07','2024-05-22 22:00:13.13+07',NULL),
	 (90,98000,'2024-05-22 22:00:47.6+07',2,'2024-05-22 22:00:47.881+07','2024-05-22 22:00:47.881+07',NULL),
	 (91,318000,'2024-05-22 22:17:44.83+07',1,'2024-05-22 22:17:45.021+07','2024-05-22 22:17:45.021+07',NULL),
	 (92,398000,'2024-05-22 22:22:34.923+07',1,'2024-05-22 22:22:35.089+07','2024-05-22 22:22:35.089+07',NULL),
	 (93,398000,'2024-05-22 22:28:08.405+07',1,'2024-05-22 22:28:08.667+07','2024-05-22 22:28:08.667+07',NULL);
INSERT INTO public.order_payments ("orderId",amount,"paidDate","paymentMethodId","createdAt","updatedAt","deletedAt") VALUES
	 (94,318000,'2024-05-22 22:35:13.925+07',2,'2024-05-22 22:35:14.164+07','2024-05-22 22:35:14.164+07',NULL),
	 (95,398000,'2024-05-22 22:43:35.575+07',1,'2024-05-22 22:43:35.791+07','2024-05-22 22:43:35.791+07',NULL),
	 (107,360000,'2024-05-24 18:16:22.214+07',2,'2024-05-24 18:16:22.369+07','2024-05-24 18:16:22.369+07',NULL),
	 (109,8984000,'2024-05-24 20:27:24.552+07',2,'2024-05-24 20:27:24.654+07','2024-05-24 20:27:24.654+07',NULL),
	 (110,5088000,'2024-05-24 20:37:40.577+07',2,'2024-05-24 20:37:40.809+07','2024-05-24 20:37:40.809+07',NULL);
INSERT INTO public.order_supplier_product_items ("orderSupplierId","productId",quantity,price,discount,"totalPrice","createdAt","updatedAt","deletedAt") VALUES
	 (1,1,20,150000,0,3150000,'2024-02-25 21:04:08.599+07','2024-02-25 21:04:08.599+07',NULL),
	 (2,61,5,65000,0,325000,'2024-05-13 20:14:57+07','2024-05-13 20:14:57+07',NULL);
INSERT INTO public.order_suppliers ("supplierId","staffId","importDate","deliveredDate",code,note,"quantityTotal","totalPrice",discount,"totalTaxPrice","importStatusId","createdAt","updatedAt","deletedAt") VALUES
	 (1,1,'2024-02-25 21:05:34.99+07','2024-02-25 21:03:37.175+07','ONS53203','<p>Ghi chú đơn nhập hàng...</p>',20,3150000,0,150000,5,'2024-02-25 21:04:08.587+07','2024-02-25 21:05:34.992+07',NULL),
	 (1,1,NULL,'2024-05-13 20:14:32.875+07','ONS61248','<p>Ghi chú đơn nhập hàng...</p>',5,325000,0,0,4,'2024-05-13 20:14:56.978+07','2024-05-13 20:14:56.978+07',NULL);
INSERT INTO public.orders ("customerId","orderStatusId","approvedStatusId","shippingStatusId","paymentStatusId","exportedInventoryStatusId","deliveryMethodId",code,"deliveryDate","quantityTotal","shippingFee",discount,"totalPrice","totalTaxPrice","debtAmount",note,"deliveryPartnerId","paymentMethodId","staffId","createdAt","updatedAt","deletedAt") VALUES
	 (1,14,20,22,27,18,2,'ON03949','2024-04-02 22:29:51.179+07',3,0,0,65000,0,50000,'<p>Ghi chú đơn nhập hàng...</p>',1,NULL,1,'2024-04-02 22:30:14.664+07','2024-04-05 23:13:24.316+07',NULL),
	 (1,17,21,22,28,19,1,'ON56445','2024-03-30 14:36:51.343+07',3,0,0,150000,7500,0,'<p>Ghi chú đơn nhập hàng...</p>',NULL,NULL,1,'2024-03-30 14:38:48.128+07','2024-03-30 14:39:17.49+07',NULL),
	 (2,17,21,22,28,19,1,'ON61461','2024-03-31 13:54:51.857+07',3,0,0,65000,0,0,'<p>Ghi chú đơn nhập hàng...</p>',NULL,NULL,1,'2024-03-31 13:56:15.783+07','2024-04-06 20:34:35.632+07',NULL),
	 (1,14,20,22,26,18,2,'ON34909','2024-04-27 21:07:58.739+07',3,0,7500,67500,0,0,'',NULL,NULL,1,'2024-04-27 21:09:52.564+07','2024-04-27 21:09:52.564+07',NULL),
	 (1,16,21,22,28,19,1,'ON39325','2024-03-30 16:44:45.108+07',3,0,0,65000,0,0,'<p>Ghi chú đơn nhập hàng...</p>',NULL,NULL,1,'2024-03-30 16:48:39.254+07','2024-03-30 22:00:10.884+07',NULL),
	 (1,15,21,22,27,19,1,'ON15428','2024-03-27 00:26:57.377+07',22,0,0,3150000,150000,2450000,'<p>Ghi chú đơn nhập hàng...</p>',NULL,3,1,'2024-03-27 00:28:28.862+07','2024-03-30 22:47:27.151+07',NULL),
	 (1,17,21,22,28,19,1,'ON96915','2024-02-25 21:18:31.619+07',3,0,0,150000,7500,0,'<p>Ghi chú đơn nhập hàng...</p>',NULL,NULL,1,'2024-02-25 21:18:49.678+07','2024-02-25 21:24:12.036+07',NULL),
	 (2,14,20,22,26,18,1,'ON41867','2024-03-30 22:51:43.577+07',3,0,0,65000,0,65000,'<p>Ghi chú đơn nhập hàng...</p>',NULL,2,1,'2024-03-30 22:52:04.718+07','2024-03-30 22:52:04.718+07',NULL),
	 (1,17,20,22,28,18,1,'ON12251','2024-02-27 23:10:43.693+07',3,0,0,150000,7500,0,'<p>Ghi chú đơn nhập hàng...</p>',NULL,2,1,'2024-02-27 23:11:20.688+07','2024-02-27 23:12:27.936+07',NULL),
	 (2,14,20,22,27,18,1,'ON57410','2024-03-30 22:52:41.431+07',12,0,0,1575000,75000,1000000,'<p>Ghi chú đơn nhập hàng...</p>',NULL,3,1,'2024-03-30 22:53:13.851+07','2024-03-30 22:55:09.058+07',NULL);
INSERT INTO public.orders ("customerId","orderStatusId","approvedStatusId","shippingStatusId","paymentStatusId","exportedInventoryStatusId","deliveryMethodId",code,"deliveryDate","quantityTotal","shippingFee",discount,"totalPrice","totalTaxPrice","debtAmount",note,"deliveryPartnerId","paymentMethodId","staffId","createdAt","updatedAt","deletedAt") VALUES
	 (1,16,21,22,28,19,1,'ON69866','2024-03-05 22:52:43.104+07',3,0,0,150000,7500,0,'<p>Ghi chú đơn nhập hàng...</p>',NULL,2,1,'2024-03-05 22:53:13.922+07','2024-03-05 22:53:33.661+07',NULL),
	 (3,14,20,22,26,18,1,'ON57785','2024-04-27 21:10:06.618+07',1,0,0,36000,0,0,'',NULL,NULL,1,'2024-04-27 21:11:53.559+07','2024-04-27 21:11:53.559+07',NULL),
	 (1,16,21,22,28,19,1,'ON69917','2024-03-14 20:37:30.844+07',3,0,0,150000,7500,0,'<p>Ghi chú đơn nhập hàng...</p>',NULL,2,1,'2024-03-14 20:38:14.358+07','2024-03-14 22:12:58.2+07',NULL),
	 (2,15,21,22,26,19,1,'ON57167','2024-03-31 13:51:50.452+07',3,0,0,150000,7500,150000,'<p>Ghi chú đơn nhập hàng...</p>',NULL,NULL,1,'2024-03-31 13:54:35.952+07','2024-03-31 13:54:50.8+07',NULL),
	 (1,16,21,22,28,19,1,'ON49597','2024-03-14 22:13:03.567+07',4,0,0,315000,15000,0,'<p>Ghi chú đơn nhập hàng...</p>',NULL,2,1,'2024-03-14 22:13:32.565+07','2024-03-14 22:13:46.42+07',NULL),
	 (1,14,20,22,26,18,1,'ON21700','2024-04-27 21:12:16.51+07',1,0,0,26000,0,0,'',NULL,NULL,1,'2024-04-27 21:16:14.676+07','2024-04-27 21:16:14.676+07',NULL),
	 (3,14,20,22,26,18,1,'ON88138','2024-04-28 15:25:40.507+07',14,80000,0,584000,0,504000,'',1,1,1,'2024-04-28 15:34:55.257+07','2024-04-28 15:34:55.257+07',NULL),
	 (1,16,21,22,28,19,1,'ON73949','2024-03-14 22:24:08.949+07',3,0,0,0,0,0,'<p>Ghi chú đơn nhập hàng...</p>',NULL,2,1,'2024-03-14 22:24:28.478+07','2024-03-14 22:25:42.776+07',NULL),
	 (1,17,21,22,26,18,1,'ON43380','2024-03-26 23:43:34.439+07',3,0,0,0,0,0,'<p>Ghi chú đơn nhập hàng...</p>',NULL,2,1,'2024-03-26 23:43:58.796+07','2024-03-26 23:44:37.424+07',NULL),
	 (2,14,20,22,26,18,1,'ON37620','2024-05-03 17:33:48.526+07',7,0,18000,279200,0,279200,'',NULL,NULL,1,'2024-05-03 17:42:53.97+07','2024-05-03 17:42:53.97+07',NULL);
INSERT INTO public.orders ("customerId","orderStatusId","approvedStatusId","shippingStatusId","paymentStatusId","exportedInventoryStatusId","deliveryMethodId",code,"deliveryDate","quantityTotal","shippingFee",discount,"totalPrice","totalTaxPrice","debtAmount",note,"deliveryPartnerId","paymentMethodId","staffId","createdAt","updatedAt","deletedAt") VALUES
	 (2,14,20,22,26,18,2,'ON49751','2024-05-04 08:46:00.58+07',4,0,0,104000,0,78000,'',NULL,NULL,1,'2024-05-04 08:46:31.875+07','2024-05-04 08:46:31.875+07',NULL),
	 (2,14,20,22,26,18,1,'ON19711','2024-05-04 13:27:09.547+07',1,0,20000,107200,7200,0,'',NULL,NULL,1,'2024-05-04 13:28:02.975+07','2024-05-04 13:28:02.975+07',NULL),
	 (3,15,21,22,26,19,1,'ON93986','2024-03-31 14:55:35.62+07',7,0,0,787500,37500,787500,'<p>Ghi chú đơn nhập hàng...</p>',NULL,NULL,1,'2024-03-31 14:56:02.06+07','2024-03-31 14:56:16.563+07',NULL),
	 (1,14,20,22,26,18,1,'ON15689','2024-05-04 13:29:50.162+07',1,0,0,127200,7200,0,'',NULL,NULL,1,'2024-05-04 13:34:46.944+07','2024-05-04 13:34:46.944+07',NULL),
	 (2,14,20,22,26,18,1,'ON03926','2024-05-04 13:50:22.67+07',1,0,0,70000,0,0,'',NULL,NULL,1,'2024-05-04 13:51:13.3+07','2024-05-04 13:51:13.3+07',NULL),
	 (2,14,20,22,26,18,1,'ON29049','2024-05-04 13:50:22.67+07',4,0,0,170000,0,100000,'',NULL,NULL,1,'2024-05-04 14:12:02.059+07','2024-05-04 14:12:02.059+07',NULL),
	 (3,15,21,22,27,19,1,'ON97242','2024-03-31 14:52:32.569+07',3,0,0,150000,7500,50000,'<p>Ghi chú đơn nhập hàng...</p>',NULL,2,1,'2024-03-31 14:52:50.919+07','2024-03-31 15:09:14.418+07',NULL),
	 (3,17,20,22,26,18,1,'ON19848','2024-04-02 21:53:38.337+07',3,0,0,65000,0,65000,'<p>Ghi chú đơn nhập hàng...</p>',NULL,NULL,1,'2024-04-02 21:54:00.705+07','2024-04-02 21:54:08.124+07',NULL),
	 (2,14,20,22,26,18,1,'ON76791','2024-04-02 21:54:09.394+07',3,0,0,150000,7500,150000,'<p>Ghi chú đơn nhập hàng...</p>',NULL,NULL,1,'2024-04-02 21:54:24.284+07','2024-04-02 21:54:24.284+07',NULL),
	 (2,14,20,22,26,18,1,'ON13752','2024-05-04 14:13:17.862+07',2,0,0,140000,0,0,'',NULL,NULL,1,'2024-05-04 14:13:31.292+07','2024-05-04 14:13:31.292+07',NULL);
INSERT INTO public.orders ("customerId","orderStatusId","approvedStatusId","shippingStatusId","paymentStatusId","exportedInventoryStatusId","deliveryMethodId",code,"deliveryDate","quantityTotal","shippingFee",discount,"totalPrice","totalTaxPrice","debtAmount",note,"deliveryPartnerId","paymentMethodId","staffId","createdAt","updatedAt","deletedAt") VALUES
	 (2,14,20,22,26,18,1,'ON08076','2024-05-04 14:53:22.687+07',1,0,0,70000,0,0,'',NULL,NULL,1,'2024-05-04 14:54:10.032+07','2024-05-04 14:54:10.032+07',NULL),
	 (3,14,20,22,27,18,1,'ON80768','2024-05-04 22:37:57.096+07',4,0,0,175000,5500,75000,'<p>Ghi chú đơn nhập hàng...</p>',NULL,NULL,1,'2024-05-04 22:38:20.703+07','2024-05-04 22:55:08.559+07',NULL),
	 (2,15,21,22,26,19,1,'ON83510','2024-05-04 15:00:03.16+07',2,0,20000,234400,14400,0,'',NULL,NULL,1,'2024-05-04 15:00:50.259+07','2024-05-04 15:11:38.824+07',NULL),
	 (3,14,20,22,26,18,2,'ON81083','2024-05-04 16:26:04.19+07',1,0,0,70000,0,0,'',NULL,NULL,1,'2024-05-04 16:52:02.631+07','2024-05-04 16:52:02.631+07',NULL),
	 (2,14,20,22,26,18,1,'ON81699','2024-05-04 16:57:47.929+07',1,0,0,127200,7200,0,'',NULL,NULL,1,'2024-05-04 16:59:05.959+07','2024-05-04 16:59:05.959+07',NULL),
	 (2,14,20,22,26,18,1,'ON43946','2024-05-04 17:00:46.613+07',1,0,0,70000,0,0,'',NULL,NULL,1,'2024-05-04 17:03:12.363+07','2024-05-04 17:03:12.363+07',NULL),
	 (2,14,20,22,26,18,1,'ON55014','2024-05-04 17:19:15.338+07',2,0,0,140000,0,70000,'',NULL,NULL,1,'2024-05-04 17:27:06.252+07','2024-05-04 17:27:06.252+07',NULL),
	 (2,14,20,22,26,18,1,'ON38016','2024-05-04 17:28:26.023+07',1,0,0,70000,0,0,'',NULL,NULL,1,'2024-05-04 17:28:57.483+07','2024-05-04 17:28:57.483+07',NULL),
	 (3,14,20,22,26,18,1,'ON80104','2024-05-04 22:27:23.954+07',4,0,0,175000,5500,175000,'<p>Ghi chú đơn nhập hàng...</p>',NULL,NULL,1,'2024-05-04 22:27:56.503+07','2024-05-04 22:27:56.503+07',NULL),
	 (2,14,20,22,26,18,1,'ON97507','2024-05-04 22:19:48.082+07',1,0,0,70000,0,0,'',NULL,NULL,1,'2024-05-05 00:44:49.441+07','2024-05-05 00:44:49.441+07',NULL);
INSERT INTO public.orders ("customerId","orderStatusId","approvedStatusId","shippingStatusId","paymentStatusId","exportedInventoryStatusId","deliveryMethodId",code,"deliveryDate","quantityTotal","shippingFee",discount,"totalPrice","totalTaxPrice","debtAmount",note,"deliveryPartnerId","paymentMethodId","staffId","createdAt","updatedAt","deletedAt") VALUES
	 (2,14,20,22,26,18,1,'ON49398','2024-05-05 00:45:07.721+07',1,0,0,70000,0,0,'',NULL,NULL,1,'2024-05-05 00:45:24.79+07','2024-05-05 00:45:24.79+07',NULL),
	 (2,14,20,22,26,18,1,'ON48403','2024-05-05 00:51:35.864+07',3,0,0,110000,5500,110000,'<p>Ghi chú đơn nhập hàng...</p>',NULL,NULL,1,'2024-05-05 00:52:02.699+07','2024-05-05 00:52:02.699+07',NULL),
	 (2,14,20,22,26,18,1,'ON82713','2024-05-05 01:03:22.096+07',1,0,0,70000,0,0,'',NULL,NULL,1,'2024-05-05 01:03:27.97+07','2024-05-05 01:03:27.97+07',NULL),
	 (1,14,20,22,26,18,1,'ON23866','2024-05-05 01:06:11.035+07',1,0,0,127200,7200,0,'',NULL,NULL,1,'2024-05-05 01:06:26.358+07','2024-05-05 01:06:26.358+07',NULL),
	 (2,14,20,22,26,18,1,'ON84093','2024-05-05 01:19:07.449+07',1,0,0,70000,0,70000,'',NULL,NULL,1,'2024-05-05 01:21:59.713+07','2024-05-05 01:21:59.713+07',NULL),
	 (2,14,20,22,26,18,1,'ON30729','2024-05-05 01:22:09.795+07',3,0,0,212200,7200,197200,'',NULL,NULL,1,'2024-05-05 01:22:24.288+07','2024-05-05 01:22:24.288+07',NULL),
	 (2,14,20,22,26,18,1,'ON20915','2024-05-05 01:31:43.126+07',5,0,0,685600,39600,367600,'',NULL,NULL,1,'2024-05-05 01:32:24.031+07','2024-05-05 01:32:24.031+07',NULL),
	 (3,14,20,22,27,18,2,'ON39035','2024-05-05 21:27:45.08+07',1,0,0,318000,18000,294000,'',NULL,3,1,'2024-05-05 22:02:16.384+07','2024-05-05 22:02:16.534+07',NULL),
	 (2,14,20,22,27,18,2,'ON11028','2024-05-05 22:05:28.913+07',1,0,0,318000,18000,305000,'',NULL,1,1,'2024-05-05 22:05:51.352+07','2024-05-05 22:05:51.498+07',NULL),
	 (2,14,20,22,27,18,1,'ON82999','2024-05-05 22:17:15.821+07',1,0,0,111300,6300,100000,'',NULL,1,1,'2024-05-05 22:17:40.119+07','2024-05-05 22:17:40.276+07',NULL);
INSERT INTO public.orders ("customerId","orderStatusId","approvedStatusId","shippingStatusId","paymentStatusId","exportedInventoryStatusId","deliveryMethodId",code,"deliveryDate","quantityTotal","shippingFee",discount,"totalPrice","totalTaxPrice","debtAmount",note,"deliveryPartnerId","paymentMethodId","staffId","createdAt","updatedAt","deletedAt") VALUES
	 (2,14,20,22,27,18,1,'ON72344','2024-05-05 22:17:15.821+07',4,0,0,85000,0,58700,'',NULL,1,1,'2024-05-05 22:22:54.196+07','2024-05-05 22:22:54.363+07',NULL),
	 (2,14,20,22,27,18,1,'ON14466','2024-05-06 00:23:21.558+07',1,0,0,111300,6300,110300,'',NULL,2,1,'2024-05-06 00:36:41.672+07','2024-05-06 00:36:41.933+07',NULL),
	 (2,15,21,22,27,18,1,'ON81340','2024-05-06 02:17:48.281+07',2,0,0,388000,18000,310000,'',NULL,2,1,'2024-05-06 02:18:25.604+07','2024-05-18 13:27:04.144+07',NULL),
	 (2,15,21,22,27,19,1,'ON31242','2024-05-06 00:23:21.558+07',1,0,0,111300,6300,110300,'',NULL,2,1,'2024-05-06 00:46:06.632+07','2024-05-18 13:27:24.347+07',NULL),
	 (2,14,20,22,27,18,1,'ON49784','2024-05-22 17:24:58.595+07',1,80000,0,398000,18000,288000,'',1,2,1,'2024-05-22 17:25:35.56+07','2024-05-22 17:25:35.675+07',NULL),
	 (2,15,21,22,26,19,1,'ON89564','2024-05-19 19:20:33.404+07',12,0,0,1260000,60000,1260000,'<p>Ghi chú đơn nhập hàng...</p>',NULL,NULL,1,'2024-05-19 19:21:01.556+07','2024-05-19 19:21:08+07',NULL),
	 (2,14,20,22,26,18,1,'ON73483','2024-05-19 20:38:05.297+07',10,0,0,1008000,48000,1008000,'<p>Ghi chú đơn nhập hàng...</p>',NULL,NULL,1,'2024-05-19 20:38:45.183+07','2024-05-19 20:38:45.183+07',NULL),
	 (1,15,21,22,26,19,1,'ON94502','2024-05-20 22:35:46.97+07',22,0,0,4560000,360000,4560000,'<p>Ghi chú đơn nhập hàng...</p>',NULL,NULL,1,'2024-05-20 22:36:45.433+07','2024-05-20 22:36:49.04+07',NULL),
	 (2,14,20,22,27,18,2,'ON41526','2024-05-21 23:52:14.119+07',1,80000,0,150000,0,20000,'',1,2,1,'2024-05-21 23:53:20.919+07','2024-05-21 23:53:21.045+07',NULL),
	 (2,14,20,22,27,18,2,'ON07207','2024-05-22 17:25:51.827+07',1,80000,0,398000,18000,298000,'',1,2,1,'2024-05-22 17:30:19.795+07','2024-05-22 17:30:19.978+07',NULL);
INSERT INTO public.orders ("customerId","orderStatusId","approvedStatusId","shippingStatusId","paymentStatusId","exportedInventoryStatusId","deliveryMethodId",code,"deliveryDate","quantityTotal","shippingFee",discount,"totalPrice","totalTaxPrice","debtAmount",note,"deliveryPartnerId","paymentMethodId","staffId","createdAt","updatedAt","deletedAt") VALUES
	 (3,14,20,22,27,18,1,'ON57966','2024-05-22 17:44:22.087+07',1,0,0,318000,18000,278000,'',NULL,2,1,'2024-05-22 17:44:54.329+07','2024-05-22 17:44:54.449+07',NULL),
	 (2,14,20,22,27,18,1,'ON63173','2024-05-22 17:45:15.384+07',1,80000,0,398000,18000,202000,'',1,2,1,'2024-05-22 17:47:29.783+07','2024-05-22 17:47:29.876+07',NULL),
	 (2,14,20,22,27,18,2,'ON29735','2024-05-22 17:47:51.439+07',1,80000,0,398000,18000,-202000,'',1,1,1,'2024-05-22 17:56:31.424+07','2024-05-22 17:56:31.539+07',NULL),
	 (2,14,20,22,28,18,1,'ON59844','2024-05-22 18:03:44.853+07',1,80000,0,398000,18000,0,'',1,2,1,'2024-05-22 18:04:14.272+07','2024-05-22 18:04:14.374+07',NULL),
	 (2,14,20,22,27,18,2,'ON11936','2024-05-22 21:58:34.329+07',1,0,0,318000,18000,314367,'',NULL,1,1,'2024-05-22 22:00:13.042+07','2024-05-22 22:00:13.168+07',NULL),
	 (2,14,20,22,27,18,1,'ON54448','2024-05-22 22:00:26.123+07',1,80000,0,398000,18000,300000,'',1,2,1,'2024-05-22 22:00:47.808+07','2024-05-22 22:00:47.923+07',NULL),
	 (2,14,20,22,28,18,1,'ON16272','2024-05-22 22:15:33.77+07',1,0,0,318000,18000,0,'',NULL,1,1,'2024-05-22 22:17:44.974+07','2024-05-22 22:17:45.051+07',NULL),
	 (2,14,20,22,28,18,2,'ON58795','2024-05-22 22:17:55.221+07',1,80000,0,398000,18000,0,'',1,1,1,'2024-05-22 22:22:35.041+07','2024-05-22 22:22:35.126+07',NULL),
	 (3,14,20,22,28,18,1,'ON78949','2024-05-22 22:22:52.613+07',1,80000,0,398000,18000,0,'',1,1,1,'2024-05-22 22:28:08.598+07','2024-05-22 22:28:08.693+07',NULL),
	 (2,14,20,22,27,18,1,'ON25518','2024-05-22 22:32:18.184+07',2,0,0,388000,18000,70000,'',NULL,2,1,'2024-05-22 22:35:14.089+07','2024-05-22 22:35:14.234+07',NULL);
INSERT INTO public.orders ("customerId","orderStatusId","approvedStatusId","shippingStatusId","paymentStatusId","exportedInventoryStatusId","deliveryMethodId",code,"deliveryDate","quantityTotal","shippingFee",discount,"totalPrice","totalTaxPrice","debtAmount",note,"deliveryPartnerId","paymentMethodId","staffId","createdAt","updatedAt","deletedAt") VALUES
	 (2,14,20,22,28,18,1,'ON08618','2024-05-22 22:37:37.219+07',1,80000,0,398000,18000,0,'',1,1,1,'2024-05-22 22:43:35.726+07','2024-05-22 22:43:35.84+07',NULL),
	 (2,14,20,22,26,18,1,'ON51798','2024-05-22 22:43:44.209+07',1,0,0,318000,18000,318000,'',NULL,NULL,1,'2024-05-22 22:44:04.512+07','2024-05-22 22:44:04.512+07',NULL),
	 (2,14,20,22,26,18,1,'ON01529','2024-05-22 22:44:29.241+07',1,0,0,318000,18000,318000,'',NULL,NULL,1,'2024-05-22 22:49:49.169+07','2024-05-22 22:49:49.169+07',NULL),
	 (2,14,20,22,26,18,1,'ON02261','2024-05-22 22:49:57.064+07',1,0,0,318000,18000,318000,'',NULL,NULL,1,'2024-05-22 22:51:02.836+07','2024-05-22 22:51:02.836+07',NULL),
	 (2,14,20,22,26,18,1,'ON08058','2024-05-22 22:51:09.652+07',1,0,0,318000,18000,318000,'',NULL,NULL,1,'2024-05-22 22:52:26.283+07','2024-05-22 22:52:26.283+07',NULL),
	 (2,14,20,22,28,18,1,'ON67737','2024-05-24 20:12:14.271+07',28,80000,0,8984000,504000,0,'',1,2,1,'2024-05-24 20:27:24.63+07','2024-05-24 20:27:24.681+07',NULL),
	 (1,15,21,24,26,19,2,'ON16022','2024-05-22 23:17:44.133+07',1,0,0,318000,18000,318000,'',NULL,NULL,1,'2024-05-22 23:18:46.983+07','2024-05-22 23:31:40.608+07',NULL),
	 (1,14,20,22,26,18,1,'ON17207','2024-05-22 23:32:34.037+07',1,80000,0,398000,18000,398000,'',1,NULL,1,'2024-05-22 23:33:44.684+07','2024-05-22 23:33:44.684+07',NULL),
	 (3,14,20,22,26,18,1,'ON84416','2024-05-24 17:46:24.892+07',1,80000,0,150000,0,150000,'',1,NULL,1,'2024-05-24 17:49:18.664+07','2024-05-24 17:49:18.664+07',NULL),
	 (3,14,20,22,26,18,1,'ON80226','2024-05-24 17:53:26.399+07',1,80000,0,150000,0,150000,'',1,NULL,1,'2024-05-24 17:54:14.487+07','2024-05-24 17:54:14.487+07',NULL);
INSERT INTO public.orders ("customerId","orderStatusId","approvedStatusId","shippingStatusId","paymentStatusId","exportedInventoryStatusId","deliveryMethodId",code,"deliveryDate","quantityTotal","shippingFee",discount,"totalPrice","totalTaxPrice","debtAmount",note,"deliveryPartnerId","paymentMethodId","staffId","createdAt","updatedAt","deletedAt") VALUES
	 (3,14,20,22,26,18,1,'ON77284','2024-05-24 17:55:12.408+07',1,80000,0,150000,0,150000,'',1,NULL,1,'2024-05-24 17:55:44.281+07','2024-05-24 17:55:44.281+07',NULL),
	 (2,14,20,22,26,18,1,'ON65705','2024-05-24 17:56:37.488+07',17,0,0,1190000,0,1190000,'',NULL,NULL,1,'2024-05-24 18:08:09.991+07','2024-05-24 18:08:09.991+07',NULL),
	 (2,14,20,22,28,18,1,'ON32498','2024-05-24 18:15:20.003+07',4,80000,0,360000,0,0,'',1,2,1,'2024-05-24 18:16:22.319+07','2024-05-24 18:16:22.405+07',NULL),
	 (3,14,20,22,28,18,1,'ON46789','2024-05-24 20:36:37.736+07',16,0,0,5088000,288000,0,'',NULL,2,1,'2024-05-24 20:37:40.741+07','2024-05-24 20:37:40.838+07',NULL);
INSERT INTO public.payment_methods ("name","key","createdAt","updatedAt","deletedAt") VALUES
	 ('Banking','banking','2024-02-25 20:50:39.159+07','2024-02-25 20:50:39.159+07',NULL),
	 ('COD','cod','2024-02-25 20:50:39.159+07','2024-02-25 20:50:39.159+07',NULL),
	 ('Cash','cash','2024-02-25 20:50:39.159+07','2024-02-25 20:50:39.159+07',NULL),
	 ('Card','card','2024-02-25 20:50:39.159+07','2024-02-25 20:50:39.159+07',NULL);
INSERT INTO public.person_group_types ("name","key","createdAt","updatedAt","deletedAt") VALUES
	 ('Staff','staff','2024-02-25 20:50:39.114+07','2024-02-25 20:50:39.114+07',NULL),
	 ('Customer','customer','2024-02-25 20:50:39.114+07','2024-02-25 20:50:39.114+07',NULL),
	 ('Supplier','supplier','2024-02-25 20:50:39.114+07','2024-02-25 20:50:39.114+07',NULL),
	 ('Delivery','delivery','2024-02-25 20:50:39.114+07','2024-02-25 20:50:39.114+07',NULL),
	 ('Other','other','2024-02-25 20:50:39.114+07','2024-02-25 20:50:39.114+07',NULL);
INSERT INTO public.product_units ("productId","name",quantity,"salePrice","isDefaultPrice","isActive","createdAt","updatedAt","deletedAt") VALUES
	 (26,'name',1.00,23333,false,true,'2024-04-14 18:16:43.326+07','2024-04-14 18:16:43.326+07',NULL),
	 (26,'name',2.00,46,false,true,'2024-04-14 18:16:43.326+07','2024-04-14 18:16:43.326+07',NULL),
	 (30,'name',1.00,85000,false,true,'2024-04-14 18:20:01.069+07','2024-04-14 18:20:01.069+07',NULL),
	 (32,'',1.00,855,false,true,'2024-04-14 18:23:48.209+07','2024-04-14 18:23:48.209+07',NULL),
	 (32,'',2.00,1710,false,true,'2024-04-14 18:23:48.209+07','2024-04-14 18:23:48.209+07',NULL),
	 (33,'cuộn',1.00,35,false,true,'2024-04-14 18:40:12.14+07','2024-04-14 18:40:12.14+07',NULL),
	 (34,NULL,NULL,NULL,false,true,'2024-04-14 18:43:54.275+07','2024-04-14 18:43:54.275+07',NULL),
	 (35,'cuộn',1.00,25,false,true,'2024-04-14 18:46:19.153+07','2024-04-14 18:46:19.153+07',NULL),
	 (35,'tấm',1.00,25,false,true,'2024-04-14 18:46:19.153+07','2024-04-14 18:46:19.153+07',NULL),
	 (35,'tấm',1.00,25,NULL,true,'2024-04-14 19:00:50.109+07','2024-04-14 19:00:50.109+07',NULL);
INSERT INTO public.product_units ("productId","name",quantity,"salePrice","isDefaultPrice","isActive","createdAt","updatedAt","deletedAt") VALUES
	 (35,'tấm',1.00,25,NULL,true,'2024-04-14 19:01:17.005+07','2024-04-14 19:01:17.005+07',NULL),
	 (35,'tấm',1.00,25,NULL,true,'2024-04-14 19:01:17.005+07','2024-04-14 19:01:17.005+07',NULL),
	 (36,'sdfs',1.00,3,false,true,'2024-04-14 19:02:02.985+07','2024-04-14 19:02:02.985+07',NULL),
	 (36,'3434',1.00,3,false,true,'2024-04-14 19:02:02.985+07','2024-04-14 19:02:02.985+07',NULL),
	 (37,'cuộn',1.00,0,false,true,'2024-04-14 19:20:24.074+07','2024-04-14 19:20:24.074+07',NULL),
	 (37,'Thiếc',1.00,25,false,true,'2024-04-14 19:20:24.074+07','2024-04-14 19:20:24.074+07',NULL),
	 (37,'Thiếc',1.00,25,NULL,true,'2024-04-14 19:20:30.755+07','2024-04-14 19:20:30.755+07',NULL),
	 (37,'cuộn',1.00,0,NULL,true,'2024-04-14 19:20:30.755+07','2024-04-14 19:20:30.755+07',NULL),
	 (37,'Thiếc',1.00,25,NULL,true,'2024-04-14 19:21:40.381+07','2024-04-14 19:21:40.381+07',NULL),
	 (37,'Thiếc',1.00,25,NULL,true,'2024-04-14 19:21:40.381+07','2024-04-14 19:21:40.381+07',NULL);
INSERT INTO public.product_units ("productId","name",quantity,"salePrice","isDefaultPrice","isActive","createdAt","updatedAt","deletedAt") VALUES
	 (37,'cuộn',1.00,0,NULL,true,'2024-04-14 19:21:40.381+07','2024-04-14 19:21:40.381+07',NULL),
	 (37,'cuộn',1.00,0,NULL,true,'2024-04-14 19:21:40.381+07','2024-04-14 19:21:40.381+07',NULL),
	 (37,'Thiếc',1.00,25,NULL,true,'2024-04-14 19:21:53.067+07','2024-04-14 19:21:53.067+07',NULL),
	 (37,'Thiếc',1.00,25,NULL,true,'2024-04-14 19:21:53.067+07','2024-04-14 19:21:53.067+07',NULL),
	 (37,'Thiếc',1.00,25,NULL,true,'2024-04-14 19:26:30.333+07','2024-04-14 19:26:30.333+07',NULL),
	 (37,'cuộn',1.00,0,NULL,true,'2024-04-14 19:26:30.333+07','2024-04-14 19:26:30.333+07',NULL),
	 (37,'cuộn',1.00,0,NULL,true,'2024-04-14 19:27:52.145+07','2024-04-14 19:27:52.144+07',NULL),
	 (38,'cuộn',1.00,10,false,true,'2024-04-14 19:31:54.276+07','2024-04-14 19:31:54.276+07','2024-04-14 19:51:24.522+07'),
	 (40,'2',1.00,25,false,true,'2024-04-14 19:56:46.933+07','2024-04-14 19:56:46.933+07',NULL),
	 (40,'4',1.00,25,false,true,'2024-04-14 19:56:46.933+07','2024-04-14 19:56:46.933+07','2024-04-14 19:56:52.324+07');
INSERT INTO public.product_units ("productId","name",quantity,"salePrice","isDefaultPrice","isActive","createdAt","updatedAt","deletedAt") VALUES
	 (40,'3',1.00,25,false,true,'2024-04-14 19:56:46.933+07','2024-04-14 19:56:46.933+07','2024-04-14 19:56:52.964+07'),
	 (40,'1',1.00,25,false,true,'2024-04-14 19:56:46.933+07','2024-04-14 19:56:46.933+07','2024-04-14 19:59:15.566+07'),
	 (41,'1',1.00,58,false,true,'2024-04-14 20:01:23.334+07','2024-04-14 20:01:23.334+07',NULL),
	 (41,'3',1.00,58,false,true,'2024-04-14 20:01:23.334+07','2024-04-14 20:01:23.334+07',NULL),
	 (41,'2',1.00,58,false,true,'2024-04-14 20:01:23.334+07','2024-04-14 20:01:23.334+07','2024-04-14 20:01:36.185+07'),
	 (41,'4',1.00,58,false,true,'2024-04-14 20:01:23.334+07','2024-04-14 20:01:23.334+07','2024-04-14 20:01:37.339+07'),
	 (42,'taams',1.00,25,false,true,'2024-04-14 20:04:55.019+07','2024-04-14 20:04:55.019+07',NULL),
	 (42,'cuộn',2.00,4,false,true,'2024-04-14 20:04:55.019+07','2024-04-14 20:04:55.019+07','2024-04-14 20:05:07.799+07'),
	 (43,'',2.00,500,false,true,'2024-04-15 00:37:25.33+07','2024-04-15 00:37:25.33+07',NULL),
	 (43,'',1.00,0,false,true,'2024-04-15 00:37:25.33+07','2024-04-15 00:37:25.33+07',NULL);
INSERT INTO public.product_units ("productId","name",quantity,"salePrice","isDefaultPrice","isActive","createdAt","updatedAt","deletedAt") VALUES
	 (43,'',1.00,3,false,true,'2024-04-15 00:37:25.33+07','2024-04-15 00:37:25.33+07',NULL),
	 (44,'mét',1.00,25,false,true,'2024-04-15 00:42:51.995+07','2024-04-15 00:42:51.995+07',NULL),
	 (NULL,'name',1.00,0,NULL,true,'2024-04-15 01:42:08.35+07','2024-04-15 01:42:08.35+07',NULL),
	 (NULL,'',1.00,36000,NULL,true,'2024-04-15 01:47:30.885+07','2024-04-15 01:47:30.885+07',NULL),
	 (45,'',1.00,36000,false,true,'2024-04-16 00:00:42.199+07','2024-04-16 00:00:42.199+07','2024-04-16 00:00:52.252+07'),
	 (45,'mét',2.00,3200,false,true,'2024-04-16 00:00:42.199+07','2024-04-16 00:00:42.199+07','2024-04-16 00:00:53.425+07'),
	 (45,'kg',1.00,36000,false,true,'2024-04-16 00:00:13.297+07','2024-04-16 00:00:13.295+07','2024-04-16 00:00:58.114+07'),
	 (45,'mét',2.00,3200,false,true,'2024-04-16 00:00:13.297+07','2024-04-16 00:00:13.295+07','2024-04-16 00:00:58.627+07'),
	 (45,'',1.00,36000,false,true,'2024-04-15 01:53:45.516+07','2024-04-15 01:53:45.516+07','2024-04-16 00:00:58.801+07'),
	 (45,'',1.00,36000,false,true,'2024-04-15 01:53:34.091+07','2024-04-15 01:53:34.091+07','2024-04-16 00:00:58.955+07');
INSERT INTO public.product_units ("productId","name",quantity,"salePrice","isDefaultPrice","isActive","createdAt","updatedAt","deletedAt") VALUES
	 (45,'',1.00,36000,NULL,true,'2024-04-15 01:48:20.572+07','2024-04-15 01:48:20.572+07','2024-04-16 00:00:59.264+07'),
	 (45,'',1.00,36000,false,true,'2024-04-16 00:00:42.199+07','2024-04-16 00:00:42.199+07','2024-04-16 00:01:00.907+07'),
	 (45,'',1.00,36000,false,true,'2024-04-16 00:00:42.199+07','2024-04-16 00:00:42.199+07','2024-04-16 00:01:02.366+07'),
	 (45,'',1.00,36000,false,true,'2024-04-16 00:00:42.199+07','2024-04-16 00:00:42.199+07','2024-04-16 00:01:03.299+07'),
	 (45,'kg',1.00,36000,false,true,'2024-04-16 00:00:42.199+07','2024-04-16 00:00:42.199+07','2024-04-16 00:01:04.129+07'),
	 (45,'',1.00,36000,false,true,'2024-04-16 00:00:42.199+07','2024-04-16 00:00:42.199+07','2024-04-16 00:01:05.26+07'),
	 (45,'cây',1.00,36000,false,true,'2024-04-16 00:02:22.922+07','2024-04-16 00:02:22.922+07','2024-04-16 00:04:38.679+07'),
	 (45,'',1.00,36000,false,true,'2024-04-16 00:02:22.922+07','2024-04-16 00:02:22.922+07','2024-04-16 00:04:39.221+07'),
	 (45,'mét',2.00,3200,false,true,'2024-04-16 00:02:22.922+07','2024-04-16 00:02:22.922+07','2024-04-16 00:04:41.287+07'),
	 (45,'mét',2.00,3200,false,true,'2024-04-16 00:00:42.199+07','2024-04-16 00:00:42.199+07','2024-04-16 00:04:41.784+07');
INSERT INTO public.product_units ("productId","name",quantity,"salePrice","isDefaultPrice","isActive","createdAt","updatedAt","deletedAt") VALUES
	 (45,'',1.00,36000,false,true,'2024-04-16 00:04:42.986+07','2024-04-16 00:04:42.985+07','2024-04-16 00:06:49.128+07'),
	 (45,'',1.00,36000,false,true,'2024-04-16 00:04:42.986+07','2024-04-16 00:04:42.985+07','2024-04-16 00:06:51.138+07'),
	 (45,'mét',2.00,3200,false,true,'2024-04-16 00:04:42.986+07','2024-04-16 00:04:42.985+07','2024-04-16 00:06:52.106+07'),
	 (45,'mét',2.00,3200,false,true,'2024-04-16 00:02:22.922+07','2024-04-16 00:02:22.922+07','2024-04-16 00:06:54.55+07'),
	 (45,'caay',1.00,36000,false,true,'2024-04-16 00:07:26.011+07','2024-04-16 00:07:26.011+07','2024-04-16 00:08:57.636+07'),
	 (45,'',1.00,36000,false,true,'2024-04-16 00:00:13.297+07','2024-04-16 00:00:13.295+07','2024-04-16 00:09:38.608+07'),
	 (45,'',1.00,36000,false,true,'2024-04-16 00:07:26.011+07','2024-04-16 00:07:26.011+07','2024-04-16 00:09:39.475+07'),
	 (45,'mét',2.00,3200,false,true,'2024-04-16 00:04:42.986+07','2024-04-16 00:04:42.985+07','2024-04-16 00:09:40.849+07'),
	 (45,'mét',2.00,3200,false,true,'2024-04-15 00:45:12.226+07','2024-04-15 00:45:12.226+07','2024-04-16 00:09:41.198+07'),
	 (45,'mét',2.00,3200,false,true,'2024-04-16 00:07:26.011+07','2024-04-16 00:10:12.932+07','2024-04-16 00:28:10.634+07');
INSERT INTO public.product_units ("productId","name",quantity,"salePrice","isDefaultPrice","isActive","createdAt","updatedAt","deletedAt") VALUES
	 (46,'',1.00,36500,false,true,'2024-04-16 14:51:01.207+07','2024-04-16 14:51:01.207+07','2024-04-16 14:51:13.763+07'),
	 (46,'cây',2.00,73000,false,true,'2024-04-16 14:51:01.207+07','2024-04-16 14:51:14.816+07','2024-04-16 14:51:20.699+07'),
	 (45,'',1.00,36000,false,true,'2024-04-16 00:28:33.949+07','2024-04-16 00:28:35.446+07','2024-04-16 00:28:41.943+07'),
	 (46,'',3.00,109500,false,true,'2024-04-16 14:51:24.82+07','2024-04-16 14:51:29.138+07',NULL),
	 (45,'caays',5.00,180000,false,true,'2024-04-16 00:00:13.297+07','2024-04-16 00:28:42.608+07',NULL),
	 (45,'mét',2.00,3200,false,true,'2024-04-16 00:07:26.011+07','2024-04-16 00:28:42.608+07',NULL),
	 (47,'rrrr',3.00,6999,false,true,'2024-04-16 15:22:42.641+07','2024-04-16 15:22:51.214+07',NULL),
	 (48,'',1.00,233,false,true,'2024-04-16 15:25:46.17+07','2024-04-16 15:44:18.973+07',NULL),
	 (49,'',1.00,0,false,true,'2024-04-16 15:46:46.859+07','2024-04-16 15:46:47.83+07',NULL),
	 (49,'',1.00,85555,false,true,'2024-04-16 15:46:45.708+07','2024-04-16 15:46:47.83+07',NULL);
INSERT INTO public.product_units ("productId","name",quantity,"salePrice","isDefaultPrice","isActive","createdAt","updatedAt","deletedAt") VALUES
	 (49,'',1.00,32,false,true,'2024-04-16 15:44:33.547+07','2024-04-16 15:46:47.83+07',NULL),
	 (50,'',1.00,26000,false,true,'2024-04-16 21:28:29.632+07','2024-04-16 21:28:55.404+07','2024-04-16 21:29:44.283+07'),
	 (50,'',1.00,26000,false,true,'2024-04-16 21:47:18.324+07','2024-04-16 21:47:18.324+07','2024-04-16 21:47:25.905+07'),
	 (50,'gơm',3.00,78000,false,true,'2024-04-16 21:24:58.509+07','2024-04-16 22:01:11.742+07',NULL),
	 (50,'rgg',3.00,78000,false,true,'2024-04-16 15:47:29.084+07','2024-04-16 21:43:43.91+07','2024-04-16 21:47:24.195+07'),
	 (50,'',1.00,26000,false,true,'2024-04-16 21:47:21.573+07','2024-04-16 21:47:21.573+07','2024-04-16 21:47:27.096+07'),
	 (50,'',2.00,52000,false,true,'2024-04-16 21:24:56.506+07','2024-04-16 21:43:43.91+07','2024-04-16 21:47:29.652+07'),
	 (52,'',1.00,6333,false,true,'2024-04-16 22:07:36.17+07','2024-04-16 22:07:36.17+07',NULL),
	 (52,'',2.00,12666,false,true,'2024-04-16 22:07:36.17+07','2024-04-16 22:07:36.17+07',NULL),
	 (50,'',23.00,598000,false,true,'2024-04-16 21:52:16.607+07','2024-04-16 22:01:11.742+07',NULL);
INSERT INTO public.product_units ("productId","name",quantity,"salePrice","isDefaultPrice","isActive","createdAt","updatedAt","deletedAt") VALUES
	 (53,'tấm',1.00,43200,false,true,'2024-04-16 22:16:42.27+07','2024-04-16 22:16:42.27+07',NULL),
	 (54,'',1.00,25000,false,true,'2024-04-16 22:18:17.744+07','2024-04-16 22:18:17.744+07','2024-04-16 22:18:33.761+07'),
	 (54,'cây',1.00,30000,false,true,'2024-04-16 22:18:06.581+07','2024-04-16 22:18:37.895+07',NULL),
	 (56,'mét',0.30,40800,false,true,'2024-05-04 08:57:40.017+07','2024-05-04 08:57:40.017+07',NULL),
	 (59,'mét',1.00,120000,false,true,'2024-05-04 09:00:32.149+07','2024-05-04 09:00:32.149+07',NULL),
	 (60,'mét',0.00,36000,false,true,'2024-05-04 09:03:12.454+07','2024-05-04 09:03:26.115+07',NULL),
	 (61,'mét',1.00,15000,false,true,'2024-05-04 09:04:17.061+07','2024-05-04 09:04:53.836+07',NULL);
INSERT INTO public.products ("categoryId","brandId",sku,barcode,"name",description,"costPrice","salePrice","wholesalePrice","inventoryQuantity","standardUnit","isInventory",weight,"weightUnitId",width,length,"sizeUnitId","isActive","createdAt","updatedAt","deletedAt","isConsistOfSalePrice","inputTaxId","outputTaxId") VALUES
	 (NULL,NULL,'PVN71021','PVN87851','mm','<p>Mô tả sản phẩm...</p>',0,0,0,0.00,'m',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-13 19:29:26.293+07','2024-04-13 19:29:26.293+07','2024-04-13 19:29:58.953+07',false,NULL,NULL),
	 (NULL,NULL,'PVN32075','PVN89077','lo','<p>Mô tả sản phẩm...</p>',0,0,0,0.00,'',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-13 19:28:53.828+07','2024-04-13 19:28:53.828+07','2024-04-13 19:30:02.358+07',false,NULL,NULL),
	 (NULL,NULL,'PVN54559','PVN43474','zxc','<p>Mô tả sản phẩm...</p>',0,0,0,0.00,'d',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-09 01:06:03.016+07','2024-04-09 01:06:03.016+07','2024-04-13 19:30:04.285+07',false,NULL,NULL),
	 (NULL,NULL,'PVN96300','PVN50930','ee','<p>Mô tả sản phẩm...</p>',0,0,0,0.00,'met',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-14 17:19:13.344+07','2024-04-14 17:19:13.344+07','2024-04-14 17:20:02.353+07',false,NULL,NULL),
	 (NULL,NULL,'PVN52428','PVN96549','65','<p>Mô tả sản phẩm...</p>',0,855,0,0.00,'358',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-14 17:16:54.143+07','2024-04-14 17:16:54.143+07','2024-04-14 17:20:05.001+07',false,NULL,NULL),
	 (NULL,NULL,'PVN13833','PVN01739','long','<p>Mô tả sản phẩm...</p>',0,855,0,0.00,'d',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-14 17:16:15.35+07','2024-04-14 17:16:15.35+07','2024-04-14 17:20:08.241+07',false,NULL,NULL),
	 (NULL,NULL,'PVN86697','PVN62270','ol','<p>Mô tả sản phẩm...</p>',0,0,0,0.00,'85',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-13 19:33:37.953+07','2024-04-13 19:33:37.953+07','2024-04-14 17:20:09.346+07',false,NULL,NULL),
	 (NULL,NULL,'PVN22946','PVN26763','pol','<p>Mô tả sản phẩm...</p>',0,0,0,0.00,'mm',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-13 19:31:25.105+07','2024-04-13 19:31:25.105+07','2024-04-14 17:20:10.483+07',false,NULL,NULL),
	 (NULL,NULL,'PVN95980','PVN87639','','<p>Mô tả sản phẩm...</p>',0,0,0,0.00,'',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-14 17:21:03.08+07','2024-04-14 17:21:03.08+07','2024-04-14 17:21:11.664+07',false,NULL,NULL),
	 (NULL,NULL,'PVN33968','PVN71735','ton','<p>Mô tả sản phẩm...</p>',0,0,0,0.00,'',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-14 17:20:41.065+07','2024-04-14 17:20:41.065+07','2024-04-14 17:21:13.36+07',false,NULL,NULL);
INSERT INTO public.products ("categoryId","brandId",sku,barcode,"name",description,"costPrice","salePrice","wholesalePrice","inventoryQuantity","standardUnit","isInventory",weight,"weightUnitId",width,length,"sizeUnitId","isActive","createdAt","updatedAt","deletedAt","isConsistOfSalePrice","inputTaxId","outputTaxId") VALUES
	 (NULL,NULL,'PVN49480','PVN68016','adsad','<p>Mô tả sản phẩm...</p>',0,855,0,0.00,'mets',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-14 18:23:48.2+07','2024-04-14 18:23:48.2+07','2024-04-14 18:29:22.614+07',false,NULL,NULL),
	 (NULL,NULL,'PVN29206','PVN83228','ddd','<p>Mô tả sản phẩm...</p>',0,95222,0,0.00,'mets',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-14 18:23:27.267+07','2024-04-14 18:23:27.267+07','2024-04-14 18:29:24.074+07',false,NULL,NULL),
	 (NULL,NULL,'PVN49778','PVN44143','name','<p>Mô tả sản phẩm...</p>',0,0,0,0.00,'mets',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-14 18:20:01.064+07','2024-04-14 18:20:01.064+07','2024-04-14 18:29:25.618+07',false,NULL,NULL),
	 (NULL,NULL,'PVN47469','PVN29155','dd','<p>Mô tả sản phẩm...</p>',0,1263025230,0,0.00,'mét',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-14 18:16:43.308+07','2024-04-14 18:16:43.308+07','2024-04-14 18:29:27.126+07',false,NULL,NULL),
	 (NULL,NULL,'PVN25054','PVN50789','dd','<p>Mô tả sản phẩm...</p>',0,1263025230,0,0.00,'mét',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-14 18:09:17.086+07','2024-04-14 18:09:17.086+07','2024-04-14 18:29:28.582+07',false,NULL,NULL),
	 (NULL,NULL,'PVN00919','PVN53701','dd','<p>Mô tả sản phẩm...</p>',0,1263025230,0,0.00,'mét',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-14 17:43:15.48+07','2024-04-14 17:43:15.48+07','2024-04-14 18:29:31.198+07',false,NULL,NULL),
	 (NULL,NULL,'PVN63380','PVN57605','','<p>Mô tả sản phẩm...</p>',0,0,0,0.00,'mét',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-14 17:38:03.905+07','2024-04-14 17:38:03.905+07','2024-04-14 18:29:32.997+07',false,NULL,NULL),
	 (NULL,NULL,'PVN45038','PVN80184','33','<p>Mô tả sản phẩm...</p>',0,0,0,0.00,'mét',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-14 17:36:07.265+07','2024-04-14 17:36:07.265+07','2024-04-14 18:29:34.654+07',false,NULL,NULL),
	 (NULL,NULL,'PVN05632','PVN88528','','<p>Mô tả sản phẩm...</p>',0,0,0,0.00,'',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-14 17:34:00.248+07','2024-04-14 17:34:00.248+07','2024-04-14 18:29:36.138+07',false,NULL,NULL),
	 (NULL,NULL,'PVN60633','PVN29461','','<p>Mô tả sản phẩm...</p>',0,0,0,0.00,'dd',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-14 17:32:58.975+07','2024-04-14 17:32:58.975+07','2024-04-14 18:29:37.599+07',false,NULL,NULL);
INSERT INTO public.products ("categoryId","brandId",sku,barcode,"name",description,"costPrice","salePrice","wholesalePrice","inventoryQuantity","standardUnit","isInventory",weight,"weightUnitId",width,length,"sizeUnitId","isActive","createdAt","updatedAt","deletedAt","isConsistOfSalePrice","inputTaxId","outputTaxId") VALUES
	 (NULL,NULL,'PVN62696','PVN95292','dd','<p>Mô tả sản phẩm...</p>',0,0,0,0.00,'d',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-14 17:32:50.547+07','2024-04-14 17:32:50.547+07','2024-04-14 18:29:39.081+07',false,NULL,NULL),
	 (NULL,NULL,'PVN32418','PVN63191','John Doe Long','<p>Mô tả sản phẩm...</p>',0,0,0,0.00,'',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-14 17:24:24.399+07','2024-04-14 17:24:24.399+07','2024-04-14 18:29:41.592+07',false,NULL,NULL),
	 (NULL,NULL,'PVN51375','PVN90265','','<p>Mô tả sản phẩm...</p>',0,0,0,0.00,'',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-14 17:23:40.394+07','2024-04-14 17:23:40.394+07','2024-04-14 18:29:43.651+07',false,NULL,NULL),
	 (NULL,NULL,'PVN11633','PVN77498','wewe','<p>Mô tả sản phẩm...</p>',0,0,0,0.00,'',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-14 17:23:35.712+07','2024-04-14 17:23:35.712+07','2024-04-14 18:29:45.213+07',false,NULL,NULL),
	 (NULL,NULL,'PVN70447','PVN36243','Trần Đức Long','<p>Mô tả sản phẩm...</p>',0,0,0,0.00,'',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-14 17:22:11.583+07','2024-04-14 17:22:11.583+07','2024-04-14 18:29:46.644+07',false,NULL,NULL),
	 (NULL,NULL,'PVN06482','PVN22855','Trần Đức Long','<p>Mô tả sản phẩm...</p>',0,0,0,0.00,'',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-14 17:21:21.862+07','2024-04-14 17:21:21.862+07','2024-04-14 18:29:48.054+07',false,NULL,NULL),
	 (NULL,NULL,'PVN20374','PVN35342','Tôn 2D','<p>Mô tả sản phẩm...</p>',0,25000,0,0.00,'Mét',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-14 18:43:54.248+07','2024-04-14 18:43:54.248+07','2024-04-14 18:45:57.236+07',false,NULL,NULL),
	 (NULL,NULL,'PVN85532','PVN77391','tôn 3D','<p>Mô tả sản phẩm...</p>',0,35000,0,0.00,'mét',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-14 18:40:12.097+07','2024-04-14 18:40:12.097+07','2024-04-14 18:45:58.523+07',false,NULL,NULL),
	 (NULL,NULL,'PVN77133','PVN29168','Tôn 4D5','<p>Mô tả sản phẩm...</p>',0,0,0,0.00,'mét',false,NULL,2,1.00,1.20,1,true,'2024-04-06 21:47:21.686+07','2024-04-06 21:47:21.686+07','2024-05-04 08:53:39.997+07',false,NULL,NULL),
	 (NULL,NULL,'PVN57411','PVN75510','gfgdfg','<p>Mô tả sản phẩm...</p>',0,0,0,0.00,'mets',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-14 19:02:02.966+07','2024-04-14 19:02:02.966+07','2024-04-15 00:42:18.999+07',false,NULL,NULL);
INSERT INTO public.products ("categoryId","brandId",sku,barcode,"name",description,"costPrice","salePrice","wholesalePrice","inventoryQuantity","standardUnit","isInventory",weight,"weightUnitId",width,length,"sizeUnitId","isActive","createdAt","updatedAt","deletedAt","isConsistOfSalePrice","inputTaxId","outputTaxId") VALUES
	 (NULL,NULL,'PVN20723','PVN29910','ton','<p>Mô tả sản phẩm...</p>',0,25000,0,0.00,'mét',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-14 19:56:46.927+07','2024-04-14 19:56:53.805+07','2024-04-15 00:42:11.401+07',false,NULL,NULL),
	 (NULL,NULL,'PVN86102','PVN98633','ton','<p>Mô tả sản phẩm...</p>',0,25000,0,0.00,'mét',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-14 19:54:40.119+07','2024-04-14 19:54:40.119+07','2024-04-15 00:42:13.093+07',false,NULL,NULL),
	 (NULL,NULL,'PVN92366','PVN90277','fgg','<p>Mô tả sản phẩm...</p>',0,250000,0,0.00,'mét',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-15 00:37:25.318+07','2024-04-15 00:37:25.318+07','2024-04-15 00:42:00.545+07',false,NULL,NULL),
	 (NULL,NULL,'PVN91994','PVN04380','sắt','<p>Mô tả sản phẩm...</p>',0,25000,0,0.00,'mét',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-14 20:04:54.991+07','2024-04-14 20:05:28.047+07','2024-04-15 00:42:05.464+07',false,NULL,NULL),
	 (NULL,NULL,'PVN50201','PVN47978','ton','<p>Mô tả sản phẩm...</p>',0,58000,0,0.00,'mét',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-14 20:01:23.319+07','2024-04-14 20:01:38.538+07','2024-04-15 00:42:09.422+07',false,NULL,NULL),
	 (NULL,NULL,'PVN65576','PVN65051','ton','<p>Mô tả sản phẩm...</p>',0,85000,0,0.00,'mét',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-14 19:31:54.253+07','2024-04-14 19:31:54.253+07','2024-04-15 00:42:14.771+07',false,NULL,NULL),
	 (NULL,NULL,'PVN57870','PVN70371','sdsd','<p>Mô tả sản phẩm...</p>',0,25000,0,0.00,'mét',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-14 19:20:24.052+07','2024-04-14 19:27:52.173+07','2024-04-15 00:42:20.826+07',false,NULL,NULL),
	 (NULL,NULL,'PVN33136','PVN97887','Sắt 40','<p>Mô tả sản phẩm...</p>',0,250000,0,0.00,'cây',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-15 00:42:51.988+07','2024-04-15 00:42:51.988+07','2024-04-15 00:45:21.325+07',false,NULL,NULL),
	 (NULL,NULL,'PVN32281','PVN95516','Tôn 3D5','<p>Mô tả sản phẩm...</p>',0,25000,0,0.00,'mét',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-14 18:46:19.138+07','2024-04-14 19:01:17.033+07','2024-05-04 08:53:36.189+07',false,NULL,NULL),
	 (NULL,NULL,'PVN83877','PVN28288','Vuông 3','<p>Mô tả sản phẩm...</p>',0,36000,0,0.00,'cây',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-15 00:45:12.212+07','2024-04-16 00:28:42.599+07','2024-05-04 08:53:34.604+07',false,NULL,NULL);
INSERT INTO public.products ("categoryId","brandId",sku,barcode,"name",description,"costPrice","salePrice","wholesalePrice","inventoryQuantity","standardUnit","isInventory",weight,"weightUnitId",width,length,"sizeUnitId","isActive","createdAt","updatedAt","deletedAt","isConsistOfSalePrice","inputTaxId","outputTaxId") VALUES
	 (NULL,NULL,'PVN50731','PVN47432','tôn','<p>Mô tả sản phẩm...</p>',0,36500,0,0.00,'mté',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-16 14:51:01.183+07','2024-04-16 14:51:29.129+07','2024-05-04 08:53:31.757+07',false,NULL,NULL),
	 (NULL,NULL,'PVN82499','PVN42110 ','Tôn','<p>Mô tả sản phẩm...</p>',65000,78000,70000,23.00,'',false,1500.00,2,1.20,1200.00,1,true,'2024-03-14 20:23:43.282+07','2024-03-31 14:51:29.705+07','2024-05-04 08:53:42.091+07',false,NULL,NULL),
	 (NULL,NULL,'PVN41181','PVN11619','233','<p>Mô tả sản phẩm...</p>',0,0,0,0.00,'d',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-16 15:25:46.161+07','2024-04-16 15:44:18.947+07','2024-05-04 08:53:28.409+07',false,NULL,NULL),
	 (NULL,NULL,'PVN21318','PVN48091','asds','<p>Mô tả sản phẩm...</p>',0,0,0,0.00,'sd',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-16 15:44:33.538+07','2024-04-16 15:46:47.811+07','2024-05-04 08:53:25.743+07',false,NULL,NULL),
	 (1,1,'PVN86671','PVN47644','Sắt 30x30','<p>Mô tả sản phẩm...</p>',150000,260000,0,62.00,'',false,NULL,NULL,1.20,1200.00,1,true,'2024-02-25 20:53:34.35+07','2024-05-19 16:22:59.178+07',NULL,true,1,2),
	 (NULL,NULL,'PVN66116','PVN88994','dfgfd','<p>Mô tả sản phẩm...</p>',0,0,0,0.00,'',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-16 22:22:38.861+07','2024-04-16 22:22:38.861+07','2024-04-16 22:22:47.327+07',false,NULL,NULL),
	 (NULL,NULL,'PVN84201','PVN01960','Tôn 4D','<p>Mô tả sản phẩm...</p>',0,25000,0,0.00,'mét',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-16 22:18:06.562+07','2024-04-16 22:18:37.858+07','2024-05-04 08:53:15.246+07',false,NULL,NULL),
	 (NULL,NULL,'PVN65671','PVN65156','tôn','<p>Mô tả sản phẩm...</p>',0,36000,0,0.00,'mét',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-16 22:16:42.251+07','2024-04-16 22:16:42.251+07','2024-05-04 08:53:16.887+07',false,NULL,NULL),
	 (NULL,NULL,'PVN22316','PVN75216','long','<p>Mô tả sản phẩm...</p>',0,6333,0,0.00,'mét',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-16 22:07:36.152+07','2024-04-16 22:07:36.152+07','2024-05-04 08:53:18.328+07',false,NULL,NULL),
	 (NULL,NULL,'PVN06602','PVN35261','long','<p>Mô tả sản phẩm...</p>',0,356666,0,0.00,'mét',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-16 22:07:16.967+07','2024-04-16 22:07:16.967+07','2024-05-04 08:53:19.947+07',false,NULL,NULL);
INSERT INTO public.products ("categoryId","brandId",sku,barcode,"name",description,"costPrice","salePrice","wholesalePrice","inventoryQuantity","standardUnit","isInventory",weight,"weightUnitId",width,length,"sizeUnitId","isActive","createdAt","updatedAt","deletedAt","isConsistOfSalePrice","inputTaxId","outputTaxId") VALUES
	 (NULL,NULL,'PVN89920','PVN35317','de','<p>Mô tả sản phẩm...</p>',0,26000,0,0.00,'km',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-16 15:47:29.078+07','2024-04-16 22:01:11.72+07','2024-05-04 08:53:22.509+07',false,NULL,NULL),
	 (NULL,NULL,'PVN42413','PVN81284','Trần Đức Long','<p>Mô tả sản phẩm...</p>',0,302,0,0.00,'d',false,NULL,NULL,NULL,NULL,NULL,true,'2024-04-16 15:22:42.619+07','2024-04-16 15:22:51.199+07','2024-05-04 08:53:30.09+07',false,NULL,NULL),
	 (1,1,'PVN65116','PVN25877','Sắt 30x60','<p>Mô tả sản phẩm...</p>',0,136000,0,60.00,'cây',false,NULL,NULL,NULL,NULL,NULL,true,'2024-05-04 08:57:40+07','2024-05-04 08:57:40+07',NULL,false,1,2),
	 (2,1,'PVN80765','PVN71054','Tôn Xanh 3D5 HS','<p>Mô tả sản phẩm...</p>',0,100000,0,1000.00,'mét',false,NULL,NULL,NULL,NULL,NULL,true,'2024-05-04 08:58:18.304+07','2024-05-04 08:59:32.676+07',NULL,false,3,2),
	 (1,1,'PVN92080','PVN35976','Sắt 20x40 HS','<p>Mô tả sản phẩm...</p>',65000,70000,0,0.00,'cây',false,NULL,NULL,NULL,NULL,NULL,true,'2024-05-04 09:04:17.054+07','2024-05-04 09:04:53.833+07',NULL,false,NULL,NULL),
	 (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,42.00,NULL,false,NULL,NULL,NULL,NULL,NULL,true,'2024-05-22 23:18:47.088+07','2024-05-22 23:18:47.088+07',NULL,false,NULL,NULL),
	 (1,1,'PVN63399','PVN25066','Sắt 40x40 HS','<p>Mô tả sản phẩm...</p>',110000,120000,0,103.00,'cây',false,NULL,NULL,NULL,NULL,NULL,true,'2024-05-04 09:03:12.449+07','2024-05-22 23:29:11.402+07',NULL,true,1,2),
	 (2,1,'PVN55460','PVN40016','Tôn đỏ 3D5 HS','<p>Mô tả sản phẩm...</p>',0,105000,0,1199.00,'mét',false,NULL,NULL,NULL,NULL,NULL,true,'2024-05-04 08:58:46.634+07','2024-05-18 13:27:24.337+07',NULL,false,1,2),
	 (2,1,'PVN27789','PVN54105','Tôn Sáng 3m','<p>Mô tả sản phẩm...</p>',250000,300000,0,43.00,'Tấm',false,NULL,NULL,NULL,NULL,NULL,true,'2024-05-04 09:00:32.126+07','2024-05-22 23:32:18.638+07',NULL,false,3,2),
	 (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,42.00,NULL,false,NULL,NULL,NULL,NULL,NULL,true,'2024-05-22 23:33:44.755+07','2024-05-22 23:33:44.755+07',NULL,false,NULL,NULL);
INSERT INTO public.provinces ("name","createdAt","updatedAt","deletedAt",code) VALUES
	 ('Hồ Chí Minh',NULL,NULL,NULL,'SG'),
	 ('Hà Nội',NULL,NULL,NULL,'HN'),
	 ('Đà Nẵng',NULL,NULL,NULL,'DDN'),
	 ('Bình Dương',NULL,NULL,NULL,'BD'),
	 ('Đồng Nai',NULL,NULL,NULL,'DNA'),
	 ('Khánh Hòa',NULL,NULL,NULL,'KH'),
	 ('Hải Phòng',NULL,NULL,NULL,'HP'),
	 ('Long An',NULL,NULL,NULL,'LA'),
	 ('Quảng Nam',NULL,NULL,NULL,'QNA'),
	 ('Bà Rịa Vũng Tàu',NULL,NULL,NULL,'VT');
INSERT INTO public.provinces ("name","createdAt","updatedAt","deletedAt",code) VALUES
	 ('Đắk Lắk',NULL,NULL,NULL,'DDL'),
	 ('Cần Thơ',NULL,NULL,NULL,'CT'),
	 ('Bình Thuận  ',NULL,NULL,NULL,'BTH'),
	 ('Lâm Đồng',NULL,NULL,NULL,'LDD'),
	 ('Thừa Thiên Huế',NULL,NULL,NULL,'TTH'),
	 ('Kiên Giang',NULL,NULL,NULL,'KG'),
	 ('Bắc Ninh',NULL,NULL,NULL,'BN'),
	 ('Quảng Ninh',NULL,NULL,NULL,'QNI'),
	 ('Thanh Hóa',NULL,NULL,NULL,'TH'),
	 ('Nghệ An',NULL,NULL,NULL,'NA');
INSERT INTO public.provinces ("name","createdAt","updatedAt","deletedAt",code) VALUES
	 ('Hải Dương',NULL,NULL,NULL,'HD'),
	 ('Gia Lai',NULL,NULL,NULL,'GL'),
	 ('Bình Phước',NULL,NULL,NULL,'BP'),
	 ('Hưng Yên',NULL,NULL,NULL,'HY'),
	 ('Bình Định',NULL,NULL,NULL,'BDD'),
	 ('Tiền Giang',NULL,NULL,NULL,'TG'),
	 ('Thái Bình',NULL,NULL,NULL,'TB'),
	 ('Bắc Giang',NULL,NULL,NULL,'BG'),
	 ('Hòa Bình',NULL,NULL,NULL,'HB'),
	 ('An Giang',NULL,NULL,NULL,'AG');
INSERT INTO public.provinces ("name","createdAt","updatedAt","deletedAt",code) VALUES
	 ('Vĩnh Phúc',NULL,NULL,NULL,'VP'),
	 ('Tây Ninh',NULL,NULL,NULL,'TNI'),
	 ('Thái Nguyên',NULL,NULL,NULL,'TN'),
	 ('Lào Cai',NULL,NULL,NULL,'LCA'),
	 ('Nam Định',NULL,NULL,NULL,'NDD'),
	 ('Quảng Ngãi',NULL,NULL,NULL,'QNG'),
	 ('Bến Tre',NULL,NULL,NULL,'BTR'),
	 ('Đắk Nông',NULL,NULL,NULL,'DNO'),
	 ('Cà Mau',NULL,NULL,NULL,'CM'),
	 ('Vĩnh Long',NULL,NULL,NULL,'VL');
INSERT INTO public.provinces ("name","createdAt","updatedAt","deletedAt",code) VALUES
	 ('Ninh Bình',NULL,NULL,NULL,'NB'),
	 ('Phú Thọ',NULL,NULL,NULL,'PT'),
	 ('Ninh Thuận',NULL,NULL,NULL,'NT'),
	 ('Phú Yên',NULL,NULL,NULL,'PY'),
	 ('Hà Nam',NULL,NULL,NULL,'HNA'),
	 ('Hà Tĩnh',NULL,NULL,NULL,'HT'),
	 ('Đồng Tháp',NULL,NULL,NULL,'DDT'),
	 ('Sóc Trăng',NULL,NULL,NULL,'ST'),
	 ('Kon Tum',NULL,NULL,NULL,'KT'),
	 ('Quảng Bình',NULL,NULL,NULL,'QB');
INSERT INTO public.provinces ("name","createdAt","updatedAt","deletedAt",code) VALUES
	 ('Quảng Trị',NULL,NULL,NULL,'QT'),
	 ('Trà Vinh',NULL,NULL,NULL,'TV'),
	 ('Hậu Giang',NULL,NULL,NULL,'HGI'),
	 ('Sơn La',NULL,NULL,NULL,'SL'),
	 ('Bạc Liêu',NULL,NULL,NULL,'BL'),
	 ('Yên Bái',NULL,NULL,NULL,'YB'),
	 ('Tuyên Quang',NULL,NULL,NULL,'TQ'),
	 ('Điện Biên',NULL,NULL,NULL,'DDB'),
	 ('Lai Châu',NULL,NULL,NULL,'LCH'),
	 ('Lạng Sơn',NULL,NULL,NULL,'LS');
INSERT INTO public.provinces ("name","createdAt","updatedAt","deletedAt",code) VALUES
	 ('Hà Giang',NULL,NULL,NULL,'HG'),
	 ('Bắc Kạn',NULL,NULL,NULL,'BK'),
	 ('Cao Bằng',NULL,NULL,NULL,'CB');
INSERT INTO public.purchase_order_payments ("purchaseOrderId",amount,"paidDate","paymentMethodId","createdAt","updatedAt","deletedAt") VALUES
	 (1,3150000,'2024-02-25 20:55:45.069+07',1,'2024-02-25 20:55:54.915+07','2024-02-25 20:55:54.915+07',NULL),
	 (3,3150000,'2024-03-30 14:15:40.872+07',2,'2024-03-30 14:15:50.394+07','2024-03-30 14:15:50.394+07',NULL);
INSERT INTO public.purchase_order_product_items ("purchaseOrderId","productId",quantity,price,discount,"totalPrice","createdAt","updatedAt","deletedAt") VALUES
	 (1,1,20,150000,0,3150000,'2024-02-25 20:55:41.447+07','2024-02-25 20:55:41.447+07',NULL),
	 (2,1,20,150000,0,3150000,'2024-02-25 21:05:34.952+07','2024-02-25 21:05:34.952+07',NULL),
	 (3,1,20,150000,0,3150000,'2024-03-30 14:15:37.23+07','2024-03-30 14:15:37.23+07',NULL),
	 (4,2,1,65000,0,65000,'2024-04-06 14:28:42.306+07','2024-04-06 14:28:42.306+07',NULL),
	 (5,1,1,150000,0,150000,'2024-04-06 15:44:20.273+07','2024-04-06 15:44:20.273+07',NULL);
INSERT INTO public.purchase_orders ("supplierId","staffId",code,"deliveredDate",note,"quantityTotal","totalPrice",discount,"totalTaxPrice","debtAmount","importDate","paymentStatusId","importStatusId","createdAt","updatedAt","deletedAt","voucherTypeId","orderSupplierId") VALUES
	 (1,1,'PON00868','2024-02-25 20:55:15.024+07','<p>Ghi chú đơn nhập hàng...</p>',20,3150000,0,150000,0,'2024-02-25 20:55:58.326+07',3,5,'2024-02-25 20:55:41.428+07','2024-02-25 20:55:58.327+07',NULL,3,NULL),
	 (1,1,'PON88991','2024-02-25 21:05:31.601+07','<p>Ghi chú đơn nhập hàng...</p>',20,3150000,0,150000,3150000,'2024-02-25 21:05:34.997+07',1,5,'2024-02-25 21:05:34.946+07','2024-02-25 21:05:35+07',NULL,3,1),
	 (1,1,'PON75296','2024-03-30 14:15:20.39+07','<p>Ghi chú đơn nhập hàng...</p>',20,3150000,0,150000,0,'2024-03-30 14:15:39.315+07',3,5,'2024-03-30 14:15:37.188+07','2024-03-30 14:15:50.409+07',NULL,3,NULL),
	 (1,1,'PON29953','2024-04-06 14:28:23.771+07','<p>Ghi chú đơn nhập hàng...</p>',1,65000,0,0,65000,'2024-05-18 22:50:20.33+07',1,5,'2024-04-06 14:28:42.263+07','2024-05-18 22:50:20.338+07',NULL,3,NULL),
	 (1,1,'PON51866','2024-04-06 14:29:34.669+07','<p>Ghi chú đơn nhập hàng...</p>',1,150000,0,7500,150000,'2024-05-22 23:25:06.443+07',1,5,'2024-04-06 15:44:20.231+07','2024-05-22 23:25:06.453+07',NULL,3,NULL);
INSERT INTO public.refresh_tokens ("userId","token","createdAt","updatedAt","deletedAt") VALUES
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcwODg2OTE0NCwiZXhwIjoxNzA5NDczOTQ0fQ.dHMH_ywnS7MwrDP-ABhGyvbziB7ktpBISi0wdbdOVyY','2024-02-25 20:52:24.529+07','2024-02-25 20:52:24.529+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcwODg2OTE2MCwiZXhwIjoxNzA5NDczOTYwfQ.juc-uXFmZ2huBGnVhtujVKN_YWdvdiP_hHEnP1HllMc','2024-02-25 20:52:40.358+07','2024-02-25 20:52:40.358+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcwODk2MjY2OCwiZXhwIjoxNzA5NTY3NDY4fQ.d_yIPegm5HoghNOC35e5B64Y0qNr8LwyEP6wWflduuA','2024-02-26 22:51:08.764+07','2024-02-26 22:51:08.764+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcwOTA0NzU4OCwiZXhwIjoxNzA5NjUyMzg4fQ.QCeXtdJAC9p1FNEMhkUeQvnrNmPyNWfxdJNPFiG2i20','2024-02-27 22:26:28.099+07','2024-02-27 22:26:28.099+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcwOTA1MDEwMCwiZXhwIjoxNzA5NjU0OTAwfQ.QSFCXFGo-ZSLXQhrvxqLj7Xjtngu-v5dQNZ5OHy9JXc','2024-02-27 23:08:20.936+07','2024-02-27 23:08:20.936+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcwOTE0MTY5NSwiZXhwIjoxNzA5NzQ2NDk1fQ.3BWV2c08DjesBlRxh-zzDGctgjac24Pb6zzPQeQW1Qc','2024-02-29 00:34:55.854+07','2024-02-29 00:34:55.854+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcwOTIxOTg3MiwiZXhwIjoxNzA5ODI0NjcyfQ.hjDZaflbIrKs_Jr7Zp7vhxDXAavjOclQdH1gdS9qLx8','2024-02-29 22:17:52.897+07','2024-02-29 22:17:52.897+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcwOTMwMDI5MiwiZXhwIjoxNzA5OTA1MDkyfQ.csBp66DDXoy3tL7pVmSS75nADiAUnJ_SEWil-ltgdEg','2024-03-01 20:38:12.71+07','2024-03-01 20:38:12.71+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcwOTMwNzcxMiwiZXhwIjoxNzA5OTEyNTEyfQ.pQXz89TKPepZ1QPUYgbpGrgUkGDjQMWkzBNrLwhaJSk','2024-03-01 22:41:52.404+07','2024-03-01 22:41:52.404+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcwOTY1MzMzMywiZXhwIjoxNzEwMjU4MTMzfQ.grWsp09NuWf6OSLA2nu94c-PkKHVcMHKhR9uwr4zEOQ','2024-03-05 22:42:13.601+07','2024-03-05 22:42:13.601+07',NULL);
INSERT INTO public.refresh_tokens ("userId","token","createdAt","updatedAt","deletedAt") VALUES
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcwOTY1NDUwNSwiZXhwIjoxNzEwMjU5MzA1fQ.6k-Xdmwv12kzLLUm80Zoxl9bAvNqvQAVQ4saTfPN4Ac','2024-03-05 23:01:45.107+07','2024-03-05 23:01:45.107+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcwOTY1NDUxNSwiZXhwIjoxNzEwMjU5MzE1fQ.Eh0wZWB3zkXCNIysb6um0Jft1MSwjWCCok_dNEuIK94','2024-03-05 23:01:55.234+07','2024-03-05 23:01:55.234+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMDA0Mzc5MCwiZXhwIjoxNzEwNjQ4NTkwfQ.xYTr-9zN-GPneI0b5Xgxau_1MTQhFNtYmsi4GYHJWPk','2024-03-10 11:09:50.869+07','2024-03-10 11:09:50.869+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMDA1ODMzNiwiZXhwIjoxNzEwNjYzMTM2fQ.lxNx5SKo0P0E5UKJY7scgCx7cCfwSo9KoSb4Psh___4','2024-03-10 15:12:16.371+07','2024-03-10 15:12:16.371+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMDA1ODM1MywiZXhwIjoxNzEwNjYzMTUzfQ.zDf-3orgWjDgndMcf63q9Oi8lJoLa1E50pGDJLd16Qs','2024-03-10 15:12:33.851+07','2024-03-10 15:12:33.851+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMDA2NjUzNCwiZXhwIjoxNzEwNjcxMzM0fQ.OSMWrWrNq4at84Ieh4s95l-l95dEaj9UcMl3FmP0SzQ','2024-03-10 17:28:54.405+07','2024-03-10 17:28:54.405+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMDQyMzEzOCwiZXhwIjoxNzExMDI3OTM4fQ.SeWQa3c-OHSyVXyRXVh_d_M0uYlZGhC0CBB-NZ6RjkA','2024-03-14 20:32:18.001+07','2024-03-14 20:32:18.001+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMDQyOTA1NywiZXhwIjoxNzExMDMzODU3fQ.JMPKRA_SVIisoQu5BnT7Jvh9dXr_XEIQFDmjdWh2aOI','2024-03-14 22:10:57.881+07','2024-03-14 22:10:57.881+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMDU4NzUyNSwiZXhwIjoxNzExMTkyMzI1fQ.SX4qCbTw5IHyl4dvzlf96olYB-ngRRHYx6X3yoGOV2s','2024-03-16 18:12:05.032+07','2024-03-16 18:12:05.032+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMDY0OTEyMywiZXhwIjoxNzExMjUzOTIzfQ.e3LHH_7F6DUvmWYhFnOhwn5qNUKo3qYvYa-p9TnCiRI','2024-03-17 11:18:43.274+07','2024-03-17 11:18:43.274+07',NULL);
INSERT INTO public.refresh_tokens ("userId","token","createdAt","updatedAt","deletedAt") VALUES
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMDk0ODExNywiZXhwIjoxNzExNTUyOTE3fQ.5vAfZpLbsL5MOYdul3Yd2CqZT7tUkmWWyEqUNMzpzA4','2024-03-20 22:21:57.078+07','2024-03-20 22:21:57.078+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMDk0OTQzNSwiZXhwIjoxNzExNTU0MjM1fQ.5BltWBDEbuqkaxNs6OnNsRiU1pIOxsbB86NIe6rxw6M','2024-03-20 22:43:55.638+07','2024-03-20 22:43:55.638+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMDk0OTQ1MSwiZXhwIjoxNzExNTU0MjUxfQ.39pQdPktNGGVSvpENlvAWDMSa6I8ed9vXyPY-EiMsCQ','2024-03-20 22:44:11.973+07','2024-03-20 22:44:11.973+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMTM3ODA5MSwiZXhwIjoxNzExOTgyODkxfQ.QaCtDkysH4LK28KFFuLw-Kpw4bI0sGYTnhzCaq83t-8','2024-03-25 21:48:11.219+07','2024-03-25 21:48:11.219+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMTQ2MzQxMywiZXhwIjoxNzEyMDY4MjEzfQ.8R_7YGh7mXkzJlO3FcbB-aZfqb-JYzsvgQMnXb14jks','2024-03-26 21:30:13.222+07','2024-03-26 21:30:13.222+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMTQ3Mzc3NSwiZXhwIjoxNzEyMDc4NTc1fQ.kHYYSKxk87bWk7Bc_iwmO45zuJGr93s7z7vo42PhTYw','2024-03-27 00:22:55.645+07','2024-03-27 00:22:55.645+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMTQ3Mzc4NywiZXhwIjoxNzEyMDc4NTg3fQ.G4ObqXaTj-68RZxwtaK87rn2d9CtIP2x_3pWycxwflg','2024-03-27 00:23:07.881+07','2024-03-27 00:23:07.881+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMTYzNzA1OSwiZXhwIjoxNzEyMjQxODU5fQ.iO7UJD1MWW0pRuu3aUtGRfT8mYpireYFRBDyyNLngGI','2024-03-28 21:44:19.695+07','2024-03-28 21:44:19.695+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMTYzNzk5NCwiZXhwIjoxNzEyMjQyNzk0fQ.zg1kWrMXvyK6cG3CepdHhF23gZuz-5e1po-qANIZZk4','2024-03-28 21:59:54.706+07','2024-03-28 21:59:54.706+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMTYzODAwNywiZXhwIjoxNzEyMjQyODA3fQ.xjCu8M-jbpJjIwuL4p_IDA-IY1KVKKiY74M6qb2hzI8','2024-03-28 22:00:07.15+07','2024-03-28 22:00:07.15+07',NULL);
INSERT INTO public.refresh_tokens ("userId","token","createdAt","updatedAt","deletedAt") VALUES
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMTczMzU1MywiZXhwIjoxNzEyMzM4MzUzfQ.FEdtR8CD7jUs1PDsB9XdcYUby0CcWUpBDcbKmFBiW5I','2024-03-30 00:32:33.314+07','2024-03-30 00:32:33.314+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMTczODE5NCwiZXhwIjoxNzEyMzQyOTk0fQ.pnSTFrG-s65uNDcA9_vKRrZpFeLjGUwKB6wp_0iID10','2024-03-30 01:49:54.857+07','2024-03-30 01:49:54.857+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMTczODIwNSwiZXhwIjoxNzEyMzQzMDA1fQ.ayYdY7IEIc7aHZKxS6w3aeSJSpMzHj0KUCxVXrADBSU','2024-03-30 01:50:05.575+07','2024-03-30 01:50:05.575+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMTc3MTkzMiwiZXhwIjoxNzEyMzc2NzMyfQ.UFoPUQ8Rp-VZk7A_e9RsYkizIGQbM-U85rPOYa-p1eE','2024-03-30 11:12:12.214+07','2024-03-30 11:12:12.214+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMTc4MDQzMywiZXhwIjoxNzEyMzg1MjMzfQ.lxiO9hLYuu0qwZutIDg1ziELHfG9MDOGtA1NoMMVUXk','2024-03-30 13:33:53.1+07','2024-03-30 13:33:53.1+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMTg1MzU1NSwiZXhwIjoxNzEyNDU4MzU1fQ.5XALGznTi5fQM4iTsJGQarvSlml_vPjDMRgE3YRRONI','2024-03-30 21:54:31.764+07','2024-03-31 09:52:35.357+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMTg2ODU3MSwiZXhwIjoxNzEyNDczMzcxfQ.9yYjtBdsxmyhnSLsDoZeyFIMdnAXUH92Flhfzsqe0vU','2024-03-31 14:02:51.585+07','2024-03-31 14:02:51.585+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMTg5MzI2MywiZXhwIjoxNzEyNDk4MDYzfQ.XMBSWPNrF0VI6RtbFIdwERbyAhYW_OJrZJwiF43W8w4','2024-03-31 20:54:23.582+07','2024-03-31 20:54:23.582+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMTk4NDk0NSwiZXhwIjoxNzEyNTg5NzQ1fQ.pomyUU3nwAivFyoNE4BAjpR_kujr5G-JgAZQZ1nKAeA','2024-04-01 22:22:25.985+07','2024-04-01 22:22:25.985+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMTk4NDk1NiwiZXhwIjoxNzEyNTg5NzU2fQ.3kbdp21qCZnlKRrFUDuu1jb4ltwgFIB2hKS2MBf0ghM','2024-04-01 22:22:36.423+07','2024-04-01 22:22:36.423+07',NULL);
INSERT INTO public.refresh_tokens ("userId","token","createdAt","updatedAt","deletedAt") VALUES
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNDcyODMzMSwiZXhwIjoxNzE1MzMzMTMxfQ.xRYUFj8l24ymEj4xu7KSONYYs2bfFS4kvPQGhBwlW9k','2024-05-03 16:25:31.871+07','2024-05-03 16:25:31.871+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNDM2MDIwMSwiZXhwIjoxNzE0OTY1MDAxfQ.tSRo141OkD14ubj7LlMHiRYfDmVJ1tH8IQ17tnpfRZU','2024-04-27 20:40:33.417+07','2024-04-29 10:10:01.769+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMjA2NDc4NCwiZXhwIjoxNzEyNjY5NTg0fQ.tJgyzb4K3TmqdMAGtciE61eT_9yvOwxj6PQEGk4MBdE','2024-04-01 22:30:21.685+07','2024-04-02 20:33:04.794+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMjE1ODI2NCwiZXhwIjoxNzEyNzYzMDY0fQ.ErsbzHrrRPBoX6hUHkUQzrCqpI2tyL6uYXS3CIwALMk','2024-04-03 22:31:04.885+07','2024-04-03 22:31:04.885+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMjE1ODM0NSwiZXhwIjoxNzEyNzYzMTQ1fQ.gvKg0NZVpWoysRmSgDSBMomqoQZ-9pXCqUkKrppHwWk','2024-04-03 22:32:25.394+07','2024-04-03 22:32:25.394+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMjI0MzM1MiwiZXhwIjoxNzEyODQ4MTUyfQ.HH9pqOlh_YZvVGUEVvR-BzTTZXbzjk_2a02Ed8gAHHM','2024-04-04 22:09:12.482+07','2024-04-04 22:09:12.482+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMjMyNjYxMCwiZXhwIjoxNzEyOTMxNDEwfQ.P9i2A1fwEDJYqMjvzx6t7HhEygxT4MlFUqc739xQ3tM','2024-04-05 21:16:50.175+07','2024-04-05 21:16:50.175+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMjMzMTAxNSwiZXhwIjoxNzEyOTM1ODE1fQ.Hbb_EhvSlkMCYwg_DNr5chiXa9zqT0Q-mfiMPPiCq18','2024-04-05 22:30:15.033+07','2024-04-05 22:30:15.033+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMjMzMTAyMywiZXhwIjoxNzEyOTM1ODIzfQ.K0K-DsIwr4-12-khy8vziKx_8Bqq5HCjkjh3Pqna-_o','2024-04-05 22:30:23.853+07','2024-04-05 22:30:23.853+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMjM3NDQwOSwiZXhwIjoxNzEyOTc5MjA5fQ.lcsqLwMEXN_wY3kfgx1yKf7C9HIwL5qNmCE5uK6AWRQ','2024-04-06 10:33:29.579+07','2024-04-06 10:33:29.579+07',NULL);
INSERT INTO public.refresh_tokens ("userId","token","createdAt","updatedAt","deletedAt") VALUES
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNDc4NjkyOCwiZXhwIjoxNzE1MzkxNzI4fQ.uL2Tmr_-oHSH3FxI-M7_Rvi7PsDuxtFSkjG7BYwEb4U','2024-05-04 08:42:08.549+07','2024-05-04 08:42:08.549+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMjQ2MzI1NCwiZXhwIjoxNzEzMDY4MDU0fQ.vh4MkxDbDFRc51WVq6GI7Y_uwMQBw65ctPoh-OJ4zc8','2024-04-07 11:14:14.723+07','2024-04-07 11:14:14.723+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMjQ3NDU4OSwiZXhwIjoxNzEzMDc5Mzg5fQ.OVBpNwWOSShBk_zTU4mIkmWYceORM7495jtCFEjaNDY','2024-04-07 14:23:09.899+07','2024-04-07 14:23:09.899+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMjU4ODU4OSwiZXhwIjoxNzEzMTkzMzg5fQ.4uwfUKM545NpypD8xqZ0GHAGnkUjw0wNutKCdmWDcH0','2024-04-08 22:03:09.003+07','2024-04-08 22:03:09.003+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMjY3MjcxMCwiZXhwIjoxNzEzMjc3NTEwfQ.WfS90lUAHcXARbDDsuKbg4kDCprS-muRpWchw7j5a4E','2024-04-09 21:25:10.743+07','2024-04-09 21:25:10.743+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMjg0NzE2NywiZXhwIjoxNzEzNDUxOTY3fQ.3kcuSVdTX6U9GH-J1v1Ef7QSSctVVPsXTVpRdAKR6IY','2024-04-11 21:52:47.079+07','2024-04-11 21:52:47.079+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMjk0MTk4NCwiZXhwIjoxNzEzNTQ2Nzg0fQ.kMgRast-wLovJrdko1FeIp0C6Ahj31uLkqDadAEiYYI','2024-04-13 00:13:04.988+07','2024-04-13 00:13:04.988+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMjk0MjA2MSwiZXhwIjoxNzEzNTQ2ODYxfQ.m_rYCD1f5Pa3D2EEnTXVrjWefmFNQAyaQB3Ui19U45w','2024-04-13 00:14:21.828+07','2024-04-13 00:14:21.828+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMjk0MjU3MCwiZXhwIjoxNzEzNTQ3MzcwfQ.MjWJgRK80KKoQ_cKPr-7XYwTjTG4ZuBg0jm7k9FbyRk','2024-04-13 00:22:50.209+07','2024-04-13 00:22:50.209+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMzAxMDU3MiwiZXhwIjoxNzEzNjE1MzcyfQ.1DTa9HgYGqszhZpe6oxuHpCy67Rg2s-JzIwVMVFgW44','2024-04-13 19:16:12.662+07','2024-04-13 19:16:12.662+07',NULL);
INSERT INTO public.refresh_tokens ("userId","token","createdAt","updatedAt","deletedAt") VALUES
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMzA4ODkzMCwiZXhwIjoxNzEzNjkzNzMwfQ.PLpRzVkE4DJJr7LSjcz0goEmAq_3p0HojatbkEkFQlo','2024-04-14 17:02:10.307+07','2024-04-14 17:02:10.307+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMzA5MTk4MSwiZXhwIjoxNzEzNjk2NzgxfQ.0Lqd_K43FmHEYyy-u1Xr_c8j8OuiV7OlFlRgcaGfayc','2024-04-14 17:53:01.038+07','2024-04-14 17:53:01.038+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMzE5MzM5MywiZXhwIjoxNzEzNzk4MTkzfQ.RGfw7YaimBf4Xdxrl78QzPD5fsGWI32RA35mAYf-Cxs','2024-04-15 22:03:13.264+07','2024-04-15 22:03:13.264+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMzE5NTEyMCwiZXhwIjoxNzEzNzk5OTIwfQ.GHzL1WGZWaUiDS6l4QFnHVriGcCC_aSBbAEXQXv4vr8','2024-04-15 22:32:00.251+07','2024-04-15 22:32:00.251+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMzIwMDY2MywiZXhwIjoxNzEzODA1NDYzfQ.12P-X7NNkNOXjhq-e9DQM40VEjYgQW3yNYCTArTM4q4','2024-04-16 00:04:23.448+07','2024-04-16 00:04:23.448+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMzI1MzY2MywiZXhwIjoxNzEzODU4NDYzfQ.0Sg16QrDNS_BYHJ78ltrTs_7yf2-Rqhk-m-PTsoT62M','2024-04-16 14:47:43.034+07','2024-04-16 14:47:43.034+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMzI3Njk3MCwiZXhwIjoxNzEzODgxNzcwfQ.8HAvzdzL8vR7uEL3i2iQgRTGN7JnKEgy9lPlOU5xN_E','2024-04-16 21:16:10.819+07','2024-04-16 21:16:10.819+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMzI4MTkxNywiZXhwIjoxNzEzODg2NzE3fQ.LjfMulKUI-to9C5sk04zccXkmCbe0zsxt-_elYUT1Ls','2024-04-16 22:38:37.471+07','2024-04-16 22:38:37.471+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxMzk3MTY2NSwiZXhwIjoxNzE0NTc2NDY1fQ.IIiH7RnOwoxH6C_in7HwzqaGFrIiLYF3pydcHmI6IWw','2024-04-24 22:14:25.12+07','2024-04-24 22:14:25.12+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNDA1OTM3MywiZXhwIjoxNzE0NjY0MTczfQ.zILTO_-k6iCQaTzYDsx83Nr6AskB8VL0NWQO3iaNKM0','2024-04-25 22:36:13.072+07','2024-04-25 22:36:13.072+07',NULL);
INSERT INTO public.refresh_tokens ("userId","token","createdAt","updatedAt","deletedAt") VALUES
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNDA2MTI0OSwiZXhwIjoxNzE0NjY2MDQ5fQ.iAETndhEm10GNO4DhWJThLLITz2xf70fANpyW34dXj8','2024-04-25 23:07:29.793+07','2024-04-25 23:07:29.793+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNDA2MTI1OSwiZXhwIjoxNzE0NjY2MDU5fQ.9r8l0QO_lnkNGtLmW6iwPIMPf6uZE9ynGTs3GNQHMiw','2024-04-25 23:07:39.094+07','2024-04-25 23:07:39.094+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNDgxNzY4NywiZXhwIjoxNzE1NDIyNDg3fQ.RAvVetwfmdt9xSwVKSvzSBN9zUc9KlUr-Zc81m1Z38A','2024-05-04 17:14:47.49+07','2024-05-04 17:14:47.49+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNDI3OTI5NSwiZXhwIjoxNzE0ODg0MDk1fQ.DnljAGDBhrumuRD7jJLpfTHwJfUwamRfLnDlSGYd3kM','2024-04-28 11:41:35.37+07','2024-04-28 11:41:35.37+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNDkxNzg1OCwiZXhwIjoxNzE1NTIyNjU4fQ.6xkmP0sD7mBUUSDkv0kqcLUnTgdG0ziL-OikpF-6NgM','2024-05-04 20:39:59.656+07','2024-05-05 21:04:18.566+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNDU4MzU5OSwiZXhwIjoxNzE1MTg4Mzk5fQ._LWWQ9Pt2ZVThXLfm8axNG9eh_EhQhQE1HYz0_Ikdw4','2024-04-30 16:55:39.42+07','2024-05-02 00:13:19.907+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNTA4ODY1NCwiZXhwIjoxNzE1NjkzNDU0fQ.Sx05ysEFFvQ98ZcObdcms-Huo8nuR3ZF_c18teYd8VU','2024-05-07 20:30:54.952+07','2024-05-07 20:30:54.952+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNTA4ODkyNSwiZXhwIjoxNzE1NjkzNzI1fQ.su4_sY5mRxFqz4WjDlLTNa4pDHOCBeg6v0zixuNpysU','2024-05-07 20:35:25.253+07','2024-05-07 20:35:25.253+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNTA4ODkzNywiZXhwIjoxNzE1NjkzNzM3fQ.3Qc7EQ6ZnUQ37Rawf_2iuYWlpPXQ265q4QtD8pV-nEI','2024-05-07 20:35:37.347+07','2024-05-07 20:35:37.347+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNTMyOTM1OSwiZXhwIjoxNzE1OTM0MTU5fQ.LA4z7RzwvZJMmEbX7eXHkHaBFhhwmJcvOuL_4j2CBYw','2024-05-10 15:22:39.257+07','2024-05-10 15:22:39.257+07',NULL);
INSERT INTO public.refresh_tokens ("userId","token","createdAt","updatedAt","deletedAt") VALUES
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNTQyNDU2MCwiZXhwIjoxNzE2MDI5MzYwfQ.-yd4VMfWfcntR1iLykBgyroyZvSNxiGT9uGy3vTOcX0','2024-05-11 17:49:20.533+07','2024-05-11 17:49:20.533+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNTQzNTM0MiwiZXhwIjoxNzE2MDQwMTQyfQ.2FRSOf8-Vzj9QpI1qI01l_SlM3VJ2CCI37SHVUv-a10','2024-05-11 20:49:02.858+07','2024-05-11 20:49:02.858+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNTQzODI2NiwiZXhwIjoxNzE2MDQzMDY2fQ.T70ZGS_dBZ66eiUQn1USslDtMAEL72Xjz-ene1wjcVA','2024-05-11 21:37:46.764+07','2024-05-11 21:37:46.764+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNTQ0NjE2NiwiZXhwIjoxNzE2MDUwOTY2fQ.mazkXVkxhug28Bt9qnyXOcCKMYuMSQfp4V_TfgCOXRc','2024-05-11 23:49:26.966+07','2024-05-11 23:49:26.966+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNTUyMTc0NCwiZXhwIjoxNzE2MTI2NTQ0fQ.va4_nb6R0lDEUupVxNkwuKcoBOlPeEiskIE08oeiPW8','2024-05-12 20:49:04.851+07','2024-05-12 20:49:04.851+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNTUyNjg1MywiZXhwIjoxNzE2MTMxNjUzfQ.EHsD1EGhrvwi0NY7YQuYbMMY0HaA8VXEoVbfc8INJAo','2024-05-12 22:14:13.715+07','2024-05-12 22:14:13.715+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNTUyNzQyNSwiZXhwIjoxNzE2MTMyMjI1fQ.7dAk3EJUR3r5L0LvLH2FH2L-RFYo-9IRgy33ufxX5nA','2024-05-12 22:23:45.703+07','2024-05-12 22:23:45.703+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNTUzOTI5NSwiZXhwIjoxNzE2MTQ0MDk1fQ.NiV3pasFhQxt3pK9T6LTuHuGeenp0QYW0CDV6OlhWiw','2024-05-13 01:41:35.413+07','2024-05-13 01:41:35.413+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNTYwNDYzOCwiZXhwIjoxNzE2MjA5NDM4fQ.Lpk9KfJp2j7lDOhdDic1OaRzYWBv5niNrnXTg2V6eD8','2024-05-13 19:50:38.177+07','2024-05-13 19:50:38.177+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNTcxMTE5MiwiZXhwIjoxNzE2MzE1OTkyfQ.6yCQ24xK7ZdOiizuTjU2-F-Rr8ERv7X0bhOddlZK6sc','2024-05-15 01:26:32.92+07','2024-05-15 01:26:32.92+07',NULL);
INSERT INTO public.refresh_tokens ("userId","token","createdAt","updatedAt","deletedAt") VALUES
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNTc0OTAxMiwiZXhwIjoxNzE2MzUzODEyfQ.uKZ70NYXTcuTva_1Ml0OAoMVKRwDy6Lyr9aBll7PBVg','2024-05-15 11:56:52.644+07','2024-05-15 11:56:52.644+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNTc4NjIyMCwiZXhwIjoxNzE2MzkxMDIwfQ.02MIy96hnqKAlCwT0aFBFcnDbnOBCGK2ufbhpvWZACc','2024-05-15 22:17:00.998+07','2024-05-15 22:17:00.998+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNTg2NzMzMSwiZXhwIjoxNzE2NDcyMTMxfQ.jmAsBaOpdLMdI784hqyl2CKF2J9tAifA0_TumoJNtS4','2024-05-16 20:48:51.094+07','2024-05-16 20:48:51.094+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNTg2NzY2MywiZXhwIjoxNzE2NDcyNDYzfQ.n6vKACCeigQo1_71AtWpbHycQSgyzUQquYTMSnwfdSo','2024-05-16 20:54:23.189+07','2024-05-16 20:54:23.189+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNTk5Mzc3NiwiZXhwIjoxNzE2NTk4NTc2fQ.mIW3hNcS4HfQyna6HTlmK0lM3tEVGJKX8I4BpL588po','2024-05-17 21:56:15.514+07','2024-05-18 07:56:16.709+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNjA0MDAxMiwiZXhwIjoxNzE2NjQ0ODEyfQ.hwjAJQljZO3PivYhUARfkFFzms5Ac8j9PBiWfSo5GWQ','2024-05-18 20:46:52.893+07','2024-05-18 20:46:52.893+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNjA0Mjg3NSwiZXhwIjoxNzE2NjQ3Njc1fQ.42cOEr08dxnSxNpGNdwW6vyqK0f7QkiY6dJMk7nFTpE','2024-05-18 21:34:35.76+07','2024-05-18 21:34:35.76+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNjE2MTc0OSwiZXhwIjoxNzE2NzY2NTQ5fQ.mRt5RahFUqu4ou31VqlznJaKGqZ7HJB-nOpUGhmeSrc','2024-05-19 16:14:11.887+07','2024-05-20 06:35:49.991+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNjIxMjA5NCwiZXhwIjoxNzE2ODE2ODk0fQ.Wu6FBENKbr1pNWH2xkEF9c5a3SPxYGj69MpPYy4kskY','2024-05-20 20:34:54.55+07','2024-05-20 20:34:54.55+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNjIyNDA2NCwiZXhwIjoxNzE2ODI4ODY0fQ.yrLd8k49OL2aMh2QCN4fJxwUo8c6k4U3UPs_eBBtf0c','2024-05-20 23:54:24.934+07','2024-05-20 23:54:24.934+07',NULL);
INSERT INTO public.refresh_tokens ("userId","token","createdAt","updatedAt","deletedAt") VALUES
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNjI4NDc3NSwiZXhwIjoxNzE2ODg5NTc1fQ.Sx_D68n1-ARmph3NVFx8eMxAtT2uTOcygnXK1zNn1-Y','2024-05-21 16:46:15.986+07','2024-05-21 16:46:15.986+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNjMxMDE5OSwiZXhwIjoxNzE2OTE0OTk5fQ.y7nl99tNDKYfK2fZS2UsQb94asP2BifchGJepfDbcJI','2024-05-21 23:49:59.019+07','2024-05-21 23:49:59.019+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNjM3MzQ5OCwiZXhwIjoxNzE2OTc4Mjk4fQ.qYaMo5IbqYbvA22ddfbviLU9HKjOlyRFe7btcrVb1S8','2024-05-22 17:24:58.044+07','2024-05-22 17:24:58.044+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNjM4NzEwMiwiZXhwIjoxNzE2OTkxOTAyfQ.K0LIsJuF56Dt5mbYS-s7gRWbKe0ATz660i37m-bmyrw','2024-05-22 21:11:42.105+07','2024-05-22 21:11:42.105+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNjUxMjAwOCwiZXhwIjoxNzE3MTE2ODA4fQ.YZafDtMnDF_pij0EnkEMFmXXyizeFHb_oT1HB0AEy6c','2024-05-23 21:53:29.078+07','2024-05-24 07:53:28.708+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNjUzODU3OSwiZXhwIjoxNzE3MTQzMzc5fQ.DnnBdXAfpSma4rs0ikBRKSFUJ3QL9uoH5o4vP1sMPGE','2024-05-24 15:16:19.697+07','2024-05-24 15:16:19.697+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNjU1NjMzMywiZXhwIjoxNzE3MTYxMTMzfQ.7vpaSEq8pTPOW0xv88hg0TAlZ5kdRPhXgK5s3id75Mk','2024-05-24 20:12:13.154+07','2024-05-24 20:12:13.154+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNjYwOTIyMCwiZXhwIjoxNzE3MjE0MDIwfQ.Unou84CtlHwC_a4okilE4ly0KpWNL5YLAnhToi2isGk','2024-05-25 10:53:40.236+07','2024-05-25 10:53:40.236+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNjYyOTExNiwiZXhwIjoxNzE3MjMzOTE2fQ.Ab3D3A3xdPtSUIz3UtKo0KrNfAnBZzQ88yzj3TNaLqM','2024-05-25 16:25:17.003+07','2024-05-25 16:25:17.003+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNjY5NzQyNCwiZXhwIjoxNzE3MzAyMjI0fQ.RfRbYU8okjhLfaJ_UNcIgIkvJTAY10awY4NAD-AQMAQ','2024-05-25 21:36:36.045+07','2024-05-26 11:23:44.571+07',NULL);
INSERT INTO public.refresh_tokens ("userId","token","createdAt","updatedAt","deletedAt") VALUES
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNjcxNDA5MCwiZXhwIjoxNzE3MzE4ODkwfQ.Ky7G1AyDzZ9vRTFNGiKHEiL-apVK-GVc_QkudioaKso','2024-05-26 16:01:30.185+07','2024-05-26 16:01:30.185+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNjc0MTk1MywiZXhwIjoxNzE3MzQ2NzUzfQ.XSPY_RpLi9GkfULd2kICatpejBKkwqCxVla8vbgZ-T4','2024-05-26 23:45:53.668+07','2024-05-26 23:45:53.668+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNjc0MTk3NCwiZXhwIjoxNzE3MzQ2Nzc0fQ.Y-QrQ6hUcwTm3sBTgHoAPNtmha75rwlmbRTQwXZdIBQ','2024-05-26 23:46:14.897+07','2024-05-26 23:46:14.897+07',NULL),
	 (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNjgxODE2OSwiZXhwIjoxNzE3NDIyOTY5fQ.ArXbYg79WDjKpM_EYrSQfxy42JKxJ9AuWmXRZbwWepg','2024-05-27 20:56:09.411+07','2024-05-27 20:56:09.411+07',NULL);
INSERT INTO public.returned_order_items ("returnedOrderId","productId","comboId","serviceId",discount,price,quantity,"totalPrice","createdAt","updatedAt","deletedAt") VALUES
	 (3,60,NULL,NULL,0,120000,10,1260000,'2024-05-20 20:45:52.454+07','2024-05-20 20:45:52.454+07',NULL),
	 (4,60,NULL,NULL,0,120000,10,1260000,'2024-05-20 21:17:17.909+07','2024-05-20 21:17:17.909+07',NULL),
	 (5,60,NULL,NULL,0,120000,10,1260000,'2024-05-20 21:18:24.292+07','2024-05-20 21:18:24.292+07',NULL),
	 (6,60,NULL,NULL,0,120000,10,1260000,'2024-05-20 21:18:45.664+07','2024-05-20 21:18:45.664+07',NULL),
	 (7,60,NULL,NULL,0,120000,10,1260000,'2024-05-20 21:19:52.503+07','2024-05-20 21:19:52.503+07',NULL),
	 (8,60,NULL,NULL,0,120000,10,1260000,'2024-05-20 21:21:02.91+07','2024-05-20 21:21:02.91+07',NULL),
	 (9,60,NULL,NULL,0,120000,10,1260000,'2024-05-20 21:23:52.245+07','2024-05-20 21:23:52.245+07',NULL),
	 (10,60,NULL,NULL,0,120000,10,1260000,'2024-05-20 21:24:07.176+07','2024-05-20 21:24:07.176+07',NULL),
	 (11,60,NULL,NULL,0,120000,10,1260000,'2024-05-20 21:32:00.268+07','2024-05-20 21:32:00.268+07',NULL),
	 (12,60,NULL,NULL,0,120000,10,1260000,'2024-05-20 21:34:34.765+07','2024-05-20 21:34:34.765+07',NULL);
INSERT INTO public.returned_order_items ("returnedOrderId","productId","comboId","serviceId",discount,price,quantity,"totalPrice","createdAt","updatedAt","deletedAt") VALUES
	 (13,60,NULL,NULL,0,120000,10,1260000,'2024-05-20 21:35:48.134+07','2024-05-20 21:35:48.134+07',NULL),
	 (14,60,NULL,NULL,0,120000,10,1260000,'2024-05-20 21:39:21.186+07','2024-05-20 21:39:21.186+07',NULL),
	 (15,60,NULL,NULL,0,120000,10,1260000,'2024-05-20 21:46:36.689+07','2024-05-20 21:46:36.689+07',NULL),
	 (16,60,NULL,NULL,0,120000,10,1260000,'2024-05-20 21:49:01.021+07','2024-05-20 21:49:01.021+07',NULL),
	 (17,60,NULL,NULL,0,120000,10,1260000,'2024-05-20 21:53:42.693+07','2024-05-20 21:53:42.693+07',NULL),
	 (18,60,NULL,NULL,0,120000,3,360000,'2024-05-20 23:21:35.393+07','2024-05-20 23:21:35.393+07',NULL),
	 (18,59,NULL,NULL,0,300000,3,900000,'2024-05-20 23:21:35.393+07','2024-05-20 23:21:35.393+07',NULL),
	 (19,60,NULL,NULL,0,120000,2,240000,'2024-05-22 23:29:11.381+07','2024-05-22 23:29:11.381+07',NULL),
	 (19,59,NULL,NULL,0,300000,0,0,'2024-05-22 23:29:11.381+07','2024-05-22 23:29:11.381+07',NULL),
	 (20,59,NULL,NULL,0,300000,1,300000,'2024-05-22 23:32:18.623+07','2024-05-22 23:32:18.623+07',NULL);
INSERT INTO public.returned_orders ("orderId","returnedOrderStatusId","customerId",code,note,"returnedQuantityTotal","refundPriceTotal","receivedRefundAmount","refundDate","paymentMethodId","refundStatusId","createdAt","updatedAt","deletedAt") VALUES
	 (68,10,2,NULL,'',10,NULL,0,'2024-05-20 20:45:52.381+07',1,6,'2024-05-20 20:45:52.441+07','2024-05-20 20:45:52.441+07',NULL),
	 (68,10,2,NULL,'',10,NULL,NULL,'2024-05-20 21:17:17.831+07',1,8,'2024-05-20 21:17:17.882+07','2024-05-20 21:17:17.882+07',NULL),
	 (68,10,2,NULL,'',10,NULL,NULL,'2024-05-20 21:18:23.993+07',3,8,'2024-05-20 21:18:24.266+07','2024-05-20 21:18:24.266+07',NULL),
	 (68,10,2,NULL,'',10,NULL,NULL,'2024-05-20 21:18:45.6+07',1,8,'2024-05-20 21:18:45.65+07','2024-05-20 21:18:45.65+07',NULL),
	 (68,10,2,NULL,'',10,NULL,NULL,'2024-05-20 21:19:52.161+07',1,8,'2024-05-20 21:19:52.49+07','2024-05-20 21:19:52.49+07',NULL),
	 (68,10,2,NULL,'',10,NULL,NULL,'2024-05-20 21:21:02.794+07',1,8,'2024-05-20 21:21:02.893+07','2024-05-20 21:21:02.893+07',NULL),
	 (68,10,2,NULL,'',10,NULL,NULL,'2024-05-20 21:23:52.111+07',1,8,'2024-05-20 21:23:52.221+07','2024-05-20 21:23:52.221+07',NULL),
	 (68,10,2,NULL,'',10,NULL,NULL,'2024-05-20 21:24:07.08+07',2,8,'2024-05-20 21:24:07.161+07','2024-05-20 21:24:07.161+07',NULL),
	 (68,10,2,NULL,'',10,NULL,NULL,'2024-05-20 21:31:59.995+07',3,8,'2024-05-20 21:32:00.224+07','2024-05-20 21:32:00.224+07',NULL),
	 (68,10,2,NULL,'',10,NULL,NULL,'2024-05-20 21:34:34.633+07',2,8,'2024-05-20 21:34:34.743+07','2024-05-20 21:34:34.743+07',NULL);
INSERT INTO public.returned_orders ("orderId","returnedOrderStatusId","customerId",code,note,"returnedQuantityTotal","refundPriceTotal","receivedRefundAmount","refundDate","paymentMethodId","refundStatusId","createdAt","updatedAt","deletedAt") VALUES
	 (68,10,2,NULL,'',10,NULL,NULL,'2024-05-20 21:35:47.929+07',2,8,'2024-05-20 21:35:48.038+07','2024-05-20 21:35:48.038+07',NULL),
	 (68,10,2,NULL,'',10,NULL,NULL,'2024-05-20 21:39:20.813+07',4,8,'2024-05-20 21:39:21.149+07','2024-05-20 21:39:21.149+07',NULL),
	 (68,10,2,NULL,'',10,NULL,NULL,'2024-05-20 21:46:36.317+07',2,8,'2024-05-20 21:46:36.669+07','2024-05-20 21:46:36.669+07',NULL),
	 (68,10,2,NULL,'',10,1,1,'2024-05-20 21:49:00.898+07',1,8,'2024-05-20 21:49:01.009+07','2024-05-20 21:49:01.009+07',NULL),
	 (68,10,2,NULL,'',10,1260000,1260000,'2024-05-20 21:53:42.411+07',2,8,'2024-05-20 21:53:42.592+07','2024-05-20 21:53:42.592+07',NULL),
	 (70,10,1,NULL,'',6,1260000,1260000,'2024-05-20 23:21:35.136+07',1,8,'2024-05-20 23:21:35.364+07','2024-05-20 23:21:35.364+07',NULL),
	 (70,10,1,NULL,'',2,240000,240000,'2024-05-22 23:29:11.259+07',3,8,'2024-05-22 23:29:11.347+07','2024-05-22 23:29:11.347+07',NULL),
	 (100,10,1,NULL,'',1,300000,300000,'2024-05-22 23:32:18.364+07',1,8,'2024-05-22 23:32:18.607+07','2024-05-22 23:32:18.607+07',NULL);
INSERT INTO public.returned_purchase_order_product_items ("returnedPurchaseOrderId","productId","returnedQuantity",price,discount,"totalPrice","createdAt","updatedAt","deletedAt") VALUES
	 (3,1,10,150000,0,1575000,'2024-02-25 21:00:27.356+07','2024-02-25 21:00:27.356+07',NULL),
	 (4,1,10,150000,0,1575000,'2024-05-19 16:22:59.15+07','2024-05-19 16:22:59.15+07',NULL);
INSERT INTO public.returned_purchase_orders ("voucherTypeId",note,"returnedQuantityTotal",discount,"totalTaxPrice","refundPriceTotal","receivedRefundAmount","refundDate","purchaseOrderId","paymentMethodId","returnedStatusId","refundStatusId","createdAt","updatedAt","deletedAt") VALUES
	 (4,'',10,0,75000,1575000,1575000,'2024-02-25 21:00:27.241+07',1,1,10,8,'2024-02-25 21:00:27.347+07','2024-02-25 21:00:27.347+07',NULL),
	 (4,'',10,0,75000,1575000,1575000,'2024-05-19 16:22:58.839+07',3,1,10,8,'2024-05-19 16:22:59.132+07','2024-05-19 16:22:59.132+07',NULL);
INSERT INTO public.services (sku,"name",description,"categoryId","costPrice","salePrice","wholesalePrice","standardUnit","isActive","createdAt","updatedAt","deletedAt","isConsistOfSalePrice","inputTaxId","outputTaxId") VALUES
	 ('SVN38252','Bán hàng','<p>Mô tả dịch vụ...</p>',NULL,0,0,0,'',true,'2024-02-25 21:18:10.024+07','2024-02-25 21:18:10.024+07',NULL,false,NULL,NULL);
INSERT INTO public.size_units ("name","key","createdAt","updatedAt","deletedAt") VALUES
	 ('Rộng','width','2024-04-11 00:43:01.02+07','2024-04-11 00:43:01.02+07',NULL),
	 ('Dài','length','2024-04-11 00:43:01.02+07','2024-04-11 00:43:01.02+07',NULL),
	 ('Cao','height','2024-04-11 00:43:01.02+07','2024-04-11 00:43:01.02+07',NULL),
	 ('SL/Hệ số','coefficient','2024-04-11 00:43:01.02+07','2024-04-11 00:43:01.02+07',NULL);
INSERT INTO public.specification_types ("name","key","createdAt","updatedAt","deletedAt") VALUES
	 ('Tấm/miếng (Tôn, Nhựa, Kính,...)','sheet_plank_specification','2024-04-11 00:43:01.031+07','2024-04-11 00:43:01.031+07',NULL),
	 ('Viên/miếng (Gạch ốp, sàn gỗ,..)','brick_plank_specification','2024-04-11 00:43:01.031+07','2024-04-11 00:43:01.031+07',NULL);
INSERT INTO public.specifications ("productId","specificationTypeId","sizeUnitId",value,"groupId","createdAt","updatedAt","deletedAt","orderId") VALUES
	 (3,1,2,25000,1,'2024-04-16 22:38:54.841+07','2024-04-16 22:38:54.841+07',NULL,NULL),
	 (54,1,2,25000,1,'2024-04-16 22:39:12.864+07','2024-04-16 22:39:12.864+07',NULL,NULL),
	 (61,1,2,2,0,'2024-05-04 13:51:13.333+07','2024-05-04 13:51:13.333+07',NULL,NULL),
	 (61,1,1,1,0,'2024-05-04 13:51:13.333+07','2024-05-04 13:51:13.333+07',NULL,NULL),
	 (61,1,3,3,0,'2024-05-04 13:51:13.333+07','2024-05-04 13:51:13.333+07',NULL,NULL),
	 (61,1,4,4,0,'2024-05-04 13:51:13.333+07','2024-05-04 13:51:13.333+07',NULL,NULL),
	 (61,1,2,5,1,'2024-05-04 13:51:13.333+07','2024-05-04 13:51:13.333+07',NULL,NULL),
	 (61,1,1,2,1,'2024-05-04 13:51:13.333+07','2024-05-04 13:51:13.333+07',NULL,NULL),
	 (61,1,3,5,1,'2024-05-04 13:51:13.333+07','2024-05-04 13:51:13.333+07',NULL,NULL),
	 (61,1,4,7,1,'2024-05-04 13:51:13.333+07','2024-05-04 13:51:13.333+07',NULL,NULL);
INSERT INTO public.specifications ("productId","specificationTypeId","sizeUnitId",value,"groupId","createdAt","updatedAt","deletedAt","orderId") VALUES
	 (60,1,2,2,0,'2024-05-04 14:12:02.099+07','2024-05-04 14:12:02.099+07',NULL,NULL),
	 (60,1,1,1,0,'2024-05-04 14:12:02.099+07','2024-05-04 14:12:02.099+07',NULL,NULL),
	 (60,1,3,2,0,'2024-05-04 14:12:02.099+07','2024-05-04 14:12:02.099+07',NULL,NULL),
	 (60,1,4,2,0,'2024-05-04 14:12:02.099+07','2024-05-04 14:12:02.099+07',NULL,NULL),
	 (60,1,2,2,1,'2024-05-04 14:12:02.099+07','2024-05-04 14:12:02.099+07',NULL,NULL),
	 (60,1,1,2,1,'2024-05-04 14:12:02.099+07','2024-05-04 14:12:02.099+07',NULL,NULL),
	 (60,1,3,2,1,'2024-05-04 14:12:02.099+07','2024-05-04 14:12:02.099+07',NULL,NULL),
	 (60,1,4,2,1,'2024-05-04 14:12:02.099+07','2024-05-04 14:12:02.099+07',NULL,NULL),
	 (61,1,2,1,0,'2024-05-04 14:13:31.332+07','2024-05-04 14:13:31.332+07',NULL,NULL),
	 (61,1,1,1,0,'2024-05-04 14:13:31.332+07','2024-05-04 14:13:31.332+07',NULL,NULL);
INSERT INTO public.specifications ("productId","specificationTypeId","sizeUnitId",value,"groupId","createdAt","updatedAt","deletedAt","orderId") VALUES
	 (61,1,3,2,0,'2024-05-04 14:13:31.332+07','2024-05-04 14:13:31.332+07',NULL,NULL),
	 (61,1,4,2,0,'2024-05-04 14:13:31.332+07','2024-05-04 14:13:31.332+07',NULL,NULL),
	 (60,1,2,2,0,'2024-05-04 15:00:50.298+07','2024-05-04 15:00:50.298+07',NULL,NULL),
	 (60,1,1,2,0,'2024-05-04 15:00:50.298+07','2024-05-04 15:00:50.298+07',NULL,NULL),
	 (60,1,3,1,0,'2024-05-04 15:00:50.298+07','2024-05-04 15:00:50.298+07',NULL,NULL),
	 (60,1,4,1,0,'2024-05-04 15:00:50.298+07','2024-05-04 15:00:50.298+07',NULL,NULL),
	 (61,1,2,1,1,'2024-05-04 17:28:57.528+07','2024-05-04 17:28:57.528+07',NULL,37),
	 (61,1,1,1,1,'2024-05-04 17:28:57.528+07','2024-05-04 17:28:57.528+07',NULL,37),
	 (61,1,3,1,1,'2024-05-04 17:28:57.528+07','2024-05-04 17:28:57.528+07',NULL,37),
	 (61,1,4,1,1,'2024-05-04 17:28:57.528+07','2024-05-04 17:28:57.528+07',NULL,37);
INSERT INTO public.specifications ("productId","specificationTypeId","sizeUnitId",value,"groupId","createdAt","updatedAt","deletedAt","orderId") VALUES
	 (59,1,2,1,1,'2024-05-05 01:32:24.082+07','2024-05-05 01:32:24.082+07',NULL,47),
	 (59,1,1,1,1,'2024-05-05 01:32:24.082+07','2024-05-05 01:32:24.082+07',NULL,47),
	 (59,1,3,1,1,'2024-05-05 01:32:24.082+07','2024-05-05 01:32:24.082+07',NULL,47),
	 (59,1,4,1,1,'2024-05-05 01:32:24.082+07','2024-05-05 01:32:24.082+07',NULL,47),
	 (61,1,2,2,1,'2024-05-05 22:22:54.298+07','2024-05-05 22:22:54.298+07',NULL,51),
	 (61,1,1,2,1,'2024-05-05 22:22:54.298+07','2024-05-05 22:22:54.298+07',NULL,51),
	 (61,1,3,2,1,'2024-05-05 22:22:54.298+07','2024-05-05 22:22:54.298+07',NULL,51),
	 (61,1,4,2,1,'2024-05-05 22:22:54.298+07','2024-05-05 22:22:54.298+07',NULL,51),
	 (61,1,2,2,1,'2024-05-06 02:18:25.666+07','2024-05-06 02:18:25.666+07',NULL,60),
	 (61,1,1,2,1,'2024-05-06 02:18:25.666+07','2024-05-06 02:18:25.666+07',NULL,60);
INSERT INTO public.specifications ("productId","specificationTypeId","sizeUnitId",value,"groupId","createdAt","updatedAt","deletedAt","orderId") VALUES
	 (61,1,3,2,1,'2024-05-06 02:18:25.666+07','2024-05-06 02:18:25.666+07',NULL,60),
	 (61,1,4,2,1,'2024-05-06 02:18:25.666+07','2024-05-06 02:18:25.666+07',NULL,60),
	 (59,1,2,2,1,'2024-05-22 23:33:44.795+07','2024-05-22 23:33:44.795+07',NULL,101),
	 (59,1,1,2,1,'2024-05-22 23:33:44.795+07','2024-05-22 23:33:44.795+07',NULL,101),
	 (59,1,3,2,1,'2024-05-22 23:33:44.795+07','2024-05-22 23:33:44.795+07',NULL,101),
	 (59,1,4,2,1,'2024-05-22 23:33:44.795+07','2024-05-22 23:33:44.795+07',NULL,101),
	 (61,1,2,3,1,'2024-05-24 17:49:18.772+07','2024-05-24 17:49:18.772+07',NULL,102),
	 (61,1,1,2,1,'2024-05-24 17:49:18.772+07','2024-05-24 17:49:18.772+07',NULL,102),
	 (61,1,3,2,1,'2024-05-24 17:49:18.772+07','2024-05-24 17:49:18.772+07',NULL,102),
	 (61,1,4,2,1,'2024-05-24 17:49:18.772+07','2024-05-24 17:49:18.772+07',NULL,102);
INSERT INTO public.specifications ("productId","specificationTypeId","sizeUnitId",value,"groupId","createdAt","updatedAt","deletedAt","orderId") VALUES
	 (61,1,2,1,1,'2024-05-24 17:49:18.772+07','2024-05-24 17:49:18.772+07',NULL,102),
	 (61,1,1,1,1,'2024-05-24 17:49:18.772+07','2024-05-24 17:49:18.772+07',NULL,102),
	 (61,1,3,1,1,'2024-05-24 17:49:18.772+07','2024-05-24 17:49:18.772+07',NULL,102),
	 (61,1,4,1,1,'2024-05-24 17:49:18.772+07','2024-05-24 17:49:18.772+07',NULL,102),
	 (61,1,2,2,1,'2024-05-24 17:54:14.533+07','2024-05-24 17:54:14.533+07',NULL,103),
	 (61,1,1,2,1,'2024-05-24 17:54:14.533+07','2024-05-24 17:54:14.533+07',NULL,103),
	 (61,1,3,0,1,'2024-05-24 17:54:14.533+07','2024-05-24 17:54:14.533+07',NULL,103),
	 (61,1,4,2,1,'2024-05-24 17:54:14.533+07','2024-05-24 17:54:14.533+07',NULL,103),
	 (61,1,2,3,2,'2024-05-24 17:54:14.533+07','2024-05-24 17:54:14.533+07',NULL,103),
	 (61,1,1,3,2,'2024-05-24 17:54:14.533+07','2024-05-24 17:54:14.533+07',NULL,103);
INSERT INTO public.specifications ("productId","specificationTypeId","sizeUnitId",value,"groupId","createdAt","updatedAt","deletedAt","orderId") VALUES
	 (61,1,3,0,2,'2024-05-24 17:54:14.533+07','2024-05-24 17:54:14.533+07',NULL,103),
	 (61,1,4,2,2,'2024-05-24 17:54:14.533+07','2024-05-24 17:54:14.533+07',NULL,103),
	 (61,1,2,2,1,'2024-05-24 17:55:44.321+07','2024-05-24 17:55:44.321+07',NULL,104),
	 (61,1,1,2,1,'2024-05-24 17:55:44.321+07','2024-05-24 17:55:44.321+07',NULL,104),
	 (61,1,3,0,1,'2024-05-24 17:55:44.321+07','2024-05-24 17:55:44.321+07',NULL,104),
	 (61,1,4,2,1,'2024-05-24 17:55:44.321+07','2024-05-24 17:55:44.321+07',NULL,104),
	 (61,1,2,3,2,'2024-05-24 17:55:44.321+07','2024-05-24 17:55:44.321+07',NULL,104),
	 (61,1,1,3,2,'2024-05-24 17:55:44.321+07','2024-05-24 17:55:44.321+07',NULL,104),
	 (61,1,3,0,2,'2024-05-24 17:55:44.321+07','2024-05-24 17:55:44.321+07',NULL,104),
	 (61,1,4,2,2,'2024-05-24 17:55:44.321+07','2024-05-24 17:55:44.321+07',NULL,104);
INSERT INTO public.specifications ("productId","specificationTypeId","sizeUnitId",value,"groupId","createdAt","updatedAt","deletedAt","orderId") VALUES
	 (61,1,2,2,1,'2024-05-24 18:08:10.035+07','2024-05-24 18:08:10.035+07',NULL,105),
	 (61,1,1,2,1,'2024-05-24 18:08:10.035+07','2024-05-24 18:08:10.035+07',NULL,105),
	 (61,1,3,2,1,'2024-05-24 18:08:10.035+07','2024-05-24 18:08:10.035+07',NULL,105),
	 (61,1,4,2,1,'2024-05-24 18:08:10.035+07','2024-05-24 18:08:10.035+07',NULL,105),
	 (61,1,2,2,1,'2024-05-24 18:16:22.356+07','2024-05-24 18:16:22.356+07',NULL,107),
	 (61,1,1,2,1,'2024-05-24 18:16:22.356+07','2024-05-24 18:16:22.356+07',NULL,107),
	 (61,1,3,0,1,'2024-05-24 18:16:22.356+07','2024-05-24 18:16:22.356+07',NULL,107),
	 (61,1,4,1,1,'2024-05-24 18:16:22.356+07','2024-05-24 18:16:22.356+07',NULL,107),
	 (59,1,2,2,1,'2024-05-24 20:27:24.648+07','2024-05-24 20:27:24.648+07',NULL,109),
	 (59,1,1,2,1,'2024-05-24 20:27:24.648+07','2024-05-24 20:27:24.648+07',NULL,109);
INSERT INTO public.specifications ("productId","specificationTypeId","sizeUnitId",value,"groupId","createdAt","updatedAt","deletedAt","orderId") VALUES
	 (59,1,3,2,1,'2024-05-24 20:27:24.648+07','2024-05-24 20:27:24.648+07',NULL,109),
	 (59,1,4,2,1,'2024-05-24 20:27:24.648+07','2024-05-24 20:27:24.648+07',NULL,109),
	 (59,1,2,5,2,'2024-05-24 20:27:24.648+07','2024-05-24 20:27:24.648+07',NULL,109),
	 (59,1,1,5,2,'2024-05-24 20:27:24.648+07','2024-05-24 20:27:24.648+07',NULL,109),
	 (59,1,3,2,2,'2024-05-24 20:27:24.648+07','2024-05-24 20:27:24.648+07',NULL,109),
	 (59,1,4,2,2,'2024-05-24 20:27:24.648+07','2024-05-24 20:27:24.648+07',NULL,109),
	 (59,1,2,2,1,'2024-05-24 20:37:40.792+07','2024-05-24 20:37:40.792+07',NULL,110),
	 (59,1,1,2,1,'2024-05-24 20:37:40.792+07','2024-05-24 20:37:40.792+07',NULL,110),
	 (59,1,3,2,1,'2024-05-24 20:37:40.792+07','2024-05-24 20:37:40.792+07',NULL,110),
	 (59,1,4,2,1,'2024-05-24 20:37:40.792+07','2024-05-24 20:37:40.792+07',NULL,110);
INSERT INTO public.specifications ("productId","specificationTypeId","sizeUnitId",value,"groupId","createdAt","updatedAt","deletedAt","orderId") VALUES
	 (59,1,2,4,2,'2024-05-24 20:37:40.792+07','2024-05-24 20:37:40.792+07',NULL,110),
	 (59,1,1,4,2,'2024-05-24 20:37:40.792+07','2024-05-24 20:37:40.792+07',NULL,110),
	 (59,1,3,4,2,'2024-05-24 20:37:40.792+07','2024-05-24 20:37:40.792+07',NULL,110),
	 (59,1,4,3,2,'2024-05-24 20:37:40.792+07','2024-05-24 20:37:40.792+07',NULL,110);
INSERT INTO public.status_types ("name","key","createdAt","updatedAt","deletedAt") VALUES
	 ('Payment Status','payment_status','2024-02-25 20:50:39.143+07','2024-02-25 20:50:39.143+07',NULL),
	 ('Import Inventory Status','import_inventory_status','2024-02-25 20:50:39.143+07','2024-02-25 20:50:39.143+07',NULL),
	 ('Balance Inventory Status','balance_inventory_status','2024-02-25 20:50:39.143+07','2024-02-25 20:50:39.143+07',NULL),
	 ('Refund Money Status','refund_money_status','2024-02-25 20:50:40.098+07','2024-02-25 20:50:40.098+07',NULL),
	 ('Returned Product Status','returned_product_status','2024-02-25 20:50:40.098+07','2024-02-25 20:50:40.098+07',NULL),
	 ('Order Status','order_status','2024-02-25 20:50:40.121+07','2024-02-25 20:50:40.121+07',NULL),
	 ('Exporting Inventory Status','exporting_inventory_status','2024-02-25 20:50:40.121+07','2024-02-25 20:50:40.121+07',NULL),
	 ('Approved Status','approved_status','2024-02-25 20:50:40.121+07','2024-02-25 20:50:40.121+07',NULL),
	 ('Shipping Status','shipping_status','2024-02-25 20:50:40.121+07','2024-02-25 20:50:40.121+07',NULL),
	 ('Order Payment Status','order_payment_status','2024-02-25 20:50:40.121+07','2024-02-25 20:50:40.121+07',NULL);
INSERT INTO public.statuses ("statusTypeId","name","key","createdAt","updatedAt","deletedAt") VALUES
	 (1,'Unpaid','unpaid','2024-02-25 20:50:39.15+07','2024-02-25 20:50:39.15+07',NULL),
	 (1,'Trading','trading','2024-02-25 20:50:39.15+07','2024-02-25 20:50:39.15+07',NULL),
	 (1,'Paid','paid','2024-02-25 20:50:39.15+07','2024-02-25 20:50:39.15+07',NULL),
	 (2,'Unimported','un-imported','2024-02-25 20:50:39.15+07','2024-02-25 20:50:39.15+07',NULL),
	 (2,'imported','imported','2024-02-25 20:50:39.15+07','2024-02-25 20:50:39.15+07',NULL),
	 (4,'Unrefunded','un-refunded','2024-02-25 20:50:40.103+07','2024-02-25 20:50:40.103+07',NULL),
	 (4,'Partial Refund','partial-refund','2024-02-25 20:50:40.103+07','2024-02-25 20:50:40.103+07',NULL),
	 (4,'Full Refund','full-refund','2024-02-25 20:50:40.103+07','2024-02-25 20:50:40.103+07',NULL),
	 (5,'Not returned product','not-returned-product','2024-02-25 20:50:40.103+07','2024-02-25 20:50:40.103+07',NULL),
	 (5,'Returned Product','returned-product','2024-02-25 20:50:40.103+07','2024-02-25 20:50:40.103+07',NULL);
INSERT INTO public.statuses ("statusTypeId","name","key","createdAt","updatedAt","deletedAt") VALUES
	 (3,'Stock Checking','stock-checking','2024-02-25 20:50:40.116+07','2024-02-25 20:50:40.116+07',NULL),
	 (3,'Balanced','balanced','2024-02-25 20:50:40.116+07','2024-02-25 20:50:40.116+07',NULL),
	 (3,'Deleted','deleted','2024-02-25 20:50:40.116+07','2024-02-25 20:50:40.116+07',NULL),
	 (6,'Ordered','ordered','2024-02-25 20:50:40.125+07','2024-02-25 20:50:40.125+07',NULL),
	 (6,'Order Processing','order-processing','2024-02-25 20:50:40.125+07','2024-02-25 20:50:40.125+07',NULL),
	 (6,'Order Completed','order-completed','2024-02-25 20:50:40.125+07','2024-02-25 20:50:40.125+07',NULL),
	 (6,'Order Canceled','order-canceled','2024-02-25 20:50:40.125+07','2024-02-25 20:50:40.125+07',NULL),
	 (7,'Not Released From Stock','not-released-from-stock','2024-02-25 20:50:40.125+07','2024-02-25 20:50:40.125+07',NULL),
	 (7,'Fully Exported','fully-exported','2024-02-25 20:50:40.125+07','2024-02-25 20:50:40.125+07',NULL),
	 (8,'Not Approved Order','not-approved-order','2024-02-25 20:50:40.125+07','2024-02-25 20:50:40.125+07',NULL);
INSERT INTO public.statuses ("statusTypeId","name","key","createdAt","updatedAt","deletedAt") VALUES
	 (8,'Approved Order','approved-order','2024-02-25 20:50:40.125+07','2024-02-25 20:50:40.125+07',NULL),
	 (9,'Shipping Processing','shipping-processing','2024-02-25 20:50:40.125+07','2024-02-25 20:50:40.125+07',NULL),
	 (9,'Shipping','shipping','2024-02-25 20:50:40.125+07','2024-02-25 20:50:40.125+07',NULL),
	 (9,'Shipped','shipped','2024-02-25 20:50:40.125+07','2024-02-25 20:50:40.125+07',NULL),
	 (9,'Shipping Canceled','shipping-canceled','2024-02-25 20:50:40.125+07','2024-02-25 20:50:40.125+07',NULL),
	 (10,'Order Unpaid','order-unpaid','2024-02-25 20:50:40.125+07','2024-02-25 20:50:40.125+07',NULL),
	 (10,'Order Partial Paid','order-partial-paid','2024-02-25 20:50:40.125+07','2024-02-25 20:50:40.125+07',NULL),
	 (10,'Order Full Paid','order-full-paid','2024-02-25 20:50:40.125+07','2024-02-25 20:50:40.125+07',NULL);
INSERT INTO public.stock_adjustment_product_items ("stockAdjustmentId","productId","lossReasonId","actualQuantity","quantityDifference",note,"createdAt","updatedAt","deletedAt") VALUES
	 (1,1,2,8,-2,NULL,'2024-02-25 21:08:55.792+07','2024-02-25 21:08:55.792+07',NULL),
	 (2,2,2,25,-4,NULL,'2024-03-30 00:36:05.675+07','2024-03-30 00:36:05.675+07',NULL);
INSERT INTO public.stock_adjustments ("createdStaffId","checkingStaffId","adjustmentStaffId",code,note,"adjustmentDate","adjustmentStatusId","createdAt","updatedAt","deletedAt") VALUES
	 (1,1,1,'IAN63097','<p>Ghi chú phiếu kiểm...</p>','2024-02-25 21:08:55.837+07',12,'2024-02-25 21:08:55.78+07','2024-02-25 21:08:55.838+07',NULL),
	 (1,1,1,'IAN17551','<p>Ghi chú phiếu kiểm...</p>','2024-03-30 00:36:05.728+07',12,'2024-03-30 00:36:05.661+07','2024-03-30 00:36:05.728+07',NULL);
INSERT INTO public.suppliers ("supplierGroupId",code,"name",email,mobile,company,"faxId","taxId",website,address,"wardId",description,"personGroupTypeId","createdAt","updatedAt","deletedAt") VALUES
	 (NULL,'SUPN85971','Hoa Sen','','0358857134','','','','','',1,'<p>Mô tả nhà cung cấp...</p>',3,'2024-02-25 20:55:12.125+07','2024-04-01 22:35:09.922+07',NULL),
	 (NULL,'SUPN30255','Long','','0258553648','','','','','Hẻm 46 Bùi THị Xuân',NULL,'<p>Mô tả nhà cung cấp...</p>',3,'2024-04-01 22:35:32.286+07','2024-04-01 22:35:32.286+07',NULL);
INSERT INTO public.tax_types ("name","key","createdAt","updatedAt","deletedAt") VALUES
	 ('Input Tax','input-tax','2024-02-25 20:50:39.107+07','2024-02-25 20:50:39.107+07',NULL),
	 ('Output Tax','output-tax','2024-02-25 20:50:39.107+07','2024-02-25 20:50:39.107+07',NULL);
INSERT INTO public.taxes ("taxTypeId","name",code,"percentageNumber","createdAt","updatedAt","deletedAt") VALUES
	 (1,'Thuế sắt hoa sen','GT5',5,'2024-02-25 20:54:31.154+07','2024-02-25 20:54:31.154+07',NULL),
	 (2,'thuế','FTT',6,'2024-04-06 15:53:05.61+07','2024-04-06 15:53:05.61+07',NULL),
	 (1,'Thuế tôn HS',NULL,10,'2024-05-04 08:59:15.977+07','2024-05-04 08:59:15.977+07',NULL);
INSERT INTO public.unit_types ("name","key","createdAt","updatedAt","deletedAt") VALUES
	 ('Weight Unit','weight-unit','2024-02-25 20:50:39.095+07','2024-02-25 20:50:39.095+07',NULL),
	 ('Size Unit','size-unit','2024-02-25 20:50:39.095+07','2024-02-25 20:50:39.095+07',NULL);
INSERT INTO public.units ("unitTypeId","name","createdAt","updatedAt","deletedAt") VALUES
	 (2,'mét','2024-02-25 20:53:03.66+07','2024-02-25 20:53:03.66+07',NULL),
	 (1,'kg','2024-03-26 23:49:35.359+07','2024-03-26 23:49:35.359+07',NULL);
INSERT INTO public.users ("name",username,email,"password","privateImage","isActive","createdAt","updatedAt","deletedAt","personGroupTypeId") VALUES
	 ('Long','Long','longvovovo@gmail.com','$2a$10$Lw6EWDF09CPp/ZF24ofXF.BP6lIsgqaf1ycyLYK0gRhBj.ln0V4X6','https://storage.googleapis.com/loops-bmms-93d1a.appspot.com/2024/04/16/_Image%20with%20Fixed%20Ratio_%20copy%206%20%20%20%20%20%20%202024-4-16%2021%3A37%3A30?GoogleAccessId=firebase-adminsdk-klo6c%40loops-bmms-93d1a.iam.gserviceaccount.com&Expires=2524608000&Signature=Vqav4M0YcHGzZNRggtIFdyrbzHcor1e5ESQLqOtZeIX4PJMypxKbF6vLfm7uvAOLYJYyIifiiHDyegG5vksCAyMftVIutYnX55py71BuPeGfxX5uHZrODK6Xag%2BvMabUJVDLBhFCrcqhOVyp6Y7FJ%2BT1juv%2FhulrNZakVXb%2B0GvCp2TeY4FUyD%2BRZ1Fkey6HKD6iOcko25491GTkoQYV6oXdulIahIClzbR35%2BwuKrIweDwa7WlemrO77TBUqZpua%2FPQ0Tdig%2BOFuTBuDM0TBAp73E%2Ff0e1RE3y8dd%2FlHZI8rqi1a5k4G%2BtdRUCDqNTWz4l9ABs3lOAL%2FT9O%2Fs5TBg%3D%3D',true,'2024-02-25 20:52:24.499+07','2024-02-25 20:52:24.499+07',NULL,1);
INSERT INTO public.voucher_group_types ("name","key","createdAt","updatedAt","deletedAt") VALUES
	 ('Receipt Voucher Group','receipt_voucher_group','2024-02-25 20:50:39.129+07','2024-02-25 20:50:39.129+07',NULL),
	 ('Payment Voucher Group','payment_voucher_group','2024-02-25 20:50:39.129+07','2024-02-25 20:50:39.129+07',NULL);
INSERT INTO public.voucher_groups ("name",code,description,"voucherGroupTypeId","createdAt","updatedAt","deletedAt") VALUES
	 ('test nhóm phiếu kiểm','PK1','',1,'2024-02-27 23:09:28.603+07','2024-02-27 23:09:28.603+07',NULL),
	 ('Nhân viên','','Đồ dùng bị nhân viên làm vỡ',1,'2024-03-30 00:39:02.29+07','2024-03-30 00:39:02.29+07',NULL),
	 ('Thu nợ','','',1,'2024-03-30 23:08:10.403+07','2024-03-30 23:08:10.403+07',NULL);
INSERT INTO public.voucher_types ("name","key","createdAt","updatedAt","deletedAt") VALUES
	 ('Receipt Voucher','receipt_voucher','2024-02-25 20:50:39.122+07','2024-02-25 20:50:39.122+07',NULL),
	 ('Payment Voucher','payment_voucher','2024-02-25 20:50:39.122+07','2024-02-25 20:50:39.122+07',NULL),
	 ('Purchase Order','purchase_order','2024-02-25 20:50:39.122+07','2024-02-25 20:50:39.122+07',NULL),
	 ('Returned Purchase Order','returned_purchase_orders','2024-02-25 20:50:39.122+07','2024-02-25 20:50:39.122+07',NULL);
INSERT INTO public.vouchers ("voucherTypeId",code,value,description,"recordedDate","voucherGroupId","customerId","supplierId","staffId","personGroupTypeId","paymentMethodId","createdAt","updatedAt","deletedAt") VALUES
	 (2,'PVN92121',3150000,'','2024-02-25 20:55:54.915+07',NULL,NULL,1,NULL,3,1,'2024-02-25 20:55:54.948+07','2024-02-25 20:55:54.948+07',NULL),
	 (1,'RVN92629',1575000,'','2024-02-25 21:00:27.347+07',NULL,NULL,1,NULL,3,1,'2024-02-25 21:00:27.389+07','2024-02-25 21:00:27.389+07',NULL),
	 (1,'RVN43949',150,'','2024-02-25 21:19:35.773+07',NULL,1,NULL,NULL,2,1,'2024-02-25 21:19:35.816+07','2024-02-25 21:19:35.816+07',NULL),
	 (1,'RVN02986',14985,'','2024-02-25 21:19:44.979+07',NULL,1,NULL,NULL,2,2,'2024-02-25 21:19:45.018+07','2024-02-25 21:19:45.018+07',NULL),
	 (1,'RVN96538',134,'','2024-02-25 21:20:11.348+07',NULL,1,NULL,NULL,2,2,'2024-02-25 21:20:11.387+07','2024-02-25 21:20:11.387+07',NULL),
	 (1,'RVN23311',13475,'','2024-02-25 21:20:21.679+07',NULL,1,NULL,NULL,2,1,'2024-02-25 21:20:21.718+07','2024-02-25 21:20:21.718+07',NULL),
	 (1,'RVN87414',121025,'','2024-02-25 21:20:54.738+07',NULL,1,NULL,NULL,2,1,'2024-02-25 21:20:54.78+07','2024-02-25 21:20:54.78+07',NULL),
	 (1,'RVN83473',231,'','2024-02-25 21:23:07.694+07',NULL,1,NULL,NULL,2,2,'2024-02-25 21:23:07.74+07','2024-02-25 21:23:07.74+07',NULL),
	 (1,'RVN62029',25000,'','2024-02-27 23:08:31.127+07',1,NULL,NULL,1,1,1,'2024-02-27 23:09:55.753+07','2024-02-27 23:09:55.753+07',NULL),
	 (1,'RVN49405',150000,'','2024-02-27 23:11:40.954+07',NULL,1,NULL,NULL,2,1,'2024-02-27 23:11:41.069+07','2024-02-27 23:11:41.069+07',NULL);
INSERT INTO public.vouchers ("voucherTypeId",code,value,description,"recordedDate","voucherGroupId","customerId","supplierId","staffId","personGroupTypeId","paymentMethodId","createdAt","updatedAt","deletedAt") VALUES
	 (1,'RVN64585',150000,'','2024-03-05 22:53:33.616+07',NULL,1,NULL,NULL,2,1,'2024-03-05 22:53:33.675+07','2024-03-05 22:53:33.675+07',NULL),
	 (1,'RVN81203',150000,'','2024-03-14 22:12:58.153+07',NULL,1,NULL,NULL,2,1,'2024-03-14 22:12:58.218+07','2024-03-14 22:12:58.218+07',NULL),
	 (1,'RVN75974',315000,'','2024-03-14 22:13:46.376+07',NULL,1,NULL,NULL,2,2,'2024-03-14 22:13:46.436+07','2024-03-14 22:13:46.436+07',NULL),
	 (1,'RVN88922',0,'','2024-03-14 22:25:42.725+07',NULL,1,NULL,NULL,2,1,'2024-03-14 22:25:42.813+07','2024-03-14 22:25:42.813+07',NULL),
	 (1,'RVN55333',200000,'','2024-03-27 00:29:18.396+07',NULL,1,NULL,NULL,2,3,'2024-03-27 00:29:18.445+07','2024-03-27 00:29:18.445+07',NULL),
	 (1,'RVN25751',25000,'','2024-03-30 00:37:32.195+07',2,NULL,NULL,1,1,3,'2024-03-30 00:39:21.214+07','2024-03-30 00:39:21.214+07',NULL),
	 (2,'PVN52015',3150000,'','2024-03-30 14:15:50.394+07',NULL,NULL,1,NULL,3,2,'2024-03-30 14:15:50.418+07','2024-03-30 14:15:50.418+07',NULL),
	 (1,'RVN70463',150000,'','2024-03-30 14:39:02.765+07',NULL,1,NULL,NULL,2,1,'2024-03-30 14:39:02.812+07','2024-03-30 14:39:02.812+07',NULL),
	 (1,'RVN17630',65000,'','2024-03-30 22:00:10.772+07',NULL,1,NULL,NULL,2,1,'2024-03-30 22:00:10.922+07','2024-03-30 22:00:10.922+07',NULL),
	 (1,'RVN74890',500000,'','2024-03-30 22:47:27.004+07',NULL,1,NULL,NULL,2,2,'2024-03-30 22:47:27.192+07','2024-03-30 22:47:27.192+07',NULL);
INSERT INTO public.vouchers ("voucherTypeId",code,value,description,"recordedDate","voucherGroupId","customerId","supplierId","staffId","personGroupTypeId","paymentMethodId","createdAt","updatedAt","deletedAt") VALUES
	 (1,'RVN62624',575000,'','2024-03-30 22:55:08.961+07',NULL,2,NULL,NULL,2,1,'2024-03-30 22:55:09.092+07','2024-03-30 22:55:09.092+07',NULL),
	 (1,'RVN59985',65000,'','2024-03-31 14:50:37.678+07',NULL,2,NULL,NULL,2,2,'2024-03-31 14:50:37.74+07','2024-03-31 14:50:37.74+07',NULL),
	 (1,'RVN75893',50000,'','2024-03-31 14:56:47.1+07',NULL,3,NULL,NULL,2,1,'2024-03-31 14:56:47.14+07','2024-03-31 14:56:47.14+07',NULL),
	 (1,'RVN66176',50000,'','2024-03-31 15:09:14.357+07',NULL,3,NULL,NULL,2,3,'2024-03-31 15:09:14.433+07','2024-03-31 15:09:14.433+07',NULL),
	 (1,'RVN67120',15000,'','2024-04-05 23:13:24.247+07',NULL,1,NULL,NULL,2,1,'2024-04-05 23:13:24.336+07','2024-04-05 23:13:24.336+07',NULL),
	 (1,'RVN00487',100000,'','2024-05-04 22:55:08.458+07',NULL,3,NULL,NULL,2,1,'2024-05-04 22:55:08.597+07','2024-05-04 22:55:08.597+07',NULL),
	 (1,'RVN16879',12000,'','2024-05-05 22:02:16.482+07',NULL,3,NULL,NULL,2,3,'2024-05-05 22:02:16.564+07','2024-05-05 22:02:16.564+07',NULL),
	 (1,'RVN30620',13000,'','2024-05-05 22:05:51.446+07',NULL,2,NULL,NULL,2,1,'2024-05-05 22:05:51.531+07','2024-05-05 22:05:51.531+07',NULL),
	 (1,'RVN39450',11300,'','2024-05-05 22:17:40.227+07',NULL,2,NULL,NULL,2,1,'2024-05-05 22:17:40.304+07','2024-05-05 22:17:40.304+07',NULL),
	 (1,'RVN72918',11300,'','2024-05-05 22:22:54.316+07',NULL,2,NULL,NULL,2,1,'2024-05-05 22:22:54.39+07','2024-05-05 22:22:54.39+07',NULL);
INSERT INTO public.vouchers ("voucherTypeId",code,value,description,"recordedDate","voucherGroupId","customerId","supplierId","staffId","personGroupTypeId","paymentMethodId","createdAt","updatedAt","deletedAt") VALUES
	 (1,'RVN75374',1000,'','2024-05-06 00:36:41.877+07',NULL,2,NULL,NULL,2,2,'2024-05-06 00:36:41.987+07','2024-05-06 00:36:41.987+07',NULL),
	 (1,'RVN38663',1000,'','2024-05-06 00:46:06.755+07',NULL,2,NULL,NULL,2,2,'2024-05-06 00:46:06.869+07','2024-05-06 00:46:06.869+07',NULL),
	 (1,'RVN33345',8000,'','2024-05-06 02:18:25.687+07',NULL,2,NULL,NULL,2,2,'2024-05-06 02:18:25.779+07','2024-05-06 02:18:25.779+07',NULL),
	 (1,'RVN87138',1575000,'','2024-05-19 16:22:59.132+07',NULL,NULL,1,NULL,3,1,'2024-05-19 16:22:59.236+07','2024-05-19 16:22:59.236+07',NULL),
	 (2,'RVN47493',0,'','2024-05-20 20:45:52.441+07',NULL,2,NULL,NULL,2,1,'2024-05-20 20:45:52.528+07','2024-05-20 20:45:52.528+07',NULL),
	 (2,'RVN19287',0,'','2024-05-20 21:17:17.882+07',NULL,2,NULL,NULL,2,1,'2024-05-20 21:17:17.949+07','2024-05-20 21:17:17.949+07',NULL),
	 (2,'RVN37309',0,'','2024-05-20 21:18:24.266+07',NULL,2,NULL,NULL,2,3,'2024-05-20 21:18:24.339+07','2024-05-20 21:18:24.339+07',NULL),
	 (2,'RVN23090',0,'','2024-05-20 21:18:45.65+07',NULL,2,NULL,NULL,2,1,'2024-05-20 21:18:45.759+07','2024-05-20 21:18:45.759+07',NULL),
	 (2,'RVN12016',0,'','2024-05-20 21:19:52.49+07',NULL,2,NULL,NULL,2,1,'2024-05-20 21:19:52.53+07','2024-05-20 21:19:52.53+07',NULL),
	 (2,'RVN08195',0,'','2024-05-20 21:21:02.893+07',NULL,2,NULL,NULL,2,1,'2024-05-20 21:21:02.952+07','2024-05-20 21:21:02.952+07',NULL);
INSERT INTO public.vouchers ("voucherTypeId",code,value,description,"recordedDate","voucherGroupId","customerId","supplierId","staffId","personGroupTypeId","paymentMethodId","createdAt","updatedAt","deletedAt") VALUES
	 (2,'RVN04375',0,'','2024-05-20 21:23:52.221+07',NULL,2,NULL,NULL,2,1,'2024-05-20 21:23:52.288+07','2024-05-20 21:23:52.288+07',NULL),
	 (2,'RVN58388',0,'','2024-05-20 21:24:07.161+07',NULL,2,NULL,NULL,2,2,'2024-05-20 21:24:07.213+07','2024-05-20 21:24:07.213+07',NULL),
	 (2,'RVN44855',0,'','2024-05-20 21:32:00.224+07',NULL,2,NULL,NULL,2,3,'2024-05-20 21:32:00.331+07','2024-05-20 21:32:00.331+07',NULL),
	 (2,'RVN47371',0,'','2024-05-20 21:34:34.743+07',NULL,2,NULL,NULL,2,2,'2024-05-20 21:34:34.8+07','2024-05-20 21:34:34.8+07',NULL),
	 (2,'RVN38467',0,'','2024-05-20 21:35:48.038+07',NULL,2,NULL,NULL,2,2,'2024-05-20 21:35:48.188+07','2024-05-20 21:35:48.188+07',NULL),
	 (2,'RVN74790',0,'','2024-05-20 21:39:21.149+07',NULL,2,NULL,NULL,2,4,'2024-05-20 21:39:21.227+07','2024-05-20 21:39:21.227+07',NULL),
	 (2,'RVN09424',0,'','2024-05-20 21:46:36.669+07',NULL,2,NULL,NULL,2,2,'2024-05-20 21:46:36.719+07','2024-05-20 21:46:36.719+07',NULL),
	 (2,'RVN90283',1,'','2024-05-20 21:49:01.009+07',NULL,2,NULL,NULL,2,1,'2024-05-20 21:49:01.071+07','2024-05-20 21:49:01.071+07',NULL),
	 (2,'RVN18546',1260000,'','2024-05-20 21:53:42.592+07',NULL,2,NULL,NULL,2,2,'2024-05-20 21:53:42.757+07','2024-05-20 21:53:42.757+07',NULL),
	 (2,'RVN44468',1260000,'','2024-05-20 23:21:35.364+07',NULL,1,NULL,NULL,2,1,'2024-05-20 23:21:35.488+07','2024-05-20 23:21:35.488+07',NULL);
INSERT INTO public.vouchers ("voucherTypeId",code,value,description,"recordedDate","voucherGroupId","customerId","supplierId","staffId","personGroupTypeId","paymentMethodId","createdAt","updatedAt","deletedAt") VALUES
	 (1,'RVN26502',50000,'','2024-05-21 23:53:20.994+07',NULL,2,NULL,NULL,2,2,'2024-05-21 23:53:21.081+07','2024-05-21 23:53:21.081+07',NULL),
	 (1,'RVN23852',30000,'','2024-05-22 17:25:35.617+07',NULL,2,NULL,NULL,2,2,'2024-05-22 17:25:35.744+07','2024-05-22 17:25:35.744+07',NULL),
	 (1,'RVN99140',20000,'','2024-05-22 17:30:19.922+07',NULL,2,NULL,NULL,2,2,'2024-05-22 17:30:20.002+07','2024-05-22 17:30:20.002+07',NULL),
	 (1,'RVN25023',20000,'','2024-05-22 17:44:54.408+07',NULL,3,NULL,NULL,2,2,'2024-05-22 17:44:54.473+07','2024-05-22 17:44:54.473+07',NULL),
	 (1,'RVN04004',98000,'','2024-05-22 17:47:29.84+07',NULL,2,NULL,NULL,2,2,'2024-05-22 17:47:29.894+07','2024-05-22 17:47:29.894+07',NULL),
	 (1,'RVN03563',300000,'','2024-05-22 17:56:31.497+07',NULL,2,NULL,NULL,2,1,'2024-05-22 17:56:31.561+07','2024-05-22 17:56:31.561+07',NULL),
	 (1,'RVN42936',398000,'','2024-05-22 18:04:14.343+07',NULL,2,NULL,NULL,2,2,'2024-05-22 18:04:14.391+07','2024-05-22 18:04:14.391+07',NULL),
	 (1,'RVN96589',3633,'','2024-05-22 22:00:13.13+07',NULL,2,NULL,NULL,2,1,'2024-05-22 22:00:13.19+07','2024-05-22 22:00:13.19+07',NULL),
	 (1,'RVN44319',98000,'','2024-05-22 22:00:47.881+07',NULL,2,NULL,NULL,2,2,'2024-05-22 22:00:47.94+07','2024-05-22 22:00:47.94+07',NULL),
	 (1,'RVN97487',318000,'','2024-05-22 22:17:45.021+07',NULL,2,NULL,NULL,2,1,'2024-05-22 22:17:45.066+07','2024-05-22 22:17:45.066+07',NULL);
INSERT INTO public.vouchers ("voucherTypeId",code,value,description,"recordedDate","voucherGroupId","customerId","supplierId","staffId","personGroupTypeId","paymentMethodId","createdAt","updatedAt","deletedAt") VALUES
	 (1,'RVN26625',398000,'','2024-05-22 22:22:35.089+07',NULL,2,NULL,NULL,2,1,'2024-05-22 22:22:35.141+07','2024-05-22 22:22:35.141+07',NULL),
	 (1,'RVN36860',398000,'','2024-05-22 22:28:08.667+07',NULL,3,NULL,NULL,2,1,'2024-05-22 22:28:08.71+07','2024-05-22 22:28:08.71+07',NULL),
	 (1,'RVN50561',318000,'','2024-05-22 22:35:14.164+07',NULL,2,NULL,NULL,2,2,'2024-05-22 22:35:14.334+07','2024-05-22 22:35:14.334+07',NULL),
	 (1,'RVN45042',398000,'','2024-05-22 22:43:35.791+07',NULL,2,NULL,NULL,2,1,'2024-05-22 22:43:35.856+07','2024-05-22 22:43:35.856+07',NULL),
	 (2,'RVN97554',240000,'','2024-05-22 23:29:11.347+07',NULL,1,NULL,NULL,2,3,'2024-05-22 23:29:11.438+07','2024-05-22 23:29:11.438+07',NULL),
	 (2,'RVN72695',300000,'','2024-05-22 23:32:18.607+07',NULL,1,NULL,NULL,2,1,'2024-05-22 23:32:18.659+07','2024-05-22 23:32:18.659+07',NULL),
	 (1,'RVN67321',360000,'','2024-05-24 18:16:22.369+07',NULL,2,NULL,NULL,2,2,'2024-05-24 18:16:22.43+07','2024-05-24 18:16:22.43+07',NULL),
	 (1,'RVN39580',8984000,'','2024-05-24 20:27:24.654+07',NULL,2,NULL,NULL,2,2,'2024-05-24 20:27:24.705+07','2024-05-24 20:27:24.705+07',NULL),
	 (1,'RVN70739',5088000,'','2024-05-24 20:37:40.809+07',NULL,3,NULL,NULL,2,2,'2024-05-24 20:37:40.856+07','2024-05-24 20:37:40.856+07',NULL);
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (1,'An Phú Tây',NULL,NULL,NULL,'Xã'),
	 (1,'Bình Chánh',NULL,NULL,NULL,'Xã'),
	 (1,'Bình Hưng',NULL,NULL,NULL,'Xã'),
	 (1,'Bình Lợi',NULL,NULL,NULL,'Xã'),
	 (1,'Đa Phước',NULL,NULL,NULL,'Xã'),
	 (1,'Hưng Long',NULL,NULL,NULL,'Xã'),
	 (1,'Lê Minh Xuân',NULL,NULL,NULL,'Xã'),
	 (1,'Phạm Văn Hai',NULL,NULL,NULL,'Xã'),
	 (1,'Phong Phú',NULL,NULL,NULL,'Xã'),
	 (1,'Quy Đức',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (1,'Tân Kiên',NULL,NULL,NULL,'Xã'),
	 (1,'Tân Nhựt',NULL,NULL,NULL,'Xã'),
	 (1,'Tân Quý Tây',NULL,NULL,NULL,'Xã'),
	 (1,'Tân Túc',NULL,NULL,NULL,'Thị trấn'),
	 (1,'Vĩnh Lộc A',NULL,NULL,NULL,'Xã'),
	 (1,'Vĩnh Lộc B',NULL,NULL,NULL,'Xã'),
	 (2,'An Lạc',NULL,NULL,NULL,'Phường'),
	 (2,'An Lạc A',NULL,NULL,NULL,'Phường'),
	 (2,'Bình Hưng Hòa',NULL,NULL,NULL,'Phường'),
	 (2,'Bình Hưng Hòa A',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (2,'Bình Hưng Hòa B',NULL,NULL,NULL,'Phường'),
	 (2,'Bình Trị Đông',NULL,NULL,NULL,'Phường'),
	 (2,'Bình Trị Đông A',NULL,NULL,NULL,'Phường'),
	 (2,'Bình Trị Đông B',NULL,NULL,NULL,'Phường'),
	 (2,'Tân Tạo',NULL,NULL,NULL,'Phường'),
	 (2,'Tân Tạo A',NULL,NULL,NULL,'Phường'),
	 (3,'1',NULL,NULL,NULL,'Phường'),
	 (3,'11',NULL,NULL,NULL,'Phường'),
	 (3,'12',NULL,NULL,NULL,'Phường'),
	 (3,'13',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (3,'14',NULL,NULL,NULL,'Phường'),
	 (3,'15',NULL,NULL,NULL,'Phường'),
	 (3,'17',NULL,NULL,NULL,'Phường'),
	 (3,'19',NULL,NULL,NULL,'Phường'),
	 (3,'2',NULL,NULL,NULL,'Phường'),
	 (3,'21',NULL,NULL,NULL,'Phường'),
	 (3,'22',NULL,NULL,NULL,'Phường'),
	 (3,'24',NULL,NULL,NULL,'Phường'),
	 (3,'25',NULL,NULL,NULL,'Phường'),
	 (3,'26',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (3,'27',NULL,NULL,NULL,'Phường'),
	 (3,'28',NULL,NULL,NULL,'Phường'),
	 (3,'3',NULL,NULL,NULL,'Phường'),
	 (3,'5',NULL,NULL,NULL,'Phường'),
	 (3,'6',NULL,NULL,NULL,'Phường'),
	 (3,'7',NULL,NULL,NULL,'Phường'),
	 (4,'An Thới Đông',NULL,NULL,NULL,'Xã'),
	 (4,'Bình Khánh',NULL,NULL,NULL,'Xã'),
	 (4,'Cần Thạnh ',NULL,NULL,NULL,'Phường'),
	 (4,'Long Hòa',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (4,'Lý Nhơn',NULL,NULL,NULL,'Xã'),
	 (4,'Tam Thôn Hiệp',NULL,NULL,NULL,'Xã'),
	 (4,'Thạnh An',NULL,NULL,NULL,'Xã'),
	 (5,'An Nhơn Tây',NULL,NULL,NULL,'Xã'),
	 (5,'An Phú',NULL,NULL,NULL,'Xã'),
	 (5,'An Phú Trung',NULL,NULL,NULL,'Xã'),
	 (5,'Bình Mỹ',NULL,NULL,NULL,'Xã'),
	 (5,'Củ Chi',NULL,NULL,NULL,'Thị trấn'),
	 (5,'Hòa Phú',NULL,NULL,NULL,'Xã'),
	 (5,'Nhuận Đức',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (5,'Phạm Văn Cội',NULL,NULL,NULL,'Xã'),
	 (5,'Phú Hòa Đông',NULL,NULL,NULL,'Xã'),
	 (5,'Phú Mỹ Hưng',NULL,NULL,NULL,'Xã'),
	 (5,'Phước Hiệp',NULL,NULL,NULL,'Xã'),
	 (5,'Phước Thạnh',NULL,NULL,NULL,'Xã'),
	 (5,'Phước Vĩnh An',NULL,NULL,NULL,'Xã'),
	 (5,'Tân An Hội',NULL,NULL,NULL,'Xã'),
	 (5,'Tân Phú Trung',NULL,NULL,NULL,'Xã'),
	 (5,'Tân Thạnh Đông',NULL,NULL,NULL,'Xã'),
	 (5,'Tân Thạnh Tây',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (5,'Tân Thông Hội',NULL,NULL,NULL,'Xã'),
	 (5,'Thái Mỹ',NULL,NULL,NULL,'Xã'),
	 (5,'Trung An',NULL,NULL,NULL,'Xã'),
	 (5,'Trung Lập Hạ',NULL,NULL,NULL,'Xã'),
	 (5,'Trung Lập Hạ',NULL,NULL,NULL,'Xã'),
	 (5,'Trung Lập Thượng',NULL,NULL,NULL,'Xã'),
	 (6,'1',NULL,NULL,NULL,'Phường'),
	 (6,'10',NULL,NULL,NULL,'Phường'),
	 (6,'11',NULL,NULL,NULL,'Phường'),
	 (6,'12',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (6,'13',NULL,NULL,NULL,'Phường'),
	 (6,'14',NULL,NULL,NULL,'Phường'),
	 (6,'15',NULL,NULL,NULL,'Phường'),
	 (6,'16',NULL,NULL,NULL,'Phường'),
	 (6,'17',NULL,NULL,NULL,'Phường'),
	 (6,'3',NULL,NULL,NULL,'Phường'),
	 (6,'4',NULL,NULL,NULL,'Phường'),
	 (6,'5',NULL,NULL,NULL,'Phường'),
	 (6,'6',NULL,NULL,NULL,'Phường'),
	 (6,'7',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (6,'8',NULL,NULL,NULL,'Phường'),
	 (6,'9',NULL,NULL,NULL,'Phường'),
	 (7,'Đông Thạnh',NULL,NULL,NULL,'Xã'),
	 (7,'Hóc Môn',NULL,NULL,NULL,'Phường'),
	 (7,'Bà Điểm',NULL,NULL,NULL,'Phường'),
	 (7,'Nhị Bình',NULL,NULL,NULL,'Xã'),
	 (7,'Tân Hiệp',NULL,NULL,NULL,'Xã'),
	 (7,'Tân Thới Nhì',NULL,NULL,NULL,'Xã'),
	 (7,'Tân Xuân',NULL,NULL,NULL,'Xã'),
	 (7,'Thới Tam Thôn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (7,'Trung Chánh',NULL,NULL,NULL,'Xã'),
	 (7,'Xuân Thới Đông',NULL,NULL,NULL,'Xã'),
	 (7,'Xuân Thới Sơn',NULL,NULL,NULL,'Xã'),
	 (7,'Xuân Thới Thượng',NULL,NULL,NULL,'Xã'),
	 (8,'Hiệp Phước',NULL,NULL,NULL,'Phường'),
	 (8,'Long Thới',NULL,NULL,NULL,'Xã'),
	 (8,'Nhà Bè',NULL,NULL,NULL,'Thị trấn'),
	 (8,'Nhơn Đức',NULL,NULL,NULL,'Xã'),
	 (8,'Phú Xuân',NULL,NULL,NULL,'Xã'),
	 (8,'Phước Kiển',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (8,'Phước Lộc',NULL,NULL,NULL,'Xã'),
	 (9,'1',NULL,NULL,NULL,'Phường'),
	 (9,'10',NULL,NULL,NULL,'Phường'),
	 (9,'11',NULL,NULL,NULL,'Phường'),
	 (9,'12',NULL,NULL,NULL,'Phường'),
	 (9,'13',NULL,NULL,NULL,'Phường'),
	 (9,'14',NULL,NULL,NULL,'Phường'),
	 (9,'15',NULL,NULL,NULL,'Phường'),
	 (9,'17',NULL,NULL,NULL,'Phường'),
	 (9,'2',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (9,'25',NULL,NULL,NULL,'Phường'),
	 (9,'3',NULL,NULL,NULL,'Phường'),
	 (9,'4',NULL,NULL,NULL,'Phường'),
	 (9,'5',NULL,NULL,NULL,'Phường'),
	 (9,'6',NULL,NULL,NULL,'Phường'),
	 (9,'7',NULL,NULL,NULL,'Phường'),
	 (9,'8',NULL,NULL,NULL,'Phường'),
	 (9,'9',NULL,NULL,NULL,'Phường'),
	 (10,'Bến Nghé',NULL,NULL,NULL,'Phường'),
	 (10,'Bến Thành',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (10,'Cầu Kho',NULL,NULL,NULL,'Phường'),
	 (10,'Cầu Ông Lãnh',NULL,NULL,NULL,'Phường'),
	 (10,'Cô Giang',NULL,NULL,NULL,'Phường'),
	 (10,'Đa Kao',NULL,NULL,NULL,'Phường'),
	 (10,'Nguyễn Cư Trinh',NULL,NULL,NULL,'Phường'),
	 (10,'Nguyễn Thái Bình',NULL,NULL,NULL,'Phường'),
	 (10,'Phạm Ngũ Lão',NULL,NULL,NULL,'Phường'),
	 (10,'Tân Định',NULL,NULL,NULL,'Phường'),
	 (11,'1',NULL,NULL,NULL,'Phường'),
	 (11,'10',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (11,'11',NULL,NULL,NULL,'Phường'),
	 (11,'12',NULL,NULL,NULL,'Phường'),
	 (11,'13',NULL,NULL,NULL,'Phường'),
	 (11,'14',NULL,NULL,NULL,'Phường'),
	 (11,'15',NULL,NULL,NULL,'Phường'),
	 (11,'2',NULL,NULL,NULL,'Phường'),
	 (11,'3',NULL,NULL,NULL,'Phường'),
	 (11,'4',NULL,NULL,NULL,'Phường'),
	 (11,'5',NULL,NULL,NULL,'Phường'),
	 (11,'6',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (11,'7',NULL,NULL,NULL,'Phường'),
	 (11,'8',NULL,NULL,NULL,'Phường'),
	 (11,'9',NULL,NULL,NULL,'Phường'),
	 (12,'1',NULL,NULL,NULL,'Phường'),
	 (12,'10',NULL,NULL,NULL,'Phường'),
	 (12,'11',NULL,NULL,NULL,'Phường'),
	 (12,'12',NULL,NULL,NULL,'Phường'),
	 (12,'13',NULL,NULL,NULL,'Phường'),
	 (12,'14',NULL,NULL,NULL,'Phường'),
	 (12,'15',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (12,'16',NULL,NULL,NULL,'Phường'),
	 (12,'2',NULL,NULL,NULL,'Phường'),
	 (12,'3',NULL,NULL,NULL,'Phường'),
	 (12,'4',NULL,NULL,NULL,'Phường'),
	 (12,'5',NULL,NULL,NULL,'Phường'),
	 (12,'6',NULL,NULL,NULL,'Phường'),
	 (12,'7',NULL,NULL,NULL,'Phường'),
	 (12,'8',NULL,NULL,NULL,'Phường'),
	 (12,'9',NULL,NULL,NULL,'Phường'),
	 (13,'An Phú Đông',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (13,'Đông Hưng Thuận',NULL,NULL,NULL,'Phường'),
	 (13,'Hiệp Thành',NULL,NULL,NULL,'Phường'),
	 (13,'Tân Chánh Hiệp',NULL,NULL,NULL,'Phường'),
	 (13,'Tân Hưng Thuận',NULL,NULL,NULL,'Phường'),
	 (13,'Tân Thới Hiệp',NULL,NULL,NULL,'Phường'),
	 (13,'Tân Thới Nhất',NULL,NULL,NULL,'Phường'),
	 (13,'Thạnh Lộc',NULL,NULL,NULL,'Phường'),
	 (13,'Thạnh Xuân',NULL,NULL,NULL,'Phường'),
	 (13,'Thới An',NULL,NULL,NULL,'Phường'),
	 (13,'Trung Mỹ Tây',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (14,'Thạnh Mỹ Lợi',NULL,NULL,NULL,'Phường'),
	 (14,'An Khánh',NULL,NULL,NULL,'Phường'),
	 (14,'An Lợi Đông',NULL,NULL,NULL,'Phường'),
	 (14,'An Phú',NULL,NULL,NULL,'Phường'),
	 (14,'Bình An',NULL,NULL,NULL,'Phường'),
	 (14,'Bình Khánh',NULL,NULL,NULL,'Phường'),
	 (14,'Bình Trưng Đông',NULL,NULL,NULL,'Phường'),
	 (14,'Bình Trưng Tây',NULL,NULL,NULL,'Phường'),
	 (14,'Cát Lái',NULL,NULL,NULL,'Phường'),
	 (14,'Thảo Điền',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (14,'Thủ Thiêm',NULL,NULL,NULL,'Phường'),
	 (15,'1',NULL,NULL,NULL,'Phường'),
	 (15,'10',NULL,NULL,NULL,'Phường'),
	 (15,'11',NULL,NULL,NULL,'Phường'),
	 (15,'12',NULL,NULL,NULL,'Phường'),
	 (15,'13',NULL,NULL,NULL,'Phường'),
	 (15,'14',NULL,NULL,NULL,'Phường'),
	 (15,'2',NULL,NULL,NULL,'Phường'),
	 (15,'3',NULL,NULL,NULL,'Phường'),
	 (15,'4',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (15,'5',NULL,NULL,NULL,'Phường'),
	 (15,'6',NULL,NULL,NULL,'Phường'),
	 (15,'7',NULL,NULL,NULL,'Phường'),
	 (15,'8',NULL,NULL,NULL,'Phường'),
	 (15,'9',NULL,NULL,NULL,'Phường'),
	 (16,'1',NULL,NULL,NULL,'Phường'),
	 (16,'10',NULL,NULL,NULL,'Phường'),
	 (16,'12',NULL,NULL,NULL,'Phường'),
	 (16,'13',NULL,NULL,NULL,'Phường'),
	 (16,'14',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (16,'15',NULL,NULL,NULL,'Phường'),
	 (16,'16',NULL,NULL,NULL,'Phường'),
	 (16,'18',NULL,NULL,NULL,'Phường'),
	 (16,'2',NULL,NULL,NULL,'Phường'),
	 (16,'3',NULL,NULL,NULL,'Phường'),
	 (16,'4',NULL,NULL,NULL,'Phường'),
	 (16,'5',NULL,NULL,NULL,'Phường'),
	 (16,'6',NULL,NULL,NULL,'Phường'),
	 (16,'8',NULL,NULL,NULL,'Phường'),
	 (16,'9',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (17,'1',NULL,NULL,NULL,'Phường'),
	 (17,'10',NULL,NULL,NULL,'Phường'),
	 (17,'11',NULL,NULL,NULL,'Phường'),
	 (17,'12',NULL,NULL,NULL,'Phường'),
	 (17,'13',NULL,NULL,NULL,'Phường'),
	 (17,'14',NULL,NULL,NULL,'Phường'),
	 (17,'15',NULL,NULL,NULL,'Phường'),
	 (17,'2',NULL,NULL,NULL,'Phường'),
	 (17,'3',NULL,NULL,NULL,'Phường'),
	 (17,'4',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (17,'5',NULL,NULL,NULL,'Phường'),
	 (17,'6',NULL,NULL,NULL,'Phường'),
	 (17,'7',NULL,NULL,NULL,'Phường'),
	 (17,'8',NULL,NULL,NULL,'Phường'),
	 (17,'9',NULL,NULL,NULL,'Phường'),
	 (18,'1',NULL,NULL,NULL,'Phường'),
	 (18,'10',NULL,NULL,NULL,'Phường'),
	 (18,'11',NULL,NULL,NULL,'Phường'),
	 (18,'12',NULL,NULL,NULL,'Phường'),
	 (18,'13',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (18,'14',NULL,NULL,NULL,'Phường'),
	 (18,'2',NULL,NULL,NULL,'Phường'),
	 (18,'3',NULL,NULL,NULL,'Phường'),
	 (18,'4',NULL,NULL,NULL,'Phường'),
	 (18,'5',NULL,NULL,NULL,'Phường'),
	 (18,'6',NULL,NULL,NULL,'Phường'),
	 (18,'7',NULL,NULL,NULL,'Phường'),
	 (18,'8',NULL,NULL,NULL,'Phường'),
	 (18,'9',NULL,NULL,NULL,'Phường'),
	 (19,'Bình Thuận',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (19,'Phú Mỹ',NULL,NULL,NULL,'Phường'),
	 (19,'Phú Thuận',NULL,NULL,NULL,'Phường'),
	 (19,'Tân Hưng',NULL,NULL,NULL,'Phường'),
	 (19,'Tân Kiểng',NULL,NULL,NULL,'Phường'),
	 (19,'Tân Phong',NULL,NULL,NULL,'Phường'),
	 (19,'Tân Phú',NULL,NULL,NULL,'Phường'),
	 (19,'Tân Quy',NULL,NULL,NULL,'Phường'),
	 (19,'Tân Thuận Đông',NULL,NULL,NULL,'Phường'),
	 (19,'Tân Thuận Tây',NULL,NULL,NULL,'Phường'),
	 (20,'1',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (20,'10',NULL,NULL,NULL,'Phường'),
	 (20,'11',NULL,NULL,NULL,'Phường'),
	 (20,'12',NULL,NULL,NULL,'Phường'),
	 (20,'13',NULL,NULL,NULL,'Phường'),
	 (20,'14',NULL,NULL,NULL,'Phường'),
	 (20,'15',NULL,NULL,NULL,'Phường'),
	 (20,'16',NULL,NULL,NULL,'Phường'),
	 (20,'2',NULL,NULL,NULL,'Phường'),
	 (20,'3',NULL,NULL,NULL,'Phường'),
	 (20,'4',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (20,'5',NULL,NULL,NULL,'Phường'),
	 (20,'6',NULL,NULL,NULL,'Phường'),
	 (20,'7',NULL,NULL,NULL,'Phường'),
	 (20,'8',NULL,NULL,NULL,'Phường'),
	 (20,'9',NULL,NULL,NULL,'Phường'),
	 (21,'Hiệp Phú',NULL,NULL,NULL,'Phường'),
	 (21,'Long Bình',NULL,NULL,NULL,'Phường'),
	 (21,'Long Phước',NULL,NULL,NULL,'Phường'),
	 (21,'Long Thạnh Mỹ',NULL,NULL,NULL,'Phường'),
	 (21,'Long Trường',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (21,'Phú Hữu',NULL,NULL,NULL,'Phường'),
	 (21,'Phước Bình',NULL,NULL,NULL,'Phường'),
	 (21,'Phước Long A',NULL,NULL,NULL,'Phường'),
	 (21,'Phước Long B',NULL,NULL,NULL,'Phường'),
	 (21,'Tân Phú',NULL,NULL,NULL,'Phường'),
	 (21,'Tăng Nhơn Phú A',NULL,NULL,NULL,'Phường'),
	 (21,'Tăng Nhơn Phú B',NULL,NULL,NULL,'Phường'),
	 (21,'Trường Thạnh',NULL,NULL,NULL,'Phường'),
	 (22,'1',NULL,NULL,NULL,'Phường'),
	 (22,'10',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (22,'11',NULL,NULL,NULL,'Phường'),
	 (22,'12',NULL,NULL,NULL,'Phường'),
	 (22,'13',NULL,NULL,NULL,'Phường'),
	 (22,'14',NULL,NULL,NULL,'Phường'),
	 (22,'15',NULL,NULL,NULL,'Phường'),
	 (22,'2',NULL,NULL,NULL,'Phường'),
	 (22,'3',NULL,NULL,NULL,'Phường'),
	 (22,'4',NULL,NULL,NULL,'Phường'),
	 (22,'5',NULL,NULL,NULL,'Phường'),
	 (22,'6',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (22,'7',NULL,NULL,NULL,'Phường'),
	 (22,'8',NULL,NULL,NULL,'Phường'),
	 (22,'9',NULL,NULL,NULL,'Phường'),
	 (23,'Hiệp Tân',NULL,NULL,NULL,'Phường'),
	 (23,'Hòa Thạnh',NULL,NULL,NULL,'Phường'),
	 (23,'Phú Thạnh',NULL,NULL,NULL,'Phường'),
	 (23,'Phú Thọ Hòa',NULL,NULL,NULL,'Phường'),
	 (23,'Phú Trung',NULL,NULL,NULL,'Phường'),
	 (23,'Sơn Kỳ',NULL,NULL,NULL,'Phường'),
	 (23,'Tân Quý',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (23,'Tân Sơn Nhì',NULL,NULL,NULL,'Phường'),
	 (23,'Tân Thành',NULL,NULL,NULL,'Phường'),
	 (23,'Tân Thới Hòa',NULL,NULL,NULL,'Phường'),
	 (23,'Tây Thạnh',NULL,NULL,NULL,'Phường'),
	 (24,'Bình Chiểu',NULL,NULL,NULL,'Phường'),
	 (24,'Bình Thọ',NULL,NULL,NULL,'Phường'),
	 (24,'Hiệp Bình Chánh',NULL,NULL,NULL,'Phường'),
	 (24,'Hiệp Bình Phước',NULL,NULL,NULL,'Phường'),
	 (24,'Linh Chiểu',NULL,NULL,NULL,'Phường'),
	 (24,'Linh Đông',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (24,'Linh Tây',NULL,NULL,NULL,'Phường'),
	 (24,'Linh Trung',NULL,NULL,NULL,'Phường'),
	 (24,'Linh Xuân',NULL,NULL,NULL,'Phường'),
	 (24,'Tam Bình',NULL,NULL,NULL,'Phường'),
	 (24,'Tam Phú',NULL,NULL,NULL,'Phường'),
	 (24,'Trường Thọ',NULL,NULL,NULL,'Phường'),
	 (25,'Cống Vị',NULL,NULL,NULL,'Phường'),
	 (25,'Điện Biên',NULL,NULL,NULL,'Phường'),
	 (25,'Đội Cấn',NULL,NULL,NULL,'Phường'),
	 (25,'Giảng Võ',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (25,'Kim Mã',NULL,NULL,NULL,'Phường'),
	 (25,'Liễu Giai',NULL,NULL,NULL,'Phường'),
	 (25,'Ngọc Hà',NULL,NULL,NULL,'Phường'),
	 (25,'Ngọc Khánh',NULL,NULL,NULL,'Phường'),
	 (25,'Nguyễn Trung Trực',NULL,NULL,NULL,'Phường'),
	 (25,'Phúc Xá',NULL,NULL,NULL,'Phường'),
	 (25,'Quán Thánh',NULL,NULL,NULL,'Phường'),
	 (25,'Thành Công',NULL,NULL,NULL,'Phường'),
	 (25,'Trúc Bạch',NULL,NULL,NULL,'Phường'),
	 (25,'Vĩnh Phúc',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (26,'Ba Trại',NULL,NULL,NULL,'Xã'),
	 (26,'Ba Vì',NULL,NULL,NULL,'Xã'),
	 (26,'Cẩm Lĩnh',NULL,NULL,NULL,'Xã'),
	 (26,'Cam Thượng',NULL,NULL,NULL,'Xã'),
	 (26,'Châu Sơn',NULL,NULL,NULL,'Xã'),
	 (26,'Chu Minh',NULL,NULL,NULL,'Xã'),
	 (26,'Cổ Đô',NULL,NULL,NULL,'Xã'),
	 (26,'Đông Quang',NULL,NULL,NULL,'Xã'),
	 (26,'Đồng Thái',NULL,NULL,NULL,'Xã'),
	 (26,'Khánh Thượng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (26,'Minh Châu',NULL,NULL,NULL,'Xã'),
	 (26,'Minh Quang',NULL,NULL,NULL,'Xã'),
	 (26,'Phong Vân',NULL,NULL,NULL,'Xã'),
	 (26,'Phú Châu',NULL,NULL,NULL,'Xã'),
	 (26,'Phú Cường',NULL,NULL,NULL,'Xã'),
	 (26,'Phú Đông',NULL,NULL,NULL,'Xã'),
	 (26,'Phú Phương',NULL,NULL,NULL,'Xã'),
	 (26,'Phú Sơn',NULL,NULL,NULL,'Xã'),
	 (26,'Sơn Đà',NULL,NULL,NULL,'Xã'),
	 (26,'Tản Hồng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (26,'Tản Lĩnh',NULL,NULL,NULL,'Xã'),
	 (26,'Tây Đằng',NULL,NULL,NULL,'Thị trấn'),
	 (26,'Thái Hòa',NULL,NULL,NULL,'Xã'),
	 (26,'Thuần Mỹ',NULL,NULL,NULL,'Xã'),
	 (26,'Thụy An',NULL,NULL,NULL,'Xã'),
	 (26,'Tiên Phong',NULL,NULL,NULL,'Xã'),
	 (26,'Tòng Bạt',NULL,NULL,NULL,'Xã'),
	 (26,'Vân Hòa',NULL,NULL,NULL,'Xã'),
	 (26,'Vạn Thắng',NULL,NULL,NULL,'Xã'),
	 (26,'Vật Lại',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (26,'Yên Bài',NULL,NULL,NULL,'Xã'),
	 (27,'Cổ Nhuế 1',NULL,NULL,NULL,'Phường'),
	 (27,'Cổ Nhuế 2',NULL,NULL,NULL,'Phường'),
	 (27,'Đông Ngạc',NULL,NULL,NULL,'Xã'),
	 (27,'Đức Thắng',NULL,NULL,NULL,'Phường'),
	 (27,'Liên Mạc',NULL,NULL,NULL,'Xã'),
	 (27,'Minh Khai',NULL,NULL,NULL,'Xã'),
	 (27,'Phú Diễn',NULL,NULL,NULL,'Phường'),
	 (27,'Phúc Diễn',NULL,NULL,NULL,'Phường'),
	 (27,'Tây Tựu',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (27,'Thượng Cát',NULL,NULL,NULL,'Xã'),
	 (27,'Thụy Phương',NULL,NULL,NULL,'Xã'),
	 (27,'Xuân Đỉnh',NULL,NULL,NULL,'Phường'),
	 (27,'Xuân Tảo',NULL,NULL,NULL,'Phường'),
	 (28,'Dịch Vọng',NULL,NULL,NULL,'Phường'),
	 (28,'Dịch Vọng Hậu',NULL,NULL,NULL,'Phường'),
	 (28,'Mai Dịch',NULL,NULL,NULL,'Phường'),
	 (28,'Nghĩa Đô',NULL,NULL,NULL,'Phường'),
	 (28,'Nghĩa Tân',NULL,NULL,NULL,'Phường'),
	 (28,'Quan Hoa',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (28,'Trung Hòa',NULL,NULL,NULL,'Phường'),
	 (28,'Yên Hòa',NULL,NULL,NULL,'Phường'),
	 (29,'Chúc Sơn',NULL,NULL,NULL,'Thị trấn'),
	 (29,'Đại Yên',NULL,NULL,NULL,'Xã'),
	 (29,'Đồng Lạc',NULL,NULL,NULL,'Xã'),
	 (29,'Đồng Phú',NULL,NULL,NULL,'Xã'),
	 (29,'Đông Phương Yên',NULL,NULL,NULL,'Xã'),
	 (29,'Đông Sơn',NULL,NULL,NULL,'Xã'),
	 (29,'Hoà Chính',NULL,NULL,NULL,'Xã'),
	 (29,'Hoàng Diệu',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (29,'Hoàng Văn Thụ',NULL,NULL,NULL,'Xã'),
	 (29,'Hồng Phong',NULL,NULL,NULL,'Xã'),
	 (29,'Hợp Đồng',NULL,NULL,NULL,'Xã'),
	 (29,'Hữu Văn',NULL,NULL,NULL,'Xã'),
	 (29,'Lam Điền',NULL,NULL,NULL,'Xã'),
	 (29,'Mỹ Lương',NULL,NULL,NULL,'Xã'),
	 (29,'Nam Phương Tiến',NULL,NULL,NULL,'Xã'),
	 (29,'Ngọc Hòa',NULL,NULL,NULL,'Xã'),
	 (29,'Phú Nam An',NULL,NULL,NULL,'Xã'),
	 (29,'Phú Nghĩa',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (29,'Phụng Châu',NULL,NULL,NULL,'Xã'),
	 (29,'Quảng Bị',NULL,NULL,NULL,'Xã'),
	 (29,'Tân Tiến',NULL,NULL,NULL,'Xã'),
	 (29,'Thanh Bình',NULL,NULL,NULL,'Xã'),
	 (29,'Thượng Vực',NULL,NULL,NULL,'Xã'),
	 (29,'Thụy Hương',NULL,NULL,NULL,'Xã'),
	 (29,'Thuỷ Xuân Tiên',NULL,NULL,NULL,'Xã'),
	 (29,'Tiên Phương',NULL,NULL,NULL,'Xã'),
	 (29,'Tốt Động',NULL,NULL,NULL,'Xã'),
	 (29,'Trần Phú',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (29,'Trung Hòa',NULL,NULL,NULL,'Xã'),
	 (29,'Trường Yên',NULL,NULL,NULL,'Xã'),
	 (29,'Văn Võ',NULL,NULL,NULL,'Xã'),
	 (29,'Xuân Mai',NULL,NULL,NULL,'Thị trấn'),
	 (30,'Đan Phượng',NULL,NULL,NULL,'Xã'),
	 (30,'Đồng Tháp',NULL,NULL,NULL,'Xã'),
	 (30,'Hạ Mỗ',NULL,NULL,NULL,'Xã'),
	 (30,'Hồng Hà',NULL,NULL,NULL,'Xã'),
	 (30,'Liên Hà',NULL,NULL,NULL,'Xã'),
	 (30,'Liên Hồng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (30,'Liên Trung',NULL,NULL,NULL,'Xã'),
	 (30,'Phùng',NULL,NULL,NULL,'Thị trấn'),
	 (30,'Phương Đình',NULL,NULL,NULL,'Xã'),
	 (30,'Song Phượng',NULL,NULL,NULL,'Xã'),
	 (30,'Tân Hội',NULL,NULL,NULL,'Xã'),
	 (30,'Tân Lập',NULL,NULL,NULL,'Xã'),
	 (30,'Thọ An',NULL,NULL,NULL,'Xã'),
	 (30,'Thọ Xuân',NULL,NULL,NULL,'Xã'),
	 (30,'Thượng Mỗ',NULL,NULL,NULL,'Xã'),
	 (30,'Trung Châu',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (31,'Bắc Hồng',NULL,NULL,NULL,'Xã'),
	 (31,'Cổ Loa',NULL,NULL,NULL,'Xã'),
	 (31,'Đại Mạch',NULL,NULL,NULL,'Xã'),
	 (31,'Đông Anh',NULL,NULL,NULL,'Thị trấn'),
	 (31,'Đông Hội',NULL,NULL,NULL,'Xã'),
	 (31,'Dục Tú',NULL,NULL,NULL,'Xã'),
	 (31,'Hải Bối',NULL,NULL,NULL,'Xã'),
	 (31,'Kim Chung',NULL,NULL,NULL,'Xã'),
	 (31,'Kim Nỗ',NULL,NULL,NULL,'Xã'),
	 (31,'Liên Hà',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (31,'Mai Lâm',NULL,NULL,NULL,'Xã'),
	 (31,'Nam Hồng',NULL,NULL,NULL,'Xã'),
	 (31,'Nguyên Khê',NULL,NULL,NULL,'Xã'),
	 (31,'Tàm Xá',NULL,NULL,NULL,'Xã'),
	 (31,'Tầm Xá',NULL,NULL,NULL,'Xã'),
	 (31,'Thụy Lâm',NULL,NULL,NULL,'Xã'),
	 (31,'Tiên Dương',NULL,NULL,NULL,'Xã'),
	 (31,'Uy Nỗ',NULL,NULL,NULL,'Xã'),
	 (31,'Vân Hà',NULL,NULL,NULL,'Xã'),
	 (31,'Vân Nội',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (31,'Việt Hùng',NULL,NULL,NULL,'Xã'),
	 (31,'Vĩnh Ngọc',NULL,NULL,NULL,'Xã'),
	 (31,'Võng La',NULL,NULL,NULL,'Xã'),
	 (31,'Xuân Canh',NULL,NULL,NULL,'Xã'),
	 (31,'Xuân Nộn',NULL,NULL,NULL,'Xã'),
	 (32,'Cát Linh',NULL,NULL,NULL,'Phường'),
	 (32,'Hàng Bột',NULL,NULL,NULL,'Phường'),
	 (32,'Khâm Thiên',NULL,NULL,NULL,'Phường'),
	 (32,'Khương Thượng',NULL,NULL,NULL,'Phường'),
	 (32,'Kim Liên',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (32,'Láng Hạ',NULL,NULL,NULL,'Phường'),
	 (32,'Láng Thượng',NULL,NULL,NULL,'Phường'),
	 (32,'Nam Đồng',NULL,NULL,NULL,'Phường'),
	 (32,'Ngã Tư Sở',NULL,NULL,NULL,'Phường'),
	 (32,'Ô Chợ Dừa',NULL,NULL,NULL,'Phường'),
	 (32,'Phương Liên',NULL,NULL,NULL,'Phường'),
	 (32,'Phương Mai',NULL,NULL,NULL,'Phường'),
	 (32,'Quang Trung',NULL,NULL,NULL,'Phường'),
	 (32,'Quốc Tử Giám',NULL,NULL,NULL,'Phường'),
	 (32,'Thịnh Quang',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (32,'Thổ Quan',NULL,NULL,NULL,'Phường'),
	 (32,'Trung Liệt',NULL,NULL,NULL,'Phường'),
	 (32,'Trung Phụng',NULL,NULL,NULL,'Phường'),
	 (32,'Trung Tự',NULL,NULL,NULL,'Phường'),
	 (32,'Văn Chương',NULL,NULL,NULL,'Phường'),
	 (32,'Văn Miếu',NULL,NULL,NULL,'Phường'),
	 (33,'Bát Tràng',NULL,NULL,NULL,'Xã'),
	 (33,'Cổ Bi',NULL,NULL,NULL,'Xã'),
	 (33,'Đa Tốn',NULL,NULL,NULL,'Xã'),
	 (33,'Đặng Xá',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (33,'Đình Xuyên',NULL,NULL,NULL,'Xã'),
	 (33,'Đông Dư',NULL,NULL,NULL,'Xã'),
	 (33,'Dương Hà',NULL,NULL,NULL,'Xã'),
	 (33,'Dương Quang',NULL,NULL,NULL,'Xã'),
	 (33,'Dương Xá',NULL,NULL,NULL,'Xã'),
	 (33,'Kiêu Kỵ',NULL,NULL,NULL,'Xã'),
	 (33,'Kim Lan',NULL,NULL,NULL,'Thị trấn'),
	 (33,'Kim Sơn',NULL,NULL,NULL,'Xã'),
	 (33,'Lệ Chi',NULL,NULL,NULL,'Xã'),
	 (33,'Ninh Hiệp',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (33,'Phù Đổng',NULL,NULL,NULL,'Xã'),
	 (33,'Phú Thị',NULL,NULL,NULL,'Xã'),
	 (33,'Trâu Quỳ',NULL,NULL,NULL,'Thị trấn'),
	 (33,'Trung Mầu',NULL,NULL,NULL,'Xã'),
	 (33,'Văn Đức',NULL,NULL,NULL,'Xã'),
	 (33,'Yên Thường',NULL,NULL,NULL,'Xã'),
	 (33,'Yên Viên',NULL,NULL,NULL,'Thị trấn'),
	 (33,'Yên Viên',NULL,NULL,NULL,'Xã'),
	 (34,'Biên Giang',NULL,NULL,NULL,'Phường'),
	 (34,'Đồng Mai',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (34,'Dương Nội',NULL,NULL,NULL,'Phường'),
	 (34,'Hà Cầu',NULL,NULL,NULL,'Phường'),
	 (34,'Kiến Hưng',NULL,NULL,NULL,'Phường'),
	 (34,'La Khê',NULL,NULL,NULL,'Phường'),
	 (34,'Mỗ Lao',NULL,NULL,NULL,'Phường'),
	 (34,'Nguyễn Trãi',NULL,NULL,NULL,'Phường'),
	 (34,'Phú La',NULL,NULL,NULL,'Phường'),
	 (34,'Phú Lãm',NULL,NULL,NULL,'Phường'),
	 (34,'Phú Lương',NULL,NULL,NULL,'Phường'),
	 (34,'Phúc La',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (34,'Quang Trung',NULL,NULL,NULL,'Phường'),
	 (34,'Vạn Phúc',NULL,NULL,NULL,'Phường'),
	 (34,'Văn Quán',NULL,NULL,NULL,'Phường'),
	 (34,'Yên Nghĩa',NULL,NULL,NULL,'Phường'),
	 (34,'Yết Kiêu',NULL,NULL,NULL,'Phường'),
	 (35,'Bạch Đằng',NULL,NULL,NULL,'Phường'),
	 (35,'Bách Khoa',NULL,NULL,NULL,'Phường'),
	 (35,'Bạch Mai',NULL,NULL,NULL,'Phường'),
	 (35,'Bùi Thị Xuân',NULL,NULL,NULL,'Phường'),
	 (35,'Cầu Dền',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (35,'Đống Mác',NULL,NULL,NULL,'Phường'),
	 (35,'Đồng Nhân',NULL,NULL,NULL,'Phường'),
	 (35,'Đồng Tâm',NULL,NULL,NULL,'Phường'),
	 (35,'Lê Đại Hành',NULL,NULL,NULL,'Phường'),
	 (35,'Minh Khai',NULL,NULL,NULL,'Phường'),
	 (35,'Ngô Thì Nhậm',NULL,NULL,NULL,'Phường'),
	 (35,'Nguyễn Du',NULL,NULL,NULL,'Phường'),
	 (35,'Phạm Đình Hổ',NULL,NULL,NULL,'Phường'),
	 (35,'Phố Huế',NULL,NULL,NULL,'Phường'),
	 (35,'Quỳnh Lôi',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (35,'Quỳnh Mai',NULL,NULL,NULL,'Phường'),
	 (35,'Thanh Lương',NULL,NULL,NULL,'Phường'),
	 (35,'Thanh Nhàn',NULL,NULL,NULL,'Phường'),
	 (35,'Trương Định',NULL,NULL,NULL,'Phường'),
	 (35,'Vĩnh Tuy',NULL,NULL,NULL,'Phường'),
	 (36,'An Khánh',NULL,NULL,NULL,'Xã'),
	 (36,'An Thượng',NULL,NULL,NULL,'Xã'),
	 (36,'Cát Quế',NULL,NULL,NULL,'Xã'),
	 (36,'Đắc Sở',NULL,NULL,NULL,'Xã'),
	 (36,'Di Trạch',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (36,'Đông La',NULL,NULL,NULL,'Xã'),
	 (36,'Đức Giang',NULL,NULL,NULL,'Xã'),
	 (36,'Đức Thượng',NULL,NULL,NULL,'Xã'),
	 (36,'Dương Liễu',NULL,NULL,NULL,'Xã'),
	 (36,'Kim Chung',NULL,NULL,NULL,'Xã'),
	 (36,'La Phù',NULL,NULL,NULL,'Xã'),
	 (36,'Lại Yên',NULL,NULL,NULL,'Xã'),
	 (36,'Minh Khai',NULL,NULL,NULL,'Xã'),
	 (36,'Sơn Đồng',NULL,NULL,NULL,'Xã'),
	 (36,'Song Phương',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (36,'Tiền Yên',NULL,NULL,NULL,'Xã'),
	 (36,'Trạm Trôi',NULL,NULL,NULL,'Thị trấn'),
	 (36,'Vân Canh',NULL,NULL,NULL,'Xã'),
	 (36,'Vân Côn',NULL,NULL,NULL,'Xã'),
	 (36,'Yên Sở',NULL,NULL,NULL,'Xã'),
	 (37,'Chương Dương Độ',NULL,NULL,NULL,'Phường'),
	 (37,'Cửa Đông',NULL,NULL,NULL,'Phường'),
	 (37,'Cửa Nam',NULL,NULL,NULL,'Phường'),
	 (37,'Đồng Xuân',NULL,NULL,NULL,'Phường'),
	 (37,'Hàng Bạc',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (37,'Hàng Bài',NULL,NULL,NULL,'Phường'),
	 (37,'Hàng Bồ',NULL,NULL,NULL,'Phường'),
	 (37,'Hàng Bông',NULL,NULL,NULL,'Phường'),
	 (37,'Hàng Buồm',NULL,NULL,NULL,'Phường'),
	 (37,'Hàng Đào',NULL,NULL,NULL,'Phường'),
	 (37,'Hàng Gai',NULL,NULL,NULL,'Phường'),
	 (37,'Hàng Mã',NULL,NULL,NULL,'Phường'),
	 (37,'Hàng Trống',NULL,NULL,NULL,'Phường'),
	 (37,'Lý Thái Tổ',NULL,NULL,NULL,'Phường'),
	 (37,'Phan Chu Trinh',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (37,'Phúc Tân',NULL,NULL,NULL,'Phường'),
	 (37,'Trần Hưng Đạo',NULL,NULL,NULL,'Phường'),
	 (37,'Tràng Tiền',NULL,NULL,NULL,'Phường'),
	 (38,'Đại Kim',NULL,NULL,NULL,'Phường'),
	 (38,'Định Công',NULL,NULL,NULL,'Phường'),
	 (38,'Giáp Bát',NULL,NULL,NULL,'Phường'),
	 (38,'Hoàng Liệt',NULL,NULL,NULL,'Phường'),
	 (38,'Hoàng Văn Thụ',NULL,NULL,NULL,'Phường'),
	 (38,'Lĩnh Nam',NULL,NULL,NULL,'Phường'),
	 (38,'Mai Động',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (38,'Tân Mai',NULL,NULL,NULL,'Phường'),
	 (38,'Thanh Trì',NULL,NULL,NULL,'Phường'),
	 (38,'Thịnh Liệt',NULL,NULL,NULL,'Phường'),
	 (38,'Trần Phú',NULL,NULL,NULL,'Phường'),
	 (38,'Tương Mai',NULL,NULL,NULL,'Phường'),
	 (38,'Vĩnh Hưng',NULL,NULL,NULL,'Phường'),
	 (38,'Yên Sở',NULL,NULL,NULL,'Phường'),
	 (39,'Bồ Đề',NULL,NULL,NULL,'Phường'),
	 (39,'Cự Khối',NULL,NULL,NULL,'Phường'),
	 (39,'Đức Giang',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (39,'Gia Thụy',NULL,NULL,NULL,'Phường'),
	 (39,'Giang Biên',NULL,NULL,NULL,'Phường'),
	 (39,'Long Biên',NULL,NULL,NULL,'Phường'),
	 (39,'Ngọc Lâm',NULL,NULL,NULL,'Phường'),
	 (39,'Ngọc Thụy',NULL,NULL,NULL,'Phường'),
	 (39,'Phúc Đồng',NULL,NULL,NULL,'Phường'),
	 (39,'Phúc Lợi',NULL,NULL,NULL,'Phường'),
	 (39,'Sài Đồng',NULL,NULL,NULL,'Phường'),
	 (39,'Thạch Bàn',NULL,NULL,NULL,'Phường'),
	 (39,'Thượng Thanh',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (39,'Việt Hưng',NULL,NULL,NULL,'Phường'),
	 (40,'Chi Đông',NULL,NULL,NULL,'Thị trấn'),
	 (40,'Chu Phan',NULL,NULL,NULL,'Xã'),
	 (40,'Đại Thịnh',NULL,NULL,NULL,'Xã'),
	 (40,'Hoàng Kim',NULL,NULL,NULL,'Xã'),
	 (40,'Kim Hoa',NULL,NULL,NULL,'Xã'),
	 (40,'Liên Mạc',NULL,NULL,NULL,'Xã'),
	 (40,'Mê Linh',NULL,NULL,NULL,'Xã'),
	 (40,'Quang Minh',NULL,NULL,NULL,'Thị trấn'),
	 (40,'Tam Đồng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (40,'Thạch Đà',NULL,NULL,NULL,'Xã'),
	 (40,'Thanh Lâm',NULL,NULL,NULL,'Xã'),
	 (40,'Tiền Phong',NULL,NULL,NULL,'Xã'),
	 (40,'Tiến Thắng',NULL,NULL,NULL,'Xã'),
	 (40,'Tiến Thịnh',NULL,NULL,NULL,'Xã'),
	 (40,'Tráng Việt',NULL,NULL,NULL,'Xã'),
	 (40,'Tự Lập',NULL,NULL,NULL,'Xã'),
	 (40,'Văn Khê',NULL,NULL,NULL,'Xã'),
	 (40,'Vạn Yên',NULL,NULL,NULL,'Xã'),
	 (41,'An Mỹ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (41,'An Phú',NULL,NULL,NULL,'Xã'),
	 (41,'An Tiến',NULL,NULL,NULL,'Xã'),
	 (41,'Bột Xuyên',NULL,NULL,NULL,'Xã'),
	 (41,'Đại Hưng',NULL,NULL,NULL,'Xã'),
	 (41,'Đại Nghĩa',NULL,NULL,NULL,'Thị trấn'),
	 (41,'Đốc Tín',NULL,NULL,NULL,'Xã'),
	 (41,'Đồng Tâm',NULL,NULL,NULL,'Xã'),
	 (41,'Hồng Sơn',NULL,NULL,NULL,'Xã'),
	 (41,'Hợp Thanh',NULL,NULL,NULL,'Xã'),
	 (41,'Hợp Tiến',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (41,'Hùng Tiến',NULL,NULL,NULL,'Xã'),
	 (41,'Hương Sơn',NULL,NULL,NULL,'Xã'),
	 (41,'Lê Thanh',NULL,NULL,NULL,'Xã'),
	 (41,'Mỹ Thành',NULL,NULL,NULL,'Xã'),
	 (41,'Phù Lưu Tế',NULL,NULL,NULL,'Xã'),
	 (41,'Phúc Lâm',NULL,NULL,NULL,'Xã'),
	 (41,'Phùng Xá',NULL,NULL,NULL,'Xã'),
	 (41,'Thượng Lâm',NULL,NULL,NULL,'Xã'),
	 (41,'Tuy Lai',NULL,NULL,NULL,'Xã'),
	 (41,'Vạn Kim',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (41,'Xuy Xá',NULL,NULL,NULL,'Xã'),
	 (42,'Cầu Diễn',NULL,NULL,NULL,'Thị trấn'),
	 (42,'Đại Mỗ',NULL,NULL,NULL,'Xã'),
	 (42,'Mễ Trì',NULL,NULL,NULL,'Xã'),
	 (42,'Mỹ Đình 1',NULL,NULL,NULL,'Phường'),
	 (42,'Mỹ Đình 2',NULL,NULL,NULL,'Phường'),
	 (42,'Phú Đô',NULL,NULL,NULL,'Xã'),
	 (42,'Phương Canh',NULL,NULL,NULL,'Phường'),
	 (42,'Tây Mỗ',NULL,NULL,NULL,'Xã'),
	 (42,'Trung Văn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (42,'Xuân Phương',NULL,NULL,NULL,'Phường'),
	 (43,'Bạch Hạ',NULL,NULL,NULL,'Xã'),
	 (43,'Châu Can',NULL,NULL,NULL,'Xã'),
	 (43,'Chuyên Mỹ',NULL,NULL,NULL,'Xã'),
	 (43,'Đại Thắng',NULL,NULL,NULL,'Xã'),
	 (43,'Đại Xuyên',NULL,NULL,NULL,'Xã'),
	 (43,'Hoàng Long',NULL,NULL,NULL,'Xã'),
	 (43,'Hồng Minh',NULL,NULL,NULL,'Xã'),
	 (43,'Hồng Thái',NULL,NULL,NULL,'Xã'),
	 (43,'Khai Thái',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (43,'Minh Tân',NULL,NULL,NULL,'Xã'),
	 (43,'Nam Phong',NULL,NULL,NULL,'Xã'),
	 (43,'Nam Triều',NULL,NULL,NULL,'Xã'),
	 (43,'Phú Minh',NULL,NULL,NULL,'Thị trấn'),
	 (43,'Phú Túc',NULL,NULL,NULL,'Xã'),
	 (43,'Phú Xuyên',NULL,NULL,NULL,'Thị trấn'),
	 (43,'Phú Yên',NULL,NULL,NULL,'Xã'),
	 (43,'Phúc Tiến',NULL,NULL,NULL,'Xã'),
	 (43,'Phượng Dực',NULL,NULL,NULL,'Xã'),
	 (43,'Quang Lãng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (43,'Quang Trung',NULL,NULL,NULL,'Xã'),
	 (43,'Sơn Hà',NULL,NULL,NULL,'Xã'),
	 (43,'Tân Dân',NULL,NULL,NULL,'Xã'),
	 (43,'Thụy Phú',NULL,NULL,NULL,'Xã'),
	 (43,'Tri Thủy',NULL,NULL,NULL,'Xã'),
	 (43,'Tri Trung',NULL,NULL,NULL,'Xã'),
	 (43,'Văn Hoàng',NULL,NULL,NULL,'Xã'),
	 (43,'Văn Nhân',NULL,NULL,NULL,'Xã'),
	 (43,'Vân Từ',NULL,NULL,NULL,'Xã'),
	 (44,'Cẩm Đình',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (44,'Gạch',NULL,NULL,NULL,'Thị trấn'),
	 (44,'Hát Môn',NULL,NULL,NULL,'Xã'),
	 (44,'Hiệp Thuận',NULL,NULL,NULL,'Xã'),
	 (44,'Liên Hiệp',NULL,NULL,NULL,'Xã'),
	 (44,'Long Xuyên',NULL,NULL,NULL,'Xã'),
	 (44,'Ngọc Tảo',NULL,NULL,NULL,'Xã'),
	 (44,'Phúc Hòa',NULL,NULL,NULL,'Xã'),
	 (44,'Phúc Thọ',NULL,NULL,NULL,'Thị trấn'),
	 (44,'Phụng Thượng',NULL,NULL,NULL,'Xã'),
	 (44,'Phương Độ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (44,'Sen Chiểu',NULL,NULL,NULL,'Xã'),
	 (44,'Tam Hiệp',NULL,NULL,NULL,'Xã'),
	 (44,'Tam Thuấn',NULL,NULL,NULL,'Xã'),
	 (44,'Thanh Đa',NULL,NULL,NULL,'Xã'),
	 (44,'Thọ Lộc',NULL,NULL,NULL,'Xã'),
	 (44,'Thượng Cốc',NULL,NULL,NULL,'Xã'),
	 (44,'Tích Giang',NULL,NULL,NULL,'Xã'),
	 (44,'Trạch Mỹ Lộc',NULL,NULL,NULL,'Xã'),
	 (44,'Vân Hà',NULL,NULL,NULL,'Xã'),
	 (44,'Vân Nam',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (44,'Vân Phúc',NULL,NULL,NULL,'Xã'),
	 (44,'Võng Xuyên',NULL,NULL,NULL,'Xã'),
	 (44,'Xuân Phú',NULL,NULL,NULL,'Xã'),
	 (45,'Cấn Hữu',NULL,NULL,NULL,'Xã'),
	 (45,'Cộng Hòa',NULL,NULL,NULL,'Xã'),
	 (45,'Đại Thành',NULL,NULL,NULL,'Xã'),
	 (45,'Đồng Quang',NULL,NULL,NULL,'Xã'),
	 (45,'Đông Xuân',NULL,NULL,NULL,'Xã'),
	 (45,'Đông Yên',NULL,NULL,NULL,'Xã'),
	 (45,'Hòa Thạch',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (45,'Liệp Tuyết',NULL,NULL,NULL,'Xã'),
	 (45,'Nghĩa Hương',NULL,NULL,NULL,'Xã'),
	 (45,'Ngọc Liệp',NULL,NULL,NULL,'Xã'),
	 (45,'Ngọc Mỹ',NULL,NULL,NULL,'Xã'),
	 (45,'Phú Cát',NULL,NULL,NULL,'Xã'),
	 (45,'Phú Mãn',NULL,NULL,NULL,'Xã'),
	 (45,'Phượng Cách',NULL,NULL,NULL,'Xã'),
	 (45,'Quốc Oai',NULL,NULL,NULL,'Thị trấn'),
	 (45,'Sài Sơn',NULL,NULL,NULL,'Xã'),
	 (45,'Tân Hòa',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (45,'Tân Phú',NULL,NULL,NULL,'Xã'),
	 (45,'Thạch Thán',NULL,NULL,NULL,'Xã'),
	 (45,'Tuyết Nghĩa',NULL,NULL,NULL,'Xã'),
	 (45,'Yên Sơn',NULL,NULL,NULL,'Xã'),
	 (46,'Bắc Phú',NULL,NULL,NULL,'Xã'),
	 (46,'Bắc Sơn',NULL,NULL,NULL,'Xã'),
	 (46,'Đông Xuân',NULL,NULL,NULL,'Xã'),
	 (46,'Đức Hoà',NULL,NULL,NULL,'Xã'),
	 (46,'Hiền Ninh',NULL,NULL,NULL,'Xã'),
	 (46,'Hồng Kỳ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (46,'Kim Lũ',NULL,NULL,NULL,'Xã'),
	 (46,'Mai Đình',NULL,NULL,NULL,'Xã'),
	 (46,'Minh Phú',NULL,NULL,NULL,'Xã'),
	 (46,'Minh Trí',NULL,NULL,NULL,'Xã'),
	 (46,'Nam Sơn',NULL,NULL,NULL,'Xã'),
	 (46,'Phú Cường',NULL,NULL,NULL,'Xã'),
	 (46,'Phù Linh',NULL,NULL,NULL,'Xã'),
	 (46,'Phù Lỗ',NULL,NULL,NULL,'Xã'),
	 (46,'Phú Minh',NULL,NULL,NULL,'Xã'),
	 (46,'Quang Tiến',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (46,'Sóc Sơn',NULL,NULL,NULL,'Thị trấn'),
	 (46,'Tân Dân',NULL,NULL,NULL,'Xã'),
	 (46,'Tân Hưng',NULL,NULL,NULL,'Xã'),
	 (46,'Tân Minh',NULL,NULL,NULL,'Xã'),
	 (46,'Thanh Xuân',NULL,NULL,NULL,'Xã'),
	 (46,'Tiên Dược',NULL,NULL,NULL,'Xã'),
	 (46,'Trung Giã',NULL,NULL,NULL,'Xã'),
	 (46,'Việt Long',NULL,NULL,NULL,'Xã'),
	 (46,'Xuân Giang',NULL,NULL,NULL,'Xã'),
	 (46,'Xuân Thu',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (47,'Cổ Đông',NULL,NULL,NULL,'Xã'),
	 (47,'Đường Lâm',NULL,NULL,NULL,'Xã'),
	 (47,'Kim Sơn',NULL,NULL,NULL,'Phường'),
	 (47,'Lê Lợi',NULL,NULL,NULL,'Phường'),
	 (47,'Ngô Quyền',NULL,NULL,NULL,'Phường'),
	 (47,'Phú Thịnh',NULL,NULL,NULL,'Phường'),
	 (47,'Quang Trung',NULL,NULL,NULL,'Phường'),
	 (47,'Sơn Đông',NULL,NULL,NULL,'Xã'),
	 (47,'Sơn Lộc',NULL,NULL,NULL,'Phường'),
	 (47,'Thanh Mỹ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (47,'Trung Hưng',NULL,NULL,NULL,'Phường'),
	 (47,'Trung Sơn Trầm',NULL,NULL,NULL,'Phường'),
	 (47,'Viên Sơn',NULL,NULL,NULL,'Phường'),
	 (47,'Xuân Khanh',NULL,NULL,NULL,'Phường'),
	 (47,'Xuân Sơn',NULL,NULL,NULL,'Xã'),
	 (48,'Bưởi',NULL,NULL,NULL,'Phường'),
	 (48,'Nhật Tân',NULL,NULL,NULL,'Phường'),
	 (48,'Phú Thượng',NULL,NULL,NULL,'Phường'),
	 (48,'Quảng An',NULL,NULL,NULL,'Phường'),
	 (48,'Thụy Khuê',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (48,'Tứ Liên',NULL,NULL,NULL,'Phường'),
	 (48,'Xuân La',NULL,NULL,NULL,'Phường'),
	 (48,'Yên Phụ',NULL,NULL,NULL,'Phường'),
	 (49,'Bình Phú',NULL,NULL,NULL,'Xã'),
	 (49,'Bình Yên',NULL,NULL,NULL,'Xã'),
	 (49,'Cẩm Yên',NULL,NULL,NULL,'Xã'),
	 (49,'Cần Kiệm',NULL,NULL,NULL,'Xã'),
	 (49,'Canh Nậu',NULL,NULL,NULL,'Xã'),
	 (49,'Chàng Sơn',NULL,NULL,NULL,'Xã'),
	 (49,'Đại Đồng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (49,'Dị Nậu',NULL,NULL,NULL,'Xã'),
	 (49,'Đồng Trúc',NULL,NULL,NULL,'Xã'),
	 (49,'Hạ Bằng',NULL,NULL,NULL,'Xã'),
	 (49,'Hương Ngải',NULL,NULL,NULL,'Xã'),
	 (49,'Hữu Bằng',NULL,NULL,NULL,'Xã'),
	 (49,'Kim Quan',NULL,NULL,NULL,'Xã'),
	 (49,'Lại Thượng',NULL,NULL,NULL,'Xã'),
	 (49,'Liên Quan',NULL,NULL,NULL,'Thị trấn'),
	 (49,'Phú Kim',NULL,NULL,NULL,'Xã'),
	 (49,'Phùng Xá',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (49,'Tân Xã',NULL,NULL,NULL,'Xã'),
	 (49,'Thạch Hòa',NULL,NULL,NULL,'Xã'),
	 (49,'Thạch Xá',NULL,NULL,NULL,'Xã'),
	 (49,'Tiến Xuân',NULL,NULL,NULL,'Xã'),
	 (49,'Yên Bình',NULL,NULL,NULL,'Xã'),
	 (49,'Yên Trung',NULL,NULL,NULL,'Xã'),
	 (50,'Bích Hòa',NULL,NULL,NULL,'Xã'),
	 (50,'Bình Minh',NULL,NULL,NULL,'Xã'),
	 (50,'Cao Dương',NULL,NULL,NULL,'Xã'),
	 (50,'Cao Viên',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (50,'Cự Khê',NULL,NULL,NULL,'Xã'),
	 (50,'Dân Hòa',NULL,NULL,NULL,'Xã'),
	 (50,'Đỗ Động',NULL,NULL,NULL,'Xã'),
	 (50,'Hồng Dương',NULL,NULL,NULL,'Xã'),
	 (50,'Kim An',NULL,NULL,NULL,'Xã'),
	 (50,'Kim Bài',NULL,NULL,NULL,'Thị trấn'),
	 (50,'Kim Thư',NULL,NULL,NULL,'Xã'),
	 (50,'Liên Châu',NULL,NULL,NULL,'Xã'),
	 (50,'Mỹ Hưng',NULL,NULL,NULL,'Xã'),
	 (50,'Phương Trung',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (50,'Tam Hưng',NULL,NULL,NULL,'Xã'),
	 (50,'Tân Ước',NULL,NULL,NULL,'Xã'),
	 (50,'Thanh Cao',NULL,NULL,NULL,'Xã'),
	 (50,'Thanh Mai',NULL,NULL,NULL,'Xã'),
	 (50,'Thanh Thùy',NULL,NULL,NULL,'Xã'),
	 (50,'Thanh Văn',NULL,NULL,NULL,'Xã'),
	 (50,'Xuân Dương',NULL,NULL,NULL,'Xã'),
	 (51,'Đại Áng',NULL,NULL,NULL,'Xã'),
	 (51,'Đông Mỹ',NULL,NULL,NULL,'Xã'),
	 (51,'Duyên Hà',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (51,'Hữu Hòa',NULL,NULL,NULL,'Xã'),
	 (51,'Liên Ninh',NULL,NULL,NULL,'Xã'),
	 (51,'Ngọc Hồi',NULL,NULL,NULL,'Xã'),
	 (51,'Ngũ Hiệp',NULL,NULL,NULL,'Xã'),
	 (51,'Tả Thanh Oai',NULL,NULL,NULL,'Xã'),
	 (51,'Tam Hiệp',NULL,NULL,NULL,'Xã'),
	 (51,'Tân Triều',NULL,NULL,NULL,'Xã'),
	 (51,'Thanh Liệt',NULL,NULL,NULL,'Xã'),
	 (51,'Tứ Hiệp',NULL,NULL,NULL,'Xã'),
	 (51,'Văn Điển',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (51,'Vạn Phúc',NULL,NULL,NULL,'Xã'),
	 (51,'Vĩnh Quỳnh',NULL,NULL,NULL,'Xã'),
	 (51,'Yên Mỹ',NULL,NULL,NULL,'Xã'),
	 (52,'Hạ Đình',NULL,NULL,NULL,'Phường'),
	 (52,'Khương Đình',NULL,NULL,NULL,'Phường'),
	 (52,'Khương Mai',NULL,NULL,NULL,'Phường'),
	 (52,'Khương Trung',NULL,NULL,NULL,'Phường'),
	 (52,'Kim Giang',NULL,NULL,NULL,'Phường'),
	 (52,'Nhân Chính',NULL,NULL,NULL,'Phường'),
	 (52,'Phương Liệt',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (52,'Thanh Xuân Bắc',NULL,NULL,NULL,'Phường'),
	 (52,'Thanh Xuân Nam',NULL,NULL,NULL,'Phường'),
	 (52,'Thanh Xuân Trung',NULL,NULL,NULL,'Phường'),
	 (52,'Thượng Đình',NULL,NULL,NULL,'Phường'),
	 (53,'Chương Dương',NULL,NULL,NULL,'Xã'),
	 (53,'Dũng Tiến',NULL,NULL,NULL,'Xã'),
	 (53,'Duyên Thái',NULL,NULL,NULL,'Xã'),
	 (53,'Hà Hồi',NULL,NULL,NULL,'Xã'),
	 (53,'Hiền Giang',NULL,NULL,NULL,'Xã'),
	 (53,'Hòa Bình',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (53,'Hồng Vân',NULL,NULL,NULL,'Xã'),
	 (53,'Khánh Hà',NULL,NULL,NULL,'Xã'),
	 (53,'Lê Lợi',NULL,NULL,NULL,'Xã'),
	 (53,'Liên Phương',NULL,NULL,NULL,'Xã'),
	 (53,'Minh Cường',NULL,NULL,NULL,'Xã'),
	 (53,'Nghiêm Xuyên',NULL,NULL,NULL,'Xã'),
	 (53,'Nguyễn Trãi',NULL,NULL,NULL,'Xã'),
	 (53,'Nhị Khê',NULL,NULL,NULL,'Xã'),
	 (53,'Ninh Sở',NULL,NULL,NULL,'Xã'),
	 (53,'Quất Động',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (53,'Tân Minh',NULL,NULL,NULL,'Xã'),
	 (53,'Thắng Lợi',NULL,NULL,NULL,'Xã'),
	 (53,'Thống Nhất',NULL,NULL,NULL,'Xã'),
	 (53,'Thư Phú',NULL,NULL,NULL,'Xã'),
	 (53,'Thường Tín',NULL,NULL,NULL,'Thị trấn'),
	 (53,'Tiền Phong',NULL,NULL,NULL,'Xã'),
	 (53,'Tô Hiệu',NULL,NULL,NULL,'Xã'),
	 (53,'Tự Nhiên',NULL,NULL,NULL,'Xã'),
	 (53,'Văn Bình',NULL,NULL,NULL,'Xã'),
	 (53,'Vạn Điểm',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (53,'Văn Phú',NULL,NULL,NULL,'Xã'),
	 (53,'Vân Tảo',NULL,NULL,NULL,'Xã'),
	 (53,'Văn Tự',NULL,NULL,NULL,'Xã'),
	 (54,'Cao Thành',NULL,NULL,NULL,'Xã'),
	 (54,'Đại Cường',NULL,NULL,NULL,'Xã'),
	 (54,'Đại Hùng',NULL,NULL,NULL,'Xã'),
	 (54,'Đội Bình',NULL,NULL,NULL,'Xã'),
	 (54,'Đông Lỗ',NULL,NULL,NULL,'Xã'),
	 (54,'Đồng Tân',NULL,NULL,NULL,'Xã'),
	 (54,'Đồng Tiến',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (54,'Hòa Lâm',NULL,NULL,NULL,'Xã'),
	 (54,'Hòa Nam',NULL,NULL,NULL,'Xã'),
	 (54,'Hòa Phú',NULL,NULL,NULL,'Xã'),
	 (54,'Hoa Sơn',NULL,NULL,NULL,'Xã'),
	 (54,'Hòa Xá',NULL,NULL,NULL,'Xã'),
	 (54,'Hồng Quang',NULL,NULL,NULL,'Xã'),
	 (54,'Kim Đường',NULL,NULL,NULL,'Xã'),
	 (54,'Liên Bạt',NULL,NULL,NULL,'Xã'),
	 (54,'Lưu Hoàng',NULL,NULL,NULL,'Xã'),
	 (54,'Minh Đức',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (54,'Phù Lưu',NULL,NULL,NULL,'Xã'),
	 (54,'Phương Tú',NULL,NULL,NULL,'Xã'),
	 (54,'Quảng Phú Cầu',NULL,NULL,NULL,'Xã'),
	 (54,'Sơn Công',NULL,NULL,NULL,'Xã'),
	 (54,'Tân Phương',NULL,NULL,NULL,'Xã'),
	 (54,'Tảo Dương Văn',NULL,NULL,NULL,'Xã'),
	 (54,'Trầm Lộng',NULL,NULL,NULL,'Xã'),
	 (54,'Trung Tú',NULL,NULL,NULL,'Xã'),
	 (54,'Trường Thịnh',NULL,NULL,NULL,'Xã'),
	 (54,'Vân Đình',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (54,'Vạn Thái',NULL,NULL,NULL,'Xã'),
	 (54,'Viên An',NULL,NULL,NULL,'Xã'),
	 (54,'Viên Nội',NULL,NULL,NULL,'Xã'),
	 (55,'Hòa An',NULL,NULL,NULL,'Phường'),
	 (55,'Hòa Phát',NULL,NULL,NULL,'Phường'),
	 (55,'Hòa Thọ Đông',NULL,NULL,NULL,'Phường'),
	 (55,'Hòa Thọ Tây',NULL,NULL,NULL,'Phường'),
	 (55,'Hòa Xuân',NULL,NULL,NULL,'Phường'),
	 (55,'Khuê Trung',NULL,NULL,NULL,'Phường'),
	 (56,' Hải Châu I',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (56,' Hòa Thuận Đông',NULL,NULL,NULL,'Phường'),
	 (56,'Bình Hiên',NULL,NULL,NULL,'Phường'),
	 (56,'Bình Thuận',NULL,NULL,NULL,'Phường'),
	 (56,'Hải Châu II',NULL,NULL,NULL,'Phường'),
	 (56,'Hòa Cường Bắc',NULL,NULL,NULL,'Phường'),
	 (56,'Hòa Cường Nam',NULL,NULL,NULL,'Phường'),
	 (56,'Hòa Thuận Tây',NULL,NULL,NULL,'Phường'),
	 (56,'Nam Dương',NULL,NULL,NULL,'Phường'),
	 (56,'Phước Ninh',NULL,NULL,NULL,'Phường'),
	 (56,'Thạch Thang',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (56,'Thanh Bình',NULL,NULL,NULL,'Phường'),
	 (56,'Thuận Phước',NULL,NULL,NULL,'Phường'),
	 (57,'Hòa Bắc',NULL,NULL,NULL,'Phường'),
	 (57,'Hòa Châu',NULL,NULL,NULL,'Phường'),
	 (57,'Hòa Khương',NULL,NULL,NULL,'Phường'),
	 (57,'Hòa Liên',NULL,NULL,NULL,'Phường'),
	 (57,'Hòa Nhơn',NULL,NULL,NULL,'Phường'),
	 (57,'Hòa Ninh',NULL,NULL,NULL,'Xã'),
	 (57,'Hòa Phong',NULL,NULL,NULL,'Xã'),
	 (57,'Hòa Phú',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (57,'Hòa Phước',NULL,NULL,NULL,'Xã'),
	 (57,'Hòa Sơn',NULL,NULL,NULL,'Xã'),
	 (57,'Hòa Tiến',NULL,NULL,NULL,'Xã'),
	 (59,'Hòa Hiệp Bắc',NULL,NULL,NULL,'Phường'),
	 (59,'Hòa Hiệp Nam',NULL,NULL,NULL,'Phường'),
	 (59,'Hòa Khánh Bắc',NULL,NULL,NULL,'Phường'),
	 (59,'Hòa Khánh Nam',NULL,NULL,NULL,'Phường'),
	 (59,'Hòa Minh',NULL,NULL,NULL,'Phường'),
	 (60,' Khuê Mỹ',NULL,NULL,NULL,'Phường'),
	 (60,'Hòa Hải',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (60,'Hòa Quý',NULL,NULL,NULL,'Phường'),
	 (60,'Mỹ An',NULL,NULL,NULL,'Phường'),
	 (61,' An Hải Bắc',NULL,NULL,NULL,'Phường'),
	 (61,'An Hải Đông',NULL,NULL,NULL,'Phường'),
	 (61,'An Hải Tây',NULL,NULL,NULL,'Phường'),
	 (61,'Mân Thái',NULL,NULL,NULL,'Phường'),
	 (61,'Nại Hiên Đông ',NULL,NULL,NULL,'Phường'),
	 (61,'Phước Mỹ',NULL,NULL,NULL,'Phường'),
	 (61,'Thọ Quang',NULL,NULL,NULL,'Phường'),
	 (62,'An Khê',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (62,'Chính Gián',NULL,NULL,NULL,'Phường'),
	 (62,'Hòa Khê',NULL,NULL,NULL,'Phường'),
	 (62,'Tam Thuận',NULL,NULL,NULL,'Phường'),
	 (62,'Tân Chính',NULL,NULL,NULL,'Phường'),
	 (62,'Thạc Gián',NULL,NULL,NULL,'Phường'),
	 (62,'Thanh Khê Đông',NULL,NULL,NULL,'Phường'),
	 (62,'Thanh Khê Tây',NULL,NULL,NULL,'Phường'),
	 (62,'Thanh Lộc Đán',NULL,NULL,NULL,'Phường'),
	 (62,'Vĩnh Trung',NULL,NULL,NULL,'Phường'),
	 (62,'Xuân Hà',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (63,'Cây Trường II',NULL,NULL,NULL,'Xã'),
	 (63,'Hưng Hòa',NULL,NULL,NULL,'Xã'),
	 (63,'Lai Hưng',NULL,NULL,NULL,'Xã'),
	 (63,'Lai Uyên',NULL,NULL,NULL,'Xã'),
	 (63,'Lai Uyên',NULL,NULL,NULL,'Xã'),
	 (63,'Long Nguyên',NULL,NULL,NULL,'Xã'),
	 (63,'Tân Hưng',NULL,NULL,NULL,'Xã'),
	 (63,'Trừ Văn Thố',NULL,NULL,NULL,'Xã'),
	 (64,'An Điền',NULL,NULL,NULL,'Xã'),
	 (64,'An Tây',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (64,'Cây Trường',NULL,NULL,NULL,'Xã'),
	 (64,'Chánh Phú Hòa',NULL,NULL,NULL,'Xã'),
	 (64,'Hòa Lợi',NULL,NULL,NULL,'Phường'),
	 (64,'Mỹ Phước',NULL,NULL,NULL,'Phường'),
	 (64,'Phú An',NULL,NULL,NULL,'Xã'),
	 (64,'Tân Định',NULL,NULL,NULL,'Xã'),
	 (64,'Thới Hòa',NULL,NULL,NULL,'Xã'),
	 (65,'An Lập',NULL,NULL,NULL,'Xã'),
	 (65,'Dầu Tiếng',NULL,NULL,NULL,'Phường'),
	 (65,'Định  Hiệp',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (65,'Định An',NULL,NULL,NULL,'Xã'),
	 (65,'Định Thành',NULL,NULL,NULL,'Xã'),
	 (65,'Long Hòa',NULL,NULL,NULL,'Xã'),
	 (65,'Long Tân',NULL,NULL,NULL,'Xã'),
	 (65,'Minh Hòa',NULL,NULL,NULL,'Xã'),
	 (65,'Minh Tân',NULL,NULL,NULL,'Xã'),
	 (65,'Minh Thạnh',NULL,NULL,NULL,'Xã'),
	 (65,'Thanh An',NULL,NULL,NULL,'Xã'),
	 (65,'Thanh Tuyền',NULL,NULL,NULL,'Xã'),
	 (66,'An Bình',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (66,'Bình An',NULL,NULL,NULL,'Phường'),
	 (66,'Bình Thắng',NULL,NULL,NULL,'Phường'),
	 (66,'Dĩ An',NULL,NULL,NULL,'Phường'),
	 (66,'Đông Hòa',NULL,NULL,NULL,'Phường'),
	 (66,'Tân Bình',NULL,NULL,NULL,'Phường'),
	 (66,'Tân Đông Hiệp',NULL,NULL,NULL,'Phường'),
	 (67,'An Bình',NULL,NULL,NULL,'Xã'),
	 (67,'An Linh',NULL,NULL,NULL,'Xã'),
	 (67,'An Long',NULL,NULL,NULL,'Xã'),
	 (67,'An Thái',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (67,'Phước Hòa',NULL,NULL,NULL,'Xã'),
	 (67,'Phước Sang',NULL,NULL,NULL,'Xã'),
	 (67,'Phước Vĩnh',NULL,NULL,NULL,'Phường'),
	 (67,'Tam Lập',NULL,NULL,NULL,'Xã'),
	 (67,'Tân Hiệp',NULL,NULL,NULL,'Xã'),
	 (67,'Tân Long',NULL,NULL,NULL,'Xã'),
	 (67,'Vĩnh Hòa',NULL,NULL,NULL,'Xã'),
	 (68,'Bạch Đằng',NULL,NULL,NULL,'Xã'),
	 (68,'Bình Mỹ',NULL,NULL,NULL,'Xã'),
	 (68,'Đất Cuốc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (68,'Hiếu Liêm',NULL,NULL,NULL,'Xã'),
	 (68,'Hội Nghĩa',NULL,NULL,NULL,'Xã'),
	 (68,'Khánh Bình',NULL,NULL,NULL,'Xã'),
	 (68,'Lạc An',NULL,NULL,NULL,'Xã'),
	 (68,'Phú Chánh',NULL,NULL,NULL,'Xã'),
	 (68,'Tân Bình',NULL,NULL,NULL,'Xã'),
	 (68,'Tân Định',NULL,NULL,NULL,'Xã'),
	 (68,'Tân Hiệp',NULL,NULL,NULL,'Xã'),
	 (68,'Tân Lập',NULL,NULL,NULL,'Xã'),
	 (68,'Tân Mỹ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (68,'Tân Phước Khánh',NULL,NULL,NULL,'Phường'),
	 (68,'Tân Thành',NULL,NULL,NULL,'Xã'),
	 (68,'Tân Vĩnh Hiệp',NULL,NULL,NULL,'Xã'),
	 (68,'Thái Hòa',NULL,NULL,NULL,'Phường'),
	 (68,'Thạnh Hội',NULL,NULL,NULL,'Xã'),
	 (68,'Thạnh Phước',NULL,NULL,NULL,'Xã'),
	 (68,'Thường Tân',NULL,NULL,NULL,'Xã'),
	 (68,'Uyên Hưng',NULL,NULL,NULL,'Phường'),
	 (68,'Vĩnh Tân',NULL,NULL,NULL,'Xã'),
	 (69,'Chánh Mỹ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (69,'Chánh Nghĩa',NULL,NULL,NULL,'Phường'),
	 (69,'Định Hòa',NULL,NULL,NULL,'Phường'),
	 (69,'Hiệp An',NULL,NULL,NULL,'Phường'),
	 (69,'Hiệp Thành',NULL,NULL,NULL,'Phường'),
	 (69,'Hòa Phú',NULL,NULL,NULL,'Phường'),
	 (69,'Phú Cường',NULL,NULL,NULL,'Phường'),
	 (69,'Phú Hòa',NULL,NULL,NULL,'Phường'),
	 (69,'Phú Lợi',NULL,NULL,NULL,'Phường'),
	 (69,'Phú Mỹ',NULL,NULL,NULL,'Phường'),
	 (69,'Phú Tân',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (69,'Phú Thọ',NULL,NULL,NULL,'Phường'),
	 (69,'Tân An',NULL,NULL,NULL,'Xã'),
	 (69,'Tương Bình Hiệp',NULL,NULL,NULL,'Xã'),
	 (70,'An Phú',NULL,NULL,NULL,'Phường'),
	 (70,'An Sơn',NULL,NULL,NULL,'Xã'),
	 (70,'An Thạnh',NULL,NULL,NULL,'Phường'),
	 (70,'Bình Chuẩn',NULL,NULL,NULL,'Phường'),
	 (70,'Bình Hòa',NULL,NULL,NULL,'Phường'),
	 (70,'Bình Nhâm',NULL,NULL,NULL,'Xã'),
	 (70,'Hưng Định',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (70,'Lái Thiêu',NULL,NULL,NULL,'Phường'),
	 (70,'Thuận Giao',NULL,NULL,NULL,'Phường'),
	 (70,'Vĩnh Phú',NULL,NULL,NULL,'Phường'),
	 (71,'An Bình',NULL,NULL,NULL,'Phường'),
	 (71,'An Hòa',NULL,NULL,NULL,'Xã'),
	 (71,'Bàu Hang',NULL,NULL,NULL,'Phường'),
	 (71,'Bình Đa',NULL,NULL,NULL,'Phường'),
	 (71,'Bửu Hòa',NULL,NULL,NULL,'Phường'),
	 (71,'Bửu Long',NULL,NULL,NULL,'Phường'),
	 (71,'Hiệp Hòa',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (71,'Hố Cạn',NULL,NULL,NULL,'Phường'),
	 (71,'Hố Nai',NULL,NULL,NULL,'Phường'),
	 (71,'Hóa An',NULL,NULL,NULL,'Phường'),
	 (71,'Hòa Bình',NULL,NULL,NULL,'Phường'),
	 (71,'Long Bình',NULL,NULL,NULL,'Phường'),
	 (71,'Long Bình Tân',NULL,NULL,NULL,'Phường'),
	 (71,'Long Hưng',NULL,NULL,NULL,'Xã'),
	 (71,'Phước Tân',NULL,NULL,NULL,'Xã'),
	 (71,'Quang Vinh',NULL,NULL,NULL,'Phường'),
	 (71,'Quyết Thắng',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (71,'Tam Hiệp',NULL,NULL,NULL,'Phường'),
	 (71,'Tam Hòa',NULL,NULL,NULL,'Phường'),
	 (71,'Tam Phước',NULL,NULL,NULL,'Xã'),
	 (71,'Tân Biên',NULL,NULL,NULL,'Phường'),
	 (71,'Tân Hạnh',NULL,NULL,NULL,'Xã'),
	 (71,'Tân Hiệp',NULL,NULL,NULL,'Phường'),
	 (71,'Tân Hòa',NULL,NULL,NULL,'Phường'),
	 (71,'Tân Long',NULL,NULL,NULL,'Phường'),
	 (71,'Tân Mai',NULL,NULL,NULL,'Phường'),
	 (71,'Tân Phong',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (71,'Tân Tiến',NULL,NULL,NULL,'Phường'),
	 (71,'Tân Vạn',NULL,NULL,NULL,'Phường'),
	 (71,'Thanh Bình',NULL,NULL,NULL,'Phường'),
	 (71,'Thống Nhất',NULL,NULL,NULL,'Phường'),
	 (71,'Trảng Dài',NULL,NULL,NULL,'Phường'),
	 (71,'Trung Dũng',NULL,NULL,NULL,'Phường'),
	 (72,'Bảo Bình',NULL,NULL,NULL,'Xã'),
	 (72,'Lâm San',NULL,NULL,NULL,'Xã'),
	 (72,'Long Giao',NULL,NULL,NULL,'Thị trấn'),
	 (72,'Nhân Nghĩa',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (72,'Sông Nhạn',NULL,NULL,NULL,'Xã'),
	 (72,'Sông Ray',NULL,NULL,NULL,'Xã'),
	 (72,'Thừa Đức',NULL,NULL,NULL,'Xã'),
	 (72,'Xuân Bảo',NULL,NULL,NULL,'Xã'),
	 (72,'Xuân Đông',NULL,NULL,NULL,'Xã'),
	 (72,'Xuân Đường',NULL,NULL,NULL,'Xã'),
	 (72,'Xuân Mỹ',NULL,NULL,NULL,'Xã'),
	 (72,'Xuân Quế',NULL,NULL,NULL,'Xã'),
	 (72,'Xuân Tây',NULL,NULL,NULL,'Xã'),
	 (73,'Định Quán',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (73,'Gia Canh',NULL,NULL,NULL,'Xã'),
	 (73,'La Ngà',NULL,NULL,NULL,'Xã'),
	 (73,'Ngọc Định',NULL,NULL,NULL,'Xã'),
	 (73,'Phú Cường',NULL,NULL,NULL,'Xã'),
	 (73,'Phú Hoà',NULL,NULL,NULL,'Xã'),
	 (73,'Phú Lợi',NULL,NULL,NULL,'Xã'),
	 (73,'Phú Ngọc',NULL,NULL,NULL,'Xã'),
	 (73,'Phú Tân',NULL,NULL,NULL,'Xã'),
	 (73,'Phú Túc',NULL,NULL,NULL,'Xã'),
	 (73,'Phú Vinh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (73,'Suối Nho',NULL,NULL,NULL,'Xã'),
	 (73,'Thanh Sơn',NULL,NULL,NULL,'Xã'),
	 (73,'Túc Trưng',NULL,NULL,NULL,'Xã'),
	 (74,'Bảo Hoà',NULL,NULL,NULL,'Xã'),
	 (74,'Bảo Quang',NULL,NULL,NULL,'Xã'),
	 (74,'Bảo Vinh',NULL,NULL,NULL,'Xã'),
	 (74,'Bàu Sen',NULL,NULL,NULL,'Xã'),
	 (74,'Bàu Trâm',NULL,NULL,NULL,'Xã'),
	 (74,'Bình Lộc',NULL,NULL,NULL,'Xã'),
	 (74,'Hàng Gòn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (74,'Phú Bình',NULL,NULL,NULL,'Phường'),
	 (74,'Suối Tre',NULL,NULL,NULL,'Xã'),
	 (74,'Xuân An',NULL,NULL,NULL,'Phường'),
	 (74,'Xuân Bình',NULL,NULL,NULL,'Phường'),
	 (74,'Xuân Hòa',NULL,NULL,NULL,'Phường'),
	 (74,'Xuân Lập',NULL,NULL,NULL,'Xã'),
	 (74,'Xuân Tân',NULL,NULL,NULL,'Xã'),
	 (74,'Xuân Thanh',NULL,NULL,NULL,'Phường'),
	 (74,'Xuân Trung',NULL,NULL,NULL,'Phường'),
	 (75,'An Phước',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (75,'Bàu Cạn',NULL,NULL,NULL,'Xã'),
	 (75,'Bình An',NULL,NULL,NULL,'Xã'),
	 (75,'Bình Sơn',NULL,NULL,NULL,'Xã'),
	 (75,'Cẩm Đường',NULL,NULL,NULL,'Xã'),
	 (75,'Lộc An',NULL,NULL,NULL,'Xã'),
	 (75,'Long An',NULL,NULL,NULL,'Xã'),
	 (75,'Long Đức',NULL,NULL,NULL,'Xã'),
	 (75,'Long Phước',NULL,NULL,NULL,'Xã'),
	 (75,'Long Thành',NULL,NULL,NULL,'Thị trấn'),
	 (75,'Phước Bình',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (75,'Phước Tân',NULL,NULL,NULL,'Xã'),
	 (75,'Phước Thái',NULL,NULL,NULL,'Xã'),
	 (75,'Suối Trầu',NULL,NULL,NULL,'Xã'),
	 (75,'Tam An',NULL,NULL,NULL,'Xã'),
	 (75,'Tân Hiệp',NULL,NULL,NULL,'Xã'),
	 (76,'Đại Phước',NULL,NULL,NULL,'Xã'),
	 (76,'Hiệp Phước',NULL,NULL,NULL,'Xã'),
	 (76,'Long Tân',NULL,NULL,NULL,'Xã'),
	 (76,'Long Thọ',NULL,NULL,NULL,'Xã'),
	 (76,'Phú Đông',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (76,'Phú Hội',NULL,NULL,NULL,'Xã'),
	 (76,'Phú Hữu',NULL,NULL,NULL,'Xã'),
	 (76,'Phú Thạnh',NULL,NULL,NULL,'Xã'),
	 (76,'Phước An',NULL,NULL,NULL,'Xã'),
	 (76,'Phước Khánh',NULL,NULL,NULL,'Xã'),
	 (76,'Phước Thiền',NULL,NULL,NULL,'Xã'),
	 (76,'Vĩnh Thanh',NULL,NULL,NULL,'Xã'),
	 (77,'Đăk Lua',NULL,NULL,NULL,'Xã'),
	 (77,'Nam Cát Tiên',NULL,NULL,NULL,'Xã'),
	 (77,'Núi Tượng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (77,'Phú An',NULL,NULL,NULL,'Xã'),
	 (77,'Phú Bình',NULL,NULL,NULL,'Xã'),
	 (77,'Phú Điền',NULL,NULL,NULL,'Xã'),
	 (77,'Phú Lâm',NULL,NULL,NULL,'Xã'),
	 (77,'Phú Lập',NULL,NULL,NULL,'Xã'),
	 (77,'Phú Lộc',NULL,NULL,NULL,'Xã'),
	 (77,'Phú Sơn',NULL,NULL,NULL,'Xã'),
	 (77,'Phú Thanh',NULL,NULL,NULL,'Xã'),
	 (77,'Phú Thịnh',NULL,NULL,NULL,'Xã'),
	 (77,'Phú Trung',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (77,'Phú Xuân',NULL,NULL,NULL,'Xã'),
	 (77,'Tà Lài',NULL,NULL,NULL,'Xã'),
	 (77,'Tân Phú',NULL,NULL,NULL,'Thị trấn'),
	 (77,'Thanh Sơn',NULL,NULL,NULL,'Xã'),
	 (77,'Trà Cổ',NULL,NULL,NULL,'Xã'),
	 (78,'Bàu Hàm 2',NULL,NULL,NULL,'Xã'),
	 (78,'Dầu Giây',NULL,NULL,NULL,'Thị trấn'),
	 (78,'Gia Kiệm',NULL,NULL,NULL,'Xã'),
	 (78,'Gia Tân 1',NULL,NULL,NULL,'Xã'),
	 (78,'Gia Tân 2',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (78,'Gia Tân 3',NULL,NULL,NULL,'Xã'),
	 (78,'Hưng Lộc',NULL,NULL,NULL,'Xã'),
	 (78,'Lộ 25',NULL,NULL,NULL,'Xã'),
	 (78,'Quang Trung',NULL,NULL,NULL,'Xã'),
	 (78,'Xuân Thạnh',NULL,NULL,NULL,'Xã'),
	 (78,'Xuân Thiện',NULL,NULL,NULL,'Xã'),
	 (79,'An Viễn',NULL,NULL,NULL,'Xã'),
	 (79,'Bắc Sơn',NULL,NULL,NULL,'Xã'),
	 (79,'Bàu Hàm',NULL,NULL,NULL,'Xã'),
	 (79,'Bình Minh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (79,'Cây Gáo',NULL,NULL,NULL,'Xã'),
	 (79,'Đồi 61',NULL,NULL,NULL,'Xã'),
	 (79,'Đông Hòa',NULL,NULL,NULL,'Xã'),
	 (79,'Giang Điền',NULL,NULL,NULL,'Xã'),
	 (79,'Hố Nai 3',NULL,NULL,NULL,'Xã'),
	 (79,'Hòa Trung',NULL,NULL,NULL,'Xã'),
	 (79,'Hưng Thịnh',NULL,NULL,NULL,'Xã'),
	 (79,'Quảng Tiến',NULL,NULL,NULL,'Xã'),
	 (79,'Sông Thao',NULL,NULL,NULL,'Xã'),
	 (79,'Sông Trầu',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (79,'Tây Hòa',NULL,NULL,NULL,'Xã'),
	 (79,'Thanh Bình',NULL,NULL,NULL,'Xã'),
	 (79,'Trảng Bom',NULL,NULL,NULL,'Thị trấn'),
	 (79,'Trung Hòa',NULL,NULL,NULL,'Xã'),
	 (80,'Bình Hòa',NULL,NULL,NULL,'Xã'),
	 (80,'Bình Lợi',NULL,NULL,NULL,'Xã'),
	 (80,'Hiếu Liêm',NULL,NULL,NULL,'Xã'),
	 (80,'Mã Đà',NULL,NULL,NULL,'Xã'),
	 (80,'Phú Lý',NULL,NULL,NULL,'Xã'),
	 (80,'Tân An',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (80,'Tân Bình',NULL,NULL,NULL,'Xã'),
	 (80,'Thạnh Phú',NULL,NULL,NULL,'Xã'),
	 (80,'Thiện Tân',NULL,NULL,NULL,'Xã'),
	 (80,'Trị An',NULL,NULL,NULL,'Xã'),
	 (80,'Vĩnh An',NULL,NULL,NULL,'Thị trấn'),
	 (80,'Vĩnh Tân',NULL,NULL,NULL,'Xã'),
	 (81,'Bảo Hòa',NULL,NULL,NULL,'Xã'),
	 (81,'Gia Ray',NULL,NULL,NULL,'Thị trấn'),
	 (81,'Lang Minh',NULL,NULL,NULL,'Xã'),
	 (81,'Suối Cao',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (81,'Suối Cát',NULL,NULL,NULL,'Xã'),
	 (81,'Xuân Bắc',NULL,NULL,NULL,'Xã'),
	 (81,'Xuân Định',NULL,NULL,NULL,'Xã'),
	 (81,'Xuân Hiệp',NULL,NULL,NULL,'Xã'),
	 (81,'Xuân Hòa',NULL,NULL,NULL,'Xã'),
	 (81,'Xuân Hưng',NULL,NULL,NULL,'Xã'),
	 (81,'Xuân Phú',NULL,NULL,NULL,'Xã'),
	 (81,'Xuân Tâm',NULL,NULL,NULL,'Xã'),
	 (81,'Xuân Thành',NULL,NULL,NULL,'Xã'),
	 (81,'Xuân Thọ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (81,'Xuân Trường',NULL,NULL,NULL,'Xã'),
	 (82,'Cam An Bắc',NULL,NULL,NULL,'Xã'),
	 (82,'Cam An Nam',NULL,NULL,NULL,'Xã'),
	 (82,'Cam Đức',NULL,NULL,NULL,'Thị trấn'),
	 (82,'Cam Hải Đông',NULL,NULL,NULL,'Xã'),
	 (82,'Cam Hải Tây',NULL,NULL,NULL,'Xã'),
	 (82,'Cam Hiệp Bắc',NULL,NULL,NULL,'Xã'),
	 (82,'Cam Hiệp Nam',NULL,NULL,NULL,'Xã'),
	 (82,'Cam Hòa',NULL,NULL,NULL,'Xã'),
	 (82,'Cam Phước Tây',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (82,'Cam Tân',NULL,NULL,NULL,'Xã'),
	 (82,'Cam Thành Bắc',NULL,NULL,NULL,'Xã'),
	 (82,'Sơn Tân',NULL,NULL,NULL,'Xã'),
	 (82,'Suối Cát',NULL,NULL,NULL,'Xã'),
	 (82,'Suối Tân',NULL,NULL,NULL,'Xã'),
	 (83,'Ba Ngòi',NULL,NULL,NULL,'Phường'),
	 (83,'Cam Bình',NULL,NULL,NULL,'Xã'),
	 (83,'Cam Lập',NULL,NULL,NULL,'Xã'),
	 (83,'Cam Linh',NULL,NULL,NULL,'Phường'),
	 (83,'Cam Lộc',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (83,'Cam Lợi',NULL,NULL,NULL,'Phường'),
	 (83,'Cam Nghĩa',NULL,NULL,NULL,'Phường'),
	 (83,'Cam Phú',NULL,NULL,NULL,'Phường'),
	 (83,'Cam Phúc Bắc',NULL,NULL,NULL,'Phường'),
	 (83,'Cam Phúc Nam',NULL,NULL,NULL,'Phường'),
	 (83,'Cam Phước Đông',NULL,NULL,NULL,'Xã'),
	 (83,'Cam Thành Nam',NULL,NULL,NULL,'Xã'),
	 (83,'Cam Thịnh Đông',NULL,NULL,NULL,'Xã'),
	 (83,'Cam Thịnh Tây',NULL,NULL,NULL,'Xã'),
	 (83,'Cam Thuận',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (84,'Diên An',NULL,NULL,NULL,'Xã'),
	 (84,'Diên Bình',NULL,NULL,NULL,'Xã'),
	 (84,'Diên Điền',NULL,NULL,NULL,'Xã'),
	 (84,'Diên Đồng',NULL,NULL,NULL,'Xã'),
	 (84,'Diên Hòa',NULL,NULL,NULL,'Xã'),
	 (84,'Diên Khánh ',NULL,NULL,NULL,'Phường'),
	 (84,'Diên Lạc',NULL,NULL,NULL,'Xã'),
	 (84,'Diên Lâm',NULL,NULL,NULL,'Xã'),
	 (84,'Diên Lộc',NULL,NULL,NULL,'Xã'),
	 (84,'Diên Phú',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (84,'Diên Phước',NULL,NULL,NULL,'Xã'),
	 (84,'Diên Sơn',NULL,NULL,NULL,'Xã'),
	 (84,'Diên Tân',NULL,NULL,NULL,'Xã'),
	 (84,'Diên Thạnh',NULL,NULL,NULL,'Xã'),
	 (84,'Diên Thọ',NULL,NULL,NULL,'Xã'),
	 (84,'Diên Toàn',NULL,NULL,NULL,'Xã'),
	 (84,'Diên Xuân',NULL,NULL,NULL,'Xã'),
	 (84,'Suối Hiệp',NULL,NULL,NULL,'Xã'),
	 (84,'Suối Tiên',NULL,NULL,NULL,'Xã'),
	 (85,'Ba Cụm Bắc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (85,'Ba Cụm Nam',NULL,NULL,NULL,'Xã'),
	 (85,'Sơn Bình',NULL,NULL,NULL,'Xã'),
	 (85,'Sơn Hiệp',NULL,NULL,NULL,'Xã'),
	 (85,'Sơn Lâm',NULL,NULL,NULL,'Xã'),
	 (85,'Sơn Trung',NULL,NULL,NULL,'Xã'),
	 (85,'Thành Sơn',NULL,NULL,NULL,'Xã'),
	 (85,'Tô Hạp',NULL,NULL,NULL,'Thị trấn'),
	 (86,'Cầu Bà',NULL,NULL,NULL,'Xã'),
	 (86,'Giang Ly',NULL,NULL,NULL,'Xã'),
	 (86,'Khánh Bình',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (86,'Khánh Đông',NULL,NULL,NULL,'Xã'),
	 (86,'Khánh Hiệp',NULL,NULL,NULL,'Xã'),
	 (86,'Khánh Nam',NULL,NULL,NULL,'Xã'),
	 (86,'Khánh Phú',NULL,NULL,NULL,'Xã'),
	 (86,'Khánh Thành',NULL,NULL,NULL,'Xã'),
	 (86,'Khánh Thượng',NULL,NULL,NULL,'Xã'),
	 (86,'Khánh Trung',NULL,NULL,NULL,'Xã'),
	 (86,'Khánh Vĩnh',NULL,NULL,NULL,'Thị trấn'),
	 (86,'Liên Sang',NULL,NULL,NULL,'Xã'),
	 (86,'Sơn Thái',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (86,'Sông Cầu',NULL,NULL,NULL,'Xã'),
	 (87,'Lộc Thọ',NULL,NULL,NULL,'Phường'),
	 (87,'Ngọc Hiệp',NULL,NULL,NULL,'Phường'),
	 (87,'Phước Đồng',NULL,NULL,NULL,'Xã'),
	 (87,'Phước Hải',NULL,NULL,NULL,'Phường'),
	 (87,'Phước Hòa',NULL,NULL,NULL,'Phường'),
	 (87,'Phước Long ',NULL,NULL,NULL,'Phường'),
	 (87,'Phước Tân',NULL,NULL,NULL,'Phường'),
	 (87,'Phước Tiến',NULL,NULL,NULL,'Phường'),
	 (87,'Phương Sài',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (87,'Phương Sơn',NULL,NULL,NULL,'Phường'),
	 (87,'Tân Lập',NULL,NULL,NULL,'Phường'),
	 (87,'Vạn Thắng',NULL,NULL,NULL,'Phường'),
	 (87,'Vạn Thạnh',NULL,NULL,NULL,'Phường'),
	 (87,'Vĩnh Hải',NULL,NULL,NULL,'Phường'),
	 (87,'Vĩnh Hiệp',NULL,NULL,NULL,'Xã'),
	 (87,'Vĩnh Hòa',NULL,NULL,NULL,'Phường'),
	 (87,'Vĩnh Lương',NULL,NULL,NULL,'Xã'),
	 (87,'Vĩnh Ngọc',NULL,NULL,NULL,'Xã'),
	 (87,'Vĩnh Nguyên',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (87,'Vĩnh Phước',NULL,NULL,NULL,'Phường'),
	 (87,'Vĩnh Phương',NULL,NULL,NULL,'Xã'),
	 (87,'Vĩnh Thái',NULL,NULL,NULL,'Xã'),
	 (87,'Vĩnh Thạnh',NULL,NULL,NULL,'Xã'),
	 (87,'Vĩnh Thọ',NULL,NULL,NULL,'Phường'),
	 (87,'Vĩnh Trung',NULL,NULL,NULL,'Xã'),
	 (87,'Vĩnh Trường',NULL,NULL,NULL,'Phường'),
	 (87,'Xương Huân',NULL,NULL,NULL,'Phường'),
	 (88,'Diên Toàn',NULL,NULL,NULL,'Xã'),
	 (88,'Ninh An',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (88,'Ninh Bình',NULL,NULL,NULL,'Xã'),
	 (88,'Ninh Đa',NULL,NULL,NULL,'Phường'),
	 (88,'Ninh Diêm',NULL,NULL,NULL,'Phường'),
	 (88,'Ninh Đông',NULL,NULL,NULL,'Xã'),
	 (88,'Ninh Giang',NULL,NULL,NULL,'Phường'),
	 (88,'Ninh Hà',NULL,NULL,NULL,'Phường'),
	 (88,'Ninh Hải',NULL,NULL,NULL,'Phường'),
	 (88,'Ninh Hiệp',NULL,NULL,NULL,'Phường'),
	 (88,'Ninh Hưng',NULL,NULL,NULL,'Xã'),
	 (88,'Ninh Ích',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (88,'Ninh Lộc',NULL,NULL,NULL,'Xã'),
	 (88,'Ninh Phú',NULL,NULL,NULL,'Xã'),
	 (88,'Ninh Phụng',NULL,NULL,NULL,'Xã'),
	 (88,'Ninh Phước',NULL,NULL,NULL,'Xã'),
	 (88,'Ninh Quang',NULL,NULL,NULL,'Xã'),
	 (88,'Ninh Sim',NULL,NULL,NULL,'Xã'),
	 (88,'Ninh Sơn',NULL,NULL,NULL,'Xã'),
	 (88,'Ninh Tân',NULL,NULL,NULL,'Xã'),
	 (88,'Ninh Tây',NULL,NULL,NULL,'Xã'),
	 (88,'Ninh Thân',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (88,'Ninh Thọ',NULL,NULL,NULL,'Xã'),
	 (88,'Ninh Thượng',NULL,NULL,NULL,'Xã'),
	 (88,'Ninh Thủy',NULL,NULL,NULL,'Phường'),
	 (88,'Ninh Trung',NULL,NULL,NULL,'Xã'),
	 (88,'Ninh Vân',NULL,NULL,NULL,'Xã'),
	 (88,'Ninh Xuân',NULL,NULL,NULL,'Xã'),
	 (89,'Sinh Tồn',NULL,NULL,NULL,'Xã'),
	 (89,'Song Tử Tây',NULL,NULL,NULL,'Xã'),
	 (89,'Trường Sa',NULL,NULL,NULL,'Thị trấn'),
	 (90,'Đại Lãnh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (90,'Vạn Bình',NULL,NULL,NULL,'Xã'),
	 (90,'Vạn Giã',NULL,NULL,NULL,'Thị trấn'),
	 (90,'Vạn Hưng',NULL,NULL,NULL,'Xã'),
	 (90,'Vạn Khánh',NULL,NULL,NULL,'Xã'),
	 (90,'Vạn Long',NULL,NULL,NULL,'Xã'),
	 (90,'Vạn Lương',NULL,NULL,NULL,'Xã'),
	 (90,'Vạn Phú',NULL,NULL,NULL,'Xã'),
	 (90,'Vạn Phước',NULL,NULL,NULL,'Xã'),
	 (90,'Vạn Thắng',NULL,NULL,NULL,'Xã'),
	 (90,'Vạn Thạnh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (90,'Vạn Thọ',NULL,NULL,NULL,'Xã'),
	 (90,'Xuân Sơn',NULL,NULL,NULL,'Xã'),
	 (91,'An Đồng',NULL,NULL,NULL,'Xã'),
	 (91,'An Dương',NULL,NULL,NULL,'Thị trấn'),
	 (91,'An Hải',NULL,NULL,NULL,'Phường'),
	 (91,'An Hòa',NULL,NULL,NULL,'Xã'),
	 (91,'An Hồng',NULL,NULL,NULL,'Phường'),
	 (91,'An Hưng',NULL,NULL,NULL,'Xã'),
	 (91,'Bắc Sơn',NULL,NULL,NULL,'Xã'),
	 (91,'Đại Bản',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (91,'Đặng Cương',NULL,NULL,NULL,'Xã'),
	 (91,'Đồng Thái',NULL,NULL,NULL,'Xã'),
	 (91,'Hồng phong',NULL,NULL,NULL,'Xã'),
	 (91,'Hồng Thái',NULL,NULL,NULL,'Xã'),
	 (91,'Hồng Tiến',NULL,NULL,NULL,'Xã'),
	 (91,'Lê Lợi',NULL,NULL,NULL,'Xã'),
	 (91,'Lê Thiên',NULL,NULL,NULL,'Xã'),
	 (91,'Nam Sơn',NULL,NULL,NULL,'Xã'),
	 (91,'Quốc Tuấn',NULL,NULL,NULL,'Xã'),
	 (91,'Tân Tiến',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (92,'An Lão',NULL,NULL,NULL,'Xã'),
	 (92,'An Thái',NULL,NULL,NULL,'Xã'),
	 (92,'An Thắng',NULL,NULL,NULL,'Xã'),
	 (92,'An Thọ',NULL,NULL,NULL,'Xã'),
	 (92,'An Tiến',NULL,NULL,NULL,'Xã'),
	 (92,'Bát Trang',NULL,NULL,NULL,'Xã'),
	 (92,'Chiến Thắng',NULL,NULL,NULL,'Xã'),
	 (92,'Mỹ Đức',NULL,NULL,NULL,'Xã'),
	 (92,'Quang Hưng',NULL,NULL,NULL,'Xã'),
	 (92,'Quang Trung',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (92,'Quốc Tuấn',NULL,NULL,NULL,'Xã'),
	 (92,'Tân Dân',NULL,NULL,NULL,'Xã'),
	 (92,'Tân Viên',NULL,NULL,NULL,'Xã'),
	 (92,'Thái Sơn',NULL,NULL,NULL,'Xã'),
	 (92,'Trường Sơn',NULL,NULL,NULL,'Xã'),
	 (92,'Trường Thành',NULL,NULL,NULL,'Xã'),
	 (92,'Trường Thọ',NULL,NULL,NULL,'Xã'),
	 (94,' Đồng Bài',NULL,NULL,NULL,'Xã'),
	 (94,'Cát Bà',NULL,NULL,NULL,'Xã'),
	 (94,'Cát Hải',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (94,'Gia Luận',NULL,NULL,NULL,'Xã'),
	 (94,'Hiền Hào',NULL,NULL,NULL,'Xã'),
	 (94,'Hoàng Châu',NULL,NULL,NULL,'Xã'),
	 (94,'Nghĩa Lộ',NULL,NULL,NULL,'Xã'),
	 (94,'Phù Long',NULL,NULL,NULL,'Xã'),
	 (94,'Trân Châu',NULL,NULL,NULL,'Xã'),
	 (94,'Văn Phong',NULL,NULL,NULL,'Xã'),
	 (94,'Việt Hải',NULL,NULL,NULL,'Xã'),
	 (94,'Xuân Đám',NULL,NULL,NULL,'Xã'),
	 (95,'Bàng La',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (95,'Hợp Đức',NULL,NULL,NULL,'Phường'),
	 (95,'Minh Đức',NULL,NULL,NULL,'Phường'),
	 (95,'Ngọc Hải',NULL,NULL,NULL,'Phường'),
	 (95,'Ngọc Xuyên',NULL,NULL,NULL,'Phường'),
	 (95,'Vạn Hương',NULL,NULL,NULL,'Phường'),
	 (95,'Vạn Sơn',NULL,NULL,NULL,'Phường'),
	 (96,'Anh Dũng',NULL,NULL,NULL,'Phường'),
	 (96,'Đa Phúc',NULL,NULL,NULL,'Phường'),
	 (96,'Hải Thành',NULL,NULL,NULL,'Phường'),
	 (96,'Hòa Nghĩa',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (96,'Hưng Đạo',NULL,NULL,NULL,'Phường'),
	 (96,'Tân Thành',NULL,NULL,NULL,'Phường'),
	 (97,' Đằng Hải',NULL,NULL,NULL,'Phường'),
	 (97,'An Khê',NULL,NULL,NULL,'Xã'),
	 (97,'Cát Bi',NULL,NULL,NULL,'Phường'),
	 (97,'Đằng Lâm',NULL,NULL,NULL,'Phường'),
	 (97,'Đông Hải 1',NULL,NULL,NULL,'Phường'),
	 (97,'Đông Hải 2',NULL,NULL,NULL,'Phường'),
	 (97,'Nam Hải',NULL,NULL,NULL,'Phường'),
	 (97,'Thành Tô',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (97,'Tràng Cát',NULL,NULL,NULL,'Phường'),
	 (98,'Hạ Lý',NULL,NULL,NULL,'Phường'),
	 (98,'Hoàng Văn Thụ',NULL,NULL,NULL,'Phường'),
	 (98,'Hùng Vương',NULL,NULL,NULL,'Phường'),
	 (98,'Minh Khai',NULL,NULL,NULL,'Phường'),
	 (98,'Nam Sơn',NULL,NULL,NULL,'Phường'),
	 (98,'Phạm Hồng Thái',NULL,NULL,NULL,'Phường'),
	 (98,'Phan Bội Châu',NULL,NULL,NULL,'Phường'),
	 (98,'Quán Toan',NULL,NULL,NULL,'Phường'),
	 (98,'Quang Trung',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (98,'Sở Dầu',NULL,NULL,NULL,'Phường'),
	 (98,'Thượng Lý',NULL,NULL,NULL,'Phường'),
	 (98,'Trại Chuối',NULL,NULL,NULL,'Phường'),
	 (99,'Bắc Sơn',NULL,NULL,NULL,'Phường'),
	 (99,'Đồng Hòa',NULL,NULL,NULL,'Phường'),
	 (99,'Lãm Hà',NULL,NULL,NULL,'Phường'),
	 (99,'Lãm Khê',NULL,NULL,NULL,'Phường'),
	 (99,'Nam Sơn',NULL,NULL,NULL,'Phường'),
	 (99,'Ngọc Sơn',NULL,NULL,NULL,'Phường'),
	 (99,'Phù Liễn',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (99,'Quán Trữ',NULL,NULL,NULL,'Phường'),
	 (99,'Trần Thành Ngọ',NULL,NULL,NULL,'Phường'),
	 (99,'Tràng Minh',NULL,NULL,NULL,'Phường'),
	 (99,'Văn Đẩu',NULL,NULL,NULL,'Phường'),
	 (100,'Đa Phúc',NULL,NULL,NULL,'Xã'),
	 (100,'Đại Đồng',NULL,NULL,NULL,'Xã'),
	 (100,'Đại Hà',NULL,NULL,NULL,'Xã'),
	 (100,'Đại Hợp',NULL,NULL,NULL,'Xã'),
	 (100,'Đoàn Xá',NULL,NULL,NULL,'Xã'),
	 (100,'Đông Phương',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (100,'Du Lễ',NULL,NULL,NULL,'Xã'),
	 (100,'Hữu Bằng',NULL,NULL,NULL,'Xã'),
	 (100,'Kiến Quốc',NULL,NULL,NULL,'Xã'),
	 (100,'Minh Tân',NULL,NULL,NULL,'Xã'),
	 (100,'Ngũ Đoan',NULL,NULL,NULL,'Xã'),
	 (100,'Ngũ Phúc',NULL,NULL,NULL,'Xã'),
	 (100,'Núi Đối',NULL,NULL,NULL,'Phường'),
	 (100,'Tân Phong',NULL,NULL,NULL,'Xã'),
	 (100,'Tân Trào',NULL,NULL,NULL,'Xã'),
	 (100,'Thanh Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (100,'Thuận Thiên',NULL,NULL,NULL,'Xã'),
	 (100,'Thụy Hương',NULL,NULL,NULL,'Xã'),
	 (100,'Tú Sơn',NULL,NULL,NULL,'Xã'),
	 (101,' An Dương',NULL,NULL,NULL,'Phường'),
	 (101,' Kênh Dương',NULL,NULL,NULL,'Phường'),
	 (101,'An Biên',NULL,NULL,NULL,'Phường'),
	 (101,'Cát Dài',NULL,NULL,NULL,'Phường'),
	 (101,'Đông Hải',NULL,NULL,NULL,'Phường'),
	 (101,'Dư Hàng',NULL,NULL,NULL,'Phường'),
	 (101,'Dư Hàng Kênh 	',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (101,'Hàng Kênh',NULL,NULL,NULL,'Phường'),
	 (101,'Hồ Nam',NULL,NULL,NULL,'Phường'),
	 (101,'Lam Sơn',NULL,NULL,NULL,'Phường'),
	 (101,'Nghĩa Xá',NULL,NULL,NULL,'Phường'),
	 (101,'Niệm Nghĩa',NULL,NULL,NULL,'Phường'),
	 (101,'Trại Cau',NULL,NULL,NULL,'Phường'),
	 (101,'Trần Nguyên Hãn',NULL,NULL,NULL,'Phường'),
	 (101,'Vĩnh Niệm',NULL,NULL,NULL,'Phường'),
	 (102,' Cầu Đất',NULL,NULL,NULL,'Phường'),
	 (102,' Gia Viên',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (102,' Lạc Viên',NULL,NULL,NULL,'Phường'),
	 (102,' Lê Lợi',NULL,NULL,NULL,'Phường'),
	 (102,'Cầu Tre',NULL,NULL,NULL,'Phường'),
	 (102,'Đằng Giang',NULL,NULL,NULL,'Phường'),
	 (102,'Đông Khê',NULL,NULL,NULL,'Phường'),
	 (102,'Đổng Quốc Bình',NULL,NULL,NULL,'Phường'),
	 (102,'Lạch Tray',NULL,NULL,NULL,'Phường'),
	 (102,'Lương Khánh Thiện',NULL,NULL,NULL,'Phường'),
	 (102,'Máy Chai',NULL,NULL,NULL,'Phường'),
	 (102,'Máy Tơ',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (102,'Vạn Mỹ',NULL,NULL,NULL,'Phường'),
	 (103,' Cao Nhân',NULL,NULL,NULL,'Xã'),
	 (103,' Đông Sơn',NULL,NULL,NULL,'Xã'),
	 (103,' Gia Minh',NULL,NULL,NULL,'Xã'),
	 (103,' Hòa Bình',NULL,NULL,NULL,'Xã'),
	 (103,' Kênh Giang',NULL,NULL,NULL,'Xã'),
	 (103,' Kiền Bái',NULL,NULL,NULL,'Xã'),
	 (103,' Lâm Động',NULL,NULL,NULL,'Xã'),
	 (103,' Phục Lễ',NULL,NULL,NULL,'Xã'),
	 (103,' Tam Hưng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (103,' Thủy Đường',NULL,NULL,NULL,'Xã'),
	 (103,'An Lư',NULL,NULL,NULL,'Xã'),
	 (103,'An Sơn',NULL,NULL,NULL,'Xã'),
	 (103,'Chính Mỹ',NULL,NULL,NULL,'Xã'),
	 (103,'Dương Quan',NULL,NULL,NULL,'Xã'),
	 (103,'Gia Đức',NULL,NULL,NULL,'Xã'),
	 (103,'Hoa Động',NULL,NULL,NULL,'Xã'),
	 (103,'Hoàng Động',NULL,NULL,NULL,'Xã'),
	 (103,'Hợp Thành',NULL,NULL,NULL,'Xã'),
	 (103,'Kỳ Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (103,'Lại Xuân',NULL,NULL,NULL,'Xã'),
	 (103,'Lập Lễ',NULL,NULL,NULL,'Xã'),
	 (103,'Liên Khê',NULL,NULL,NULL,'Xã'),
	 (103,'Lưu Kiếm',NULL,NULL,NULL,'Xã'),
	 (103,'Lưu Kỳ',NULL,NULL,NULL,'Xã'),
	 (103,'Minh Đức',NULL,NULL,NULL,'Xã'),
	 (103,'Minh Tân',NULL,NULL,NULL,'Xã'),
	 (103,'Mỹ Đồng',NULL,NULL,NULL,'Xã'),
	 (103,'Ngũ Lão',NULL,NULL,NULL,'Xã'),
	 (103,'Núi Đèo',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (103,'Phả Lễ',NULL,NULL,NULL,'Xã'),
	 (103,'Phù Ninh',NULL,NULL,NULL,'Xã'),
	 (103,'Quảng Thanh',NULL,NULL,NULL,'Xã'),
	 (103,'Tân Dương',NULL,NULL,NULL,'Xã'),
	 (103,'Thiên Hương',NULL,NULL,NULL,'Xã'),
	 (103,'Thủy Sơn',NULL,NULL,NULL,'Xã'),
	 (103,'Thủy Triều',NULL,NULL,NULL,'Xã'),
	 (103,'Trung Hà',NULL,NULL,NULL,'Xã'),
	 (104,' Đông Hưng',NULL,NULL,NULL,'Xã'),
	 (104,'Bắc Hưng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (104,'Bạch Đằng',NULL,NULL,NULL,'Xã'),
	 (104,'Cấp Tiến',NULL,NULL,NULL,'Xã'),
	 (104,'Đại Thắng',NULL,NULL,NULL,'Xã'),
	 (104,'Đoàn Lập',NULL,NULL,NULL,'Xã'),
	 (104,'Hùng Thắng',NULL,NULL,NULL,'Xã'),
	 (104,'Khởi Nghĩa',NULL,NULL,NULL,'Xã'),
	 (104,'Kiến Thiết',NULL,NULL,NULL,'Xã'),
	 (104,'Nam Hưng',NULL,NULL,NULL,'Xã'),
	 (104,'Quang Phục',NULL,NULL,NULL,'Xã'),
	 (104,'Quyết Tiến',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (104,'Tây Hưng',NULL,NULL,NULL,'Xã'),
	 (104,'Tiên Cường',NULL,NULL,NULL,'Xã'),
	 (104,'Tiên Hưng',NULL,NULL,NULL,'Xã'),
	 (104,'Tiên Lãng',NULL,NULL,NULL,'Xã'),
	 (104,'Tiên Minh',NULL,NULL,NULL,'Xã'),
	 (104,'Tiên Thắng',NULL,NULL,NULL,'Xã'),
	 (104,'Tiên Thanh',NULL,NULL,NULL,'Xã'),
	 (104,'Tiên Tiến',NULL,NULL,NULL,'Xã'),
	 (104,'Toàn Thắng',NULL,NULL,NULL,'Xã'),
	 (104,'Tự Cường',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (104,'Vinh Quang',NULL,NULL,NULL,'Xã'),
	 (105,'An Hòa',NULL,NULL,NULL,'Xã'),
	 (105,'Cao Minh',NULL,NULL,NULL,'Xã'),
	 (105,'Cổ Am',NULL,NULL,NULL,'Xã'),
	 (105,'Cộng Hiền',NULL,NULL,NULL,'Xã'),
	 (105,'Đồng Minh',NULL,NULL,NULL,'Xã'),
	 (105,'Dũng Tiến',NULL,NULL,NULL,'Xã'),
	 (105,'Giang Biên',NULL,NULL,NULL,'Xã'),
	 (105,'Hiệp Hòa',NULL,NULL,NULL,'Xã'),
	 (105,'Hòa Bình',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (105,'Hưng Nhân',NULL,NULL,NULL,'Xã'),
	 (105,'Hùng Tiến',NULL,NULL,NULL,'Xã'),
	 (105,'Liên Am',NULL,NULL,NULL,'Xã'),
	 (105,'Lý Học',NULL,NULL,NULL,'Xã'),
	 (105,'Nhân Hòa',NULL,NULL,NULL,'Xã'),
	 (105,'Tam Cường',NULL,NULL,NULL,'Xã'),
	 (105,'Tam Đa',NULL,NULL,NULL,'Xã'),
	 (105,'Tân Hưng',NULL,NULL,NULL,'Xã'),
	 (105,'Tân Liên',NULL,NULL,NULL,'Xã'),
	 (105,'Thắng Thủy',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (105,'Thanh Lương',NULL,NULL,NULL,'Xã'),
	 (105,'Tiền Phong',NULL,NULL,NULL,'Xã'),
	 (105,'Trấn Dương',NULL,NULL,NULL,'Xã'),
	 (105,'Trung Lập',NULL,NULL,NULL,'Xã'),
	 (105,'Việt Tiến',NULL,NULL,NULL,'Xã'),
	 (105,'Vĩnh An',NULL,NULL,NULL,'Xã'),
	 (105,'Vĩnh Bảo',NULL,NULL,NULL,'Xã'),
	 (105,'Vĩnh Long',NULL,NULL,NULL,'Xã'),
	 (105,'Vĩnh Phong',NULL,NULL,NULL,'Xã'),
	 (105,'Vinh Quang',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (105,'Vĩnh Tiến',NULL,NULL,NULL,'Xã'),
	 (106,'An Thạnh',NULL,NULL,NULL,'Xã'),
	 (106,'Bến Lức',NULL,NULL,NULL,'Thị trấn'),
	 (106,'Bình Đức',NULL,NULL,NULL,'Xã'),
	 (106,'Long Hiệp',NULL,NULL,NULL,'Xã'),
	 (106,'Lương Bình',NULL,NULL,NULL,'Xã'),
	 (106,'Lương Hòa',NULL,NULL,NULL,'Xã'),
	 (106,'Mỹ Yên',NULL,NULL,NULL,'Xã'),
	 (106,'Nhựt Chánh',NULL,NULL,NULL,'Xã'),
	 (106,'Phước Lợi',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (106,'Tân Bửu',NULL,NULL,NULL,'Xã'),
	 (106,'Tân Hòa',NULL,NULL,NULL,'Xã'),
	 (106,'Thạnh Đức',NULL,NULL,NULL,'Xã'),
	 (106,'Thạnh Hòa',NULL,NULL,NULL,'Xã'),
	 (106,'Thạnh Lợi',NULL,NULL,NULL,'Xã'),
	 (106,'Thanh Phú',NULL,NULL,NULL,'Xã'),
	 (107,'Cần Đước',NULL,NULL,NULL,'Thị trấn'),
	 (107,'Long Cang',NULL,NULL,NULL,'Xã'),
	 (107,'Long Định',NULL,NULL,NULL,'Xã'),
	 (107,'Long Hòa',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (107,'Long Hựu Đông',NULL,NULL,NULL,'Xã'),
	 (107,'Long Hựu Tây',NULL,NULL,NULL,'Xã'),
	 (107,'Long Khê',NULL,NULL,NULL,'Xã'),
	 (107,'Long Sơn',NULL,NULL,NULL,'Xã'),
	 (107,'Long Thạnh',NULL,NULL,NULL,'Xã'),
	 (107,'Long Trạch',NULL,NULL,NULL,'Xã'),
	 (107,'Mỹ Lệ',NULL,NULL,NULL,'Xã'),
	 (107,'Phước Đông',NULL,NULL,NULL,'Xã'),
	 (107,'Phước Tuy',NULL,NULL,NULL,'Xã'),
	 (107,'Phước Vân',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (107,'Tân Ân',NULL,NULL,NULL,'Xã'),
	 (107,'Tân Chánh',NULL,NULL,NULL,'Xã'),
	 (107,'Tân Lân',NULL,NULL,NULL,'Xã'),
	 (107,'Tân Trạch',NULL,NULL,NULL,'Xã'),
	 (108,'Cần Giuộc',NULL,NULL,NULL,'Thị trấn'),
	 (108,'Đông Thạnh',NULL,NULL,NULL,'Xã'),
	 (108,'Long An',NULL,NULL,NULL,'Xã'),
	 (108,'Long Hậu',NULL,NULL,NULL,'Xã'),
	 (108,'Long Phụng',NULL,NULL,NULL,'Xã'),
	 (108,'Long Thượng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (108,'Mỹ Lộc',NULL,NULL,NULL,'Xã'),
	 (108,'Phước Hậu',NULL,NULL,NULL,'Xã'),
	 (108,'Phước Lại',NULL,NULL,NULL,'Xã'),
	 (108,'Phước Lâm',NULL,NULL,NULL,'Xã'),
	 (108,'Phước Lý',NULL,NULL,NULL,'Xã'),
	 (108,'Phước Vĩnh Đông',NULL,NULL,NULL,'Xã'),
	 (108,'Phước Vĩnh Tây',NULL,NULL,NULL,'Xã'),
	 (108,'Tân Kim',NULL,NULL,NULL,'Xã'),
	 (108,'Tân Tập',NULL,NULL,NULL,'Xã'),
	 (108,'Thuận Thành',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (108,'Trường Bình',NULL,NULL,NULL,'Xã'),
	 (109,'An Lục Long',NULL,NULL,NULL,'Xã'),
	 (109,'Bình Quới',NULL,NULL,NULL,'Xã'),
	 (109,'Bình Quới.',NULL,NULL,NULL,'Xã'),
	 (109,'Dương Xuân Hội',NULL,NULL,NULL,'Xã'),
	 (109,'Hiệp Thạnh',NULL,NULL,NULL,'Xã'),
	 (109,'Hòa Phú',NULL,NULL,NULL,'Xã'),
	 (109,'Long Trì',NULL,NULL,NULL,'Xã'),
	 (109,'Phú Ngãi Trị',NULL,NULL,NULL,'Xã'),
	 (109,'Phước Tân Hưng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (109,'Tầm Vu',NULL,NULL,NULL,'Thị trấn'),
	 (109,'Thanh Phú Long',NULL,NULL,NULL,'Xã'),
	 (109,'Thanh Vĩnh Đông',NULL,NULL,NULL,'Xã'),
	 (109,'Thuận Mỹ',NULL,NULL,NULL,'Xã'),
	 (109,'Vĩnh Công',NULL,NULL,NULL,'Xã'),
	 (110,'An Ninh Đông',NULL,NULL,NULL,'Xã'),
	 (110,'An Ninh Tây',NULL,NULL,NULL,'Xã'),
	 (110,'Đức Hòa',NULL,NULL,NULL,'Thị trấn'),
	 (110,'Đức Hoà Đông',NULL,NULL,NULL,'Xã'),
	 (110,'Đức Hoà Hạ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (110,'Đức Hoà Thượng',NULL,NULL,NULL,'Xã'),
	 (110,'Đức Lập Hạ',NULL,NULL,NULL,'Xã'),
	 (110,'Đức Lập Thượng',NULL,NULL,NULL,'Xã'),
	 (110,'Hậu Nghĩa',NULL,NULL,NULL,'Thị trấn'),
	 (110,'Hiệp Hòa',NULL,NULL,NULL,'Thị trấn'),
	 (110,'Hiệp Hòa',NULL,NULL,NULL,'Xã'),
	 (110,'Hoà Khánh Đông',NULL,NULL,NULL,'Xã'),
	 (110,'Hoà Khánh Nam',NULL,NULL,NULL,'Xã'),
	 (110,'Hòa Khánh Tây',NULL,NULL,NULL,'Xã'),
	 (110,'Hựu Thạnh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (110,'Lộc Giang',NULL,NULL,NULL,'Xã'),
	 (110,'Mỹ Hạnh Bắc',NULL,NULL,NULL,'Xã'),
	 (110,'Mỹ Hạnh Nam',NULL,NULL,NULL,'Xã'),
	 (110,'Tân Mỹ',NULL,NULL,NULL,'Xã'),
	 (110,'Tân Phú',NULL,NULL,NULL,'Xã'),
	 (111,'Bình Hòa Bắc',NULL,NULL,NULL,'Xã'),
	 (111,'Bình Hòa Hưng',NULL,NULL,NULL,'Xã'),
	 (111,'Bình Hòa Nam',NULL,NULL,NULL,'Xã'),
	 (111,'Bình Thành',NULL,NULL,NULL,'Xã'),
	 (111,'Đông Thành',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (111,'Mỹ Bình',NULL,NULL,NULL,'Xã'),
	 (111,'Mỹ Quý Đông',NULL,NULL,NULL,'Xã'),
	 (111,'Mỹ Quý Tây',NULL,NULL,NULL,'Xã'),
	 (111,'Mỹ Thạnh Bắc',NULL,NULL,NULL,'Xã'),
	 (111,'Mỹ Thạnh Đông',NULL,NULL,NULL,'Xã'),
	 (111,'Mỹ Thạnh Tây',NULL,NULL,NULL,'Xã'),
	 (112,'1',NULL,NULL,NULL,'Phường'),
	 (112,'2',NULL,NULL,NULL,'Phường'),
	 (112,'3',NULL,NULL,NULL,'Phường'),
	 (112,'Bình Hiệp',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (112,'Bình Tân',NULL,NULL,NULL,'Xã'),
	 (112,'Thạnh Hưng',NULL,NULL,NULL,'Xã'),
	 (112,'Thạnh Trị',NULL,NULL,NULL,'Xã'),
	 (112,'Tuyên Thạnh',NULL,NULL,NULL,'Xã'),
	 (113,'Bình Hòa Đông',NULL,NULL,NULL,'Xã'),
	 (113,'Bình Hòa Tây',NULL,NULL,NULL,'Xã'),
	 (113,'Bình Hòa Trung',NULL,NULL,NULL,'Xã'),
	 (113,'Bình Phong Thạnh',NULL,NULL,NULL,'Xã'),
	 (113,'Bình Thạnh',NULL,NULL,NULL,'Xã'),
	 (113,'Tân Lập',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (113,'Tân Thành',NULL,NULL,NULL,'Xã'),
	 (114,'1',NULL,NULL,NULL,'Phường'),
	 (114,'2',NULL,NULL,NULL,'Phường'),
	 (114,'3',NULL,NULL,NULL,'Phường'),
	 (114,'4',NULL,NULL,NULL,'Phường'),
	 (114,'5',NULL,NULL,NULL,'Phường'),
	 (114,'6',NULL,NULL,NULL,'Phường'),
	 (114,'7',NULL,NULL,NULL,'Phường'),
	 (114,'An Vĩnh Ngãi',NULL,NULL,NULL,'Xã'),
	 (114,'Bình Tâm',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (114,'Hướng Thọ Phú',NULL,NULL,NULL,'Xã'),
	 (114,'Khánh Hậu',NULL,NULL,NULL,'Phường'),
	 (114,'Lợi Bình Nhơn',NULL,NULL,NULL,'Xã'),
	 (114,'Nhơn Thạnh Trung',NULL,NULL,NULL,'Xã'),
	 (114,'Tân Khánh',NULL,NULL,NULL,'Phường'),
	 (115,'Bình Thạnh',NULL,NULL,NULL,'Thị trấn'),
	 (115,'Hưng Điền',NULL,NULL,NULL,'Xã'),
	 (115,'Hưng Điền B',NULL,NULL,NULL,'Xã'),
	 (115,'Hưng Hà',NULL,NULL,NULL,'Xã'),
	 (115,'Hưng Thạnh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (115,'Tân Hưng',NULL,NULL,NULL,'Thị trấn'),
	 (115,'Thạnh Hưng',NULL,NULL,NULL,'Xã'),
	 (115,'Vĩnh Bữu',NULL,NULL,NULL,'Xã'),
	 (115,'Vĩnh Châu A',NULL,NULL,NULL,'Xã'),
	 (115,'Vĩnh Châu B',NULL,NULL,NULL,'Xã'),
	 (115,'Vĩnh Đại',NULL,NULL,NULL,'Xã'),
	 (115,'Vĩnh Lợi',NULL,NULL,NULL,'Xã'),
	 (115,'Vĩnh Thạnh',NULL,NULL,NULL,'Xã'),
	 (116,'Bắc Hoà',NULL,NULL,NULL,'Xã'),
	 (116,'Hậu Thạnh Đông',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (116,'Hậu Thạnh Tây',NULL,NULL,NULL,'Xã'),
	 (116,'Kiến Bình',NULL,NULL,NULL,'Xã'),
	 (116,'Nhơn Hoà',NULL,NULL,NULL,'Xã'),
	 (116,'Nhơn Hoà Lập',NULL,NULL,NULL,'Xã'),
	 (116,'Nhơn Ninh',NULL,NULL,NULL,'Xã'),
	 (116,'Tân Bình',NULL,NULL,NULL,'Xã'),
	 (116,'Tân Hoà',NULL,NULL,NULL,'Xã'),
	 (116,'Tân Lập',NULL,NULL,NULL,'Xã'),
	 (116,'Tân Ninh',NULL,NULL,NULL,'Xã'),
	 (116,'Tân Thành',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (116,'Tân Thạnh',NULL,NULL,NULL,'Thị trấn'),
	 (117,'An Nhựt Tân',NULL,NULL,NULL,'Xã'),
	 (117,'Bình Lãng',NULL,NULL,NULL,'Xã'),
	 (117,'Bình Tịnh',NULL,NULL,NULL,'Xã'),
	 (117,'Bình Trinh Đông',NULL,NULL,NULL,'Xã'),
	 (117,'Đức Tân',NULL,NULL,NULL,'Xã'),
	 (117,'Lạc Tấn',NULL,NULL,NULL,'Xã'),
	 (117,'Mỹ Bình',NULL,NULL,NULL,'Xã'),
	 (117,'Nhựt Ninh',NULL,NULL,NULL,'Xã'),
	 (117,'Quê Mỹ Thạnh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (117,'Tân Phước Tây',NULL,NULL,NULL,'Xã'),
	 (117,'Tân Trụ',NULL,NULL,NULL,'Thị trấn'),
	 (118,'Tân Đông',NULL,NULL,NULL,'Xã'),
	 (118,'Tân Hiệp',NULL,NULL,NULL,'Xã'),
	 (118,'Tân Tây',NULL,NULL,NULL,'Xã'),
	 (118,'Thạnh An',NULL,NULL,NULL,'Xã'),
	 (118,'Thạnh Hóa',NULL,NULL,NULL,'Thị trấn'),
	 (118,'Thạnh Phú',NULL,NULL,NULL,'Xã'),
	 (118,'Thạnh Phước',NULL,NULL,NULL,'Xã'),
	 (118,'Thuận Bình',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (118,'Thuận Nghĩa Hòa',NULL,NULL,NULL,'Xã'),
	 (118,'Thủy Đông',NULL,NULL,NULL,'Xã'),
	 (118,'Thủy Tây',NULL,NULL,NULL,'Xã'),
	 (119,'Bình An',NULL,NULL,NULL,'Xã'),
	 (119,'Bình Thạnh',NULL,NULL,NULL,'Xã'),
	 (119,'Long Thành',NULL,NULL,NULL,'Xã'),
	 (119,'Long Thạnh',NULL,NULL,NULL,'Xã'),
	 (119,'Long Thuận',NULL,NULL,NULL,'Xã'),
	 (119,'Mỹ An',NULL,NULL,NULL,'Xã'),
	 (119,'Mỹ Lạc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (119,'Mỹ Phú',NULL,NULL,NULL,'Xã'),
	 (119,'Mỹ Thạnh',NULL,NULL,NULL,'Xã'),
	 (119,'Nhị Thành',NULL,NULL,NULL,'Xã'),
	 (119,'Tân Lập',NULL,NULL,NULL,'Xã'),
	 (119,'Tân Thành',NULL,NULL,NULL,'Xã'),
	 (119,'Thủ Thừa',NULL,NULL,NULL,'Xã'),
	 (120,'Hưng Điền A',NULL,NULL,NULL,'Xã'),
	 (120,'Khánh Hưng',NULL,NULL,NULL,'Xã'),
	 (120,'Thái Bình Trung',NULL,NULL,NULL,'Xã'),
	 (120,'Thái Trị',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (120,'Tuyên Bình',NULL,NULL,NULL,'Xã'),
	 (120,'Tuyên Bình Tây',NULL,NULL,NULL,'Xã'),
	 (120,'Vĩnh Bình',NULL,NULL,NULL,'Xã'),
	 (120,'Vĩnh Hưng',NULL,NULL,NULL,'Thị trấn'),
	 (120,'Vĩnh Thuận',NULL,NULL,NULL,'Xã'),
	 (120,'Vĩnh Trị',NULL,NULL,NULL,'Xã'),
	 (121,'Trà Bui',NULL,NULL,NULL,'Xã'),
	 (121,'Trà Đốc',NULL,NULL,NULL,'Xã'),
	 (121,'Trà Đông',NULL,NULL,NULL,'Xã'),
	 (121,'Trà Dương',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (121,'Trà Giác',NULL,NULL,NULL,'Xã'),
	 (121,'Trà Giang',NULL,NULL,NULL,'Xã'),
	 (121,'Trà Giáp',NULL,NULL,NULL,'Xã'),
	 (121,'Trà Ka',NULL,NULL,NULL,'Xã'),
	 (121,'Trà Kót',NULL,NULL,NULL,'Xã'),
	 (121,'Trà My',NULL,NULL,NULL,'Thị trấn'),
	 (121,'Trà Nú',NULL,NULL,NULL,'Xã'),
	 (121,'Trà Sơn',NULL,NULL,NULL,'Xã'),
	 (121,'Trà Tân',NULL,NULL,NULL,'Xã'),
	 (122,'Ái Nghĩa',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (122,'Đại An',NULL,NULL,NULL,'Xã'),
	 (122,'Đại Chánh',NULL,NULL,NULL,'Xã'),
	 (122,'Đại Cường',NULL,NULL,NULL,'Xã'),
	 (122,'Đại Đồng',NULL,NULL,NULL,'Xã'),
	 (122,'Đại Hiệp',NULL,NULL,NULL,'Xã'),
	 (122,'Đại Hòa',NULL,NULL,NULL,'Xã'),
	 (122,'Đại Hồng',NULL,NULL,NULL,'Xã'),
	 (122,'Đại Hưng',NULL,NULL,NULL,'Xã'),
	 (122,'Đại Lãnh',NULL,NULL,NULL,'Xã'),
	 (122,'Đại Minh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (122,'Đại Nghĩa',NULL,NULL,NULL,'Xã'),
	 (122,'Đại Phong',NULL,NULL,NULL,'Xã'),
	 (122,'Đại Quang',NULL,NULL,NULL,'Xã'),
	 (122,'Đại Sơn',NULL,NULL,NULL,'Xã'),
	 (122,'Đại Tân',NULL,NULL,NULL,'Xã'),
	 (122,'Đại Thắng',NULL,NULL,NULL,'Xã'),
	 (122,'Đại Thạnh',NULL,NULL,NULL,'Xã'),
	 (123,'Điện An',NULL,NULL,NULL,'Xã'),
	 (123,'Điện Dương',NULL,NULL,NULL,'Xã'),
	 (123,'Điện Hòa',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (123,'Điện Hồng',NULL,NULL,NULL,'Xã'),
	 (123,'Điện Minh',NULL,NULL,NULL,'Xã'),
	 (123,'Điện Nam Bắc',NULL,NULL,NULL,'Xã'),
	 (123,'Điện Nam Đông',NULL,NULL,NULL,'Xã'),
	 (123,'Điện Nam Trung',NULL,NULL,NULL,'Xã'),
	 (123,'Điện Ngọc',NULL,NULL,NULL,'Xã'),
	 (123,'Điện Phong',NULL,NULL,NULL,'Xã'),
	 (123,'Điện Phước',NULL,NULL,NULL,'Xã'),
	 (123,'Điện Phương',NULL,NULL,NULL,'Xã'),
	 (123,'Điện Quang',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (123,'Điện Thắng Bắc',NULL,NULL,NULL,'Xã'),
	 (123,'Điện Thắng Nam',NULL,NULL,NULL,'Xã'),
	 (123,'Điện Thắng Trung',NULL,NULL,NULL,'Xã'),
	 (123,'Điện Thọ',NULL,NULL,NULL,'Xã'),
	 (123,'Điện Tiến',NULL,NULL,NULL,'Xã'),
	 (123,'Điện Trung',NULL,NULL,NULL,'Xã'),
	 (123,'Vĩnh Điện',NULL,NULL,NULL,'Thị trấn'),
	 (124,'A Rooi',NULL,NULL,NULL,'Xã'),
	 (124,'A Ting',NULL,NULL,NULL,'Xã'),
	 (124,'Ba',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (124,'Jơ Ngây',NULL,NULL,NULL,'Xã'),
	 (124,'Ka Dăng',NULL,NULL,NULL,'Xã'),
	 (124,'Mà Cooi',NULL,NULL,NULL,'Xã'),
	 (124,'Prao',NULL,NULL,NULL,'Xã'),
	 (124,'Sông Kôn',NULL,NULL,NULL,'Xã'),
	 (124,'Tà Lu',NULL,NULL,NULL,'Xã'),
	 (124,'Tư',NULL,NULL,NULL,'Xã'),
	 (124,'Za Hung',NULL,NULL,NULL,'Xã'),
	 (125,'Duy Châu',NULL,NULL,NULL,'Xã'),
	 (125,'Duy Hải',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (125,'Duy Hòa',NULL,NULL,NULL,'Xã'),
	 (125,'Duy Nghĩa',NULL,NULL,NULL,'Xã'),
	 (125,'Duy Phú',NULL,NULL,NULL,'Xã'),
	 (125,'Duy Phước',NULL,NULL,NULL,'Xã'),
	 (125,'Duy Sơn',NULL,NULL,NULL,'Xã'),
	 (125,'Duy Tân',NULL,NULL,NULL,'Xã'),
	 (125,'Duy Thành',NULL,NULL,NULL,'Xã'),
	 (125,'Duy Thu',NULL,NULL,NULL,'Xã'),
	 (125,'Duy Trinh',NULL,NULL,NULL,'Xã'),
	 (125,'Duy Trung',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (125,'Duy Vinh',NULL,NULL,NULL,'Xã'),
	 (125,'Nam Phước',NULL,NULL,NULL,'Thị trấn'),
	 (125,'Phước Nam',NULL,NULL,NULL,'Thị trấn'),
	 (126,'Bình Lâm',NULL,NULL,NULL,'Xã'),
	 (126,'Bình Sơn',NULL,NULL,NULL,'Xã'),
	 (126,'Hiệp Hòa',NULL,NULL,NULL,'Xã'),
	 (126,'Hiệp Thuận',NULL,NULL,NULL,'Xã'),
	 (126,'Phước Gia',NULL,NULL,NULL,'Xã'),
	 (126,'Phước Trà',NULL,NULL,NULL,'Xã'),
	 (126,'Quế Bình',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (126,'Quế Lưu',NULL,NULL,NULL,'Xã'),
	 (126,'Quế Thọ',NULL,NULL,NULL,'Xã'),
	 (126,'Sông Trà',NULL,NULL,NULL,'Xã'),
	 (126,'Tân An',NULL,NULL,NULL,'Thị trấn'),
	 (126,'Thăng Phước',NULL,NULL,NULL,'Xã'),
	 (127,'Cẩm An',NULL,NULL,NULL,'Phường'),
	 (127,'Cẩm Châu',NULL,NULL,NULL,'Phường'),
	 (127,'Cẩm Hà',NULL,NULL,NULL,'Xã'),
	 (127,'Cẩm Kim',NULL,NULL,NULL,'Xã'),
	 (127,'Cẩm Nam',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (127,'Cẩm Phô',NULL,NULL,NULL,'Phường'),
	 (127,'Cẩm Thanh',NULL,NULL,NULL,'Xã'),
	 (127,'Cửa Đại',NULL,NULL,NULL,'Phường'),
	 (127,'Minh An',NULL,NULL,NULL,'Phường'),
	 (127,'Sơn Phong',NULL,NULL,NULL,'Phường'),
	 (127,'Tân An',NULL,NULL,NULL,'Phường'),
	 (127,'Tân Hiệp',NULL,NULL,NULL,'Xã'),
	 (127,'Thanh Hà',NULL,NULL,NULL,'Phường'),
	 (128,'Cà Dy',NULL,NULL,NULL,'Xã'),
	 (128,'Chà Vàl',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (128,'Chơ Chun',NULL,NULL,NULL,'Xã'),
	 (128,'Đăk Pree',NULL,NULL,NULL,'Xã'),
	 (128,'Đắk Pring',NULL,NULL,NULL,'Xã'),
	 (128,'Đắk Tôi',NULL,NULL,NULL,'Xã'),
	 (128,'La Dêê',NULL,NULL,NULL,'Xã'),
	 (128,'La Êê',NULL,NULL,NULL,'Xã'),
	 (128,'Tà Bhing',NULL,NULL,NULL,'Xã'),
	 (128,'Tà Pơơ',NULL,NULL,NULL,'Xã'),
	 (128,'Thạnh Mỹ',NULL,NULL,NULL,'Thị trấn'),
	 (128,'Zuôih',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (129,'Trà Cang',NULL,NULL,NULL,'Xã'),
	 (129,'Trà Don',NULL,NULL,NULL,'Xã'),
	 (129,'Trà Dơn',NULL,NULL,NULL,'Xã'),
	 (129,'Trà Leng',NULL,NULL,NULL,'Xã'),
	 (129,'Trà Linh',NULL,NULL,NULL,'Xã'),
	 (129,'Trà Mai',NULL,NULL,NULL,'Xã'),
	 (129,'Trà Nam',NULL,NULL,NULL,'Xã'),
	 (129,'Trà Tập',NULL,NULL,NULL,'Xã'),
	 (129,'Trà Vân',NULL,NULL,NULL,'Xã'),
	 (129,'Trà Vinh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (130,'Phước Ninh',NULL,NULL,NULL,'Xã'),
	 (130,'Quế Lâm',NULL,NULL,NULL,'Xã'),
	 (130,'Quế Lộc',NULL,NULL,NULL,'Xã'),
	 (130,'Quế Ninh',NULL,NULL,NULL,'Xã'),
	 (130,'Quế Phước',NULL,NULL,NULL,'Xã'),
	 (130,'Quế Trung',NULL,NULL,NULL,'Xã'),
	 (130,'Sơn Viên',NULL,NULL,NULL,'Xã'),
	 (131,'Núi Thành',NULL,NULL,NULL,'Thị trấn'),
	 (131,'Tam Anh Bắc',NULL,NULL,NULL,'Xã'),
	 (131,'Tam Anh Nam',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (131,'Tam Giang',NULL,NULL,NULL,'Xã'),
	 (131,'Tam Hải',NULL,NULL,NULL,'Xã'),
	 (131,'Tam Hiệp',NULL,NULL,NULL,'Xã'),
	 (131,'Tam Hòa',NULL,NULL,NULL,'Xã'),
	 (131,'Tam Mỹ Đông',NULL,NULL,NULL,'Xã'),
	 (131,'Tam Mỹ Tây',NULL,NULL,NULL,'Xã'),
	 (131,'Tam Nghĩa',NULL,NULL,NULL,'Xã'),
	 (131,'Tam Quang',NULL,NULL,NULL,'Xã'),
	 (131,'Tam Sơn',NULL,NULL,NULL,'Xã'),
	 (131,'Tam Thạnh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (131,'Tam Tiến',NULL,NULL,NULL,'Xã'),
	 (131,'Tam Trà',NULL,NULL,NULL,'Xã'),
	 (131,'Tam Xuân 1',NULL,NULL,NULL,'Xã'),
	 (131,'Tam Xuân 2',NULL,NULL,NULL,'Xã'),
	 (132,'Phú Thịnh',NULL,NULL,NULL,'Thị trấn'),
	 (132,'Tam An',NULL,NULL,NULL,'Xã'),
	 (132,'Tam Đại',NULL,NULL,NULL,'Xã'),
	 (132,'Tam Dân',NULL,NULL,NULL,'Xã'),
	 (132,'Tam Đàn',NULL,NULL,NULL,'Xã'),
	 (132,'Tam Lãnh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (132,'Tam Lộc',NULL,NULL,NULL,'Xã'),
	 (132,'Tam Phước',NULL,NULL,NULL,'Xã'),
	 (132,'Tam Thái',NULL,NULL,NULL,'Xã'),
	 (132,'Tam Thành',NULL,NULL,NULL,'Xã'),
	 (132,'Tam Vinh',NULL,NULL,NULL,'Xã'),
	 (133,'Khâm Đức',NULL,NULL,NULL,'Thị trấn'),
	 (133,'Phước Chánh',NULL,NULL,NULL,'Xã'),
	 (133,'Phước Công',NULL,NULL,NULL,'Xã'),
	 (133,'Phước Đức',NULL,NULL,NULL,'Xã'),
	 (133,'Phước Hiệp',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (133,'Phước Hòa',NULL,NULL,NULL,'Xã'),
	 (133,'Phước Kim',NULL,NULL,NULL,'Xã'),
	 (133,'Phước Lộc',NULL,NULL,NULL,'Xã'),
	 (133,'Phước Mỹ',NULL,NULL,NULL,'Xã'),
	 (133,'Phước Năng',NULL,NULL,NULL,'Xã'),
	 (133,'Phước Thành',NULL,NULL,NULL,'Xã'),
	 (133,'Phước Xuân',NULL,NULL,NULL,'Xã'),
	 (134,'Đông Phú',NULL,NULL,NULL,'Thị trấn'),
	 (134,'Hương An',NULL,NULL,NULL,'Xã'),
	 (134,'Phú Thọ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (134,'Quế An',NULL,NULL,NULL,'Xã'),
	 (134,'Quế Châu',NULL,NULL,NULL,'Xã'),
	 (134,'Quế Cường',NULL,NULL,NULL,'Xã'),
	 (134,'Quế Hiệp',NULL,NULL,NULL,'Xã'),
	 (134,'Quế Long',NULL,NULL,NULL,'Xã'),
	 (134,'Quế Minh',NULL,NULL,NULL,'Xã'),
	 (134,'Quế Phong',NULL,NULL,NULL,'Xã'),
	 (134,'Quế Phú',NULL,NULL,NULL,'Xã'),
	 (134,'Quế Thuận',NULL,NULL,NULL,'Xã'),
	 (134,'Quế Xuân 1',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (134,'Quế Xuân 2',NULL,NULL,NULL,'Xã'),
	 (134,'Quý Thuận',NULL,NULL,NULL,'Xã'),
	 (135,'An Mỹ',NULL,NULL,NULL,'Phường'),
	 (135,'An Phú',NULL,NULL,NULL,'Phường'),
	 (135,'An Sơn',NULL,NULL,NULL,'Phường'),
	 (135,'An Xuân',NULL,NULL,NULL,'Phường'),
	 (135,'Hòa Hương',NULL,NULL,NULL,'Phường'),
	 (135,'Hòa Thuận',NULL,NULL,NULL,'Phường'),
	 (135,'Phước Hòa',NULL,NULL,NULL,'Phường'),
	 (135,'Tam Ngọc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (135,'Tam Phú',NULL,NULL,NULL,'Xã'),
	 (135,'Tam Thăng',NULL,NULL,NULL,'Xã'),
	 (135,'Tam Thanh',NULL,NULL,NULL,'Xã'),
	 (135,'Tân Thạnh',NULL,NULL,NULL,'Phường'),
	 (135,'Trường Xuân',NULL,NULL,NULL,'Phường'),
	 (136,'A Nông',NULL,NULL,NULL,'Xã'),
	 (136,'A Tiêng',NULL,NULL,NULL,'Xã'),
	 (136,'A Vương',NULL,NULL,NULL,'Xã'),
	 (136,'A Xan',NULL,NULL,NULL,'Xã'),
	 (136,'Bha Lê',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (136,'Ch''ơm',NULL,NULL,NULL,'Xã'),
	 (136,'Dang',NULL,NULL,NULL,'Xã'),
	 (136,'Ga Ri',NULL,NULL,NULL,'Xã'),
	 (136,'Lăng',NULL,NULL,NULL,'Xã'),
	 (136,'Tr''hy',NULL,NULL,NULL,'Xã'),
	 (137,'Bình An',NULL,NULL,NULL,'Xã'),
	 (137,'Bình Chánh',NULL,NULL,NULL,'Xã'),
	 (137,'Bình Đào',NULL,NULL,NULL,'Xã'),
	 (137,'Bình Định Bắc',NULL,NULL,NULL,'Xã'),
	 (137,'Bình Định Nam',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (137,'Bình Dương',NULL,NULL,NULL,'Xã'),
	 (137,'Bình Giang',NULL,NULL,NULL,'Xã'),
	 (137,'Bình Hải',NULL,NULL,NULL,'Xã'),
	 (137,'Bình Lãnh',NULL,NULL,NULL,'Xã'),
	 (137,'Bình Minh',NULL,NULL,NULL,'Xã'),
	 (137,'Bình Nam',NULL,NULL,NULL,'Xã'),
	 (137,'Bình Nguyên',NULL,NULL,NULL,'Xã'),
	 (137,'Bình Phú',NULL,NULL,NULL,'Xã'),
	 (137,'Bình Phục',NULL,NULL,NULL,'Xã'),
	 (137,'Bình Quế',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (137,'Bình Quý',NULL,NULL,NULL,'Xã'),
	 (137,'Bình Sa',NULL,NULL,NULL,'Xã'),
	 (137,'Bình Trị',NULL,NULL,NULL,'Xã'),
	 (137,'Bình Triều',NULL,NULL,NULL,'Xã'),
	 (137,'Bình Trung',NULL,NULL,NULL,'Xã'),
	 (137,'Bình Tú',NULL,NULL,NULL,'Xã'),
	 (137,'Hà Lam',NULL,NULL,NULL,'Thị trấn'),
	 (138,'Tiên An',NULL,NULL,NULL,'Xã'),
	 (138,'Tiên Cẩm',NULL,NULL,NULL,'Xã'),
	 (138,'Tiên Cảnh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (138,'Tiên Châu',NULL,NULL,NULL,'Xã'),
	 (138,'Tiên Hà',NULL,NULL,NULL,'Xã'),
	 (138,'Tiên Hiệp',NULL,NULL,NULL,'Xã'),
	 (138,'Tiên Kỳ',NULL,NULL,NULL,'Thị trấn'),
	 (138,'Tiên Lãnh',NULL,NULL,NULL,'Xã'),
	 (138,'Tiên Lập',NULL,NULL,NULL,'Xã'),
	 (138,'Tiên Lộc',NULL,NULL,NULL,'Xã'),
	 (138,'Tiên Mỹ',NULL,NULL,NULL,'Xã'),
	 (138,'Tiên Ngọc',NULL,NULL,NULL,'Xã'),
	 (138,'Tiên Phong',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (138,'Tiên Sơn',NULL,NULL,NULL,'Xã'),
	 (138,'Tiên Thọ',NULL,NULL,NULL,'Xã'),
	 (139,'Hòa Long',NULL,NULL,NULL,'Xã'),
	 (139,'Kim Dinh',NULL,NULL,NULL,'Phường'),
	 (139,'Long Hương',NULL,NULL,NULL,'Phường'),
	 (139,'Long Phước',NULL,NULL,NULL,'Xã'),
	 (139,'Long Tâm',NULL,NULL,NULL,'Phường'),
	 (139,'Long Toàn',NULL,NULL,NULL,'Phường'),
	 (139,'Phước Hiệp',NULL,NULL,NULL,'Phường'),
	 (139,'Phước Hưng',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (139,'Phước Nguyên',NULL,NULL,NULL,'Phường'),
	 (139,'Phước Trung',NULL,NULL,NULL,'Phường'),
	 (139,'Tân Hưng',NULL,NULL,NULL,'Xã'),
	 (140,'Bàu Chinh',NULL,NULL,NULL,'Xã'),
	 (140,'Bình Ba',NULL,NULL,NULL,'Xã'),
	 (140,'Bình Giã',NULL,NULL,NULL,'Xã'),
	 (140,'Bình Trung',NULL,NULL,NULL,'Xã'),
	 (140,'Cù Bị',NULL,NULL,NULL,'Xã'),
	 (140,'Đá Bạc',NULL,NULL,NULL,'Xã'),
	 (140,'Kim Long',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (140,'Láng Lớn',NULL,NULL,NULL,'Xã'),
	 (140,'Ngãi Giao',NULL,NULL,NULL,'Thị trấn'),
	 (140,'Nghĩa Thành',NULL,NULL,NULL,'Xã'),
	 (140,'Quảng Thành',NULL,NULL,NULL,'Xã'),
	 (140,'Sơn Bình',NULL,NULL,NULL,'Xã'),
	 (140,'Suối Nghệ',NULL,NULL,NULL,'Xã'),
	 (140,'Suối Rao',NULL,NULL,NULL,'Xã'),
	 (140,'Xà Bang',NULL,NULL,NULL,'Xã'),
	 (140,'Xuân Sơn',NULL,NULL,NULL,'Xã'),
	 (142,'Đất Đỏ',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (142,'Láng Dài',NULL,NULL,NULL,'Xã'),
	 (142,'Lộc An',NULL,NULL,NULL,'Xã'),
	 (142,'Long Mỹ',NULL,NULL,NULL,'Xã'),
	 (142,'Long Tân',NULL,NULL,NULL,'Xã'),
	 (142,'Phước Hải',NULL,NULL,NULL,'Thị trấn'),
	 (142,'Phước Hội',NULL,NULL,NULL,'Xã'),
	 (142,'Phước Long Thọ',NULL,NULL,NULL,'Xã'),
	 (143,'An Ngãi',NULL,NULL,NULL,'Xã'),
	 (143,'An Nhứt',NULL,NULL,NULL,'Xã'),
	 (143,'Long Điền',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (143,'Long Hải',NULL,NULL,NULL,'Thị trấn'),
	 (143,'Phước Hưng',NULL,NULL,NULL,'Xã'),
	 (143,'Phước Tỉnh',NULL,NULL,NULL,'Xã'),
	 (143,'Tam Phước',NULL,NULL,NULL,'Xã'),
	 (144,'Châu Pha',NULL,NULL,NULL,'Xã'),
	 (144,'Hắc Dịch',NULL,NULL,NULL,'Xã'),
	 (144,'Mỹ Xuân',NULL,NULL,NULL,'Xã'),
	 (144,'Phú Mỹ',NULL,NULL,NULL,'Xã'),
	 (144,'Phước Hòa',NULL,NULL,NULL,'Xã'),
	 (144,'Phước Lộc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (144,'Sông Xoài',NULL,NULL,NULL,'Xã'),
	 (144,'Tân Hải',NULL,NULL,NULL,'Xã'),
	 (144,'Tân Hòa',NULL,NULL,NULL,'Xã'),
	 (144,'Tân Phước',NULL,NULL,NULL,'Phường'),
	 (144,'Tóc Tiên',NULL,NULL,NULL,'Xã'),
	 (145,'1',NULL,NULL,NULL,'Phường'),
	 (145,'10',NULL,NULL,NULL,'Phường'),
	 (145,'11',NULL,NULL,NULL,'Phường'),
	 (145,'12',NULL,NULL,NULL,'Phường'),
	 (145,'2',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (145,'3',NULL,NULL,NULL,'Phường'),
	 (145,'4',NULL,NULL,NULL,'Phường'),
	 (145,'5',NULL,NULL,NULL,'Phường'),
	 (145,'6',NULL,NULL,NULL,'Phường'),
	 (145,'7',NULL,NULL,NULL,'Phường'),
	 (145,'8',NULL,NULL,NULL,'Phường'),
	 (145,'9',NULL,NULL,NULL,'Phường'),
	 (145,'Long Sơn',NULL,NULL,NULL,'Xã'),
	 (145,'Nguyễn An Ninh',NULL,NULL,NULL,'Phường'),
	 (145,'Rạch Dừa',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (145,'Thắng Nhất',NULL,NULL,NULL,'Phường'),
	 (145,'Thắng Nhì',NULL,NULL,NULL,'Phường'),
	 (145,'Thắng Tam',NULL,NULL,NULL,'Phường'),
	 (146,'Bàu Lâm',NULL,NULL,NULL,'Xã'),
	 (146,'Bình Châu',NULL,NULL,NULL,'Xã'),
	 (146,'Bông Trang',NULL,NULL,NULL,'Xã'),
	 (146,'Bưng Riềng',NULL,NULL,NULL,'Xã'),
	 (146,'Hòa Bình',NULL,NULL,NULL,'Xã'),
	 (146,'Hòa Hiệp',NULL,NULL,NULL,'Xã'),
	 (146,'Hòa Hội',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (146,'Hòa Hưng ',NULL,NULL,NULL,'Xã'),
	 (146,'Phước Bửu',NULL,NULL,NULL,'Xã'),
	 (146,'Phước Tân',NULL,NULL,NULL,'Xã'),
	 (146,'Phước Thuận',NULL,NULL,NULL,'Xã'),
	 (146,'Tân Lâm',NULL,NULL,NULL,'Xã'),
	 (146,'Xuyên Mộc',NULL,NULL,NULL,'Xã'),
	 (147,'Cuôr Knia',NULL,NULL,NULL,'Xã'),
	 (147,'Ea Bar',NULL,NULL,NULL,'Xã'),
	 (147,'Ea Huar',NULL,NULL,NULL,'Xã'),
	 (147,'Ea Nuôl',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (147,'Ea Wer',NULL,NULL,NULL,'Xã'),
	 (147,'Krông Na',NULL,NULL,NULL,'Xã'),
	 (147,'Tân Hòa',NULL,NULL,NULL,'Xã'),
	 (148,'An Bình',NULL,NULL,NULL,'Phường'),
	 (148,'An Lạc',NULL,NULL,NULL,'Phường'),
	 (148,'Bình Tân',NULL,NULL,NULL,'Phường'),
	 (148,'Bình Thuận',NULL,NULL,NULL,'Xã'),
	 (148,'Cư Bao',NULL,NULL,NULL,'Xã'),
	 (148,'Đạt Hiếu',NULL,NULL,NULL,'Phường'),
	 (148,'Đoàn Kết',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (148,'Ea Blang',NULL,NULL,NULL,'Xã'),
	 (148,'Ea Drông',NULL,NULL,NULL,'Xã'),
	 (148,'Ea Siên',NULL,NULL,NULL,'Xã'),
	 (148,'Thiện An',NULL,NULL,NULL,'Phường'),
	 (148,'Thống Nhất',NULL,NULL,NULL,'Phường'),
	 (149,'Cư Ebur',NULL,NULL,NULL,'Xã'),
	 (149,'Ea Kao',NULL,NULL,NULL,'Phường'),
	 (149,'Ea Tam',NULL,NULL,NULL,'Phường'),
	 (149,'Ea Tu',NULL,NULL,NULL,'Xã'),
	 (149,'Hòa Khánh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (149,'Hòa Phú',NULL,NULL,NULL,'Xã'),
	 (149,'Hòa Thắng',NULL,NULL,NULL,'Xã'),
	 (149,'Hòa Thuận',NULL,NULL,NULL,'Xã'),
	 (149,'Hòa Xuân',NULL,NULL,NULL,'Xã'),
	 (149,'Khánh Xuân',NULL,NULL,NULL,'Phường'),
	 (149,'Tân An',NULL,NULL,NULL,'Xã'),
	 (149,'Tân Hoà',NULL,NULL,NULL,'Xã'),
	 (149,'Tân Lập',NULL,NULL,NULL,'Xã'),
	 (149,'Tân Lợi',NULL,NULL,NULL,'Xã'),
	 (149,'Tân Thành',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (149,'Tân Tiến',NULL,NULL,NULL,'Phường'),
	 (149,'Thắng Lợi',NULL,NULL,NULL,'Phường'),
	 (149,'Thành Công',NULL,NULL,NULL,'Phường'),
	 (149,'Thành Nhất',NULL,NULL,NULL,'Phường'),
	 (149,'Thống Nhất',NULL,NULL,NULL,'Phường'),
	 (149,'Tự An',NULL,NULL,NULL,'Phường'),
	 (150,'Cư Ê Wi',NULL,NULL,NULL,'Xã'),
	 (150,'Dray Bhăng',NULL,NULL,NULL,'Xã'),
	 (150,'Ea Bhôk',NULL,NULL,NULL,'Xã'),
	 (150,'Ea Hu',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (150,'Ea Ktur',NULL,NULL,NULL,'Xã'),
	 (150,'Ea Ning',NULL,NULL,NULL,'Xã'),
	 (150,'Ea Tiêu',NULL,NULL,NULL,'Xã'),
	 (150,'Hòa Hiệp',NULL,NULL,NULL,'Xã'),
	 (151,'Cư Dliê M''nông',NULL,NULL,NULL,'Xã'),
	 (151,'Cư M''gar',NULL,NULL,NULL,'Xã'),
	 (151,'Cư Suê',NULL,NULL,NULL,'Xã'),
	 (151,'Cuor Đăng',NULL,NULL,NULL,'Xã'),
	 (151,'Ea D''rơng',NULL,NULL,NULL,'Xã'),
	 (151,'Ea H''đing',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (151,'Ea Kiết',NULL,NULL,NULL,'Xã'),
	 (151,'Ea Kpam',NULL,NULL,NULL,'Xã'),
	 (151,'Ea Kuếh',NULL,NULL,NULL,'Xã'),
	 (151,'Ea M''dróh',NULL,NULL,NULL,'Xã'),
	 (151,'Ea M''nang',NULL,NULL,NULL,'Xã'),
	 (151,'Ea Pốk',NULL,NULL,NULL,'Thị trấn'),
	 (151,'Ea Tar',NULL,NULL,NULL,'Xã'),
	 (151,'Ea Tul',NULL,NULL,NULL,'Xã'),
	 (151,'Quảng Hiệp',NULL,NULL,NULL,'Xã'),
	 (151,'Quảng Phú',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (151,'Quảng Tiến',NULL,NULL,NULL,'Xã'),
	 (152,'Cư A Mung',NULL,NULL,NULL,'Xã'),
	 (152,'Cư Mốt',NULL,NULL,NULL,'Xã'),
	 (152,'Dlê Yang',NULL,NULL,NULL,'Xã'),
	 (152,'Ea Drăng',NULL,NULL,NULL,'Thị trấn'),
	 (152,'Ea Hiao',NULL,NULL,NULL,'Xã'),
	 (152,'Ea H''leo',NULL,NULL,NULL,'Xã'),
	 (152,'Ea Khăl',NULL,NULL,NULL,'Xã'),
	 (152,'Ea Nam',NULL,NULL,NULL,'Xã'),
	 (152,'Ea Ral',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (152,'Ea Sol',NULL,NULL,NULL,'Xã'),
	 (152,'Ea Tir',NULL,NULL,NULL,'Xã'),
	 (152,'Ea Wy',NULL,NULL,NULL,'Xã'),
	 (153,'Cư Bông',NULL,NULL,NULL,'Xã'),
	 (153,'Cư Elang',NULL,NULL,NULL,'Xã'),
	 (153,'Cư Huê',NULL,NULL,NULL,'Xã'),
	 (153,'Cư Ni',NULL,NULL,NULL,'Xã'),
	 (153,'Cư Prông',NULL,NULL,NULL,'Xã'),
	 (153,'Cư Yang',NULL,NULL,NULL,'Xã'),
	 (153,'Ea Đar',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (153,'Ea Kar',NULL,NULL,NULL,'Thị trấn'),
	 (153,'Ea Kmút',NULL,NULL,NULL,'Xã'),
	 (153,'Ea Knốp',NULL,NULL,NULL,'Thị trấn'),
	 (153,'Ea Ô',NULL,NULL,NULL,'Xã'),
	 (153,'Ea Păl',NULL,NULL,NULL,'Xã'),
	 (153,'Ea Sar',NULL,NULL,NULL,'Xã'),
	 (153,'Ea Sô',NULL,NULL,NULL,'Xã'),
	 (153,'Ea Tíh',NULL,NULL,NULL,'Xã'),
	 (153,'Xuân Phú',NULL,NULL,NULL,'Xã'),
	 (154,'Cư Kbang',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (154,'Cư M''lan',NULL,NULL,NULL,'Xã'),
	 (154,'Ea Bung',NULL,NULL,NULL,'Xã'),
	 (154,'Ea Lê',NULL,NULL,NULL,'Xã'),
	 (154,'Ea Rốk',NULL,NULL,NULL,'Xã'),
	 (154,'Ea Súp',NULL,NULL,NULL,'Thị trấn'),
	 (154,'Ia Jlơi',NULL,NULL,NULL,'Xã'),
	 (154,'Ia Lốp',NULL,NULL,NULL,'Xã'),
	 (154,'Ia Rvê',NULL,NULL,NULL,'Xã'),
	 (154,'Ya Tờ Mốt',NULL,NULL,NULL,'Xã'),
	 (155,'Băng A Drênh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (155,'Bình Hòa',NULL,NULL,NULL,'Xã'),
	 (155,'Buôn Trấp',NULL,NULL,NULL,'Thị trấn'),
	 (155,'Dray Sáp',NULL,NULL,NULL,'Xã'),
	 (155,'Dur Kmăl',NULL,NULL,NULL,'Xã'),
	 (155,'Ea Bông',NULL,NULL,NULL,'Xã'),
	 (155,'Ea Na',NULL,NULL,NULL,'Xã'),
	 (155,'Quảng Điền',NULL,NULL,NULL,'Xã'),
	 (156,'Cư Drăm',NULL,NULL,NULL,'Xã'),
	 (156,'Cư Kty',NULL,NULL,NULL,'Xã'),
	 (156,'Cư Pui',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (156,'Dang Kang',NULL,NULL,NULL,'Xã'),
	 (156,'Ea Trul',NULL,NULL,NULL,'Xã'),
	 (156,'Hòa Lễ',NULL,NULL,NULL,'Xã'),
	 (156,'Hòa Phong',NULL,NULL,NULL,'Xã'),
	 (156,'Hòa Sơn',NULL,NULL,NULL,'Xã'),
	 (156,'Hòa Tân',NULL,NULL,NULL,'Xã'),
	 (156,'Hòa Thành',NULL,NULL,NULL,'Xã'),
	 (156,'Khuê Ngọc Điền',NULL,NULL,NULL,'Xã'),
	 (156,'Krông Kmar',NULL,NULL,NULL,'Thị trấn'),
	 (156,'Yang Mao',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (156,'Yang Reh',NULL,NULL,NULL,'Xã'),
	 (157,'Chứ Kbô',NULL,NULL,NULL,'Xã'),
	 (157,'Cư Né',NULL,NULL,NULL,'Xã'),
	 (157,'Cư Pơng',NULL,NULL,NULL,'Xã'),
	 (157,'Ea Ngai',NULL,NULL,NULL,'Xã'),
	 (157,'Ea Sin',NULL,NULL,NULL,'Xã'),
	 (157,'Ea Sin',NULL,NULL,NULL,'Xã'),
	 (157,'Pơng Drang',NULL,NULL,NULL,'Xã'),
	 (157,'Tân Lập',NULL,NULL,NULL,'Xã'),
	 (158,'Cư Klông',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (158,'Dliê Ya',NULL,NULL,NULL,'Xã'),
	 (158,'Ea Dăh',NULL,NULL,NULL,'Xã'),
	 (158,'Ea Hồ',NULL,NULL,NULL,'Xã'),
	 (158,'Ea Púk',NULL,NULL,NULL,'Xã'),
	 (158,'Ea Tam',NULL,NULL,NULL,'Xã'),
	 (158,'Ea Tân',NULL,NULL,NULL,'Xã'),
	 (158,'Ea Tóh',NULL,NULL,NULL,'Xã'),
	 (158,'Krông Năng',NULL,NULL,NULL,'Thị trấn'),
	 (158,'Phú Lộc',NULL,NULL,NULL,'Xã'),
	 (158,'Phú Xuân',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (158,'Tam Giang',NULL,NULL,NULL,'Xã'),
	 (159,'Ea Hiu',NULL,NULL,NULL,'Xã'),
	 (159,'Ea Kênh',NULL,NULL,NULL,'Xã'),
	 (159,'Ea Kly',NULL,NULL,NULL,'Xã'),
	 (159,'Ea Knuec',NULL,NULL,NULL,'Xã'),
	 (159,'Ea Kuăng',NULL,NULL,NULL,'Xã'),
	 (159,'Ea Phê',NULL,NULL,NULL,'Xã'),
	 (159,'Ea Uy',NULL,NULL,NULL,'Xã'),
	 (159,'Ea Yiêng',NULL,NULL,NULL,'Xã'),
	 (159,'Ea Yông',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (159,'Hòa An',NULL,NULL,NULL,'Xã'),
	 (159,'Hoà Đông',NULL,NULL,NULL,'Xã'),
	 (159,'Hòa Tiến',NULL,NULL,NULL,'Xã'),
	 (159,'Krông Búk',NULL,NULL,NULL,'Xã'),
	 (159,'Phước An',NULL,NULL,NULL,'Thị trấn'),
	 (159,'Tân Tiến',NULL,NULL,NULL,'Xã'),
	 (159,'Vụ Bổn',NULL,NULL,NULL,'Xã'),
	 (160,'Bông Krang',NULL,NULL,NULL,'Xã'),
	 (160,'Buôn Tría',NULL,NULL,NULL,'Xã'),
	 (160,'Buôn Triết',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (160,'Đắk Liêng',NULL,NULL,NULL,'Xã'),
	 (160,'Đắk Nuê',NULL,NULL,NULL,'Xã'),
	 (160,'Đắk Phơi',NULL,NULL,NULL,'Xã'),
	 (160,'Ea R''bin',NULL,NULL,NULL,'Xã'),
	 (160,'Krông Nô',NULL,NULL,NULL,'Xã'),
	 (160,'Liên Sơn',NULL,NULL,NULL,'Thị trấn'),
	 (160,'Nam Ka',NULL,NULL,NULL,'Xã'),
	 (160,'Yang Tao',NULL,NULL,NULL,'Xã'),
	 (161,'Cư Króa',NULL,NULL,NULL,'Xã'),
	 (161,'Cư M''ta',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (161,'Cư Prao',NULL,NULL,NULL,'Xã'),
	 (161,'Cư San',NULL,NULL,NULL,'Xã'),
	 (161,'Ea H''mlay',NULL,NULL,NULL,'Xã'),
	 (161,'Ea Lai',NULL,NULL,NULL,'Xã'),
	 (161,'Ea M'' Doal',NULL,NULL,NULL,'Xã'),
	 (161,'Ea Pil',NULL,NULL,NULL,'Xã'),
	 (161,'Ea Riêng',NULL,NULL,NULL,'Xã'),
	 (161,'Ea Trang',NULL,NULL,NULL,'Xã'),
	 (161,'Krông Á',NULL,NULL,NULL,'Xã'),
	 (161,'Krông Jing',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (161,'M''Drắk',NULL,NULL,NULL,'Thị trấn'),
	 (162,'Định Môn',NULL,NULL,NULL,'Xã'),
	 (162,'Đông Bình',NULL,NULL,NULL,'Xã'),
	 (162,'Đông Thuận',NULL,NULL,NULL,'Xã'),
	 (162,'Tân Thạnh',NULL,NULL,NULL,'Xã'),
	 (162,'Thới Lai',NULL,NULL,NULL,'Thị trấn'),
	 (162,'Thới Tân',NULL,NULL,NULL,'Xã'),
	 (162,'Thới Thạnh',NULL,NULL,NULL,'Xã'),
	 (162,'Trường Thắng',NULL,NULL,NULL,'Xã'),
	 (162,'Trường Thành',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (162,'Trường Xuân',NULL,NULL,NULL,'Xã'),
	 (162,'Trường Xuân A',NULL,NULL,NULL,'Xã'),
	 (162,'Trường Xuân B',NULL,NULL,NULL,'Xã'),
	 (162,'Xuân Thắng',NULL,NULL,NULL,'Xã'),
	 (163,'8',NULL,NULL,NULL,'Phường'),
	 (163,'An Thới',NULL,NULL,NULL,'Phường'),
	 (163,'An Thới',NULL,NULL,NULL,'Phường'),
	 (163,'Bình Thủy',NULL,NULL,NULL,'Phường'),
	 (163,'Bùi Hữu Nghĩa',NULL,NULL,NULL,'Phường'),
	 (163,'Long Hòa',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (163,'Long Tuyền',NULL,NULL,NULL,'Phường'),
	 (163,'Thới An Đông',NULL,NULL,NULL,'Phường'),
	 (163,'Trà An',NULL,NULL,NULL,'Phường'),
	 (163,'Trà Nóc',NULL,NULL,NULL,'Phường'),
	 (164,'Ba Láng',NULL,NULL,NULL,'Phường'),
	 (164,'Hưng Phú',NULL,NULL,NULL,'Phường'),
	 (164,'Hưng Thạnh',NULL,NULL,NULL,'Phường'),
	 (164,'Lê Bình',NULL,NULL,NULL,'Phường'),
	 (164,'Phú Thứ',NULL,NULL,NULL,'Phường'),
	 (164,'Tân Phú',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (164,'Thường Thạnh',NULL,NULL,NULL,'Phường'),
	 (165,'Cờ Đỏ',NULL,NULL,NULL,'Thị trấn'),
	 (165,'Đông Hiệp',NULL,NULL,NULL,'Xã'),
	 (165,'Đông Thắng',NULL,NULL,NULL,'Xã'),
	 (165,'Thạnh Phú',NULL,NULL,NULL,'Xã'),
	 (165,'Thới Đông',NULL,NULL,NULL,'Xã'),
	 (165,'Thới Hưng',NULL,NULL,NULL,'Xã'),
	 (165,'Thới Xuân',NULL,NULL,NULL,'Xã'),
	 (165,'Trung An',NULL,NULL,NULL,'Xã'),
	 (165,'Trung Hưng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (165,'Trung Thạnh',NULL,NULL,NULL,'Xã'),
	 (166,'An Bình',NULL,NULL,NULL,'Phường'),
	 (166,'An Cư',NULL,NULL,NULL,'Phường'),
	 (166,'An Hòa',NULL,NULL,NULL,'Phường'),
	 (166,'An Hội',NULL,NULL,NULL,'Phường'),
	 (166,'An Khánh',NULL,NULL,NULL,'Phường'),
	 (166,'An Lạc',NULL,NULL,NULL,'Phường'),
	 (166,'An Nghiệp',NULL,NULL,NULL,'Phường'),
	 (166,'An Phú',NULL,NULL,NULL,'Phường'),
	 (166,'An Thạnh',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (166,'Cái Khế',NULL,NULL,NULL,'Phường'),
	 (166,'Hưng Lợi',NULL,NULL,NULL,'Phường'),
	 (166,'Tân An',NULL,NULL,NULL,'Phường'),
	 (166,'Thới Bình',NULL,NULL,NULL,'Phường'),
	 (166,'Xuân Khánh',NULL,NULL,NULL,'Phường'),
	 (167,'Châu Văn Liêm',NULL,NULL,NULL,'Phường'),
	 (167,'Long Hưng',NULL,NULL,NULL,'Phường'),
	 (167,'Phước Thới',NULL,NULL,NULL,'Phường'),
	 (167,'Thới An',NULL,NULL,NULL,'Phường'),
	 (167,'Thới Hòa',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (167,'Thới Long',NULL,NULL,NULL,'Phường'),
	 (167,'Trường Lạc',NULL,NULL,NULL,'Phường'),
	 (168,'Giai Xuân',NULL,NULL,NULL,'Xã'),
	 (168,'Mỹ Khánh',NULL,NULL,NULL,'Xã'),
	 (168,'Nhơn Ái',NULL,NULL,NULL,'Xã'),
	 (168,'Nhơn Nghĩa',NULL,NULL,NULL,'Xã'),
	 (168,'Phong Điền',NULL,NULL,NULL,'Thị trấn'),
	 (168,'Tân Thới',NULL,NULL,NULL,'Xã'),
	 (168,'Trường Long',NULL,NULL,NULL,'Xã'),
	 (169,'Tân Hưng',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (169,'Tân Lộc',NULL,NULL,NULL,'Phường'),
	 (169,'Thạnh Hòa',NULL,NULL,NULL,'Phường'),
	 (169,'Thạnh Lộc',NULL,NULL,NULL,'Xã'),
	 (169,'Thới Thuận',NULL,NULL,NULL,'Phường'),
	 (169,'Thốt Nốt',NULL,NULL,NULL,'Phường'),
	 (169,'Thuận An',NULL,NULL,NULL,'Phường'),
	 (169,'Thuận Hưng',NULL,NULL,NULL,'Phường'),
	 (169,'Trung Kiên',NULL,NULL,NULL,'Phường'),
	 (169,'Trung Nhứt',NULL,NULL,NULL,'Phường'),
	 (170,'Thạnh An',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (170,'Thạnh An',NULL,NULL,NULL,'Xã'),
	 (170,'Thạnh Lộc',NULL,NULL,NULL,'Xã'),
	 (170,'Thạnh Lợi',NULL,NULL,NULL,'Xã'),
	 (170,'Thạnh Mỹ',NULL,NULL,NULL,'Xã'),
	 (170,'Thạnh Quới',NULL,NULL,NULL,'Xã'),
	 (170,'Thạnh Thắng',NULL,NULL,NULL,'Xã'),
	 (170,'Thạnh Tiến',NULL,NULL,NULL,'Xã'),
	 (170,'Vĩnh Bình',NULL,NULL,NULL,'Xã'),
	 (170,'Vĩnh Thạnh',NULL,NULL,NULL,'Thị trấn'),
	 (170,'Vĩnh Trinh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (171,'Bình An',NULL,NULL,NULL,'Xã'),
	 (171,'Bình Tân',NULL,NULL,NULL,'Xã'),
	 (171,'Chợ Lầu',NULL,NULL,NULL,'Thị trấn'),
	 (171,'Hải Ninh',NULL,NULL,NULL,'Xã'),
	 (171,'Hoà Thắng',NULL,NULL,NULL,'Xã'),
	 (171,'Hồng Phong',NULL,NULL,NULL,'Xã'),
	 (171,'Hồng Thái',NULL,NULL,NULL,'Xã'),
	 (171,'Lương Sơn',NULL,NULL,NULL,'Thị trấn'),
	 (171,'Phan Điền',NULL,NULL,NULL,'Xã'),
	 (171,'Phan Hiệp',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (171,'Phan Hoà',NULL,NULL,NULL,'Xã'),
	 (171,'Phan Lâm',NULL,NULL,NULL,'Xã'),
	 (171,'Phan Rí Thành',NULL,NULL,NULL,'Xã'),
	 (171,'Phan Sơn',NULL,NULL,NULL,'Xã'),
	 (171,'Phan Thanh',NULL,NULL,NULL,'Xã'),
	 (171,'Phan Tiến',NULL,NULL,NULL,'Xã'),
	 (171,'Sông Bình',NULL,NULL,NULL,'Xã'),
	 (171,'Sông Lũy',NULL,NULL,NULL,'Xã'),
	 (172,'Long Hải',NULL,NULL,NULL,'Xã'),
	 (172,'Ngũ Phụng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (172,'Tam Thanh',NULL,NULL,NULL,'Xã'),
	 (173,'Đa Kai',NULL,NULL,NULL,'Xã'),
	 (173,'Đông Hà',NULL,NULL,NULL,'Xã'),
	 (173,'Đức Chính',NULL,NULL,NULL,'Xã'),
	 (173,'Đức Hạnh',NULL,NULL,NULL,'Xã'),
	 (173,'Đức Tài',NULL,NULL,NULL,'Thị trấn'),
	 (173,'Đức Tín',NULL,NULL,NULL,'Xã'),
	 (173,'Mê Pu',NULL,NULL,NULL,'Xã'),
	 (173,'Nam Chính',NULL,NULL,NULL,'Xã'),
	 (173,'Sùng Nhơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (173,'Tân Hà',NULL,NULL,NULL,'Xã'),
	 (173,'Trà Tân',NULL,NULL,NULL,'Xã'),
	 (173,'Võ Xu',NULL,NULL,NULL,'Thị trấn'),
	 (173,'Vũ Hòa',NULL,NULL,NULL,'Xã'),
	 (174,'Sơn Mỹ',NULL,NULL,NULL,'Xã'),
	 (174,'Sông Phan',NULL,NULL,NULL,'Xã'),
	 (174,'Tân Đức',NULL,NULL,NULL,'Xã'),
	 (174,'Tân Hà',NULL,NULL,NULL,'Xã'),
	 (174,'Tân Minh',NULL,NULL,NULL,'Thị trấn'),
	 (174,'Tân Nghĩa',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (174,'Tân Phúc',NULL,NULL,NULL,'Xã'),
	 (174,'Tân Thắng',NULL,NULL,NULL,'Xã'),
	 (174,'Tân Xuân',NULL,NULL,NULL,'Xã'),
	 (174,'Thắng Hải',NULL,NULL,NULL,'Xã'),
	 (175,'Đa Mi',NULL,NULL,NULL,'Xã'),
	 (175,'Đông Giang',NULL,NULL,NULL,'Xã'),
	 (175,'Đông Tiến',NULL,NULL,NULL,'Xã'),
	 (175,'Hàm Chính',NULL,NULL,NULL,'Xã'),
	 (175,'Hàm Đức',NULL,NULL,NULL,'Xã'),
	 (175,'Hàm Hiệp',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (175,'Hàm Liêm',NULL,NULL,NULL,'Xã'),
	 (175,'Hàm Phú',NULL,NULL,NULL,'Xã'),
	 (175,'Hàm Thắng',NULL,NULL,NULL,'Xã'),
	 (175,'Hàm Trí',NULL,NULL,NULL,'Xã'),
	 (175,'Hồng Liêm',NULL,NULL,NULL,'Xã'),
	 (175,'Hồng Sơn',NULL,NULL,NULL,'Xã'),
	 (175,'La Dạ',NULL,NULL,NULL,'Xã'),
	 (175,'Ma Lâm',NULL,NULL,NULL,'Thị trấn'),
	 (175,'Mỹ Thạnh',NULL,NULL,NULL,'Xã'),
	 (175,'Phú Long',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (175,'Thuận Hòa',NULL,NULL,NULL,'Xã'),
	 (175,'Thuận Minh',NULL,NULL,NULL,'Xã'),
	 (176,'Hàm Cần',NULL,NULL,NULL,'Xã'),
	 (176,'Hàm Cường',NULL,NULL,NULL,'Xã'),
	 (176,'Hàm Kiệm',NULL,NULL,NULL,'Xã'),
	 (176,'Hàm Minh',NULL,NULL,NULL,'Xã'),
	 (176,'Hàm Mỹ',NULL,NULL,NULL,'Xã'),
	 (176,'Hàm Thạnh',NULL,NULL,NULL,'Xã'),
	 (176,'Mương Mán',NULL,NULL,NULL,'Xã'),
	 (176,'Tân Lập',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (176,'Tân Thành',NULL,NULL,NULL,'Xã'),
	 (176,'Tân Thuận',NULL,NULL,NULL,'Xã'),
	 (176,'Thuận Nam',NULL,NULL,NULL,'Thị trấn'),
	 (176,'Thuận Quý',NULL,NULL,NULL,'Xã'),
	 (177,'Bình Tân',NULL,NULL,NULL,'Phường'),
	 (177,'Phước Hội',NULL,NULL,NULL,'Phường'),
	 (177,'Phước Lộc',NULL,NULL,NULL,'Phường'),
	 (177,'Tân An',NULL,NULL,NULL,'Phường'),
	 (177,'Tân Bình',NULL,NULL,NULL,'Xã'),
	 (177,'Tân Hải',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (177,'Tân Phước',NULL,NULL,NULL,'Xã'),
	 (177,'Tân Thiện',NULL,NULL,NULL,'Phường'),
	 (177,'Tân Tiến',NULL,NULL,NULL,'Xã'),
	 (178,'Bình Hưng',NULL,NULL,NULL,'Phường'),
	 (178,'Đức Long',NULL,NULL,NULL,'Phường'),
	 (178,'Đức Nghĩa',NULL,NULL,NULL,'Phường'),
	 (178,'Đức Thắng',NULL,NULL,NULL,'Phường'),
	 (178,'Hàm Tiến',NULL,NULL,NULL,'Phường'),
	 (178,'Hưng Long',NULL,NULL,NULL,'Phường'),
	 (178,'Lạc Đạo',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (178,'Mũi Né',NULL,NULL,NULL,'Phường'),
	 (178,'Phong Nẫm',NULL,NULL,NULL,'Xã'),
	 (178,'Phong Nẫm',NULL,NULL,NULL,'Xã'),
	 (178,'Phú Hài',NULL,NULL,NULL,'Phường'),
	 (178,'Phú Tài',NULL,NULL,NULL,'Phường'),
	 (178,'Phú Thủy',NULL,NULL,NULL,'Phường'),
	 (178,'Phú Trinh',NULL,NULL,NULL,'Phường'),
	 (178,'Thanh Hải',NULL,NULL,NULL,'Phường'),
	 (178,'Thiện Nghiệp',NULL,NULL,NULL,'Xã'),
	 (178,'Tiến Lợi',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (178,'Tiến Thành',NULL,NULL,NULL,'Xã'),
	 (178,'Xuân An',NULL,NULL,NULL,'Phường'),
	 (179,'Bắc Ruộng',NULL,NULL,NULL,'Xã'),
	 (179,'Đồng Kho',NULL,NULL,NULL,'Xã'),
	 (179,'Đức Bình',NULL,NULL,NULL,'Xã'),
	 (179,'Đức Phú',NULL,NULL,NULL,'Xã'),
	 (179,'Đức Tân',NULL,NULL,NULL,'Xã'),
	 (179,'Đức Thuận',NULL,NULL,NULL,'Xã'),
	 (179,'Gia An',NULL,NULL,NULL,'Xã'),
	 (179,'Gia Huynh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (179,'Huy Khiêm',NULL,NULL,NULL,'Xã'),
	 (179,'La Ngâu',NULL,NULL,NULL,'Xã'),
	 (179,'Lạc Tánh',NULL,NULL,NULL,'Thị trấn'),
	 (179,'Măng Tố',NULL,NULL,NULL,'Xã'),
	 (179,'Nghị Đức',NULL,NULL,NULL,'Xã'),
	 (179,'Suối Kiết',NULL,NULL,NULL,'Xã'),
	 (180,'Bình Thạnh',NULL,NULL,NULL,'Xã'),
	 (180,'Chí Công',NULL,NULL,NULL,'Xã'),
	 (180,'Hoà Minh',NULL,NULL,NULL,'Xã'),
	 (180,'Hoà Phú',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (180,'Liên Hương',NULL,NULL,NULL,'Thị trấn'),
	 (180,'Phan Dũng',NULL,NULL,NULL,'Xã'),
	 (180,'Phan Rí Cửa',NULL,NULL,NULL,'Thị trấn'),
	 (180,'Phong Phú',NULL,NULL,NULL,'Xã'),
	 (180,'Phú Lạc',NULL,NULL,NULL,'Xã'),
	 (180,'Phước Thể',NULL,NULL,NULL,'Xã'),
	 (180,'Vĩnh Hảo',NULL,NULL,NULL,'Xã'),
	 (180,'Vĩnh Tân',NULL,NULL,NULL,'Xã'),
	 (181,'B''Lá',NULL,NULL,NULL,'Xã'),
	 (181,'Lộc An',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (181,'Lộc Bắc',NULL,NULL,NULL,'Xã'),
	 (181,'Lộc Bảo',NULL,NULL,NULL,'Xã'),
	 (181,'Lộc Đức',NULL,NULL,NULL,'Xã'),
	 (181,'Lộc Lâm',NULL,NULL,NULL,'Xã'),
	 (181,'Lộc Nam',NULL,NULL,NULL,'Xã'),
	 (181,'Lộc Ngãi',NULL,NULL,NULL,'Xã'),
	 (181,'Lộc Phú',NULL,NULL,NULL,'Xã'),
	 (181,'Lộc Quảng',NULL,NULL,NULL,'Xã'),
	 (181,'Lộc Tân',NULL,NULL,NULL,'Xã'),
	 (181,'Lộc Thắng',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (181,'Lộc Thành',NULL,NULL,NULL,'Xã'),
	 (181,'Tân Hương',NULL,NULL,NULL,'Xã'),
	 (181,'Tân Lạc',NULL,NULL,NULL,'Xã'),
	 (182,'1',NULL,NULL,NULL,'Phường'),
	 (182,'2',NULL,NULL,NULL,'Phường'),
	 (182,'B''Lao',NULL,NULL,NULL,'Phường'),
	 (182,'Đại Lào',NULL,NULL,NULL,'Xã'),
	 (182,'Đam Bri',NULL,NULL,NULL,'Xã'),
	 (182,'Lộc Châu',NULL,NULL,NULL,'Xã'),
	 (182,'Lộc Nga',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (182,'Lộc Phát',NULL,NULL,NULL,'Phường'),
	 (182,'Lộc Sơn',NULL,NULL,NULL,'Phường'),
	 (182,'Lộc Thanh',NULL,NULL,NULL,'Xã'),
	 (182,'Lộc Tiến',NULL,NULL,NULL,'Phường'),
	 (183,'Đồng Nai',NULL,NULL,NULL,'Thị trấn'),
	 (183,'Đồng Nai Thượng',NULL,NULL,NULL,'Xã'),
	 (183,'Đức Phổ',NULL,NULL,NULL,'Xã'),
	 (183,'Gia Viễn',NULL,NULL,NULL,'Xã'),
	 (183,'Mỹ Lâm',NULL,NULL,NULL,'Xã'),
	 (183,'Nam Ninh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (183,'Phù Mỹ',NULL,NULL,NULL,'Xã'),
	 (183,'Phước Cát 1',NULL,NULL,NULL,'Xã'),
	 (183,'Phước Cát 2',NULL,NULL,NULL,'Xã'),
	 (183,'Quảng Ngãi',NULL,NULL,NULL,'Xã'),
	 (183,'Tiên Hoàng',NULL,NULL,NULL,'Xã'),
	 (183,'Tư Nghĩa',NULL,NULL,NULL,'Xã'),
	 (184,'Đạ M''Ri',NULL,NULL,NULL,'Thị trấn'),
	 (184,'Đạ M''Ri',NULL,NULL,NULL,'Xã'),
	 (184,'Đạ Oai',NULL,NULL,NULL,'Xã'),
	 (184,'Đạ Ploa',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (184,'Đạ Tồn',NULL,NULL,NULL,'Xã'),
	 (184,'Đoàn Kết',NULL,NULL,NULL,'Xã'),
	 (184,'Hà Lâm',NULL,NULL,NULL,'Xã'),
	 (184,'Ma Đa Guôi',NULL,NULL,NULL,'Thị trấn'),
	 (184,'Ma Đa Guôi',NULL,NULL,NULL,'Xã'),
	 (184,'Phước Lộc',NULL,NULL,NULL,'Xã'),
	 (185,'1',NULL,NULL,NULL,'Phường'),
	 (185,'10',NULL,NULL,NULL,'Phường'),
	 (185,'11',NULL,NULL,NULL,'Phường'),
	 (185,'12',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (185,'2',NULL,NULL,NULL,'Phường'),
	 (185,'3',NULL,NULL,NULL,'Phường'),
	 (185,'4',NULL,NULL,NULL,'Phường'),
	 (185,'5',NULL,NULL,NULL,'Phường'),
	 (185,'6',NULL,NULL,NULL,'Phường'),
	 (185,'7',NULL,NULL,NULL,'Phường'),
	 (185,'8',NULL,NULL,NULL,'Phường'),
	 (185,'9',NULL,NULL,NULL,'Phường'),
	 (185,'Tà Nung',NULL,NULL,NULL,'Xã'),
	 (185,'Trạm Hành',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (185,'Xuân Thọ',NULL,NULL,NULL,'Xã'),
	 (185,'Xuân Trường',NULL,NULL,NULL,'Xã'),
	 (186,'An Nhơn',NULL,NULL,NULL,'Xã'),
	 (186,'Đạ Kho',NULL,NULL,NULL,'Xã'),
	 (186,'Đạ Lây',NULL,NULL,NULL,'Xã'),
	 (186,'Đạ Pal',NULL,NULL,NULL,'Xã'),
	 (186,'Đạ Tẻh',NULL,NULL,NULL,'Thị trấn'),
	 (186,'Hà Đông',NULL,NULL,NULL,'Xã'),
	 (186,'Hương Lâm',NULL,NULL,NULL,'Xã'),
	 (186,'Mỹ Đức',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (186,'Quảng Trị',NULL,NULL,NULL,'Xã'),
	 (186,'Quốc Oai',NULL,NULL,NULL,'Xã'),
	 (186,'Triệu Hải',NULL,NULL,NULL,'Xã'),
	 (187,'Đạ K’Nàng',NULL,NULL,NULL,'Xã'),
	 (187,'Đạ Long',NULL,NULL,NULL,'Xã'),
	 (187,'Đạ M''Rông',NULL,NULL,NULL,'Xã'),
	 (187,'Đạ Rsal',NULL,NULL,NULL,'Xã'),
	 (187,'Đạ Tông',NULL,NULL,NULL,'Xã'),
	 (187,'Liêng S’Roin',NULL,NULL,NULL,'Xã'),
	 (187,'Phi Liêng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (187,'Rô Men',NULL,NULL,NULL,'Xã'),
	 (188,'Bảo Thuận',NULL,NULL,NULL,'Xã'),
	 (188,'Di Linh',NULL,NULL,NULL,'Thị trấn'),
	 (188,'Đinh Lạc',NULL,NULL,NULL,'Xã'),
	 (188,'Đinh Trang Hoà',NULL,NULL,NULL,'Xã'),
	 (188,'Đinh Trang Thượng',NULL,NULL,NULL,'Xã'),
	 (188,'Gia Bắc',NULL,NULL,NULL,'Xã'),
	 (188,'Gia Hiệp',NULL,NULL,NULL,'Xã'),
	 (188,'Gung Ré',NULL,NULL,NULL,'Xã'),
	 (188,'Hoà Bắc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (188,'Hoà Nam',NULL,NULL,NULL,'Xã'),
	 (188,'Hoà Ninh',NULL,NULL,NULL,'Xã'),
	 (188,'Hoà Trung',NULL,NULL,NULL,'Xã'),
	 (188,'Liên Đầm',NULL,NULL,NULL,'Xã'),
	 (188,'Sơn Điền',NULL,NULL,NULL,'Xã'),
	 (188,'Tam Bố',NULL,NULL,NULL,'Xã'),
	 (188,'Tân Châu',NULL,NULL,NULL,'Xã'),
	 (188,'Tân Lâm',NULL,NULL,NULL,'Xã'),
	 (188,'Tân Nghĩa',NULL,NULL,NULL,'Xã'),
	 (188,'Tân Thượng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (189,'Đạ Ròn',NULL,NULL,NULL,'Xã'),
	 (189,'D''ran',NULL,NULL,NULL,'Thị trấn'),
	 (189,'Ka Đô',NULL,NULL,NULL,'Xã'),
	 (189,'Ka Đơn',NULL,NULL,NULL,'Xã'),
	 (189,'Lạc Lâm',NULL,NULL,NULL,'Xã'),
	 (189,'Lạc Xuân',NULL,NULL,NULL,'Xã'),
	 (189,'Pró',NULL,NULL,NULL,'Xã'),
	 (189,'Quảng Lập',NULL,NULL,NULL,'Xã'),
	 (189,'Thạnh Mỹ',NULL,NULL,NULL,'Thị trấn'),
	 (189,'Tu Tra',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (190,'Bình Thạnh',NULL,NULL,NULL,'Xã'),
	 (190,'Đà Loan',NULL,NULL,NULL,'Xã'),
	 (190,'Đa Quyn',NULL,NULL,NULL,'Xã'),
	 (190,'Hiệp An',NULL,NULL,NULL,'Xã'),
	 (190,'Hiệp Thạnh',NULL,NULL,NULL,'Xã'),
	 (190,'Liên Hiệp',NULL,NULL,NULL,'Xã'),
	 (190,'Liên Nghĩa',NULL,NULL,NULL,'Thị trấn'),
	 (190,'Ninh Gia',NULL,NULL,NULL,'Xã'),
	 (190,'Ninh Loan',NULL,NULL,NULL,'Xã'),
	 (190,'N''Thol Hạ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (190,'Phú Hội',NULL,NULL,NULL,'Xã'),
	 (190,'Tà Hine',NULL,NULL,NULL,'Xã'),
	 (190,'Tà Năng',NULL,NULL,NULL,'Xã'),
	 (190,'Tân Hội',NULL,NULL,NULL,'Xã'),
	 (190,'Tân Thành',NULL,NULL,NULL,'Xã'),
	 (191,'Đạ Chais',NULL,NULL,NULL,'Xã'),
	 (191,'Đạ Nhim',NULL,NULL,NULL,'Xã'),
	 (191,'Đạ Sar',NULL,NULL,NULL,'Xã'),
	 (191,'Đưng KNớ',NULL,NULL,NULL,'Xã'),
	 (191,'Lạc Dương',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (191,'Lát',NULL,NULL,NULL,'Xã'),
	 (192,'Đạ Đờn',NULL,NULL,NULL,'Xã'),
	 (192,'Đan Phượng',NULL,NULL,NULL,'Xã'),
	 (192,'Đinh Văn',NULL,NULL,NULL,'Thị trấn'),
	 (192,'Đông Thanh',NULL,NULL,NULL,'Xã'),
	 (192,'Gia Lâm',NULL,NULL,NULL,'Xã'),
	 (192,'Hoài Đức',NULL,NULL,NULL,'Xã'),
	 (192,'Liên Hà',NULL,NULL,NULL,'Xã'),
	 (192,'Mê Linh',NULL,NULL,NULL,'Xã'),
	 (192,'Nam Ban',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (192,'Nam Hà',NULL,NULL,NULL,'Xã'),
	 (192,'Phi Tô',NULL,NULL,NULL,'Xã'),
	 (192,'Phú Sơn',NULL,NULL,NULL,'Xã'),
	 (192,'Phúc Thọ',NULL,NULL,NULL,'Xã'),
	 (192,'Tân Hà',NULL,NULL,NULL,'Xã'),
	 (192,'Tân Thanh',NULL,NULL,NULL,'Xã'),
	 (192,'Tân Văn',NULL,NULL,NULL,'Xã'),
	 (193,'A Đớt',NULL,NULL,NULL,'Xã'),
	 (193,'A Lưới',NULL,NULL,NULL,'Thị trấn'),
	 (193,'A Ngo',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (193,'A Roằng',NULL,NULL,NULL,'Xã'),
	 (193,'Bắc Sơn',NULL,NULL,NULL,'Xã'),
	 (193,'Đông Sơn',NULL,NULL,NULL,'Xã'),
	 (193,'Hồng Bắc',NULL,NULL,NULL,'Xã'),
	 (193,'Hồng Hạ',NULL,NULL,NULL,'Xã'),
	 (193,'Hồng Kim',NULL,NULL,NULL,'Xã'),
	 (193,'Hồng Nam',NULL,NULL,NULL,'Xã'),
	 (193,'Hồng Quảng',NULL,NULL,NULL,'Xã'),
	 (193,'Hồng Thái',NULL,NULL,NULL,'Xã'),
	 (193,'Hồng Thượng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (193,'Hồng Thủy',NULL,NULL,NULL,'Xã'),
	 (193,'Hồng Trung',NULL,NULL,NULL,'Xã'),
	 (193,'Hồng Vân',NULL,NULL,NULL,'Xã'),
	 (193,'Hương Lâm',NULL,NULL,NULL,'Xã'),
	 (193,'Hương Nguyên',NULL,NULL,NULL,'Xã'),
	 (193,'Hương Phong',NULL,NULL,NULL,'Xã'),
	 (193,'Nhâm',NULL,NULL,NULL,'Xã'),
	 (193,'Phú Vinh',NULL,NULL,NULL,'Xã'),
	 (193,'Sơn Thủy',NULL,NULL,NULL,'Xã'),
	 (194,'An Cựu',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (194,'An Đông',NULL,NULL,NULL,'Phường'),
	 (194,'An Hòa',NULL,NULL,NULL,'Phường'),
	 (194,'An Tây',NULL,NULL,NULL,'Phường'),
	 (194,'Đúc',NULL,NULL,NULL,'Phường'),
	 (194,'Hương Long',NULL,NULL,NULL,'Phường'),
	 (194,'Hương Sơ',NULL,NULL,NULL,'Phường'),
	 (194,'Kim Long',NULL,NULL,NULL,'Phường'),
	 (194,'Phú Bình',NULL,NULL,NULL,'Phường'),
	 (194,'Phú Cát',NULL,NULL,NULL,'Phường'),
	 (194,'Phú Hậu',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (194,'Phú Hiệp',NULL,NULL,NULL,'Phường'),
	 (194,'Phú Hòa',NULL,NULL,NULL,'Phường'),
	 (194,'Phú Hội',NULL,NULL,NULL,'Phường'),
	 (194,'Phú Nhuận',NULL,NULL,NULL,'Phường'),
	 (194,'Phú Thuận',NULL,NULL,NULL,'Phường'),
	 (194,'Phước Vĩnh',NULL,NULL,NULL,'Phường'),
	 (194,'Phường Đúc',NULL,NULL,NULL,'Phường'),
	 (194,'Tây Lộc',NULL,NULL,NULL,'Phường'),
	 (194,'Thuận Hòa',NULL,NULL,NULL,'Phường'),
	 (194,'Thuận Lộc',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (194,'Thuận Thành',NULL,NULL,NULL,'Phường'),
	 (194,'Thủy An',NULL,NULL,NULL,'Xã'),
	 (194,'Thủy Biều',NULL,NULL,NULL,'Phường'),
	 (194,'Thủy Xuân',NULL,NULL,NULL,'Phường'),
	 (194,'Trường An',NULL,NULL,NULL,'Phường'),
	 (194,'Vĩ Dạ',NULL,NULL,NULL,'Phường'),
	 (194,'Vĩnh Ninh',NULL,NULL,NULL,'Phường'),
	 (194,'Xuân Phú',NULL,NULL,NULL,'Phường'),
	 (195,'Dương Hòa',NULL,NULL,NULL,'Xã'),
	 (195,'Phú Bài',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (195,'Phú Sơn',NULL,NULL,NULL,'Xã'),
	 (195,'Thủy Bằng',NULL,NULL,NULL,'Xã'),
	 (195,'Thủy Châu',NULL,NULL,NULL,'Phường'),
	 (195,'Thuỷ Dương',NULL,NULL,NULL,'Phường'),
	 (195,'Thủy Dương',NULL,NULL,NULL,'Phường'),
	 (195,'Thủy Lương',NULL,NULL,NULL,'Phường'),
	 (195,'Thủy Phù',NULL,NULL,NULL,'Xã'),
	 (195,'Thủy Phương',NULL,NULL,NULL,'Phường'),
	 (195,'Thủy Tân',NULL,NULL,NULL,'Xã'),
	 (195,'Thủy Thanh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (195,'Thuỷ Vân',NULL,NULL,NULL,'Xã'),
	 (195,'Thủy Vân',NULL,NULL,NULL,'Xã'),
	 (196,'Bình Điền',NULL,NULL,NULL,'Xã'),
	 (196,'Bình Thành',NULL,NULL,NULL,'Phường'),
	 (196,'Hải Dương',NULL,NULL,NULL,'Xã'),
	 (196,'Hồng Tiến',NULL,NULL,NULL,'Phường'),
	 (196,'Hương An',NULL,NULL,NULL,'Phường'),
	 (196,'Hương Bình',NULL,NULL,NULL,'Xã'),
	 (196,'Hương Chữ',NULL,NULL,NULL,'Phường'),
	 (196,'Hương Hồ',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (196,'Hương Phong',NULL,NULL,NULL,'Xã'),
	 (196,'Hương Thọ',NULL,NULL,NULL,'Phường'),
	 (196,'Hương Toàn',NULL,NULL,NULL,'Xã'),
	 (196,'Hương Vân',NULL,NULL,NULL,'Phường'),
	 (196,'Hương Văn',NULL,NULL,NULL,'Phường'),
	 (196,'Hương Vinh',NULL,NULL,NULL,'Xã'),
	 (196,'Hương Xuân',NULL,NULL,NULL,'Phường'),
	 (196,'Tứ Hạ',NULL,NULL,NULL,'Phường'),
	 (197,'Hương Giang',NULL,NULL,NULL,'Xã'),
	 (197,'Hương Hoà',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (197,'Hương Hữu',NULL,NULL,NULL,'Xã'),
	 (197,'Hương Lộc',NULL,NULL,NULL,'Xã'),
	 (197,'Hương Phú',NULL,NULL,NULL,'Xã'),
	 (197,'Hương Sơn',NULL,NULL,NULL,'Xã'),
	 (197,'Khe Tre',NULL,NULL,NULL,'Thị trấn'),
	 (197,'Thượng Lộ',NULL,NULL,NULL,'Xã'),
	 (197,'Thượng Long',NULL,NULL,NULL,'Xã'),
	 (197,'Thượng Nhật',NULL,NULL,NULL,'Xã'),
	 (197,'Thượng Quảng',NULL,NULL,NULL,'Xã'),
	 (198,'Điền Hải',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (198,'Điền Hoà',NULL,NULL,NULL,'Xã'),
	 (198,'Điền Hương',NULL,NULL,NULL,'Xã'),
	 (198,'Điền Lộc',NULL,NULL,NULL,'Xã'),
	 (198,'Điền Môn',NULL,NULL,NULL,'Xã'),
	 (198,'Phong An',NULL,NULL,NULL,'Xã'),
	 (198,'Phong Bình',NULL,NULL,NULL,'Xã'),
	 (198,'Phong Chương',NULL,NULL,NULL,'Xã'),
	 (198,'Phong Điền',NULL,NULL,NULL,'Thị trấn'),
	 (198,'Phong Hải',NULL,NULL,NULL,'Xã'),
	 (198,'Phong Hiền',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (198,'Phong Hoà',NULL,NULL,NULL,'Xã'),
	 (198,'Phong Mỹ',NULL,NULL,NULL,'Xã'),
	 (198,'Phong Sơn',NULL,NULL,NULL,'Xã'),
	 (198,'Phong Th',NULL,NULL,NULL,'Xã'),
	 (198,'Phong Thu',NULL,NULL,NULL,'Xã'),
	 (198,'Phong Xuân',NULL,NULL,NULL,'Xã'),
	 (199,'Lăng Cô',NULL,NULL,NULL,'Thị trấn'),
	 (199,'Lộc An',NULL,NULL,NULL,'Xã'),
	 (199,'Lộc Bình',NULL,NULL,NULL,'Xã'),
	 (199,'Lộc Bổn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (199,'Lộc Điền',NULL,NULL,NULL,'Xã'),
	 (199,'Lộc Hòa',NULL,NULL,NULL,'Xã'),
	 (199,'Lộc Sơn',NULL,NULL,NULL,'Xã'),
	 (199,'Lộc Thủy',NULL,NULL,NULL,'Xã'),
	 (199,'Lộc Tiến',NULL,NULL,NULL,'Xã'),
	 (199,'Lộc Trì',NULL,NULL,NULL,'Xã'),
	 (199,'Lộc Vĩnh',NULL,NULL,NULL,'Xã'),
	 (199,'Phú Lộc',NULL,NULL,NULL,'Thị trấn'),
	 (199,'Vinh Giang',NULL,NULL,NULL,'Xã'),
	 (199,'Vinh Hải',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (199,'Vinh Hiền',NULL,NULL,NULL,'Xã'),
	 (199,'Vinh Hưng',NULL,NULL,NULL,'Xã'),
	 (199,'Vinh Mỹ',NULL,NULL,NULL,'Xã'),
	 (199,'Xuân Lộc',NULL,NULL,NULL,'Xã'),
	 (200,'Phú An',NULL,NULL,NULL,'Xã'),
	 (200,'Phú Đa',NULL,NULL,NULL,'Thị trấn'),
	 (200,'Phú Diên',NULL,NULL,NULL,'Xã'),
	 (200,'Phú Dương',NULL,NULL,NULL,'Xã'),
	 (200,'Phú Hải',NULL,NULL,NULL,'Xã'),
	 (200,'Phú Hồ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (200,'Phú Lương',NULL,NULL,NULL,'Xã'),
	 (200,'Phú Mậu',NULL,NULL,NULL,'Xã'),
	 (200,'Phú Mỹ',NULL,NULL,NULL,'Xã'),
	 (200,'Phú Thanh',NULL,NULL,NULL,'Xã'),
	 (200,'Phú Thuận',NULL,NULL,NULL,'Xã'),
	 (200,'Phú Thượng',NULL,NULL,NULL,'Xã'),
	 (200,'Phú Xuân',NULL,NULL,NULL,'Xã'),
	 (200,'Thuận An',NULL,NULL,NULL,'Thị trấn'),
	 (200,'Vinh An',NULL,NULL,NULL,'Xã'),
	 (200,'Vinh Hà',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (200,'Vinh Phú',NULL,NULL,NULL,'Xã'),
	 (200,'Vinh Thái',NULL,NULL,NULL,'Xã'),
	 (200,'Vinh Thanh',NULL,NULL,NULL,'Xã'),
	 (200,'Vinh Xuân',NULL,NULL,NULL,'Xã'),
	 (201,'Quảng An',NULL,NULL,NULL,'Xã'),
	 (201,'Quảng Công',NULL,NULL,NULL,'Xã'),
	 (201,'Quảng Lợi',NULL,NULL,NULL,'Xã'),
	 (201,'Quảng Ngạn',NULL,NULL,NULL,'Xã'),
	 (201,'Quảng Phú',NULL,NULL,NULL,'Xã'),
	 (201,'Quảng Phước',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (201,'Quảng Thái',NULL,NULL,NULL,'Xã'),
	 (201,'Quảng Thành',NULL,NULL,NULL,'Xã'),
	 (201,'Quảng Thọ',NULL,NULL,NULL,'Xã'),
	 (201,'Quảng Vinh',NULL,NULL,NULL,'Xã'),
	 (201,'Sịa',NULL,NULL,NULL,'Thị trấn'),
	 (202,'Đông Thái',NULL,NULL,NULL,'Xã'),
	 (202,'Đông Yên',NULL,NULL,NULL,'Xã'),
	 (202,'Hưng Yên',NULL,NULL,NULL,'Xã'),
	 (202,'Nam Thái',NULL,NULL,NULL,'Xã'),
	 (202,'Nam Thái A',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (202,'Nam Yên',NULL,NULL,NULL,'Xã'),
	 (202,'Tây Yên',NULL,NULL,NULL,'Xã'),
	 (202,'Tây Yên A',NULL,NULL,NULL,'Xã'),
	 (202,'Thứ Ba',NULL,NULL,NULL,'Thị trấn'),
	 (203,'Đông Hoà',NULL,NULL,NULL,'Xã'),
	 (203,'Đông Hưng',NULL,NULL,NULL,'Xã'),
	 (203,'Đông Hưng A',NULL,NULL,NULL,'Xã'),
	 (203,'Đông Hưng B',NULL,NULL,NULL,'Xã'),
	 (203,'Đông Thạnh',NULL,NULL,NULL,'Xã'),
	 (203,'Tân Thạnh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (203,'Thứ Mười Một',NULL,NULL,NULL,'Thị trấn'),
	 (203,'Thuận Hoà',NULL,NULL,NULL,'Xã'),
	 (203,'Vân Khánh',NULL,NULL,NULL,'Xã'),
	 (203,'Vân Khánh Đông',NULL,NULL,NULL,'Xã'),
	 (203,'Vân Khánh Tây',NULL,NULL,NULL,'Xã'),
	 (204,'Bình An',NULL,NULL,NULL,'Xã'),
	 (204,'Giục Tượng',NULL,NULL,NULL,'Xã'),
	 (204,'Minh Hoà',NULL,NULL,NULL,'Xã'),
	 (204,'Minh Lương',NULL,NULL,NULL,'Thị trấn'),
	 (204,'Mong Thọ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (204,'Mong Thọ A',NULL,NULL,NULL,'Xã'),
	 (204,'Mong Thọ B',NULL,NULL,NULL,'Xã'),
	 (204,'Thanh Lộc',NULL,NULL,NULL,'Xã'),
	 (204,'Vĩnh Hoà Hiệp',NULL,NULL,NULL,'Xã'),
	 (204,'Vĩnh Hòa Phú',NULL,NULL,NULL,'Xã'),
	 (205,'Phú Lợi',NULL,NULL,NULL,'Xã'),
	 (205,'Phú Mỹ',NULL,NULL,NULL,'Xã'),
	 (205,'Tân Khánh Hoà',NULL,NULL,NULL,'Xã'),
	 (205,'Vĩnh Điều',NULL,NULL,NULL,'Xã'),
	 (205,'Vĩnh Phú ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (206,'Bàn Tân Định',NULL,NULL,NULL,'Xã'),
	 (206,'Bàn Thạch',NULL,NULL,NULL,'Xã'),
	 (206,'Giồng Riềng',NULL,NULL,NULL,'Thị trấn'),
	 (206,'Hoà An',NULL,NULL,NULL,'Xã'),
	 (206,'Hoà Hưng',NULL,NULL,NULL,'Xã'),
	 (206,'Hoà Lợi',NULL,NULL,NULL,'Xã'),
	 (206,'Hoà Thuận',NULL,NULL,NULL,'Xã'),
	 (206,'Long Thạnh',NULL,NULL,NULL,'Xã'),
	 (206,'Ngọc Chúc',NULL,NULL,NULL,'Xã'),
	 (206,'Ngọc Hoà',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (206,'Ngọc Thành',NULL,NULL,NULL,'Xã'),
	 (206,'Ngọc Thuận',NULL,NULL,NULL,'Xã'),
	 (206,'Thạnh Bình',NULL,NULL,NULL,'Xã'),
	 (206,'Thạnh Hoà',NULL,NULL,NULL,'Xã'),
	 (206,'Thạnh Hưng',NULL,NULL,NULL,'Xã'),
	 (206,'Thạnh Lộc',NULL,NULL,NULL,'Xã'),
	 (206,'Thạnh Phước',NULL,NULL,NULL,'Xã'),
	 (206,'Vĩnh Phú',NULL,NULL,NULL,'Xã'),
	 (206,'Vĩnh Thạnh',NULL,NULL,NULL,'Xã'),
	 (207,'Định An',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (207,'Định Hòa',NULL,NULL,NULL,'Xã'),
	 (207,'Gò Quao',NULL,NULL,NULL,'Thị trấn'),
	 (207,'Thới Quản',NULL,NULL,NULL,'Xã'),
	 (207,'Thủy Liểu',NULL,NULL,NULL,'Xã'),
	 (207,'Vĩnh Hòa Hưng Bắc',NULL,NULL,NULL,'Xã'),
	 (207,'Vĩnh Hòa Hưng Nam',NULL,NULL,NULL,'Xã'),
	 (207,'Vĩnh Phước A',NULL,NULL,NULL,'Xã'),
	 (207,'Vĩnh Phước B',NULL,NULL,NULL,'Xã'),
	 (207,'Vĩnh Thắng ',NULL,NULL,NULL,'Xã'),
	 (207,'Vĩnh Tuy',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (208,'Bình San',NULL,NULL,NULL,'Phường'),
	 (208,'Đông Hồ',NULL,NULL,NULL,'Phường'),
	 (208,'Mỹ Đức',NULL,NULL,NULL,'Xã'),
	 (208,'Pháo Đài',NULL,NULL,NULL,'Phường'),
	 (208,'Thuận Yên',NULL,NULL,NULL,'Xã'),
	 (208,'Tiên Hải',NULL,NULL,NULL,'Xã'),
	 (208,'Tô Châu',NULL,NULL,NULL,'Phường'),
	 (209,'Bình Giang',NULL,NULL,NULL,'Xã'),
	 (209,'Bình Sơn',NULL,NULL,NULL,'Xã'),
	 (209,'Hòn Đất',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (209,'Lình Huỳnh',NULL,NULL,NULL,'Xã'),
	 (209,'Mỹ Hiệp Sơn',NULL,NULL,NULL,'Xã'),
	 (209,'Mỹ Lâm',NULL,NULL,NULL,'Xã'),
	 (209,'Mỹ Phước',NULL,NULL,NULL,'Xã'),
	 (209,'Mỹ Thái',NULL,NULL,NULL,'Xã'),
	 (209,'Mỹ Thuận',NULL,NULL,NULL,'Xã'),
	 (209,'Nam Thái Sơn',NULL,NULL,NULL,'Xã'),
	 (209,'Sóc Sơn',NULL,NULL,NULL,'Thị trấn'),
	 (209,'Sơn Bình',NULL,NULL,NULL,'Xã'),
	 (209,'Sơn Kiên',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (209,'Thổ Sơn',NULL,NULL,NULL,'Xã'),
	 (210,'An Sơn',NULL,NULL,NULL,'Xã'),
	 (210,'Hòn Tre',NULL,NULL,NULL,'Xã'),
	 (210,'Lại Sơn',NULL,NULL,NULL,'Xã'),
	 (210,'Nam Du',NULL,NULL,NULL,'Xã'),
	 (211,'Bình An',NULL,NULL,NULL,'Xã'),
	 (211,'Bình Trị',NULL,NULL,NULL,'Xã'),
	 (211,'Dương Hoà',NULL,NULL,NULL,'Xã'),
	 (211,'Hoà Điền',NULL,NULL,NULL,'Xã'),
	 (211,'Hòn Nghệ ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (211,'Kiên Bình',NULL,NULL,NULL,'Xã'),
	 (211,'Kiên Lương',NULL,NULL,NULL,'Thị trấn'),
	 (211,'Sơn Hải',NULL,NULL,NULL,'Xã'),
	 (212,'An Thới',NULL,NULL,NULL,'Thị trấn'),
	 (212,'Bãi Thơm',NULL,NULL,NULL,'Xã'),
	 (212,'Cửa Cạn',NULL,NULL,NULL,'Xã'),
	 (212,'Cửa Dương',NULL,NULL,NULL,'Xã'),
	 (212,'Dương Đông',NULL,NULL,NULL,'Thị trấn'),
	 (212,'Dương Tơ',NULL,NULL,NULL,'Xã'),
	 (212,'Gành Dầu',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (212,'Hàm Ninh',NULL,NULL,NULL,'Xã'),
	 (212,'Hòn Thơm',NULL,NULL,NULL,'Xã'),
	 (212,'Thổ Châu',NULL,NULL,NULL,'Xã'),
	 (213,' Vĩnh Thanh Vân',NULL,NULL,NULL,'Phường'),
	 (213,'An Bình',NULL,NULL,NULL,'Phường'),
	 (213,'An Hòa',NULL,NULL,NULL,'Phường'),
	 (213,'Phi Thông',NULL,NULL,NULL,'Xã'),
	 (213,'Rạch Sỏi',NULL,NULL,NULL,'Phường'),
	 (213,'Vĩnh Bảo',NULL,NULL,NULL,'Phường'),
	 (213,'Vĩnh Hiệp',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (213,'Vĩnh Lạc',NULL,NULL,NULL,'Phường'),
	 (213,'Vĩnh Lợi',NULL,NULL,NULL,'Phường'),
	 (213,'Vĩnh Quang',NULL,NULL,NULL,'Phường'),
	 (213,'Vĩnh Thanh',NULL,NULL,NULL,'Phường'),
	 (213,'Vĩnh Thông',NULL,NULL,NULL,'Phường'),
	 (214,'Tân An',NULL,NULL,NULL,'Xã'),
	 (214,'Tân Hiệp',NULL,NULL,NULL,'Thị trấn'),
	 (214,'Tân Hiệp A',NULL,NULL,NULL,'Xã'),
	 (214,'Tân Hiệp B',NULL,NULL,NULL,'Xã'),
	 (214,'Tân Hòa',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (214,'Tân Hội',NULL,NULL,NULL,'Xã'),
	 (214,'Tân Thành',NULL,NULL,NULL,'Xã'),
	 (214,'Thạnh Đông',NULL,NULL,NULL,'Xã'),
	 (214,'Thạnh Đông A',NULL,NULL,NULL,'Xã'),
	 (214,'Thạnh Đông B',NULL,NULL,NULL,'Xã'),
	 (214,'Thạnh Trị',NULL,NULL,NULL,'Xã'),
	 (215,'An Minh Bắc',NULL,NULL,NULL,'Xã'),
	 (215,'Hòa Chánh',NULL,NULL,NULL,'Xã'),
	 (215,'Minh Thuận',NULL,NULL,NULL,'Xã'),
	 (215,'Thạnh Yên ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (215,'Thạnh Yên A',NULL,NULL,NULL,'Xã'),
	 (215,'Vĩnh Hòa ',NULL,NULL,NULL,'Xã'),
	 (216,'Bình Minh',NULL,NULL,NULL,'Xã'),
	 (216,'Phong Đông',NULL,NULL,NULL,'Xã'),
	 (216,'Tân Thuận',NULL,NULL,NULL,'Xã'),
	 (216,'Vĩnh Bình Bắc',NULL,NULL,NULL,'Xã'),
	 (216,'Vĩnh Bình Nam',NULL,NULL,NULL,'Xã'),
	 (216,'Vĩnh Phong',NULL,NULL,NULL,'Xã'),
	 (216,'Vĩnh Thuận',NULL,NULL,NULL,'Thị trấn'),
	 (216,'Vĩnh Thuận',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (217,'Đại Phúc',NULL,NULL,NULL,'Phường'),
	 (217,'Đáp Cầu',NULL,NULL,NULL,'Phường'),
	 (217,'Hạp Lĩnh',NULL,NULL,NULL,'Phường'),
	 (217,'Hòa Long',NULL,NULL,NULL,'Xã'),
	 (217,'Khắc Niệm',NULL,NULL,NULL,'Xã'),
	 (217,'Khúc Xuyên',NULL,NULL,NULL,'Xã'),
	 (217,'Kim Chân',NULL,NULL,NULL,'Xã'),
	 (217,'Kinh Bắc',NULL,NULL,NULL,'Phường'),
	 (217,'Nam Sơn',NULL,NULL,NULL,'Xã'),
	 (217,'Ninh Xá',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (217,'Phong Khê',NULL,NULL,NULL,'Xã'),
	 (217,'Suối Hoa',NULL,NULL,NULL,'Phường'),
	 (217,'Thị Cầu',NULL,NULL,NULL,'Xã'),
	 (217,'Tiền An',NULL,NULL,NULL,'Xã'),
	 (217,'Vạn An',NULL,NULL,NULL,'Phường'),
	 (217,'Vân Dương',NULL,NULL,NULL,'Phường'),
	 (217,'Vệ An',NULL,NULL,NULL,'Phường'),
	 (217,'Võ Cường',NULL,NULL,NULL,'Phường'),
	 (217,'Vũ Ninh',NULL,NULL,NULL,'Phường'),
	 (218,'Bình Dương',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (218,'Cao Đức',NULL,NULL,NULL,'Xã'),
	 (218,'Đại Bái',NULL,NULL,NULL,'Xã'),
	 (218,'Đại Lai',NULL,NULL,NULL,'Xã'),
	 (218,'Đông Cứu',NULL,NULL,NULL,'Xã'),
	 (218,'Gia Bình',NULL,NULL,NULL,'Thị trấn'),
	 (218,'Giang Sơn',NULL,NULL,NULL,'Xã'),
	 (218,'Lãng Ngâm',NULL,NULL,NULL,'Xã'),
	 (218,'Nhân Thắng',NULL,NULL,NULL,'Xã'),
	 (218,'Quỳnh Phú',NULL,NULL,NULL,'Xã'),
	 (218,'Song Giang',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (218,'Thái Bảo',NULL,NULL,NULL,'Xã'),
	 (218,'Vạn Ninh',NULL,NULL,NULL,'Xã'),
	 (218,'Xuân Lai',NULL,NULL,NULL,'Xã'),
	 (219,'An Thịnh',NULL,NULL,NULL,'Xã'),
	 (219,'Bình Định',NULL,NULL,NULL,'Xã'),
	 (219,'Lai Hạ',NULL,NULL,NULL,'Xã'),
	 (219,'Lâm Thao',NULL,NULL,NULL,'Xã'),
	 (219,'Minh Tân',NULL,NULL,NULL,'Xã'),
	 (219,'Mỹ Hương',NULL,NULL,NULL,'Xã'),
	 (219,'Phú Hòa',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (219,'Phú Lương',NULL,NULL,NULL,'Xã'),
	 (219,'Quảng Phú',NULL,NULL,NULL,'Xã'),
	 (219,'Tân Lãng',NULL,NULL,NULL,'Xã'),
	 (219,'Thứa',NULL,NULL,NULL,'Thị trấn'),
	 (219,'Trung Chính',NULL,NULL,NULL,'Xã'),
	 (219,'Trung Kênh',NULL,NULL,NULL,'Xã'),
	 (219,'Trừng Xá',NULL,NULL,NULL,'Xã'),
	 (220,'Bằng An',NULL,NULL,NULL,'Xã'),
	 (220,'Bồng Lai',NULL,NULL,NULL,'Xã'),
	 (220,'Cách Bi',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (220,'Châu Phong',NULL,NULL,NULL,'Xã'),
	 (220,'Chi Lăng',NULL,NULL,NULL,'Xã'),
	 (220,'Đại Xuân',NULL,NULL,NULL,'Xã'),
	 (220,'Đào Viên',NULL,NULL,NULL,'Xã'),
	 (220,'Đức Long',NULL,NULL,NULL,'Xã'),
	 (220,'Hán Quảng',NULL,NULL,NULL,'Xã'),
	 (220,'Mộ Đạo',NULL,NULL,NULL,'Xã'),
	 (220,'Ngọc Xá',NULL,NULL,NULL,'Xã'),
	 (220,'Nhân Hoà',NULL,NULL,NULL,'Xã'),
	 (220,'Phố Mới',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (220,'Phù Lãng',NULL,NULL,NULL,'Xã'),
	 (220,'Phù Lương',NULL,NULL,NULL,'Xã'),
	 (220,'Phương Liễu',NULL,NULL,NULL,'Xã'),
	 (220,'Phượng Mao',NULL,NULL,NULL,'Xã'),
	 (220,'Quế Tân',NULL,NULL,NULL,'Xã'),
	 (220,'Việt Hùng',NULL,NULL,NULL,'Xã'),
	 (220,'Việt Thống',NULL,NULL,NULL,'Xã'),
	 (220,'Yên Giả',NULL,NULL,NULL,'Xã'),
	 (221,'An Bình',NULL,NULL,NULL,'Xã'),
	 (221,'Đại Đồng Thành',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (221,'Đình Tổ',NULL,NULL,NULL,'Xã'),
	 (221,'Gia Đông',NULL,NULL,NULL,'Xã'),
	 (221,'Hà Mãn',NULL,NULL,NULL,'Xã'),
	 (221,'Hồ',NULL,NULL,NULL,'Thị trấn'),
	 (221,'Hồ Huyện',NULL,NULL,NULL,'Thị trấn'),
	 (221,'Hoài Thượng',NULL,NULL,NULL,'Xã'),
	 (221,'Mão Điền',NULL,NULL,NULL,'Xã'),
	 (221,'Nghĩa Đạo',NULL,NULL,NULL,'Xã'),
	 (221,'Ngũ Thái',NULL,NULL,NULL,'Xã'),
	 (221,'Nguyệt Đức',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (221,'Ninh Xá',NULL,NULL,NULL,'Xã'),
	 (221,'Song Hồ',NULL,NULL,NULL,'Xã'),
	 (221,'Song Liễu',NULL,NULL,NULL,'Xã'),
	 (221,'Thanh Khương',NULL,NULL,NULL,'Xã'),
	 (221,'Trạm Lộ',NULL,NULL,NULL,'Xã'),
	 (221,'Trí Quả',NULL,NULL,NULL,'Xã'),
	 (221,'Xuân Lâm',NULL,NULL,NULL,'Xã'),
	 (222,'Cảnh Hưng',NULL,NULL,NULL,'Xã'),
	 (222,'Đại Đồng',NULL,NULL,NULL,'Xã'),
	 (222,'Hiên Vân',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (222,'Hoàn Sơn',NULL,NULL,NULL,'Xã'),
	 (222,'Lạc Vệ',NULL,NULL,NULL,'Xã'),
	 (222,'Liên Bão',NULL,NULL,NULL,'Xã'),
	 (222,'Lim',NULL,NULL,NULL,'Thị trấn'),
	 (222,'Minh Đạo',NULL,NULL,NULL,'Xã'),
	 (222,'Nội Duệ',NULL,NULL,NULL,'Xã'),
	 (222,'Phật Tích',NULL,NULL,NULL,'Xã'),
	 (222,'Phú Lâm',NULL,NULL,NULL,'Xã'),
	 (222,'Tân Chi',NULL,NULL,NULL,'Xã'),
	 (222,'Tri Phương',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (222,'Việt Đoàn',NULL,NULL,NULL,'Xã'),
	 (223,'Châu Khê',NULL,NULL,NULL,'Phường'),
	 (223,'Đình Bảng',NULL,NULL,NULL,'Phường'),
	 (223,'Đồng Kỵ',NULL,NULL,NULL,'Phường'),
	 (223,'Đông Ngàn',NULL,NULL,NULL,'Phường'),
	 (223,'Đồng Nguyên',NULL,NULL,NULL,'Phường'),
	 (223,'Đồng Nguyên',NULL,NULL,NULL,'Xã'),
	 (223,'Hương Mạc',NULL,NULL,NULL,'Xã'),
	 (223,'Phù Chẩn',NULL,NULL,NULL,'Xã'),
	 (223,'Phù Khê',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (223,'Tam Sơn',NULL,NULL,NULL,'Xã'),
	 (223,'Tân Hồng',NULL,NULL,NULL,'Phường'),
	 (223,'Trang Hạ',NULL,NULL,NULL,'Phường'),
	 (223,'Tương Giang',NULL,NULL,NULL,'Xã'),
	 (224,'Chờ',NULL,NULL,NULL,'Thị trấn'),
	 (224,'Đông Phong',NULL,NULL,NULL,'Xã'),
	 (224,'Đông Thọ',NULL,NULL,NULL,'Xã'),
	 (224,'Đông Tiến',NULL,NULL,NULL,'Xã'),
	 (224,'Dũng Liệt',NULL,NULL,NULL,'Xã'),
	 (224,'Hòa Tiến',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (224,'Long Châu',NULL,NULL,NULL,'Xã'),
	 (224,'Tam Đa',NULL,NULL,NULL,'Xã'),
	 (224,'Tam Giang',NULL,NULL,NULL,'Xã'),
	 (224,'Thụy Hòa',NULL,NULL,NULL,'Xã'),
	 (224,'Trung Nghĩa',NULL,NULL,NULL,'Xã'),
	 (224,'Văn Môn',NULL,NULL,NULL,'Xã'),
	 (224,'Yên Phụ',NULL,NULL,NULL,'Xã'),
	 (224,'Yên Trung',NULL,NULL,NULL,'Xã'),
	 (225,'Ba Chẽ',NULL,NULL,NULL,'Thị trấn'),
	 (225,'Đạp Thanh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (225,'Đồn Đạc',NULL,NULL,NULL,'Xã'),
	 (225,'Lương Mông',NULL,NULL,NULL,'Xã'),
	 (225,'Minh Cầm',NULL,NULL,NULL,'Xã'),
	 (225,'Nam Sơn',NULL,NULL,NULL,'Xã'),
	 (225,'Thanh Lâm',NULL,NULL,NULL,'Xã'),
	 (225,'Thanh Sơn',NULL,NULL,NULL,'Xã'),
	 (226,'Bình Liêu',NULL,NULL,NULL,'Thị trấn'),
	 (226,'Đồng Tâm',NULL,NULL,NULL,'Xã'),
	 (226,'Đồng Văn',NULL,NULL,NULL,'Xã'),
	 (226,'Hoành Mô',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (226,'Húc Động',NULL,NULL,NULL,'Xã'),
	 (226,'Lục Hồn',NULL,NULL,NULL,'Xã'),
	 (226,'Tình Húc',NULL,NULL,NULL,'Xã'),
	 (226,'Vô Ngại',NULL,NULL,NULL,'Xã'),
	 (227,'Cẩm Bình',NULL,NULL,NULL,'Phường'),
	 (227,'Cẩm Đông',NULL,NULL,NULL,'Phường'),
	 (227,'Cẩm Hải',NULL,NULL,NULL,'Xã'),
	 (227,'Cẩm Phú',NULL,NULL,NULL,'Phường'),
	 (227,'Cẩm Sơn',NULL,NULL,NULL,'Phường'),
	 (227,'Cẩm Tây',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (227,'Cẩm Thạch',NULL,NULL,NULL,'Phường'),
	 (227,'Cẩm Thành',NULL,NULL,NULL,'Phường'),
	 (227,'Cẩm Thịnh',NULL,NULL,NULL,'Phường'),
	 (227,'Cẩm Thuỷ',NULL,NULL,NULL,'Phường'),
	 (227,'Cẩm Trung',NULL,NULL,NULL,'Phường'),
	 (227,'Cộng Hoà',NULL,NULL,NULL,'Xã'),
	 (227,'Cửa Ông',NULL,NULL,NULL,'Phường'),
	 (227,'Dương Huy',NULL,NULL,NULL,'Xã'),
	 (227,'Mông Dương',NULL,NULL,NULL,'Phường'),
	 (227,'Quang Hanh',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (228,'Cô Tô',NULL,NULL,NULL,'Thị trấn'),
	 (228,'Đảo Trần',NULL,NULL,NULL,'Xã'),
	 (228,'Đồng Tiến',NULL,NULL,NULL,'Xã'),
	 (228,'Thanh Lân',NULL,NULL,NULL,'Xã'),
	 (229,'Đại Bình',NULL,NULL,NULL,'Xã'),
	 (229,'Đầm Hà',NULL,NULL,NULL,'Thị trấn'),
	 (229,'Đầm Hà',NULL,NULL,NULL,'Xã'),
	 (229,'Dực Yên',NULL,NULL,NULL,'Xã'),
	 (229,'Quảng An',NULL,NULL,NULL,'Xã'),
	 (229,'Quảng Lâm',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (229,'Quảng Lợi',NULL,NULL,NULL,'Xã'),
	 (229,'Quảng Tân',NULL,NULL,NULL,'Xã'),
	 (229,'Tân Bình',NULL,NULL,NULL,'Xã'),
	 (229,'Tân Lập',NULL,NULL,NULL,'Xã'),
	 (230,'An Sinh',NULL,NULL,NULL,'Xã'),
	 (230,'Bình Dương',NULL,NULL,NULL,'Xã'),
	 (230,'Bình Khê',NULL,NULL,NULL,'Xã'),
	 (230,'Đông Triều',NULL,NULL,NULL,'Thị trấn'),
	 (230,'Đức Chính',NULL,NULL,NULL,'Xã'),
	 (230,'Hoàng Quế',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (230,'Hồng Phong',NULL,NULL,NULL,'Xã'),
	 (230,'Hồng Thái Đông',NULL,NULL,NULL,'Xã'),
	 (230,'Hồng Thái Tây',NULL,NULL,NULL,'Xã'),
	 (230,'Hưng Đạo',NULL,NULL,NULL,'Xã'),
	 (230,'Kim Sơn',NULL,NULL,NULL,'Xã'),
	 (230,'Mạo Khê',NULL,NULL,NULL,'Thị trấn'),
	 (230,'Nguyễn Huệ',NULL,NULL,NULL,'Xã'),
	 (230,'Tân Việt',NULL,NULL,NULL,'Xã'),
	 (230,'Thủy An',NULL,NULL,NULL,'Xã'),
	 (230,'Tràng An',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (230,'Tràng Lương',NULL,NULL,NULL,'Xã'),
	 (230,'Việt Dân',NULL,NULL,NULL,'Xã'),
	 (230,'Xuân Sơn',NULL,NULL,NULL,'Xã'),
	 (230,'Yên Đức',NULL,NULL,NULL,'Xã'),
	 (230,'Yên Thọ',NULL,NULL,NULL,'Xã'),
	 (231,'Bạch Đằng',NULL,NULL,NULL,'Phường'),
	 (231,'Bãi Cháy',NULL,NULL,NULL,'Phường'),
	 (231,'Cao Thắng',NULL,NULL,NULL,'Phường'),
	 (231,'Cao Xanh',NULL,NULL,NULL,'Phường'),
	 (231,'Đại Yên',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (231,'Giếng Đáy',NULL,NULL,NULL,'Phường'),
	 (231,'Hà Khánh',NULL,NULL,NULL,'Phường'),
	 (231,'Hà Khẩu',NULL,NULL,NULL,'Phường'),
	 (231,'Hà Lầm',NULL,NULL,NULL,'Phường'),
	 (231,'Hà Phong',NULL,NULL,NULL,'Phường'),
	 (231,'Hà Trung',NULL,NULL,NULL,'Phường'),
	 (231,'Hà Tu',NULL,NULL,NULL,'Phường'),
	 (231,'Hồng Gai',NULL,NULL,NULL,'Phường'),
	 (231,'Hồng Hà',NULL,NULL,NULL,'Phường'),
	 (231,'Hồng Hải',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (231,'Hùng Thắng',NULL,NULL,NULL,'Phường'),
	 (231,'Trần Hưng Đạo',NULL,NULL,NULL,'Phường'),
	 (231,'Tuần Châu',NULL,NULL,NULL,'Phường'),
	 (231,'Việt Hưng',NULL,NULL,NULL,'Phường'),
	 (231,'Yết Kiêu',NULL,NULL,NULL,'Phường'),
	 (232,'Cái Chiên',NULL,NULL,NULL,'Xã'),
	 (232,'Đảo Cái Chiên',NULL,NULL,NULL,'Xã'),
	 (232,'Đường Hoa',NULL,NULL,NULL,'Xã'),
	 (232,'Phú Hải',NULL,NULL,NULL,'Xã'),
	 (232,'Quảng Chính',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (232,'Quảng Điền',NULL,NULL,NULL,'Xã'),
	 (232,'Quảng Đức',NULL,NULL,NULL,'Xã'),
	 (232,'Quảng Hà',NULL,NULL,NULL,'Thị trấn'),
	 (232,'Quảng Long',NULL,NULL,NULL,'Xã'),
	 (232,'Quảng Minh',NULL,NULL,NULL,'Xã'),
	 (232,'Quảng Phong',NULL,NULL,NULL,'Xã'),
	 (232,'Quảng Sơn',NULL,NULL,NULL,'Xã'),
	 (232,'Quảng Thắng',NULL,NULL,NULL,'Xã'),
	 (232,'Quảng Thành',NULL,NULL,NULL,'Xã'),
	 (232,'Quảng Thịnh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (232,'Quảng Trung',NULL,NULL,NULL,'Xã'),
	 (232,'Tiến Tới',NULL,NULL,NULL,'Xã'),
	 (233,'Bằng Cả',NULL,NULL,NULL,'Xã'),
	 (233,'Dân Chủ',NULL,NULL,NULL,'Xã'),
	 (233,'Đồng Lâm',NULL,NULL,NULL,'Xã'),
	 (233,'Đồng Sơn',NULL,NULL,NULL,'Xã'),
	 (233,'Hoà Bình',NULL,NULL,NULL,'Xã'),
	 (233,'Kỳ Thượng',NULL,NULL,NULL,'Xã'),
	 (233,'Lê Lợi',NULL,NULL,NULL,'Xã'),
	 (233,'Quảng La',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (233,'Sơn Dương',NULL,NULL,NULL,'Xã'),
	 (233,'Tân Dân',NULL,NULL,NULL,'Xã'),
	 (233,'Thống Nhất',NULL,NULL,NULL,'Xã'),
	 (233,'Trới',NULL,NULL,NULL,'Thị trấn'),
	 (233,'Vũ Oai',NULL,NULL,NULL,'Xã'),
	 (234,'Bắc Sơn',NULL,NULL,NULL,'Xã'),
	 (234,'Bình Ngọc',NULL,NULL,NULL,'Phường'),
	 (234,'Hải Đông',NULL,NULL,NULL,'Xã'),
	 (234,'Hải Hòa',NULL,NULL,NULL,'Phường'),
	 (234,'Hải Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (234,'Hải Tiến',NULL,NULL,NULL,'Xã'),
	 (234,'Hải Xuân',NULL,NULL,NULL,'Xã'),
	 (234,'Hải Yên',NULL,NULL,NULL,'Phường'),
	 (234,'Hòa Lạc',NULL,NULL,NULL,'Phường'),
	 (234,'Ka Long',NULL,NULL,NULL,'Phường'),
	 (234,'Ninh Dương',NULL,NULL,NULL,'Phường'),
	 (234,'Quảng Nghĩa',NULL,NULL,NULL,'Xã'),
	 (234,'Trà Cổ',NULL,NULL,NULL,'Phường'),
	 (234,'Trần Phú',NULL,NULL,NULL,'Phường'),
	 (234,'Vạn Ninh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (234,'Vĩnh Thực',NULL,NULL,NULL,'Xã'),
	 (234,'Vĩnh Trung',NULL,NULL,NULL,'Xã'),
	 (235,'Cẩm La',NULL,NULL,NULL,'Xã'),
	 (235,'Cộng Hòa',NULL,NULL,NULL,'Phường'),
	 (235,'Đông Mai',NULL,NULL,NULL,'Phường'),
	 (235,'Hà An',NULL,NULL,NULL,'Phường'),
	 (235,'Hiệp Hòa',NULL,NULL,NULL,'Xã'),
	 (235,'Hoàng Tân',NULL,NULL,NULL,'Xã'),
	 (235,'Liên Hòa',NULL,NULL,NULL,'Xã'),
	 (235,'Liên Vị',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (235,'Minh Thành',NULL,NULL,NULL,'Phường'),
	 (235,'Nam Hòa',NULL,NULL,NULL,'Phường'),
	 (235,'Phong Cốc',NULL,NULL,NULL,'Phường'),
	 (235,'Phong Hải',NULL,NULL,NULL,'Phường'),
	 (235,'Quảng Yên',NULL,NULL,NULL,'Phường'),
	 (235,'Sông Khoai',NULL,NULL,NULL,'Xã'),
	 (235,'Tân An',NULL,NULL,NULL,'Phường'),
	 (235,'Tiền An',NULL,NULL,NULL,'Xã'),
	 (235,'Tiền Phong',NULL,NULL,NULL,'Xã'),
	 (235,'Yên Giang',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (235,'Yên Hải',NULL,NULL,NULL,'Phường'),
	 (236,'Đại Dực',NULL,NULL,NULL,'Xã'),
	 (236,'Đại Thành',NULL,NULL,NULL,'Xã'),
	 (236,'Điền Xá',NULL,NULL,NULL,'Xã'),
	 (236,'Đông Hải',NULL,NULL,NULL,'Xã'),
	 (236,'Đông Ngũ',NULL,NULL,NULL,'Xã'),
	 (236,'Đồng Rui',NULL,NULL,NULL,'Xã'),
	 (236,'Hà Lâu',NULL,NULL,NULL,'Xã'),
	 (236,'Hải Lạng',NULL,NULL,NULL,'Xã'),
	 (236,'Phong Dụ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (236,'Tiên Lãng',NULL,NULL,NULL,'Xã'),
	 (236,'Tiên Yên',NULL,NULL,NULL,'Thị trấn'),
	 (236,'Yên Than',NULL,NULL,NULL,'Xã'),
	 (237,'Bắc Sơn',NULL,NULL,NULL,'Phường'),
	 (237,'Điền Công',NULL,NULL,NULL,'Xã'),
	 (237,'Nam Khê',NULL,NULL,NULL,'Phường'),
	 (237,'Phương Đông',NULL,NULL,NULL,'Phường'),
	 (237,'Phương Nam',NULL,NULL,NULL,'Phường'),
	 (237,'Quang Trung',NULL,NULL,NULL,'Phường'),
	 (237,'Thanh Sơn',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (237,'Thượng Yên Công',NULL,NULL,NULL,'Xã'),
	 (237,'Trưng Vương',NULL,NULL,NULL,'Phường'),
	 (237,'Vàng Danh',NULL,NULL,NULL,'Phường'),
	 (237,'Yên Thanh',NULL,NULL,NULL,'Phường'),
	 (238,'Bản Sen',NULL,NULL,NULL,'Xã'),
	 (238,'Bình Dân',NULL,NULL,NULL,'Xã'),
	 (238,'Cái Rồng',NULL,NULL,NULL,'Thị trấn'),
	 (238,'Đài Xuyên',NULL,NULL,NULL,'Xã'),
	 (238,'Đoàn Kết',NULL,NULL,NULL,'Xã'),
	 (238,'Đông Xá',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (238,'Hạ Long',NULL,NULL,NULL,'Xã'),
	 (238,'Minh Châu',NULL,NULL,NULL,'Xã'),
	 (238,'Ngọc Vừng',NULL,NULL,NULL,'Xã'),
	 (238,'Quan Lạn',NULL,NULL,NULL,'Xã'),
	 (238,'Thắng Lợi',NULL,NULL,NULL,'Xã'),
	 (238,'Vạn Yên',NULL,NULL,NULL,'Xã'),
	 (239,'Ái Thượng',NULL,NULL,NULL,'Xã'),
	 (239,'Ban Công',NULL,NULL,NULL,'Xã'),
	 (239,'Cành Nàng',NULL,NULL,NULL,'Thị trấn'),
	 (239,'Cổ Lũng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (239,'Điền Hạ',NULL,NULL,NULL,'Xã'),
	 (239,'Điền Lư',NULL,NULL,NULL,'Xã'),
	 (239,'Điền Quang',NULL,NULL,NULL,'Xã'),
	 (239,'Điền Thượng',NULL,NULL,NULL,'Xã'),
	 (239,'Điền Trung',NULL,NULL,NULL,'Xã'),
	 (239,'Hạ Trung',NULL,NULL,NULL,'Xã'),
	 (239,'Kỳ Tân',NULL,NULL,NULL,'Xã'),
	 (239,'Lâm Xa',NULL,NULL,NULL,'Xã'),
	 (239,'Lũng Cao',NULL,NULL,NULL,'Xã'),
	 (239,'Lũng Niêm',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (239,'Lương Ngoại',NULL,NULL,NULL,'Xã'),
	 (239,'Lương Nội',NULL,NULL,NULL,'Xã'),
	 (239,'Lương Trung',NULL,NULL,NULL,'Xã'),
	 (239,'Tân Lập',NULL,NULL,NULL,'Xã'),
	 (239,'Thành Lâm',NULL,NULL,NULL,'Xã'),
	 (239,'Thánh Sơn',NULL,NULL,NULL,'Xã'),
	 (239,'Thiết Kế',NULL,NULL,NULL,'Xã'),
	 (239,'Thiết Ống',NULL,NULL,NULL,'Xã'),
	 (239,'Văn Nho',NULL,NULL,NULL,'Xã'),
	 (240,'Ba Đình',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (240,'Bắc Sơn',NULL,NULL,NULL,'Phường'),
	 (240,'Đông Sơn',NULL,NULL,NULL,'Phường'),
	 (240,'Hà Lan',NULL,NULL,NULL,'Xã'),
	 (240,'Lam Sơn',NULL,NULL,NULL,'Phường'),
	 (240,'Ngọc Trạo',NULL,NULL,NULL,'Phường'),
	 (240,'Phú Sơn',NULL,NULL,NULL,'Phường'),
	 (240,'Quang Trung',NULL,NULL,NULL,'Xã'),
	 (241,'Cẩm Bình',NULL,NULL,NULL,'Xã'),
	 (241,'Cẩm Châu',NULL,NULL,NULL,'Xã'),
	 (241,'Cẩm Giang',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (241,'Cẩm Liên',NULL,NULL,NULL,'Xã'),
	 (241,'Cẩm Long',NULL,NULL,NULL,'Xã'),
	 (241,'Cẩm Lương',NULL,NULL,NULL,'Xã'),
	 (241,'Cẩm Ngọc',NULL,NULL,NULL,'Xã'),
	 (241,'Cẩm Phong',NULL,NULL,NULL,'Xã'),
	 (241,'Cẩm Phú',NULL,NULL,NULL,'Xã'),
	 (241,'Cẩm Quý',NULL,NULL,NULL,'Xã'),
	 (241,'Cẩm Sơn',NULL,NULL,NULL,'Xã'),
	 (241,'Cẩm Tâm',NULL,NULL,NULL,'Xã'),
	 (241,'Cẩm Tân',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (241,'Cẩm Thạch',NULL,NULL,NULL,'Xã'),
	 (241,'Cẩm Thành',NULL,NULL,NULL,'Xã'),
	 (241,'Cẩm Thủy',NULL,NULL,NULL,'Thị trấn'),
	 (241,'Cẩm Tú',NULL,NULL,NULL,'Xã'),
	 (241,'Cẩm Vân',NULL,NULL,NULL,'Xã'),
	 (241,'Cẩm Yên',NULL,NULL,NULL,'Xã'),
	 (241,'Phúc Do',NULL,NULL,NULL,'Xã'),
	 (242,'Đông Anh',NULL,NULL,NULL,'Xã'),
	 (242,'Đông Hòa',NULL,NULL,NULL,'Xã'),
	 (242,'Đông Hoàng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (242,'Đông Khê',NULL,NULL,NULL,'Xã'),
	 (242,'Đông Minh',NULL,NULL,NULL,'Xã'),
	 (242,'Đông Nam',NULL,NULL,NULL,'Xã'),
	 (242,'Đông Ninh',NULL,NULL,NULL,'Xã'),
	 (242,'Đông Phú',NULL,NULL,NULL,'Xã'),
	 (242,'Đông Quang',NULL,NULL,NULL,'Xã'),
	 (242,'Đông Thanh',NULL,NULL,NULL,'Xã'),
	 (242,'Đông Thịnh',NULL,NULL,NULL,'Xã'),
	 (242,'Đông Tiến',NULL,NULL,NULL,'Xã'),
	 (242,'Đông Văn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (242,'Đông Xuân',NULL,NULL,NULL,'Xã'),
	 (242,'Đông Yên',NULL,NULL,NULL,'Xã'),
	 (242,'Rừng Thông',NULL,NULL,NULL,'Xã'),
	 (243,'Hà Bắc',NULL,NULL,NULL,'Xã'),
	 (243,'Hà Bình',NULL,NULL,NULL,'Xã'),
	 (243,'Hà Châu',NULL,NULL,NULL,'Xã'),
	 (243,'Hà Đông',NULL,NULL,NULL,'Xã'),
	 (243,'Hà Dương',NULL,NULL,NULL,'Xã'),
	 (243,'Hà Giang',NULL,NULL,NULL,'Xã'),
	 (243,'Hà Hải',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (243,'Hà Lai',NULL,NULL,NULL,'Xã'),
	 (243,'Hà Lâm',NULL,NULL,NULL,'Xã'),
	 (243,'Hà Lĩnh',NULL,NULL,NULL,'Xã'),
	 (243,'Hà Long',NULL,NULL,NULL,'Xã'),
	 (243,'Hà Ngọc',NULL,NULL,NULL,'Xã'),
	 (243,'Hà Ninh',NULL,NULL,NULL,'Xã'),
	 (243,'Hà Phong',NULL,NULL,NULL,'Xã'),
	 (243,'Hà Phú',NULL,NULL,NULL,'Xã'),
	 (243,'Hà Sơn',NULL,NULL,NULL,'Xã'),
	 (243,'Hà Tân',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (243,'Hà Thái',NULL,NULL,NULL,'Xã'),
	 (243,'Hà Thanh',NULL,NULL,NULL,'Xã'),
	 (243,'Hà Tiến',NULL,NULL,NULL,'Xã'),
	 (243,'Hà Toại',NULL,NULL,NULL,'Xã'),
	 (243,'Hà Trung',NULL,NULL,NULL,'Thị trấn'),
	 (243,'Hà Vân',NULL,NULL,NULL,'Xã'),
	 (243,'Hà Vinh',NULL,NULL,NULL,'Xã'),
	 (243,'Hà Yên',NULL,NULL,NULL,'Xã'),
	 (244,'Cầu Lộc',NULL,NULL,NULL,'Xã'),
	 (244,'Châu Lộc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (244,'Đa Lộc',NULL,NULL,NULL,'Xã'),
	 (244,'Đại Lộc',NULL,NULL,NULL,'Xã'),
	 (244,'Đồng Lộc',NULL,NULL,NULL,'Xã'),
	 (244,'Hải Lộc',NULL,NULL,NULL,'Xã'),
	 (244,'Hậu Lộc',NULL,NULL,NULL,'Thị trấn'),
	 (244,'Hoa Lộc',NULL,NULL,NULL,'Xã'),
	 (244,'Hòa Lộc',NULL,NULL,NULL,'Xã'),
	 (244,'Hưng Lộc',NULL,NULL,NULL,'Xã'),
	 (244,'Liên Lộc',NULL,NULL,NULL,'Xã'),
	 (244,'Lộc Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (244,'Lộc Tân',NULL,NULL,NULL,'Xã'),
	 (244,'Minh Lộc',NULL,NULL,NULL,'Xã'),
	 (244,'Mỹ Lộc',NULL,NULL,NULL,'Xã'),
	 (244,'Ngư Lộc',NULL,NULL,NULL,'Xã'),
	 (244,'Phong Lộc',NULL,NULL,NULL,'Xã'),
	 (244,'Phú Lộc',NULL,NULL,NULL,'Xã'),
	 (244,'Quang Lộc',NULL,NULL,NULL,'Xã'),
	 (244,'Thành Lộc',NULL,NULL,NULL,'Xã'),
	 (244,'Thịnh Lộc',NULL,NULL,NULL,'Xã'),
	 (244,'Thuần Lộc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (244,'Tiến Lộc',NULL,NULL,NULL,'Xã'),
	 (244,'Triệu Lộc',NULL,NULL,NULL,'Xã'),
	 (244,'Tuy Lộc',NULL,NULL,NULL,'Xã'),
	 (244,'Văn Lộc',NULL,NULL,NULL,'Xã'),
	 (244,'Xuân Lộc',NULL,NULL,NULL,'Xã'),
	 (245,'Bút Sơn',NULL,NULL,NULL,'Thị trấn'),
	 (245,'Hoằng Cát',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Châu',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Đạo',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Đạt',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (245,'Hoằng Đông',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Đồng',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Đức',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Giang',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Hà',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Hải',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Hợp',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Khánh',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Khê',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Kim',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (245,'Hoằng Lộc',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Lương',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Lưu',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Minh',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Ngọc',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Phong',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Phú',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Phụ',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Phúc',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Phượng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (245,'Hoằng Quý',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Quỳ',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Sơn',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Tân',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Thái',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Thắng',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Thanh',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Thành',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Thịnh',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Tiến',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (245,'Hoằng Trạch',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Trinh',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Trung',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Trường',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Vinh',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Xuân',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Xuyên',NULL,NULL,NULL,'Xã'),
	 (245,'Hoằng Yến',NULL,NULL,NULL,'Xã'),
	 (246,'Đồng Lương',NULL,NULL,NULL,'Xã'),
	 (246,'Giao An',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (246,'Giao Thiện',NULL,NULL,NULL,'Xã'),
	 (246,'Lâm Phú',NULL,NULL,NULL,'Xã'),
	 (246,'Lang Chánh',NULL,NULL,NULL,'Thị trấn'),
	 (246,'Quang Hiến',NULL,NULL,NULL,'Xã'),
	 (246,'Tam Văn',NULL,NULL,NULL,'Xã'),
	 (246,'Tân Phúc',NULL,NULL,NULL,'Xã'),
	 (246,'Trí Nang',NULL,NULL,NULL,'Xã'),
	 (246,'Yên Khương',NULL,NULL,NULL,'Xã'),
	 (246,'Yên Thắng',NULL,NULL,NULL,'Xã'),
	 (247,'Mường Chanh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (247,'Mường Lát',NULL,NULL,NULL,'Thị trấn'),
	 (247,'Mường Lý',NULL,NULL,NULL,'Xã'),
	 (247,'Nhi Sơn',NULL,NULL,NULL,'Xã'),
	 (247,'Pù Nhi',NULL,NULL,NULL,'Xã'),
	 (247,'Quang Chiểu',NULL,NULL,NULL,'Xã'),
	 (247,'Tam Chung',NULL,NULL,NULL,'Xã'),
	 (247,'Tén Tằn',NULL,NULL,NULL,'Xã'),
	 (247,'Trung Lý',NULL,NULL,NULL,'Xã'),
	 (248,'Ba Đình',NULL,NULL,NULL,'Xã'),
	 (248,'Nga An',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (248,'Nga Bạch',NULL,NULL,NULL,'Xã'),
	 (248,'Nga Điền',NULL,NULL,NULL,'Xã'),
	 (248,'Nga Giáp',NULL,NULL,NULL,'Xã'),
	 (248,'Nga Hải',NULL,NULL,NULL,'Xã'),
	 (248,'Nga Hưng',NULL,NULL,NULL,'Xã'),
	 (248,'Nga Liên',NULL,NULL,NULL,'Xã'),
	 (248,'Nga Lĩnh',NULL,NULL,NULL,'Xã'),
	 (248,'Nga Mỹ',NULL,NULL,NULL,'Xã'),
	 (248,'Nga Nhân',NULL,NULL,NULL,'Xã'),
	 (248,'Nga Phú',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (248,'Nga Sơn',NULL,NULL,NULL,'Thị trấn'),
	 (248,'Nga Tân',NULL,NULL,NULL,'Xã'),
	 (248,'Nga Thạch',NULL,NULL,NULL,'Xã'),
	 (248,'Nga Thái',NULL,NULL,NULL,'Xã'),
	 (248,'Nga Thắng',NULL,NULL,NULL,'Xã'),
	 (248,'Nga Thanh',NULL,NULL,NULL,'Xã'),
	 (248,'Nga Thành',NULL,NULL,NULL,'Xã'),
	 (248,'Nga Thiện',NULL,NULL,NULL,'Xã'),
	 (248,'Nga Thuỷ',NULL,NULL,NULL,'Xã'),
	 (248,'Nga Tiến',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (248,'Nga Trung',NULL,NULL,NULL,'Xã'),
	 (248,'Nga Trường',NULL,NULL,NULL,'Xã'),
	 (248,'Nga Văn',NULL,NULL,NULL,'Xã'),
	 (248,'Nga Vịnh',NULL,NULL,NULL,'Xã'),
	 (248,'Nga Yên',NULL,NULL,NULL,'Xã'),
	 (249,'Cao Ngọc',NULL,NULL,NULL,'Xã'),
	 (249,'Cao Thịnh',NULL,NULL,NULL,'Xã'),
	 (249,'Đồng Thịnh',NULL,NULL,NULL,'Xã'),
	 (249,'Kiên Thọ',NULL,NULL,NULL,'Xã'),
	 (249,'Lam Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (249,'Lộc Thịnh',NULL,NULL,NULL,'Xã'),
	 (249,'Minh Sơn',NULL,NULL,NULL,'Xã'),
	 (249,'Minh Tiến',NULL,NULL,NULL,'Xã'),
	 (249,'Mỹ Tân',NULL,NULL,NULL,'Xã'),
	 (249,'Ngọc Khê',NULL,NULL,NULL,'Xã'),
	 (249,'Ngọc Lặc',NULL,NULL,NULL,'Thị trấn'),
	 (249,'Ngọc Liên',NULL,NULL,NULL,'Xã'),
	 (249,'Ngọc Sơn',NULL,NULL,NULL,'Xã'),
	 (249,'Ngọc Trung',NULL,NULL,NULL,'Xã'),
	 (249,'Nguyệt Ấn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (249,'Phúc Thịnh',NULL,NULL,NULL,'Xã'),
	 (249,'Phùng Giáo',NULL,NULL,NULL,'Xã'),
	 (249,'Phùng Minh',NULL,NULL,NULL,'Xã'),
	 (249,'Quang Trung',NULL,NULL,NULL,'Xã'),
	 (249,'Thạch Lập',NULL,NULL,NULL,'Xã'),
	 (249,'Thúy Sơn',NULL,NULL,NULL,'Xã'),
	 (249,'Vân Âm',NULL,NULL,NULL,'Xã'),
	 (250,'Bến Sung',NULL,NULL,NULL,'Thị trấn'),
	 (250,'Cán Khê',NULL,NULL,NULL,'Xã'),
	 (250,'Hải Long',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (250,'Hải Vân',NULL,NULL,NULL,'Xã'),
	 (250,'Mậu Lâm',NULL,NULL,NULL,'Xã'),
	 (250,'Phú Nhuận',NULL,NULL,NULL,'Xã'),
	 (250,'Phúc Đường',NULL,NULL,NULL,'Xã'),
	 (250,'Phượng Nghi',NULL,NULL,NULL,'Xã'),
	 (250,'Thanh Kỳ',NULL,NULL,NULL,'Xã'),
	 (250,'Thanh Tân',NULL,NULL,NULL,'Xã'),
	 (250,'Xuân Du',NULL,NULL,NULL,'Xã'),
	 (250,'Xuân Khang',NULL,NULL,NULL,'Xã'),
	 (250,'Xuân Phúc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (250,'Xuân Thái',NULL,NULL,NULL,'Xã'),
	 (250,'Xuân Thọ',NULL,NULL,NULL,'Xã'),
	 (250,'Yên Lạc',NULL,NULL,NULL,'Xã'),
	 (250,'Yên Thọ',NULL,NULL,NULL,'Xã'),
	 (251,'Bãi Trành',NULL,NULL,NULL,'Xã'),
	 (251,'Bình Lương',NULL,NULL,NULL,'Xã'),
	 (251,'Cát Tân',NULL,NULL,NULL,'Xã'),
	 (251,'Cát Vân',NULL,NULL,NULL,'Xã'),
	 (251,'Hóa Quỳ',NULL,NULL,NULL,'Xã'),
	 (251,'Tân Bình',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (251,'Thanh Hòa',NULL,NULL,NULL,'Xã'),
	 (251,'Thanh Lâm',NULL,NULL,NULL,'Xã'),
	 (251,'Thanh Phong',NULL,NULL,NULL,'Xã'),
	 (251,'Thanh Quân',NULL,NULL,NULL,'Xã'),
	 (251,'Thanh Sơn',NULL,NULL,NULL,'Xã'),
	 (251,'Thanh Xuân',NULL,NULL,NULL,'Xã'),
	 (251,'Thượng Ninh',NULL,NULL,NULL,'Xã'),
	 (251,'Xuân Bình',NULL,NULL,NULL,'Xã'),
	 (251,'Xuân Hòa',NULL,NULL,NULL,'Xã'),
	 (251,'Xuân Quỳ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (251,'Yên Cát',NULL,NULL,NULL,'Thị trấn'),
	 (251,'Yên Lễ',NULL,NULL,NULL,'Xã'),
	 (252,'Công Bình',NULL,NULL,NULL,'Xã'),
	 (252,'Công Chính',NULL,NULL,NULL,'Xã'),
	 (252,'Công Liêm',NULL,NULL,NULL,'Xã'),
	 (252,'Hoàng Giang',NULL,NULL,NULL,'Xã'),
	 (252,'Hoàng Sơn',NULL,NULL,NULL,'Xã'),
	 (252,'Minh Khôi',NULL,NULL,NULL,'Xã'),
	 (252,'Minh Nghĩa',NULL,NULL,NULL,'Xã'),
	 (252,'Minh Thọ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (252,'Nông Cống',NULL,NULL,NULL,'Thị trấn'),
	 (252,'Tân Khang',NULL,NULL,NULL,'Xã'),
	 (252,'Tân Phúc',NULL,NULL,NULL,'Xã'),
	 (252,'Tân Thọ',NULL,NULL,NULL,'Xã'),
	 (252,'Tế Lợi',NULL,NULL,NULL,'Xã'),
	 (252,'Tế Nông',NULL,NULL,NULL,'Xã'),
	 (252,'Tế Tân',NULL,NULL,NULL,'Xã'),
	 (252,'Tế Thắng',NULL,NULL,NULL,'Xã'),
	 (252,'Thăng Bình',NULL,NULL,NULL,'Xã'),
	 (252,'Thăng Long',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (252,'Thăng Thọ',NULL,NULL,NULL,'Xã'),
	 (252,'Trung Chính',NULL,NULL,NULL,'Xã'),
	 (252,'Trung Thành',NULL,NULL,NULL,'Xã'),
	 (252,'Trung Ý',NULL,NULL,NULL,'Xã'),
	 (252,'Trường Giang',NULL,NULL,NULL,'Xã'),
	 (252,'Trường Minh',NULL,NULL,NULL,'Xã'),
	 (252,'Trường Sơn',NULL,NULL,NULL,'Xã'),
	 (252,'Trường Trung',NULL,NULL,NULL,'Xã'),
	 (252,'Tượng Lĩnh',NULL,NULL,NULL,'Xã'),
	 (252,'Tượng Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (252,'Tượng Văn',NULL,NULL,NULL,'Xã'),
	 (252,'Vạn Hoà',NULL,NULL,NULL,'Xã'),
	 (252,'Vạn Thắng',NULL,NULL,NULL,'Xã'),
	 (252,'Vạn Thiện',NULL,NULL,NULL,'Xã'),
	 (252,'Yên Mỹ',NULL,NULL,NULL,'Xã'),
	 (253,'Hiền Chung',NULL,NULL,NULL,'Xã'),
	 (253,'Hiền Kiệt',NULL,NULL,NULL,'Xã'),
	 (253,'Hồi Xuân',NULL,NULL,NULL,'Xã'),
	 (253,'Nam Động',NULL,NULL,NULL,'Xã'),
	 (253,'Nam Tiến',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (253,'Nam Xuân',NULL,NULL,NULL,'Xã'),
	 (253,'Phú Lệ',NULL,NULL,NULL,'Xã'),
	 (253,'Phú Nghiêm',NULL,NULL,NULL,'Xã'),
	 (253,'Phú Sơn',NULL,NULL,NULL,'Xã'),
	 (253,'Phú Thanh',NULL,NULL,NULL,'Xã'),
	 (253,'Phú Xuân',NULL,NULL,NULL,'Xã'),
	 (253,'Quan Hóa',NULL,NULL,NULL,'Thị trấn'),
	 (253,'Thành Sơn',NULL,NULL,NULL,'Xã'),
	 (253,'Thanh Xuân',NULL,NULL,NULL,'Xã'),
	 (253,'Thiên Phủ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (253,'Trung Sơn',NULL,NULL,NULL,'Xã'),
	 (253,'Trung Thành',NULL,NULL,NULL,'Xã'),
	 (253,'Xuân Phú',NULL,NULL,NULL,'Xã'),
	 (254,'Mường Mìn',NULL,NULL,NULL,'Xã'),
	 (254,'Na Mèo',NULL,NULL,NULL,'Xã'),
	 (254,'Quan Sơn',NULL,NULL,NULL,'Thị trấn'),
	 (254,'Sơn Điện',NULL,NULL,NULL,'Xã'),
	 (254,'Sơn Hà',NULL,NULL,NULL,'Xã'),
	 (254,'Sơn Lư',NULL,NULL,NULL,'Xã'),
	 (254,'Sơn Thủy',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (254,'Tam Lư',NULL,NULL,NULL,'Xã'),
	 (254,'Tam Thanh',NULL,NULL,NULL,'Xã'),
	 (254,'Trung Hạ',NULL,NULL,NULL,'Xã'),
	 (254,'Trung Thượng',NULL,NULL,NULL,'Xã'),
	 (254,'Trung Tiến',NULL,NULL,NULL,'Xã'),
	 (254,'Trung Xuân',NULL,NULL,NULL,'Xã'),
	 (255,'Quảng Bình',NULL,NULL,NULL,'Xã'),
	 (255,'Quảng Chính',NULL,NULL,NULL,'Xã'),
	 (255,'Quảng Định',NULL,NULL,NULL,'Xã'),
	 (255,'Quảng Đức',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (255,'Quảng Giao',NULL,NULL,NULL,'Xã'),
	 (255,'Quảng Hải',NULL,NULL,NULL,'Xã'),
	 (255,'Quảng Hòa',NULL,NULL,NULL,'Xã'),
	 (255,'Quảng Hợp',NULL,NULL,NULL,'Xã'),
	 (255,'Quảng Khê',NULL,NULL,NULL,'Xã'),
	 (255,'Quảng Lĩnh',NULL,NULL,NULL,'Xã'),
	 (255,'Quảng Lộc',NULL,NULL,NULL,'Xã'),
	 (255,'Quảng Lợi',NULL,NULL,NULL,'Xã'),
	 (255,'Quảng Long',NULL,NULL,NULL,'Xã'),
	 (255,'Quảng Lưu',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (255,'Quảng Ngọc',NULL,NULL,NULL,'Xã'),
	 (255,'Quảng Nham',NULL,NULL,NULL,'Xã'),
	 (255,'Quảng Nhân',NULL,NULL,NULL,'Xã'),
	 (255,'Quảng Ninh',NULL,NULL,NULL,'Xã'),
	 (255,'Quảng Phong',NULL,NULL,NULL,'Xã'),
	 (255,'Quảng Phúc',NULL,NULL,NULL,'Xã'),
	 (255,'Quảng Tân',NULL,NULL,NULL,'Xã'),
	 (255,'Quảng Thạch',NULL,NULL,NULL,'Xã'),
	 (255,'Quảng Thái',NULL,NULL,NULL,'Xã'),
	 (255,'Quảng Trạch',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (255,'Quảng Trung',NULL,NULL,NULL,'Xã'),
	 (255,'Quảng Trường',NULL,NULL,NULL,'Xã'),
	 (255,'Quảng Văn',NULL,NULL,NULL,'Xã'),
	 (255,'Quảng Vọng',NULL,NULL,NULL,'Xã'),
	 (255,'Quảng Xương',NULL,NULL,NULL,'Thị trấn'),
	 (255,'Quảng Yên',NULL,NULL,NULL,'Xã'),
	 (256,'Bắc Sơn',NULL,NULL,NULL,'Phường'),
	 (256,'Quảng Châu',NULL,NULL,NULL,'Xã'),
	 (256,'Quảng Cư',NULL,NULL,NULL,'Xã'),
	 (256,'Quảng Đại',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (256,'Quảng Hùng',NULL,NULL,NULL,'Xã'),
	 (256,'Quảng Minh',NULL,NULL,NULL,'Xã'),
	 (256,'Quảng Thọ',NULL,NULL,NULL,'Xã'),
	 (256,'Quảng Tiến',NULL,NULL,NULL,'Phường'),
	 (256,'Quảng Vinh',NULL,NULL,NULL,'Xã'),
	 (256,'Trung Sơn',NULL,NULL,NULL,'Phường'),
	 (256,'Trường Sơn',NULL,NULL,NULL,'Phường'),
	 (257,'Kim Tân',NULL,NULL,NULL,'Thị trấn'),
	 (257,'Ngọc Trạo',NULL,NULL,NULL,'Xã'),
	 (257,'Thạch Bình',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (257,'Thạch Cẩm',NULL,NULL,NULL,'Xã'),
	 (257,'Thạch Định',NULL,NULL,NULL,'Xã'),
	 (257,'Thạch Đồng',NULL,NULL,NULL,'Xã'),
	 (257,'Thạch Lâm',NULL,NULL,NULL,'Xã'),
	 (257,'Thạch Long',NULL,NULL,NULL,'Xã'),
	 (257,'Thạch Quảng',NULL,NULL,NULL,'Xã'),
	 (257,'Thạch Sơn',NULL,NULL,NULL,'Xã'),
	 (257,'Thạch Tân',NULL,NULL,NULL,'Xã'),
	 (257,'Thạch Tượng',NULL,NULL,NULL,'Xã'),
	 (257,'Thành An',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (257,'Thành Công',NULL,NULL,NULL,'Xã'),
	 (257,'Thành Hưng',NULL,NULL,NULL,'Xã'),
	 (257,'Thành Kim',NULL,NULL,NULL,'Xã'),
	 (257,'Thành Long',NULL,NULL,NULL,'Xã'),
	 (257,'Thành Minh',NULL,NULL,NULL,'Xã'),
	 (257,'Thành Mỹ',NULL,NULL,NULL,'Xã'),
	 (257,'Thành Tâm',NULL,NULL,NULL,'Xã'),
	 (257,'Thành Tân',NULL,NULL,NULL,'Xã'),
	 (257,'Thành Thọ',NULL,NULL,NULL,'Xã'),
	 (257,'Thành Tiến',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (257,'Thành Trực',NULL,NULL,NULL,'Xã'),
	 (257,'Thành Vân',NULL,NULL,NULL,'Xã'),
	 (257,'Thành Vinh',NULL,NULL,NULL,'Xã'),
	 (257,'Thành Yên',NULL,NULL,NULL,'Xã'),
	 (257,'Vân Du',NULL,NULL,NULL,'Thị trấn'),
	 (258,'An Hoạch',NULL,NULL,NULL,'Phường'),
	 (258,'Ba Đình',NULL,NULL,NULL,'Phường'),
	 (258,'Điện Biên',NULL,NULL,NULL,'Phường'),
	 (258,'Đông Cương',NULL,NULL,NULL,'Xã'),
	 (258,'Đông Hải',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (258,'Đông Hưng',NULL,NULL,NULL,'Xã'),
	 (258,'Đông Hương',NULL,NULL,NULL,'Phường'),
	 (258,'Đông Lĩnh',NULL,NULL,NULL,'Xã'),
	 (258,'Đông Sơn',NULL,NULL,NULL,'Phường'),
	 (258,'Đông Tân',NULL,NULL,NULL,'Xã'),
	 (258,'Đông Thọ',NULL,NULL,NULL,'Phường'),
	 (258,'Đông Vệ',NULL,NULL,NULL,'Phường'),
	 (258,'Đông Vinh',NULL,NULL,NULL,'Xã'),
	 (258,'Hàm Rồng',NULL,NULL,NULL,'Phường'),
	 (258,'Hoằng Anh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (258,'Hoằng Đại',NULL,NULL,NULL,'Xã'),
	 (258,'Hoằng Long',NULL,NULL,NULL,'Xã'),
	 (258,'Hoằng Lý',NULL,NULL,NULL,'Xã'),
	 (258,'Hoằng Quang',NULL,NULL,NULL,'Xã'),
	 (258,'Lam Sơn',NULL,NULL,NULL,'Phường'),
	 (258,'Nam Ngạn',NULL,NULL,NULL,'Phường'),
	 (258,'Ngọc Trạo',NULL,NULL,NULL,'Phường'),
	 (258,'Phú Sơn',NULL,NULL,NULL,'Phường'),
	 (258,'Quảng Cát',NULL,NULL,NULL,'Xã'),
	 (258,'Quảng Đông',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (258,'Quảng Hưng',NULL,NULL,NULL,'Xã'),
	 (258,'Quảng Phú',NULL,NULL,NULL,'Xã'),
	 (258,'Quảng Tâm',NULL,NULL,NULL,'Xã'),
	 (258,'Quảng Thắng',NULL,NULL,NULL,'Xã'),
	 (258,'Quảng Thành',NULL,NULL,NULL,'Xã'),
	 (258,'Quảng Thịnh',NULL,NULL,NULL,'Xã'),
	 (258,'Tân Sơn',NULL,NULL,NULL,'Phường'),
	 (258,'Tào Xuyên',NULL,NULL,NULL,'Phường'),
	 (258,'Thành Trọng',NULL,NULL,NULL,'Xã'),
	 (258,'Thiệu Dương',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (258,'Thiệu Khánh',NULL,NULL,NULL,'Xã'),
	 (258,'Thiệu Vân',NULL,NULL,NULL,'Xã'),
	 (258,'Trường Thi',NULL,NULL,NULL,'Phường'),
	 (259,'Thiệu Châu',NULL,NULL,NULL,'Xã'),
	 (259,'Thiệu Chính',NULL,NULL,NULL,'Xã'),
	 (259,'Thiệu Công',NULL,NULL,NULL,'Xã'),
	 (259,'Thiệu Đô',NULL,NULL,NULL,'Xã'),
	 (259,'Thiệu Duy',NULL,NULL,NULL,'Xã'),
	 (259,'Thiệu Giang',NULL,NULL,NULL,'Xã'),
	 (259,'Thiệu Giao',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (259,'Thiệu Hòa',NULL,NULL,NULL,'Xã'),
	 (259,'Thiệu Hợp',NULL,NULL,NULL,'Xã'),
	 (259,'Thiệu Long',NULL,NULL,NULL,'Xã'),
	 (259,'Thiệu Lý',NULL,NULL,NULL,'Xã'),
	 (259,'Thiệu Minh',NULL,NULL,NULL,'Xã'),
	 (259,'Thiệu Ngọc',NULL,NULL,NULL,'Xã'),
	 (259,'Thiệu Nguyên',NULL,NULL,NULL,'Xã'),
	 (259,'Thiệu Phú',NULL,NULL,NULL,'Xã'),
	 (259,'Thiệu Phúc',NULL,NULL,NULL,'Xã'),
	 (259,'Thiệu Quang',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (259,'Thiệu Tâm',NULL,NULL,NULL,'Xã'),
	 (259,'Thiệu Tân',NULL,NULL,NULL,'Xã'),
	 (259,'Thiệu Thành',NULL,NULL,NULL,'Xã'),
	 (259,'Thiệu Thịnh',NULL,NULL,NULL,'Xã'),
	 (259,'Thiệu Tiến',NULL,NULL,NULL,'Xã'),
	 (259,'Thiệu Toán',NULL,NULL,NULL,'Xã'),
	 (259,'Thiệu Trung',NULL,NULL,NULL,'Xã'),
	 (259,'Thiệu Vận',NULL,NULL,NULL,'Xã'),
	 (259,'Thiệu Viên',NULL,NULL,NULL,'Xã'),
	 (259,'Thiệu Vũ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (259,'Vạn Hà',NULL,NULL,NULL,'Thị trấn'),
	 (260,'Bắc Lương',NULL,NULL,NULL,'Xã'),
	 (260,'Hạnh Phúc',NULL,NULL,NULL,'Xã'),
	 (260,'Lam Sơn',NULL,NULL,NULL,'Thị trấn'),
	 (260,'Nam Giang',NULL,NULL,NULL,'Xã'),
	 (260,'Phú Yên',NULL,NULL,NULL,'Xã'),
	 (260,'Quảng Phú',NULL,NULL,NULL,'Xã'),
	 (260,'Sao Vàng',NULL,NULL,NULL,'Thị trấn'),
	 (260,'Tây Hồ',NULL,NULL,NULL,'Xã'),
	 (260,'Thọ Diên',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (260,'Thọ Hải',NULL,NULL,NULL,'Xã'),
	 (260,'Thọ Lâm',NULL,NULL,NULL,'Xã'),
	 (260,'Thọ Lập',NULL,NULL,NULL,'Xã'),
	 (260,'Thọ Lộc',NULL,NULL,NULL,'Xã'),
	 (260,'Thọ Minh',NULL,NULL,NULL,'Xã'),
	 (260,'Thọ Nguyên',NULL,NULL,NULL,'Xã'),
	 (260,'Thọ Thắng',NULL,NULL,NULL,'Xã'),
	 (260,'Thọ Trường',NULL,NULL,NULL,'Xã'),
	 (260,'Thọ Xuân',NULL,NULL,NULL,'Thị trấn'),
	 (260,'Thọ Xương',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (260,'Xuân Bái',NULL,NULL,NULL,'Xã'),
	 (260,'Xuân Châu',NULL,NULL,NULL,'Xã'),
	 (260,'Xuân Giang',NULL,NULL,NULL,'Xã'),
	 (260,'Xuân Hòa',NULL,NULL,NULL,'Xã'),
	 (260,'Xuân Hưng',NULL,NULL,NULL,'Xã'),
	 (260,'Xuân Khánh',NULL,NULL,NULL,'Xã'),
	 (260,'Xuân Lai',NULL,NULL,NULL,'Xã'),
	 (260,'Xuân Lam',NULL,NULL,NULL,'Xã'),
	 (260,'Xuân Lập',NULL,NULL,NULL,'Xã'),
	 (260,'Xuân Minh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (260,'Xuân Phong',NULL,NULL,NULL,'Xã'),
	 (260,'Xuân Phú',NULL,NULL,NULL,'Xã'),
	 (260,'Xuân Quang',NULL,NULL,NULL,'Xã'),
	 (260,'Xuân Sơn',NULL,NULL,NULL,'Xã'),
	 (260,'Xuân Tân',NULL,NULL,NULL,'Xã'),
	 (260,'Xuân Thắng',NULL,NULL,NULL,'Xã'),
	 (260,'Xuân Thành',NULL,NULL,NULL,'Xã'),
	 (260,'Xuân Thiên',NULL,NULL,NULL,'Xã'),
	 (260,'Xuân Tín',NULL,NULL,NULL,'Xã'),
	 (260,'Xuân Trường',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (260,'Xuân Vinh',NULL,NULL,NULL,'Xã'),
	 (260,'Xuân Yên',NULL,NULL,NULL,'Xã'),
	 (261,'Bát Mọt',NULL,NULL,NULL,'Xã'),
	 (261,'Luận Khê',NULL,NULL,NULL,'Xã'),
	 (261,'Luận Thành',NULL,NULL,NULL,'Xã'),
	 (261,'Lương Sơn',NULL,NULL,NULL,'Xã'),
	 (261,'Ngọc Phụng',NULL,NULL,NULL,'Xã'),
	 (261,'Tân Thành',NULL,NULL,NULL,'Xã'),
	 (261,'Thọ Thanh',NULL,NULL,NULL,'Xã'),
	 (261,'Thường Xuân',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (261,'Vạn Xuân',NULL,NULL,NULL,'Xã'),
	 (261,'Xuân Cẩm',NULL,NULL,NULL,'Xã'),
	 (261,'Xuân Cao',NULL,NULL,NULL,'Xã'),
	 (261,'Xuân Chinh',NULL,NULL,NULL,'Xã'),
	 (261,'Xuân Dương',NULL,NULL,NULL,'Xã'),
	 (261,'Xuân Lẹ',NULL,NULL,NULL,'Xã'),
	 (261,'Xuân Lộc',NULL,NULL,NULL,'Xã'),
	 (261,'Xuân Thắng',NULL,NULL,NULL,'Xã'),
	 (261,'Yên Nhân',NULL,NULL,NULL,'Xã'),
	 (262,'Anh Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (262,'Bình Minh',NULL,NULL,NULL,'Xã'),
	 (262,'Các Sơn',NULL,NULL,NULL,'Xã'),
	 (262,'Định Hải',NULL,NULL,NULL,'Xã'),
	 (262,'Hải An',NULL,NULL,NULL,'Xã'),
	 (262,'Hải Bình',NULL,NULL,NULL,'Xã'),
	 (262,'Hải Châu',NULL,NULL,NULL,'Xã'),
	 (262,'Hải Hà',NULL,NULL,NULL,'Xã'),
	 (262,'Hải Hòa',NULL,NULL,NULL,'Xã'),
	 (262,'Hải Lĩnh',NULL,NULL,NULL,'Xã'),
	 (262,'Hải Nhân',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (262,'Hải Ninh',NULL,NULL,NULL,'Xã'),
	 (262,'Hải Thanh',NULL,NULL,NULL,'Xã'),
	 (262,'Hải Thượng',NULL,NULL,NULL,'Xã'),
	 (262,'Hải Yến',NULL,NULL,NULL,'Xã'),
	 (262,'Hùng Sơn',NULL,NULL,NULL,'Xã'),
	 (262,'Mai Lâm',NULL,NULL,NULL,'Xã'),
	 (262,'Nghi Sơn',NULL,NULL,NULL,'Xã'),
	 (262,'Ngọc Lĩnh',NULL,NULL,NULL,'Xã'),
	 (262,'Nguyên Bình',NULL,NULL,NULL,'Xã'),
	 (262,'Ninh Hải',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (262,'Phú Lâm',NULL,NULL,NULL,'Xã'),
	 (262,'Phú Sơn',NULL,NULL,NULL,'Xã'),
	 (262,'Tân Dân',NULL,NULL,NULL,'Xã'),
	 (262,'Tân Trường',NULL,NULL,NULL,'Xã'),
	 (262,'Thanh Sơn',NULL,NULL,NULL,'Xã'),
	 (262,'Thanh Thủy',NULL,NULL,NULL,'Xã'),
	 (262,'Tĩnh Gia',NULL,NULL,NULL,'Thị trấn'),
	 (262,'Tĩnh Hải',NULL,NULL,NULL,'Xã'),
	 (262,'Triêu Dương',NULL,NULL,NULL,'Xã'),
	 (262,'Trúc Lâm',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (262,'Trường Lâm',NULL,NULL,NULL,'Xã'),
	 (262,'Tùng Lâm',NULL,NULL,NULL,'Xã'),
	 (262,'Xuân Lâm',NULL,NULL,NULL,'Xã'),
	 (263,'An Nông',NULL,NULL,NULL,'Xã'),
	 (263,'Bình Sơn',NULL,NULL,NULL,'Xã'),
	 (263,'Dân Lực',NULL,NULL,NULL,'Xã'),
	 (263,'Dân Lý',NULL,NULL,NULL,'Xã'),
	 (263,'Dân Quyền',NULL,NULL,NULL,'Xã'),
	 (263,'Đồng Lợi',NULL,NULL,NULL,'Xã'),
	 (263,'Đồng Thắng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (263,'Đồng Tiến',NULL,NULL,NULL,'Xã'),
	 (263,'Hợp lý',NULL,NULL,NULL,'Xã'),
	 (263,'Hợp Thắng',NULL,NULL,NULL,'Xã'),
	 (263,'Hợp Thành',NULL,NULL,NULL,'Xã'),
	 (263,'Hợp Tiến',NULL,NULL,NULL,'Xã'),
	 (263,'Khuyến Nông',NULL,NULL,NULL,'Xã'),
	 (263,'Minh Châu',NULL,NULL,NULL,'Xã'),
	 (263,'Minh Dân',NULL,NULL,NULL,'Xã'),
	 (263,'Minh Sơn',NULL,NULL,NULL,'Xã'),
	 (263,'Nông Trường',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (263,'Tân Ninh',NULL,NULL,NULL,'Xã'),
	 (263,'Thái Hoà',NULL,NULL,NULL,'Xã'),
	 (263,'Thọ Bình',NULL,NULL,NULL,'Xã'),
	 (263,'Thọ Cường',NULL,NULL,NULL,'Xã'),
	 (263,'Thọ Dân',NULL,NULL,NULL,'Xã'),
	 (263,'Thọ Ngọc',NULL,NULL,NULL,'Xã'),
	 (263,'Thọ Phú',NULL,NULL,NULL,'Xã'),
	 (263,'Thọ Sơn',NULL,NULL,NULL,'Xã'),
	 (263,'Thọ Tân',NULL,NULL,NULL,'Xã'),
	 (263,'Thọ Thế',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (263,'Thọ Tiến',NULL,NULL,NULL,'Xã'),
	 (263,'Thọ Vực',NULL,NULL,NULL,'Xã'),
	 (263,'Tiến Nông',NULL,NULL,NULL,'Xã'),
	 (263,'Triệu Sơn',NULL,NULL,NULL,'Thị trấn'),
	 (263,'Triệu Thành',NULL,NULL,NULL,'Xã'),
	 (263,'Văn Sơn',NULL,NULL,NULL,'Xã'),
	 (263,'Xuân Lộc',NULL,NULL,NULL,'Xã'),
	 (263,'Xuân Thịnh',NULL,NULL,NULL,'Xã'),
	 (263,'Xuân Thọ',NULL,NULL,NULL,'Xã'),
	 (264,'Vĩnh An',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (264,'Vĩnh Hòa',NULL,NULL,NULL,'Xã'),
	 (264,'Vĩnh Hùng',NULL,NULL,NULL,'Xã'),
	 (264,'Vĩnh Hưng',NULL,NULL,NULL,'Xã'),
	 (264,'Vĩnh Khang',NULL,NULL,NULL,'Xã'),
	 (264,'Vĩnh Lộc',NULL,NULL,NULL,'Thị trấn'),
	 (264,'Vĩnh Long',NULL,NULL,NULL,'Xã'),
	 (264,'Vĩnh Minh',NULL,NULL,NULL,'Xã'),
	 (264,'Vĩnh Ninh',NULL,NULL,NULL,'Xã'),
	 (264,'Vĩnh Phúc',NULL,NULL,NULL,'Xã'),
	 (264,'Vĩnh Quang',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (264,'Vĩnh Tân',NULL,NULL,NULL,'Xã'),
	 (264,'Vĩnh Thành',NULL,NULL,NULL,'Xã'),
	 (264,'Vĩnh Thịnh',NULL,NULL,NULL,'Xã'),
	 (264,'Vĩnh Tiến',NULL,NULL,NULL,'Xã'),
	 (264,'Vĩnh Yên',NULL,NULL,NULL,'Xã'),
	 (265,'Định Bình',NULL,NULL,NULL,'Xã'),
	 (265,'Định Công',NULL,NULL,NULL,'Xã'),
	 (265,'Định Hải',NULL,NULL,NULL,'Xã'),
	 (265,'Định Hòa',NULL,NULL,NULL,'Xã'),
	 (265,'Định Hưng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (265,'Định Liên',NULL,NULL,NULL,'Xã'),
	 (265,'Định Long',NULL,NULL,NULL,'Xã'),
	 (265,'Định Tân',NULL,NULL,NULL,'Xã'),
	 (265,'Định Tăng',NULL,NULL,NULL,'Xã'),
	 (265,'Định Thành',NULL,NULL,NULL,'Xã'),
	 (265,'Định Tiến',NULL,NULL,NULL,'Xã'),
	 (265,'Định Tường',NULL,NULL,NULL,'Xã'),
	 (265,'Kiểu',NULL,NULL,NULL,'Thị trấn'),
	 (265,'Quán Lào',NULL,NULL,NULL,'Thị trấn'),
	 (265,'Quý Lộc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (265,'Thống Nhất',NULL,NULL,NULL,'Thị trấn'),
	 (265,'Yên Bái',NULL,NULL,NULL,'Xã'),
	 (265,'Yên Giang',NULL,NULL,NULL,'Xã'),
	 (265,'Yên Hùng',NULL,NULL,NULL,'Xã'),
	 (265,'Yên Lạc',NULL,NULL,NULL,'Xã'),
	 (265,'Yên Lâm',NULL,NULL,NULL,'Xã'),
	 (265,'Yên Ninh',NULL,NULL,NULL,'Xã'),
	 (265,'Yên Phong',NULL,NULL,NULL,'Xã'),
	 (265,'Yên Phú',NULL,NULL,NULL,'Xã'),
	 (265,'Yên Tâm',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (265,'Yên Thái',NULL,NULL,NULL,'Xã'),
	 (265,'Yên Thịnh',NULL,NULL,NULL,'Xã'),
	 (265,'Yên Thọ',NULL,NULL,NULL,'Xã'),
	 (265,'Yên Trung',NULL,NULL,NULL,'Xã'),
	 (265,'Yên Trường',NULL,NULL,NULL,'Xã'),
	 (266,' Hùng Sơn',NULL,NULL,NULL,'Xã'),
	 (266,' Khai Sơn',NULL,NULL,NULL,'Xã'),
	 (266,' Long Sơn',NULL,NULL,NULL,'Xã'),
	 (266,' Thọ Sơn ',NULL,NULL,NULL,'Xã'),
	 (266,'Anh Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (266,'Bình Sơn ',NULL,NULL,NULL,'Xã'),
	 (266,'Cẩm Sơn ',NULL,NULL,NULL,'Xã'),
	 (266,'Cao Sơn ',NULL,NULL,NULL,'Xã'),
	 (266,'Đỉnh Sơn ',NULL,NULL,NULL,'Xã'),
	 (266,'Đức Sơn ',NULL,NULL,NULL,'Xã'),
	 (266,'Hoa Sơn',NULL,NULL,NULL,'Xã'),
	 (266,'Hội Sơn ',NULL,NULL,NULL,'Xã'),
	 (266,'Lạng Sơn',NULL,NULL,NULL,'Xã'),
	 (266,'Lĩnh Sơn ',NULL,NULL,NULL,'Xã'),
	 (266,'Phúc Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (266,'Tam Sơn',NULL,NULL,NULL,'Xã'),
	 (266,'Tào Sơn ',NULL,NULL,NULL,'Xã'),
	 (266,'Thạch Sơn',NULL,NULL,NULL,'Xã'),
	 (266,'Thành Sơn ',NULL,NULL,NULL,'Xã'),
	 (266,'Tường Sơn ',NULL,NULL,NULL,'Xã'),
	 (266,'Vĩnh Sơn',NULL,NULL,NULL,'Xã'),
	 (267,' Chi Khê',NULL,NULL,NULL,'Xã'),
	 (267,'Bình Chuẩn',NULL,NULL,NULL,'Xã'),
	 (267,'Bồng Khê',NULL,NULL,NULL,'Xã'),
	 (267,'Cam Lâm',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (267,'Châu Khê',NULL,NULL,NULL,'Xã'),
	 (267,'Con Cuông',NULL,NULL,NULL,'Thị trấn'),
	 (267,'Đôn Phục',NULL,NULL,NULL,'Xã'),
	 (267,'Lạng Khê',NULL,NULL,NULL,'Xã'),
	 (267,'Lục Dạ',NULL,NULL,NULL,'Xã'),
	 (267,'Mậu Đức',NULL,NULL,NULL,'Xã'),
	 (267,'Môn Sơn',NULL,NULL,NULL,'Xã'),
	 (267,'Thạch Ngàn',NULL,NULL,NULL,'Xã'),
	 (267,'Yên Khê',NULL,NULL,NULL,'Xã'),
	 (268,'Nghi Hải',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (268,'Nghi Hòa',NULL,NULL,NULL,'Phường'),
	 (268,'Nghi Hương',NULL,NULL,NULL,'Phường'),
	 (268,'Nghi Tân',NULL,NULL,NULL,'Phường'),
	 (268,'Nghi Thu',NULL,NULL,NULL,'Phường'),
	 (268,'Nghi Thủy',NULL,NULL,NULL,'Phường'),
	 (268,'Thu Thủy',NULL,NULL,NULL,'Phường'),
	 (269,'Diễn An',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Bích',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Bình',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Cát',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (269,'Diễn Châu',NULL,NULL,NULL,'Thị trấn'),
	 (269,'Diễn Đoài',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Đồng',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Hải',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Hạnh',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Hoa',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Hoàng',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Hồng',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Hùng',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Kim',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (269,'Diễn Kỷ',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Lâm',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Liên',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Lộc',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Lợi',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Minh',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Mỹ',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Ngọc',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Nguyên',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Phong',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (269,'Diễn Phú',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Phúc',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Quảng',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Tân',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Thái',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Thắng',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Thành',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Tháp',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Thịnh',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Thọ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (269,'Diễn Trung',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Trường',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Vạn',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Xuân',NULL,NULL,NULL,'Xã'),
	 (269,'Diễn Yên',NULL,NULL,NULL,'Xã'),
	 (270,' Lạc Sơn',NULL,NULL,NULL,'Xã'),
	 (270,' Nhân Sơn',NULL,NULL,NULL,'Xã'),
	 (270,' Trù Sơn',NULL,NULL,NULL,'Xã'),
	 (270,'Bắc Sơn',NULL,NULL,NULL,'Xã'),
	 (270,'Bài Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (270,'Bồi Sơn',NULL,NULL,NULL,'Xã'),
	 (270,'Đà Sơn',NULL,NULL,NULL,'Xã'),
	 (270,'Đại Sơn',NULL,NULL,NULL,'Xã'),
	 (270,'Đặng Sơn',NULL,NULL,NULL,'Xã'),
	 (270,'Đô Lương',NULL,NULL,NULL,'Thị trấn'),
	 (270,'Đông Sơn',NULL,NULL,NULL,'Xã'),
	 (270,'Giang Sơn Đông',NULL,NULL,NULL,'Xã'),
	 (270,'Giang Sơn Tây',NULL,NULL,NULL,'Xã'),
	 (270,'Hiến Sơn',NULL,NULL,NULL,'Xã'),
	 (270,'Hòa Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (270,'Hồng Sơn',NULL,NULL,NULL,'Xã'),
	 (270,'Lam Sơn',NULL,NULL,NULL,'Xã'),
	 (270,'Lưu Sơn',NULL,NULL,NULL,'Xã'),
	 (270,'Minh Sơn',NULL,NULL,NULL,'Xã'),
	 (270,'Mỹ Sơn',NULL,NULL,NULL,'Xã'),
	 (270,'Nam Sơn',NULL,NULL,NULL,'Xã'),
	 (270,'Ngọc Sơn',NULL,NULL,NULL,'Xã'),
	 (270,'Quang Sơn',NULL,NULL,NULL,'Xã'),
	 (270,'Tân Sơn',NULL,NULL,NULL,'Xã'),
	 (270,'Thái Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (270,'Thịnh Sơn',NULL,NULL,NULL,'Xã'),
	 (270,'Thuận Sơn',NULL,NULL,NULL,'Xã'),
	 (270,'Thượng Sơn',NULL,NULL,NULL,'Xã'),
	 (270,'Tràng Sơn',NULL,NULL,NULL,'Xã'),
	 (270,'Trung Sơn',NULL,NULL,NULL,'Xã'),
	 (270,'Văn Sơn',NULL,NULL,NULL,'Xã'),
	 (270,'Xuân Sơn',NULL,NULL,NULL,'Xã'),
	 (270,'Yên Sơn',NULL,NULL,NULL,'Xã'),
	 (271,'Mai Hùng',NULL,NULL,NULL,'Xã'),
	 (271,'Quỳnh Dị',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (271,'Quỳnh Lập',NULL,NULL,NULL,'Xã'),
	 (271,'Quỳnh Liên',NULL,NULL,NULL,'Xã'),
	 (271,'Quỳnh Lộc',NULL,NULL,NULL,'Xã'),
	 (271,'Quỳnh Phương',NULL,NULL,NULL,'Xã'),
	 (271,'Quỳnh Thiện',NULL,NULL,NULL,'Xã'),
	 (271,'Quỳnh Trang',NULL,NULL,NULL,'Xã'),
	 (271,'Quỳnh Vinh',NULL,NULL,NULL,'Xã'),
	 (271,'Quỳnh Xuân',NULL,NULL,NULL,'Xã'),
	 (272,' Hưng Lĩnh',NULL,NULL,NULL,'Xã'),
	 (272,' Hưng Mỹ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (272,'Hưng Châu',NULL,NULL,NULL,'Xã'),
	 (272,'Hưng Đạo',NULL,NULL,NULL,'Xã'),
	 (272,'Hưng Khánh',NULL,NULL,NULL,'Xã'),
	 (272,'Hưng Lam',NULL,NULL,NULL,'Xã'),
	 (272,'Hưng Lợi',NULL,NULL,NULL,'Xã'),
	 (272,'Hưng Long',NULL,NULL,NULL,'Xã'),
	 (272,'Hưng Nguyên',NULL,NULL,NULL,'Thị trấn'),
	 (272,'Hưng Nhân',NULL,NULL,NULL,'Xã'),
	 (272,'Hưng Phú',NULL,NULL,NULL,'Xã'),
	 (272,'Hưng Phúc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (272,'Hưng Tân',NULL,NULL,NULL,'Xã'),
	 (272,'Hưng Tây',NULL,NULL,NULL,'Xã'),
	 (272,'Hưng Thắng',NULL,NULL,NULL,'Xã'),
	 (272,'Hưng Thịnh',NULL,NULL,NULL,'Xã'),
	 (272,'Hưng Thông',NULL,NULL,NULL,'Xã'),
	 (272,'Hưng Tiến',NULL,NULL,NULL,'Xã'),
	 (272,'Hưng Trung',NULL,NULL,NULL,'Xã'),
	 (272,'Hưng Xá',NULL,NULL,NULL,'Xã'),
	 (272,'Hưng Xuân',NULL,NULL,NULL,'Xã'),
	 (272,'Hưng Yên Bắc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (272,'Hưng Yên Nam ',NULL,NULL,NULL,'Xã'),
	 (273,' Mường Típ',NULL,NULL,NULL,'Xã'),
	 (273,' Phà Đánh',NULL,NULL,NULL,'Xã'),
	 (273,' Tà Cạ',NULL,NULL,NULL,'Xã'),
	 (273,'Bắc Lý',NULL,NULL,NULL,'Xã'),
	 (273,'Bảo Nam',NULL,NULL,NULL,'Xã'),
	 (273,'Bảo Thắng',NULL,NULL,NULL,'Xã'),
	 (273,'Chiêu Lưu',NULL,NULL,NULL,'Xã'),
	 (273,'Đoọc Mạy',NULL,NULL,NULL,'Xã'),
	 (273,'Huồi Tụ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (273,'Hữu Kiệm',NULL,NULL,NULL,'Xã'),
	 (273,'Hữu Lập',NULL,NULL,NULL,'Xã'),
	 (273,'Keng Đu',NULL,NULL,NULL,'Xã'),
	 (273,'Mường Ải',NULL,NULL,NULL,'Xã'),
	 (273,'Mường Lống',NULL,NULL,NULL,'Xã'),
	 (273,'Mường Xén',NULL,NULL,NULL,'Thị trấn'),
	 (273,'Mỹ Lý',NULL,NULL,NULL,'Xã'),
	 (273,'Na Loi',NULL,NULL,NULL,'Xã'),
	 (273,'Na Ngoi',NULL,NULL,NULL,'Xã'),
	 (273,'Nậm Càn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (273,'Nậm Cắn',NULL,NULL,NULL,'Xã'),
	 (273,'Tây Sơn',NULL,NULL,NULL,'Xã'),
	 (274,' Kim Liên',NULL,NULL,NULL,'Xã'),
	 (274,' Nam Anh',NULL,NULL,NULL,'Xã'),
	 (274,' Nam Trung',NULL,NULL,NULL,'Xã'),
	 (274,'Hồng Long',NULL,NULL,NULL,'Xã'),
	 (274,'Hùng Tiến ',NULL,NULL,NULL,'Xã'),
	 (274,'Khánh Sơn',NULL,NULL,NULL,'Xã'),
	 (274,'Nam Cát',NULL,NULL,NULL,'Xã'),
	 (274,'Nam Cường',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (274,'Nam Đàn',NULL,NULL,NULL,'Thị trấn'),
	 (274,'Nam Giang',NULL,NULL,NULL,'Xã'),
	 (274,'Nam Hưng',NULL,NULL,NULL,'Xã'),
	 (274,'Nam Kim',NULL,NULL,NULL,'Xã'),
	 (274,'Nam Lĩnh',NULL,NULL,NULL,'Xã'),
	 (274,'Nam Lộc',NULL,NULL,NULL,'Xã'),
	 (274,'Nam Nghĩa',NULL,NULL,NULL,'Xã'),
	 (274,'Nam Phúc',NULL,NULL,NULL,'Xã'),
	 (274,'Nam Tân',NULL,NULL,NULL,'Xã'),
	 (274,'Nam Thái',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (274,'Nam Thanh',NULL,NULL,NULL,'Xã'),
	 (274,'Nam Thượng',NULL,NULL,NULL,'Xã'),
	 (274,'Nam Xuân',NULL,NULL,NULL,'Xã'),
	 (274,'Vân Diên',NULL,NULL,NULL,'Xã'),
	 (274,'Xuân Hòa',NULL,NULL,NULL,'Xã'),
	 (274,'Xuân Lâm',NULL,NULL,NULL,'Xã'),
	 (275,' Nghi Tiến',NULL,NULL,NULL,'Xã'),
	 (275,'Nghi Công bắc',NULL,NULL,NULL,'Xã'),
	 (275,'Nghi Công nam',NULL,NULL,NULL,'Xã'),
	 (275,'Nghi Diên',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (275,'Nghi Đồng',NULL,NULL,NULL,'Xã'),
	 (275,'Nghi Hoa',NULL,NULL,NULL,'Xã'),
	 (275,'Nghi Hợp',NULL,NULL,NULL,'Xã'),
	 (275,'Nghi Hưng',NULL,NULL,NULL,'Xã'),
	 (275,'Nghi Khánh',NULL,NULL,NULL,'Xã'),
	 (275,'Nghi Kiều',NULL,NULL,NULL,'Xã'),
	 (275,'Nghi Lâm',NULL,NULL,NULL,'Xã'),
	 (275,'Nghi Liên',NULL,NULL,NULL,'Xã'),
	 (275,'Nghi Long',NULL,NULL,NULL,'Xã'),
	 (275,'Nghi Mỹ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (275,'Nghi Phong',NULL,NULL,NULL,'Xã'),
	 (275,'Nghi Phương',NULL,NULL,NULL,'Xã'),
	 (275,'Nghi Quang',NULL,NULL,NULL,'Xã'),
	 (275,'Nghi Thạch',NULL,NULL,NULL,'Xã'),
	 (275,'Nghi Thái',NULL,NULL,NULL,'Xã'),
	 (275,'Nghi Thiết',NULL,NULL,NULL,'Xã'),
	 (275,'Nghi Thịnh',NULL,NULL,NULL,'Xã'),
	 (275,'Nghi Thuận',NULL,NULL,NULL,'Xã'),
	 (275,'Nghi Trung',NULL,NULL,NULL,'Xã'),
	 (275,'Nghi Trường',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (275,'Nghi Văn',NULL,NULL,NULL,'Xã'),
	 (275,'Nghi Vạn',NULL,NULL,NULL,'Xã'),
	 (275,'Nghi Xá',NULL,NULL,NULL,'Xã'),
	 (275,'Nghi Xuân',NULL,NULL,NULL,'Xã'),
	 (275,'Nghi Yên',NULL,NULL,NULL,'Xã'),
	 (275,'Phúc Thọ',NULL,NULL,NULL,'Xã'),
	 (275,'Quán Hành',NULL,NULL,NULL,'Thị trấn'),
	 (276,'Nghĩa An',NULL,NULL,NULL,'Xã'),
	 (276,'Nghĩa Bình',NULL,NULL,NULL,'Xã'),
	 (276,'Nghĩa Đàn',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (276,'Nghĩa Đức',NULL,NULL,NULL,'Xã'),
	 (276,'Nghĩa Hiếu',NULL,NULL,NULL,'Xã'),
	 (276,'Nghĩa Hội',NULL,NULL,NULL,'Xã'),
	 (276,'Nghĩa Hồng',NULL,NULL,NULL,'Xã'),
	 (276,'Nghĩa Hưng',NULL,NULL,NULL,'Xã'),
	 (276,'Nghĩa Khánh',NULL,NULL,NULL,'Xã'),
	 (276,'Nghĩa Lạc',NULL,NULL,NULL,'Xã'),
	 (276,'Nghĩa Lâm',NULL,NULL,NULL,'Xã'),
	 (276,'Nghĩa Liên',NULL,NULL,NULL,'Xã'),
	 (276,'Nghĩa Lộc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (276,'Nghĩa Lợi',NULL,NULL,NULL,'Xã'),
	 (276,'Nghĩa Long',NULL,NULL,NULL,'Xã'),
	 (276,'Nghĩa Mai',NULL,NULL,NULL,'Xã'),
	 (276,'Nghĩa Minh',NULL,NULL,NULL,'Xã'),
	 (276,'Nghĩa Phú',NULL,NULL,NULL,'Xã'),
	 (276,'Nghĩa Sơn',NULL,NULL,NULL,'Xã'),
	 (276,'Nghĩa Tân',NULL,NULL,NULL,'Xã'),
	 (276,'Nghĩa Thắng',NULL,NULL,NULL,'Xã'),
	 (276,'Nghĩa Thịnh',NULL,NULL,NULL,'Xã'),
	 (276,'Nghĩa Thọ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (276,'Nghĩa Trung',NULL,NULL,NULL,'Xã'),
	 (276,'Nghĩa Yên',NULL,NULL,NULL,'Xã'),
	 (277,'Cắm Muộn',NULL,NULL,NULL,'Xã'),
	 (277,'Châu Kim',NULL,NULL,NULL,'Xã'),
	 (277,'Châu Thôn',NULL,NULL,NULL,'Xã'),
	 (277,'Đồng Văn',NULL,NULL,NULL,'Xã'),
	 (277,'Hạnh Dịch',NULL,NULL,NULL,'Xã'),
	 (277,'Kim Sơn',NULL,NULL,NULL,'Thị trấn'),
	 (277,'Mường Nọc',NULL,NULL,NULL,'Xã'),
	 (277,'Nậm Giải',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (277,'Nậm Nhoóng',NULL,NULL,NULL,'Xã'),
	 (277,'Quang Phong',NULL,NULL,NULL,'Xã'),
	 (277,'Quế Sơn',NULL,NULL,NULL,'Xã'),
	 (277,'Thông Thụ',NULL,NULL,NULL,'Xã'),
	 (277,'Tiền Phong',NULL,NULL,NULL,'Xã'),
	 (277,'Tri Lễ',NULL,NULL,NULL,'Xã'),
	 (278,'Châu Bính',NULL,NULL,NULL,'Xã'),
	 (278,'Châu Bình',NULL,NULL,NULL,'Xã'),
	 (278,'Châu Hạnh',NULL,NULL,NULL,'Xã'),
	 (278,'Châu Hoàn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (278,'Châu Hội',NULL,NULL,NULL,'Xã'),
	 (278,'Châu Nga',NULL,NULL,NULL,'Xã'),
	 (278,'Châu Phong',NULL,NULL,NULL,'Xã'),
	 (278,'Châu Thắng',NULL,NULL,NULL,'Xã'),
	 (278,'Châu Thuận',NULL,NULL,NULL,'Xã'),
	 (278,'Châu Tiến',NULL,NULL,NULL,'Xã'),
	 (278,'Diên Lãm',NULL,NULL,NULL,'Xã'),
	 (278,'Tân Lạc',NULL,NULL,NULL,'Thị trấn'),
	 (279,'Bắc Sơn',NULL,NULL,NULL,'Thị trấn'),
	 (279,'Châu Cường',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (279,'Châu Đình',NULL,NULL,NULL,'Thị trấn'),
	 (279,'Châu Hồng',NULL,NULL,NULL,'Thị trấn'),
	 (279,'Châu Lộc',NULL,NULL,NULL,'Thị trấn'),
	 (279,'Châu Lý',NULL,NULL,NULL,'Thị trấn'),
	 (279,'Châu Quang',NULL,NULL,NULL,'Thị trấn'),
	 (279,'Châu Thái',NULL,NULL,NULL,'Thị trấn'),
	 (279,'Châu Thành',NULL,NULL,NULL,'Thị trấn'),
	 (279,'Châu Tiến',NULL,NULL,NULL,'Thị trấn'),
	 (279,'Đồng Hợp',NULL,NULL,NULL,'Thị trấn'),
	 (279,'Hạ Sơn',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (279,'Liên Hợp',NULL,NULL,NULL,'Thị trấn'),
	 (279,'Minh Hợp',NULL,NULL,NULL,'Thị trấn'),
	 (279,'Nam Sơn',NULL,NULL,NULL,'Thị trấn'),
	 (279,'Nghĩa Xuân',NULL,NULL,NULL,'Thị trấn'),
	 (279,'Quỳ Hợp',NULL,NULL,NULL,'Thị trấn'),
	 (279,'Tam Hợp',NULL,NULL,NULL,'Thị trấn'),
	 (279,'Thọ Hợp',NULL,NULL,NULL,'Thị trấn'),
	 (279,'Văn Lợi',NULL,NULL,NULL,'Thị trấn'),
	 (279,'Yên Hợp',NULL,NULL,NULL,'Thị trấn'),
	 (280,'An Hòa',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (280,'Cầu Giát',NULL,NULL,NULL,'Thị trấn'),
	 (280,'Ngọc Sơn',NULL,NULL,NULL,'Xã'),
	 (280,'Quỳnh Bá',NULL,NULL,NULL,'Xã'),
	 (280,'Quỳnh Bảng',NULL,NULL,NULL,'Xã'),
	 (280,'Quỳnh Châu',NULL,NULL,NULL,'Xã'),
	 (280,'Quỳnh Diện',NULL,NULL,NULL,'Xã'),
	 (280,'Quỳnh Đôi',NULL,NULL,NULL,'Xã'),
	 (280,'Quỳnh Giang',NULL,NULL,NULL,'Xã'),
	 (280,'Quỳnh Hậu',NULL,NULL,NULL,'Xã'),
	 (280,'Quỳnh Hoa',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (280,'Quỳnh Hồng',NULL,NULL,NULL,'Xã'),
	 (280,'Quỳnh Hưng',NULL,NULL,NULL,'Xã'),
	 (280,'Quỳnh Lâm',NULL,NULL,NULL,'Xã'),
	 (280,'Quỳnh Long',NULL,NULL,NULL,'Xã'),
	 (280,'Quỳnh Lương',NULL,NULL,NULL,'Xã'),
	 (280,'Quỳnh Minh',NULL,NULL,NULL,'Xã'),
	 (280,'Quỳnh Mỹ',NULL,NULL,NULL,'Xã'),
	 (280,'Quỳnh Nghĩa',NULL,NULL,NULL,'Xã'),
	 (280,'Quỳnh Ngọc',NULL,NULL,NULL,'Xã'),
	 (280,'Quỳnh Tam',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (280,'Quỳnh Tân',NULL,NULL,NULL,'Xã'),
	 (280,'Quỳnh Thạch',NULL,NULL,NULL,'Xã'),
	 (280,'Quỳnh Thắng',NULL,NULL,NULL,'Xã'),
	 (280,'Quỳnh Thanh',NULL,NULL,NULL,'Xã'),
	 (280,'Quỳnh Thọ',NULL,NULL,NULL,'Xã'),
	 (280,'Quỳnh Thuận',NULL,NULL,NULL,'Xã'),
	 (280,'Quỳnh Văn',NULL,NULL,NULL,'Xã'),
	 (280,'Quỳnh Yên',NULL,NULL,NULL,'Xã'),
	 (280,'Sơn Hải',NULL,NULL,NULL,'Xã'),
	 (280,'Tân Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (280,'Tân Thắng',NULL,NULL,NULL,'Xã'),
	 (280,'Tiến Thủy',NULL,NULL,NULL,'Xã'),
	 (281,'Đồng Văn',NULL,NULL,NULL,'Xã'),
	 (281,'Giai Xuân',NULL,NULL,NULL,'Xã'),
	 (281,'Hương Sơn',NULL,NULL,NULL,'Xã'),
	 (281,'Kỳ Sơn',NULL,NULL,NULL,'Xã'),
	 (281,'Kỳ Tân',NULL,NULL,NULL,'Xã'),
	 (281,'Nghĩa Bình',NULL,NULL,NULL,'Xã'),
	 (281,'Nghĩa Đồng',NULL,NULL,NULL,'Xã'),
	 (281,'Nghĩa Dũng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (281,'Nghĩa Hành',NULL,NULL,NULL,'Xã'),
	 (281,'Nghĩa Hoàn',NULL,NULL,NULL,'Xã'),
	 (281,'Nghĩa Hợp',NULL,NULL,NULL,'Xã'),
	 (281,'Nghĩa Phúc',NULL,NULL,NULL,'Xã'),
	 (281,'Nghĩa Thái',NULL,NULL,NULL,'Xã'),
	 (281,'Phú Sơn',NULL,NULL,NULL,'Xã'),
	 (281,'Tân An',NULL,NULL,NULL,'Xã'),
	 (281,'Tân Hợp',NULL,NULL,NULL,'Xã'),
	 (281,'Tân Hương',NULL,NULL,NULL,'Xã'),
	 (281,'Tân Kỳ',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (281,'Tân Long',NULL,NULL,NULL,'Xã'),
	 (281,'Tân Phú',NULL,NULL,NULL,'Xã'),
	 (281,'Tân Xuân',NULL,NULL,NULL,'Xã'),
	 (281,'Tiên Kỳ',NULL,NULL,NULL,'Xã'),
	 (282,'Đông Hiếu',NULL,NULL,NULL,'Xã'),
	 (282,'Hòa Hiếu',NULL,NULL,NULL,'Phường'),
	 (282,'Long Sơn',NULL,NULL,NULL,'Phường'),
	 (282,'Nghĩa Hòa',NULL,NULL,NULL,'Xã'),
	 (282,'Nghĩa Mỹ',NULL,NULL,NULL,'Xã'),
	 (282,'Nghĩa Thuận',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (282,'Nghĩa Tiến',NULL,NULL,NULL,'Xã'),
	 (282,'Quang Phong',NULL,NULL,NULL,'Phường'),
	 (282,'Quang Tiến',NULL,NULL,NULL,'Phường'),
	 (282,'Tây Hiếu',NULL,NULL,NULL,'Xã'),
	 (283,'Cát Văn',NULL,NULL,NULL,'Xã'),
	 (283,'Đồng Văn',NULL,NULL,NULL,'Xã'),
	 (283,'Dùng',NULL,NULL,NULL,'Thị trấn'),
	 (283,'Hạnh Lâm',NULL,NULL,NULL,'Xã'),
	 (283,'Ngọc Lâm',NULL,NULL,NULL,'Xã'),
	 (283,'Ngọc Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (283,'Phong Thịnh',NULL,NULL,NULL,'Xã'),
	 (283,'Thanh An',NULL,NULL,NULL,'Xã'),
	 (283,'Thanh Chi',NULL,NULL,NULL,'Xã'),
	 (283,'Thanh Chương',NULL,NULL,NULL,'Thị trấn'),
	 (283,'Thanh Đồng',NULL,NULL,NULL,'Xã'),
	 (283,'Thanh Đức',NULL,NULL,NULL,'Xã'),
	 (283,'Thanh Dương',NULL,NULL,NULL,'Xã'),
	 (283,'Thanh Giang',NULL,NULL,NULL,'Xã'),
	 (283,'Thanh Hà',NULL,NULL,NULL,'Xã'),
	 (283,'Thanh Hoà',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (283,'Thanh Hưng',NULL,NULL,NULL,'Xã'),
	 (283,'Thanh Hương',NULL,NULL,NULL,'Xã'),
	 (283,'Thanh Khai',NULL,NULL,NULL,'Xã'),
	 (283,'Thanh Khê',NULL,NULL,NULL,'Xã'),
	 (283,'Thanh Lâm',NULL,NULL,NULL,'Xã'),
	 (283,'Thanh Liên',NULL,NULL,NULL,'Xã'),
	 (283,'Thanh Lĩnh',NULL,NULL,NULL,'Xã'),
	 (283,'Thanh Long',NULL,NULL,NULL,'Xã'),
	 (283,'Thanh Lương',NULL,NULL,NULL,'Xã'),
	 (283,'Thanh Mai',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (283,'Thanh Mỹ',NULL,NULL,NULL,'Xã'),
	 (283,'Thanh Ngọc',NULL,NULL,NULL,'Xã'),
	 (283,'Thanh Nho',NULL,NULL,NULL,'Xã'),
	 (283,'Thanh Phong',NULL,NULL,NULL,'Xã'),
	 (283,'Thanh Sơn',NULL,NULL,NULL,'Xã'),
	 (283,'Thanh Thịnh',NULL,NULL,NULL,'Xã'),
	 (283,'Thanh Thuỷ',NULL,NULL,NULL,'Xã'),
	 (283,'Thanh Tiên',NULL,NULL,NULL,'Xã'),
	 (283,'Thanh Tùng',NULL,NULL,NULL,'Xã'),
	 (283,'Thanh Tường',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (283,'Thanh Văn',NULL,NULL,NULL,'Xã'),
	 (283,'Thanh Xuân',NULL,NULL,NULL,'Xã'),
	 (283,'Thanh Yên',NULL,NULL,NULL,'Xã'),
	 (283,'Võ Liệt',NULL,NULL,NULL,'Xã'),
	 (283,'Xuân Tường',NULL,NULL,NULL,'Xã'),
	 (284,'Hòa Bình',NULL,NULL,NULL,'Thị trấn'),
	 (284,'Hữu Khuông',NULL,NULL,NULL,'Thị trấn'),
	 (284,'Lượng Minh',NULL,NULL,NULL,'Thị trấn'),
	 (284,'Lưu Kiền',NULL,NULL,NULL,'Thị trấn'),
	 (284,'Mai Sơn',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (284,'Nga My',NULL,NULL,NULL,'Thị trấn'),
	 (284,'Nhôn Mai',NULL,NULL,NULL,'Thị trấn'),
	 (284,'Tam Đình',NULL,NULL,NULL,'Thị trấn'),
	 (284,'Tam Hợp',NULL,NULL,NULL,'Thị trấn'),
	 (284,'Tam Quang',NULL,NULL,NULL,'Thị trấn'),
	 (284,'Tam Thái',NULL,NULL,NULL,'Thị trấn'),
	 (284,'Thạch Giám',NULL,NULL,NULL,'Thị trấn'),
	 (284,'Xá Lượng',NULL,NULL,NULL,'Thị trấn'),
	 (284,'Xiêng My',NULL,NULL,NULL,'Thị trấn'),
	 (284,'Yên Hòa',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (284,'Yên Na',NULL,NULL,NULL,'Thị trấn'),
	 (284,'Yên Thắng',NULL,NULL,NULL,'Thị trấn'),
	 (284,'Yên Tĩnh',NULL,NULL,NULL,'Thị trấn'),
	 (285,' Bến Thuỷ',NULL,NULL,NULL,'Phường'),
	 (285,'Cửa Nam',NULL,NULL,NULL,'Phường'),
	 (285,'Đội Cung',NULL,NULL,NULL,'Phường'),
	 (285,'Đông Vĩnh',NULL,NULL,NULL,'Phường'),
	 (285,'Hà Huy Tập',NULL,NULL,NULL,'Phường'),
	 (285,'Hồng Sơn',NULL,NULL,NULL,'Phường'),
	 (285,'Hưng Bình',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (285,'Hưng Chính',NULL,NULL,NULL,'Xã'),
	 (285,'Hưng Đông',NULL,NULL,NULL,'Xã'),
	 (285,'Hưng Dũng',NULL,NULL,NULL,'Phường'),
	 (285,'Hưng Hòa',NULL,NULL,NULL,'Xã'),
	 (285,'Hưng Lộc',NULL,NULL,NULL,'Xã'),
	 (285,'Hưng Phúc',NULL,NULL,NULL,'Phường'),
	 (285,'Hưng Thịnh',NULL,NULL,NULL,'Xã'),
	 (285,'Lê Lợi',NULL,NULL,NULL,'Phường'),
	 (285,'Lê Mao',NULL,NULL,NULL,'Phường'),
	 (285,'Nghi Ân',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (285,'Nghi Đức',NULL,NULL,NULL,'Xã'),
	 (285,'Nghi Kim',NULL,NULL,NULL,'Xã'),
	 (285,'Nghi Liên',NULL,NULL,NULL,'Xã'),
	 (285,'Nghi Phong',NULL,NULL,NULL,'Xã'),
	 (285,'Nghi Phú',NULL,NULL,NULL,'Xã'),
	 (285,'Quán Bàu',NULL,NULL,NULL,'Phường'),
	 (285,'Quang Trung',NULL,NULL,NULL,'Phường'),
	 (285,'Trung Đô',NULL,NULL,NULL,'Phường'),
	 (285,'Trường Thi',NULL,NULL,NULL,'Phường'),
	 (285,'Vinh Tân',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (286,'Bắc Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Bảo Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Công Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Đại Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Đô Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Đồng Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Đức Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Hậu Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Hoa Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Hồng Thành',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (286,'Hợp Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Hùng Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Khánh Dương',NULL,NULL,NULL,'Xã'),
	 (286,'Khánh Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Kim Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Lăng Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Liên Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Long Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Lý Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Mã Thành',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (286,'Minh Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Mỹ Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Nam Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Nhân Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Phú Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Phúc Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Quang Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Sơn Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Tân Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Tăng Thành',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (286,'Tây Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Thịnh Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Thọ Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Tiến Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Trung Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Văn Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Viên Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Vĩnh Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Xuân Thành',NULL,NULL,NULL,'Xã'),
	 (286,'Yên Thành',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (287,'Bình Minh',NULL,NULL,NULL,'Xã'),
	 (287,'Bình Xuyên',NULL,NULL,NULL,'Xã'),
	 (287,'Cổ Bi',NULL,NULL,NULL,'Xã'),
	 (287,'Hồng Khê',NULL,NULL,NULL,'Xã'),
	 (287,'Hùng Thắng',NULL,NULL,NULL,'Xã'),
	 (287,'Hưng Thịnh',NULL,NULL,NULL,'Xã'),
	 (287,'Kẻ Sặt',NULL,NULL,NULL,'Thị trấn'),
	 (287,'Long Xuyên',NULL,NULL,NULL,'Xã'),
	 (287,'Nhân Quyền',NULL,NULL,NULL,'Xã'),
	 (287,'Tân Hồng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (287,'Tân Việt',NULL,NULL,NULL,'Xã'),
	 (287,'Thái Dương',NULL,NULL,NULL,'Xã'),
	 (287,'Thái Hòa',NULL,NULL,NULL,'Xã'),
	 (287,'Thái Học',NULL,NULL,NULL,'Xã'),
	 (287,'Thúc Kháng',NULL,NULL,NULL,'Xã'),
	 (287,'Tráng Liệt',NULL,NULL,NULL,'Xã'),
	 (287,'Vĩnh Hồng',NULL,NULL,NULL,'Xã'),
	 (287,'Vĩnh Tuy',NULL,NULL,NULL,'Xã'),
	 (288,'Cẩm Điền',NULL,NULL,NULL,'Xã'),
	 (288,'Cẩm Định',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (288,'Cẩm Đoài',NULL,NULL,NULL,'Xã'),
	 (288,'Cẩm Đông',NULL,NULL,NULL,'Xã'),
	 (288,'Cẩm Giàng',NULL,NULL,NULL,'Thị trấn'),
	 (288,'Cẩm Hoàng',NULL,NULL,NULL,'Xã'),
	 (288,'Cẩm Hưng',NULL,NULL,NULL,'Xã'),
	 (288,'Cẩm Phúc',NULL,NULL,NULL,'Xã'),
	 (288,'Cẩm Sơn',NULL,NULL,NULL,'Xã'),
	 (288,'Cẩm Văn',NULL,NULL,NULL,'Xã'),
	 (288,'Cẩm Vũ',NULL,NULL,NULL,'Xã'),
	 (288,'Cao An',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (288,'Đức Chính',NULL,NULL,NULL,'Xã'),
	 (288,'Kim Giang',NULL,NULL,NULL,'Xã'),
	 (288,'Lai Cách',NULL,NULL,NULL,'Thị trấn'),
	 (288,'Lương Điền',NULL,NULL,NULL,'Xã'),
	 (288,'Ngọc Liên',NULL,NULL,NULL,'Xã'),
	 (288,'Tân Trường',NULL,NULL,NULL,'Xã'),
	 (288,'Thạch Lỗi',NULL,NULL,NULL,'Xã'),
	 (289,'An Lạc',NULL,NULL,NULL,'Xã'),
	 (289,'Bắc An',NULL,NULL,NULL,'Phường'),
	 (289,'Bến Tắm',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (289,'Chí Minh',NULL,NULL,NULL,'Phường'),
	 (289,'Cổ Thành',NULL,NULL,NULL,'Xã'),
	 (289,'Cộng Hòa',NULL,NULL,NULL,'Phường'),
	 (289,'Đồng Lạc',NULL,NULL,NULL,'Xã'),
	 (289,'Hoàng Hoa Thám',NULL,NULL,NULL,'Phường'),
	 (289,'Hoàng Tân',NULL,NULL,NULL,'Phường'),
	 (289,'Hoàng Tiến',NULL,NULL,NULL,'Xã'),
	 (289,'Hưng Đạo',NULL,NULL,NULL,'Xã'),
	 (289,'Kênh Giang',NULL,NULL,NULL,'Xã'),
	 (289,'Lê Lợi',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (289,'Nhân Huệ',NULL,NULL,NULL,'Xã'),
	 (289,'Phả Lại',NULL,NULL,NULL,'Phường'),
	 (289,'Sao Đỏ',NULL,NULL,NULL,'Phường'),
	 (289,'Tân Dân',NULL,NULL,NULL,'Xã'),
	 (289,'Thái Học',NULL,NULL,NULL,'Phường'),
	 (289,'Văn An',NULL,NULL,NULL,'Phường'),
	 (289,'Văn Đức',NULL,NULL,NULL,'Xã'),
	 (290,'Đoàn Thượng',NULL,NULL,NULL,'Xã'),
	 (290,'Đồng Quang',NULL,NULL,NULL,'Xã'),
	 (290,'Đức Xương',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (290,'Gia Hòa',NULL,NULL,NULL,'Xã'),
	 (290,'Gia Khánh',NULL,NULL,NULL,'Xã'),
	 (290,'Gia Lộc',NULL,NULL,NULL,'Thị trấn'),
	 (290,'Gia Lương',NULL,NULL,NULL,'Xã'),
	 (290,'Gia Tân',NULL,NULL,NULL,'Xã'),
	 (290,'Gia Xuyên',NULL,NULL,NULL,'Xã'),
	 (290,'Hoàng Diệu',NULL,NULL,NULL,'Xã'),
	 (290,'Hồng Hưng',NULL,NULL,NULL,'Xã'),
	 (290,'Lê Lợi',NULL,NULL,NULL,'Xã'),
	 (290,'Liên Hồng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (290,'Nhật Tân',NULL,NULL,NULL,'Xã'),
	 (290,'Phạm Trấn',NULL,NULL,NULL,'Xã'),
	 (290,'Phương Hưng',NULL,NULL,NULL,'Xã'),
	 (290,'Quang Minh',NULL,NULL,NULL,'Xã'),
	 (290,'Tân Tiến',NULL,NULL,NULL,'Xã'),
	 (290,'Thống Kênh',NULL,NULL,NULL,'Xã'),
	 (290,'Thống Nhất',NULL,NULL,NULL,'Xã'),
	 (290,'Toàn Thắng',NULL,NULL,NULL,'Xã'),
	 (290,'Trùng Khánh',NULL,NULL,NULL,'Xã'),
	 (290,'Yết Kiêu',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (291,'Ái Quốc',NULL,NULL,NULL,'Xã'),
	 (291,'An Châu',NULL,NULL,NULL,'Xã'),
	 (291,'Bình Hàn',NULL,NULL,NULL,'Phường'),
	 (291,'Cẩm Thượng',NULL,NULL,NULL,'Phường'),
	 (291,'Hải Tân',NULL,NULL,NULL,'Phường'),
	 (291,'Lê Thanh Nghị',NULL,NULL,NULL,'Phường'),
	 (291,'Nam Đồng',NULL,NULL,NULL,'Xã'),
	 (291,'Ngọc Châu',NULL,NULL,NULL,'Phường'),
	 (291,'Nguyễn Trãi',NULL,NULL,NULL,'Phường'),
	 (291,'Nhị Châu',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (291,'Phạm Ngũ Lão',NULL,NULL,NULL,'Phường'),
	 (291,'Quang Trung',NULL,NULL,NULL,'Phường'),
	 (291,'Tân Bình',NULL,NULL,NULL,'Phường'),
	 (291,'Tân Hưng',NULL,NULL,NULL,'Xã'),
	 (291,'Thạch Khôi',NULL,NULL,NULL,'Xã'),
	 (291,'Thanh Bình',NULL,NULL,NULL,'Phường'),
	 (291,'Thượng Đạt',NULL,NULL,NULL,'Xã'),
	 (291,'Trần Hưng Đạo',NULL,NULL,NULL,'Phường'),
	 (291,'Trần Phú',NULL,NULL,NULL,'Phường'),
	 (291,'Tứ Minh',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (291,'Việt Hòa',NULL,NULL,NULL,'Phường'),
	 (292,'Bình Dân',NULL,NULL,NULL,'Xã'),
	 (292,'Cẩm La',NULL,NULL,NULL,'Xã'),
	 (292,'Cổ Dũng',NULL,NULL,NULL,'Xã'),
	 (292,'Cộng Hòa',NULL,NULL,NULL,'Xã'),
	 (292,'Đại Đức',NULL,NULL,NULL,'Xã'),
	 (292,'Đồng Gia',NULL,NULL,NULL,'Xã'),
	 (292,'Kim Anh',NULL,NULL,NULL,'Xã'),
	 (292,'Kim Đính',NULL,NULL,NULL,'Xã'),
	 (292,'Kim Khê',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (292,'Kim Lương',NULL,NULL,NULL,'Xã'),
	 (292,'Kim Tân',NULL,NULL,NULL,'Xã'),
	 (292,'Kim Xuyên',NULL,NULL,NULL,'Xã'),
	 (292,'Lai Vu',NULL,NULL,NULL,'Xã'),
	 (292,'Liên Hòa',NULL,NULL,NULL,'Xã'),
	 (292,'Ngũ Phúc',NULL,NULL,NULL,'Xã'),
	 (292,'Phú Thái',NULL,NULL,NULL,'Thị trấn'),
	 (292,'Phúc Thành A',NULL,NULL,NULL,'Xã'),
	 (292,'Tam Kỳ',NULL,NULL,NULL,'Xã'),
	 (292,'Thượng Vũ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (292,'Tuấn Hưng',NULL,NULL,NULL,'Xã'),
	 (292,'Việt Hưng',NULL,NULL,NULL,'Xã'),
	 (293,'An Phụ',NULL,NULL,NULL,'Xã'),
	 (293,'An Sinh',NULL,NULL,NULL,'Xã'),
	 (293,'Bạch Đằng',NULL,NULL,NULL,'Xã'),
	 (293,'Duy Tân',NULL,NULL,NULL,'Xã'),
	 (293,'Hiến Thành',NULL,NULL,NULL,'Xã'),
	 (293,'Hiệp An',NULL,NULL,NULL,'Xã'),
	 (293,'Hiệp Hòa',NULL,NULL,NULL,'Xã'),
	 (293,'Hiệp Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (293,'Hoành Sơn',NULL,NULL,NULL,'Xã'),
	 (293,'Hưng Đạo',NULL,NULL,NULL,'Xã'),
	 (293,'Kinh Môn',NULL,NULL,NULL,'Thị trấn'),
	 (293,'Lạc Long',NULL,NULL,NULL,'Xã'),
	 (293,'Lê Ninh',NULL,NULL,NULL,'Xã'),
	 (293,'Long Xuyên',NULL,NULL,NULL,'Xã'),
	 (293,'Minh Hòa',NULL,NULL,NULL,'Xã'),
	 (293,'Minh Tân',NULL,NULL,NULL,'Thị trấn'),
	 (293,'Phạm Mệnh',NULL,NULL,NULL,'Xã'),
	 (293,'Phú Thứ',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (293,'Phúc Thành B',NULL,NULL,NULL,'Xã'),
	 (293,'Quang Trung',NULL,NULL,NULL,'Xã'),
	 (293,'Tân Dân',NULL,NULL,NULL,'Xã'),
	 (293,'Thái Hòa',NULL,NULL,NULL,'Xã'),
	 (293,'Thái Sơn',NULL,NULL,NULL,'Xã'),
	 (293,'Thái Thịnh',NULL,NULL,NULL,'Xã'),
	 (293,'Thăng Long',NULL,NULL,NULL,'Xã'),
	 (293,'Thất Hùng',NULL,NULL,NULL,'Xã'),
	 (293,'Thượng Quận',NULL,NULL,NULL,'Xã'),
	 (294,'An Bình',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (294,'An Lâm',NULL,NULL,NULL,'Xã'),
	 (294,'An Sơn',NULL,NULL,NULL,'Xã'),
	 (294,'Cộng Hòa',NULL,NULL,NULL,'Xã'),
	 (294,'Đồng Lạc',NULL,NULL,NULL,'Xã'),
	 (294,'Hiệp Cát',NULL,NULL,NULL,'Xã'),
	 (294,'Hồng Phong',NULL,NULL,NULL,'Xã'),
	 (294,'Hợp Tiến',NULL,NULL,NULL,'Xã'),
	 (294,'Minh Tân',NULL,NULL,NULL,'Xã'),
	 (294,'Nam Chính',NULL,NULL,NULL,'Xã'),
	 (294,'Nam Hồng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (294,'Nam Hưng',NULL,NULL,NULL,'Xã'),
	 (294,'Nam Sách',NULL,NULL,NULL,'Thị trấn'),
	 (294,'Nam Tân',NULL,NULL,NULL,'Xã'),
	 (294,'Nam Trung',NULL,NULL,NULL,'Xã'),
	 (294,'Phú Điền',NULL,NULL,NULL,'Xã'),
	 (294,'Quốc Tuấn',NULL,NULL,NULL,'Xã'),
	 (294,'Thái Tân',NULL,NULL,NULL,'Xã'),
	 (294,'Thanh Quang',NULL,NULL,NULL,'Xã'),
	 (295,'An Đức',NULL,NULL,NULL,'Xã'),
	 (295,'Đồng Tâm',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (295,'Đông Xuyên',NULL,NULL,NULL,'Xã'),
	 (295,'Hiệp Lực',NULL,NULL,NULL,'Xã'),
	 (295,'Hoàng Hanh',NULL,NULL,NULL,'Xã'),
	 (295,'Hồng Dụ',NULL,NULL,NULL,'Xã'),
	 (295,'Hồng Đức',NULL,NULL,NULL,'Xã'),
	 (295,'Hồng Phong',NULL,NULL,NULL,'Xã'),
	 (295,'Hồng Phúc',NULL,NULL,NULL,'Xã'),
	 (295,'Hồng Thái',NULL,NULL,NULL,'Xã'),
	 (295,'Hưng Long',NULL,NULL,NULL,'Xã'),
	 (295,'Hưng Thái',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (295,'Kiến Quốc',NULL,NULL,NULL,'Xã'),
	 (295,'Nghĩa An',NULL,NULL,NULL,'Xã'),
	 (295,'Ninh Giang',NULL,NULL,NULL,'Thị trấn'),
	 (295,'Ninh Hải',NULL,NULL,NULL,'Xã'),
	 (295,'Ninh Hoà',NULL,NULL,NULL,'Xã'),
	 (295,'Ninh Thành',NULL,NULL,NULL,'Xã'),
	 (295,'Quang Hưng',NULL,NULL,NULL,'Xã'),
	 (295,'Quyết Thắng',NULL,NULL,NULL,'Xã'),
	 (295,'Tân Hương',NULL,NULL,NULL,'Xã'),
	 (295,'Tân Phong',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (295,'Tân Quang',NULL,NULL,NULL,'Xã'),
	 (295,'Ứng Hoè',NULL,NULL,NULL,'Xã'),
	 (295,'Văn Giang',NULL,NULL,NULL,'Xã'),
	 (295,'Văn Hội',NULL,NULL,NULL,'Xã'),
	 (295,'Vạn Phúc',NULL,NULL,NULL,'Xã'),
	 (295,'Vĩnh Hoà',NULL,NULL,NULL,'Xã'),
	 (296,'An Lương',NULL,NULL,NULL,'Xã'),
	 (296,'Cẩm Chế',NULL,NULL,NULL,'Xã'),
	 (296,'Hồng Lạc',NULL,NULL,NULL,'Xã'),
	 (296,'Hợp Đức',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (296,'Liên Mạc',NULL,NULL,NULL,'Xã'),
	 (296,'Phượng Hoàng',NULL,NULL,NULL,'Xã'),
	 (296,'Quyết Thắng',NULL,NULL,NULL,'Xã'),
	 (296,'Tân An',NULL,NULL,NULL,'Xã'),
	 (296,'Tân Việt',NULL,NULL,NULL,'Xã'),
	 (296,'Thanh An',NULL,NULL,NULL,'Xã'),
	 (296,'Thanh Bính',NULL,NULL,NULL,'Xã'),
	 (296,'Thanh Cường',NULL,NULL,NULL,'Xã'),
	 (296,'Thanh Hà',NULL,NULL,NULL,'Xã'),
	 (296,'Thanh Hải',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (296,'Thanh Hồng',NULL,NULL,NULL,'Xã'),
	 (296,'Thanh Khê',NULL,NULL,NULL,'Xã'),
	 (296,'Thanh Lang',NULL,NULL,NULL,'Xã'),
	 (296,'Thanh Sơn',NULL,NULL,NULL,'Xã'),
	 (296,'Thanh Thuỷ',NULL,NULL,NULL,'Xã'),
	 (296,'Thanh Xá',NULL,NULL,NULL,'Xã'),
	 (296,'Thanh Xuân',NULL,NULL,NULL,'Xã'),
	 (296,'Tiền Tiến',NULL,NULL,NULL,'Xã'),
	 (296,'Trường Thành',NULL,NULL,NULL,'Xã'),
	 (296,'Việt Hồng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (296,'Vĩnh Lập',NULL,NULL,NULL,'Xã'),
	 (297,'Cao Thắng',NULL,NULL,NULL,'Xã'),
	 (297,'Chi Lăng Bắc',NULL,NULL,NULL,'Xã'),
	 (297,'Chi Lăng Nam',NULL,NULL,NULL,'Xã'),
	 (297,'Diên Hồng',NULL,NULL,NULL,'Xã'),
	 (297,'Đoàn Kết',NULL,NULL,NULL,'Xã'),
	 (297,'Đoàn Tùng',NULL,NULL,NULL,'Xã'),
	 (297,'Hồng Quang',NULL,NULL,NULL,'Xã'),
	 (297,'Hùng Sơn',NULL,NULL,NULL,'Xã'),
	 (297,'Lam Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (297,'Lê Hồng',NULL,NULL,NULL,'Xã'),
	 (297,'Ngô Quyền',NULL,NULL,NULL,'Xã'),
	 (297,'Ngũ Hùng',NULL,NULL,NULL,'Xã'),
	 (297,'Phạm Kha',NULL,NULL,NULL,'Xã'),
	 (297,'Tân Trào',NULL,NULL,NULL,'Xã'),
	 (297,'Thanh Giang',NULL,NULL,NULL,'Xã'),
	 (297,'Thanh Miện',NULL,NULL,NULL,'Thị trấn'),
	 (297,'Thanh Tùng',NULL,NULL,NULL,'Xã'),
	 (297,'Tiền Phong',NULL,NULL,NULL,'Xã'),
	 (297,'Tứ Cường',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (298,'An Thanh',NULL,NULL,NULL,'Xã'),
	 (298,'Bình Lãng',NULL,NULL,NULL,'Xã'),
	 (298,'Cộng Lạc',NULL,NULL,NULL,'Xã'),
	 (298,'Đại Đồng',NULL,NULL,NULL,'Xã'),
	 (298,'Đại Hợp',NULL,NULL,NULL,'Xã'),
	 (298,'Dân Chủ',NULL,NULL,NULL,'Xã'),
	 (298,'Đông Kỳ',NULL,NULL,NULL,'Xã'),
	 (298,'Hà Kỳ',NULL,NULL,NULL,'Xã'),
	 (298,'Hà Thanh',NULL,NULL,NULL,'Xã'),
	 (298,'Hưng Đạo',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (298,'Kỳ Sơn',NULL,NULL,NULL,'Xã'),
	 (298,'Minh Đức',NULL,NULL,NULL,'Xã'),
	 (298,'Ngọc Kỳ',NULL,NULL,NULL,'Xã'),
	 (298,'Ngọc Sơn',NULL,NULL,NULL,'Xã'),
	 (298,'Nguyên Giáp',NULL,NULL,NULL,'Xã'),
	 (298,'Phượng Kỳ',NULL,NULL,NULL,'Xã'),
	 (298,'Quang Khải',NULL,NULL,NULL,'Xã'),
	 (298,'Quảng Nghiệp',NULL,NULL,NULL,'Xã'),
	 (298,'Quang Phục',NULL,NULL,NULL,'Xã'),
	 (298,'Quang Trung',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (298,'Tái Sơn',NULL,NULL,NULL,'Xã'),
	 (298,'Tân Kỳ',NULL,NULL,NULL,'Xã'),
	 (298,'Tây Kỳ',NULL,NULL,NULL,'Xã'),
	 (298,'Tiên Động',NULL,NULL,NULL,'Xã'),
	 (298,'Tứ Kỳ',NULL,NULL,NULL,'Thị trấn'),
	 (298,'Tứ Xuyên',NULL,NULL,NULL,'Xã'),
	 (298,'Văn Tố',NULL,NULL,NULL,'Xã'),
	 (299,'An Bình',NULL,NULL,NULL,'Phường'),
	 (299,'An Phú',NULL,NULL,NULL,'Phường'),
	 (299,'An Phước',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (299,'An Tân',NULL,NULL,NULL,'Phường'),
	 (299,'Cửu An',NULL,NULL,NULL,'Xã'),
	 (299,'Ngô Mây',NULL,NULL,NULL,'Phường'),
	 (299,'Song An',NULL,NULL,NULL,'Xã'),
	 (299,'Tây Sơn',NULL,NULL,NULL,'Phường'),
	 (299,'Thành An',NULL,NULL,NULL,'Xã'),
	 (299,'Tú An',NULL,NULL,NULL,'Xã'),
	 (299,'Xuân An',NULL,NULL,NULL,'Xã'),
	 (300,'Cheo Reo',NULL,NULL,NULL,'Phường'),
	 (300,'Chư Băh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (300,'Đoàn Kết',NULL,NULL,NULL,'Phường'),
	 (300,'Hòa Bình',NULL,NULL,NULL,'Phường'),
	 (300,'Ia Rbol',NULL,NULL,NULL,'Xã'),
	 (300,'Ia RTô',NULL,NULL,NULL,'Xã'),
	 (300,'Ia Sao',NULL,NULL,NULL,'Xã'),
	 (300,'Sông Bờ',NULL,NULL,NULL,'Phường'),
	 (301,'Chư Đăng Ya',NULL,NULL,NULL,'Xã'),
	 (301,'Chư Jôr',NULL,NULL,NULL,'Xã'),
	 (301,'Đăk Tơ Ver',NULL,NULL,NULL,'Xã'),
	 (301,'Hà Tây',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (301,'Hòa Phú',NULL,NULL,NULL,'Xã'),
	 (301,'Ia Ka',NULL,NULL,NULL,'Xã'),
	 (301,'Ia Khươl',NULL,NULL,NULL,'Xã'),
	 (301,'Ia Kreng',NULL,NULL,NULL,'Xã'),
	 (301,'Ia Ly',NULL,NULL,NULL,'Xã'),
	 (301,'Ia Mơ Nông',NULL,NULL,NULL,'Xã'),
	 (301,'Ia Nhin',NULL,NULL,NULL,'Xã'),
	 (301,'Ia Phí',NULL,NULL,NULL,'Xã'),
	 (301,'Nghĩa Hòa',NULL,NULL,NULL,'Xã'),
	 (301,'Nghĩa Hưng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (301,'Phú Hòa',NULL,NULL,NULL,'Thị trấn'),
	 (302,'Chư Don',NULL,NULL,NULL,'Xã'),
	 (302,'Ia BLứ',NULL,NULL,NULL,'Xã'),
	 (302,'Ia Dreng',NULL,NULL,NULL,'Xã'),
	 (302,'Ia Hla',NULL,NULL,NULL,'Xã'),
	 (302,'Ia Hrú',NULL,NULL,NULL,'Xã'),
	 (302,'Ia Le',NULL,NULL,NULL,'Xã'),
	 (302,'Ia Phang',NULL,NULL,NULL,'Xã'),
	 (302,'Ia Rong',NULL,NULL,NULL,'Xã'),
	 (302,'Nhơn Hòa',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (303,'Al Bá',NULL,NULL,NULL,'Xã'),
	 (303,'AYun',NULL,NULL,NULL,'Xã'),
	 (303,'Bar Măih',NULL,NULL,NULL,'Xã'),
	 (303,'Bờ Ngoong',NULL,NULL,NULL,'Xã'),
	 (303,'Chư Pơng',NULL,NULL,NULL,'Xã'),
	 (303,'Chư Sê',NULL,NULL,NULL,'Thị trấn'),
	 (303,'Dun',NULL,NULL,NULL,'Xã'),
	 (303,'H Bông',NULL,NULL,NULL,'Xã'),
	 (303,'Ia Blang',NULL,NULL,NULL,'Xã'),
	 (303,'Ia Dreng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (303,'Ia Glai',NULL,NULL,NULL,'Xã'),
	 (303,'Ia Hlốp',NULL,NULL,NULL,'Xã'),
	 (303,'Ia Ko',NULL,NULL,NULL,'Xã'),
	 (303,'Ia Pal',NULL,NULL,NULL,'Xã'),
	 (303,'Ia Tiêm',NULL,NULL,NULL,'Xã'),
	 (303,'Kông Htok',NULL,NULL,NULL,'Xã'),
	 (304,'Bàu Cạn',NULL,NULL,NULL,'Xã'),
	 (304,'Bình Giáo',NULL,NULL,NULL,'Xã'),
	 (304,'Chư Prông',NULL,NULL,NULL,'Thị trấn'),
	 (304,'Ia Bang',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (304,'Ia Băng',NULL,NULL,NULL,'Xã'),
	 (304,'Ia Boòng',NULL,NULL,NULL,'Xã'),
	 (304,'Ia Drang',NULL,NULL,NULL,'Xã'),
	 (304,'Ia Ga',NULL,NULL,NULL,'Xã'),
	 (304,'Ia Kly',NULL,NULL,NULL,'Xã'),
	 (304,'Ia Lâu',NULL,NULL,NULL,'Xã'),
	 (304,'Ia Me',NULL,NULL,NULL,'Xã'),
	 (304,'Ia Mơ',NULL,NULL,NULL,'Xã'),
	 (304,'Ia O',NULL,NULL,NULL,'Xã'),
	 (304,'Ia Phìn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (304,'Ia Pia',NULL,NULL,NULL,'Xã'),
	 (304,'Ia Piơr',NULL,NULL,NULL,'Xã'),
	 (304,'Ia Púch',NULL,NULL,NULL,'Xã'),
	 (304,'Ia Tôr',NULL,NULL,NULL,'Xã'),
	 (304,'Ia Vê',NULL,NULL,NULL,'Xã'),
	 (304,'Thăng Hưng',NULL,NULL,NULL,'Xã'),
	 (305,'A Dơk',NULL,NULL,NULL,'Xã'),
	 (305,'Đak Đoa',NULL,NULL,NULL,'Thị trấn'),
	 (305,'Đăk Krong',NULL,NULL,NULL,'Xã'),
	 (305,'Đăk Sơ Mei',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (305,'GLar',NULL,NULL,NULL,'Xã'),
	 (305,'H'' Neng',NULL,NULL,NULL,'Xã'),
	 (305,'Hà Bầu',NULL,NULL,NULL,'Xã'),
	 (305,'Hà Đông',NULL,NULL,NULL,'Xã'),
	 (305,'Hải Yang',NULL,NULL,NULL,'Xã'),
	 (305,'HNol',NULL,NULL,NULL,'Xã'),
	 (305,'Ia Băng',NULL,NULL,NULL,'Xã'),
	 (305,'Ia Pết',NULL,NULL,NULL,'Xã'),
	 (305,'K'' Dang',NULL,NULL,NULL,'Xã'),
	 (305,'Kon Gang',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (305,'Nam Yang',NULL,NULL,NULL,'Xã'),
	 (305,'Tân Bình',NULL,NULL,NULL,'Xã'),
	 (305,'Trang',NULL,NULL,NULL,'Xã'),
	 (306,'An Thành',NULL,NULL,NULL,'Xã'),
	 (306,'Cư An',NULL,NULL,NULL,'Xã'),
	 (306,'Đak Pơ',NULL,NULL,NULL,'Xã'),
	 (306,'Hà Tam',NULL,NULL,NULL,'Xã'),
	 (306,'Phú An',NULL,NULL,NULL,'Xã'),
	 (306,'Tân An',NULL,NULL,NULL,'Xã'),
	 (306,'Ya Hội',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (306,'Yang Bắc',NULL,NULL,NULL,'Xã'),
	 (307,'Chư Ty',NULL,NULL,NULL,'Thị trấn'),
	 (307,'Ia  Din',NULL,NULL,NULL,'Xã'),
	 (307,'Ia Dơk',NULL,NULL,NULL,'Xã'),
	 (307,'Ia Dom',NULL,NULL,NULL,'Xã'),
	 (307,'Ia Kla',NULL,NULL,NULL,'Xã'),
	 (307,'Ia Krêl',NULL,NULL,NULL,'Xã'),
	 (307,'Ia Kriêng',NULL,NULL,NULL,'Xã'),
	 (307,'Ia Lang',NULL,NULL,NULL,'Xã'),
	 (307,'Ia Nan',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (307,'Ia Pnôn',NULL,NULL,NULL,'Xã'),
	 (308,'Ia Bá',NULL,NULL,NULL,'Xã'),
	 (308,'Ia Chia',NULL,NULL,NULL,'Xã'),
	 (308,'Ia Dêr',NULL,NULL,NULL,'Xã'),
	 (308,'Ia Grăng',NULL,NULL,NULL,'Xã'),
	 (308,'Ia Hrung',NULL,NULL,NULL,'Xã'),
	 (308,'Ia Kha',NULL,NULL,NULL,'Thị trấn'),
	 (308,'Ia Khai',NULL,NULL,NULL,'Xã'),
	 (308,'Ia Krai',NULL,NULL,NULL,'Xã'),
	 (308,'Ia O',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (308,'Ia Pếch',NULL,NULL,NULL,'Xã'),
	 (308,'Ia Sao',NULL,NULL,NULL,'Xã'),
	 (308,'Ia Tô',NULL,NULL,NULL,'Xã'),
	 (308,'Ia Yok',NULL,NULL,NULL,'Xã'),
	 (309,'Chư Mố',NULL,NULL,NULL,'Xã'),
	 (309,'Chư Răng',NULL,NULL,NULL,'Xã'),
	 (309,'Ia Broăi',NULL,NULL,NULL,'Xã'),
	 (309,'Ia Kdăm',NULL,NULL,NULL,'Xã'),
	 (309,'Ia Mrơn',NULL,NULL,NULL,'Xã'),
	 (309,'Ia Pa',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (309,'Ia Trôk',NULL,NULL,NULL,'Xã'),
	 (309,'Ia Tul',NULL,NULL,NULL,'Xã'),
	 (309,'Kim Tân',NULL,NULL,NULL,'Xã'),
	 (309,'Pờ tó',NULL,NULL,NULL,'Xã'),
	 (310,'Đắk HLơ',NULL,NULL,NULL,'Xã'),
	 (310,'Đắk Rong',NULL,NULL,NULL,'Xã'),
	 (310,'Đắk Smar',NULL,NULL,NULL,'Xã'),
	 (310,'Đông',NULL,NULL,NULL,'Xã'),
	 (310,'KBang',NULL,NULL,NULL,'Thị trấn'),
	 (310,'Kon PNe',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (310,'Kông Lơng Khơng',NULL,NULL,NULL,'Xã'),
	 (310,'Kông PLa',NULL,NULL,NULL,'Xã'),
	 (310,'KRong',NULL,NULL,NULL,'Xã'),
	 (310,'Lơ Ku',NULL,NULL,NULL,'Xã'),
	 (310,'Nghĩa An',NULL,NULL,NULL,'Xã'),
	 (310,'Sơ Pai',NULL,NULL,NULL,'Xã'),
	 (310,'Sơn Lang',NULL,NULL,NULL,'Xã'),
	 (310,'Tơ Tung',NULL,NULL,NULL,'Xã'),
	 (311,'An Trung',NULL,NULL,NULL,'Xã'),
	 (311,'Chơ Long',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (311,'Chư Krêy',NULL,NULL,NULL,'Xã'),
	 (311,'Đăk Kơ Ning',NULL,NULL,NULL,'Xã'),
	 (311,'Đắk Pling',NULL,NULL,NULL,'Xã'),
	 (311,'Đăk Pơ Pho',NULL,NULL,NULL,'Xã'),
	 (311,'Đắk Sông',NULL,NULL,NULL,'Xã'),
	 (311,'Đắk Tơ Pang',NULL,NULL,NULL,'Xã'),
	 (311,'Kông Chro',NULL,NULL,NULL,'Thị trấn'),
	 (311,'Kông Yang',NULL,NULL,NULL,'Xã'),
	 (311,'Sró',NULL,NULL,NULL,'Xã'),
	 (311,'Ya Ma',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (311,'Yang Nam',NULL,NULL,NULL,'Xã'),
	 (311,'Yang Trung',NULL,NULL,NULL,'Xã'),
	 (312,'Chư Drăng',NULL,NULL,NULL,'Xã'),
	 (312,'Chư Gu',NULL,NULL,NULL,'Xã'),
	 (312,'Chư Ngọc',NULL,NULL,NULL,'Xã'),
	 (312,'Chư Rcăm',NULL,NULL,NULL,'Xã'),
	 (312,'Đất Bằng',NULL,NULL,NULL,'Xã'),
	 (312,'Ia Hdreh',NULL,NULL,NULL,'Xã'),
	 (312,'Ia Mlah',NULL,NULL,NULL,'Xã'),
	 (312,'Ia Rmok',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (312,'Ia Rsai',NULL,NULL,NULL,'Xã'),
	 (312,'Ia Rsươm',NULL,NULL,NULL,'Xã'),
	 (312,'Krông Năng',NULL,NULL,NULL,'Xã'),
	 (312,'Phú Cần',NULL,NULL,NULL,'Xã'),
	 (312,'Phú Túc',NULL,NULL,NULL,'Thị trấn'),
	 (312,'Uar',NULL,NULL,NULL,'Xã'),
	 (313,'Ayun',NULL,NULL,NULL,'Xã'),
	 (313,'Ðăk Drjăng',NULL,NULL,NULL,'Xã'),
	 (313,'Ðak Jơ Ta',NULL,NULL,NULL,'Xã'),
	 (313,'Ðak Ta Ley',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (313,'Ðăk Trôi',NULL,NULL,NULL,'Xã'),
	 (313,'Ðăk Yă',NULL,NULL,NULL,'Xã'),
	 (313,'Ðê Ar',NULL,NULL,NULL,'Xã'),
	 (313,'Hra',NULL,NULL,NULL,'Xã'),
	 (313,'Kon Chiêng',NULL,NULL,NULL,'Xã'),
	 (313,'Kon Dơng',NULL,NULL,NULL,'Thị trấn'),
	 (313,'Kon Thụp',NULL,NULL,NULL,'Xã'),
	 (313,'Lo Pang',NULL,NULL,NULL,'Xã'),
	 (314,'Ayun Hạ',NULL,NULL,NULL,'Xã'),
	 (314,'Chrôh Pơnan',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (314,'Chư A Thai',NULL,NULL,NULL,'Xã'),
	 (314,'Ia Ake',NULL,NULL,NULL,'Xã'),
	 (314,'Ia Hiao',NULL,NULL,NULL,'Xã'),
	 (314,'Ia Peng',NULL,NULL,NULL,'Xã'),
	 (314,'Ia Piar',NULL,NULL,NULL,'Xã'),
	 (314,'Ia Sol',NULL,NULL,NULL,'Xã'),
	 (314,'Ia Yeng',NULL,NULL,NULL,'Xã'),
	 (314,'Phú Thiện',NULL,NULL,NULL,'Thị trấn'),
	 (315,'An Phú',NULL,NULL,NULL,'Xã'),
	 (315,'Biển Hồ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (315,'Chi Lăng',NULL,NULL,NULL,'Phường'),
	 (315,'Chư Á',NULL,NULL,NULL,'Xã'),
	 (315,'Chư HDrông',NULL,NULL,NULL,'Xã'),
	 (315,'Diên Hồng',NULL,NULL,NULL,'Phường'),
	 (315,'Diên Phú',NULL,NULL,NULL,'Xã'),
	 (315,'Đống Đa',NULL,NULL,NULL,'Phường'),
	 (315,'Gào',NULL,NULL,NULL,'Xã'),
	 (315,'Hoa Lư',NULL,NULL,NULL,'Phường'),
	 (315,'Hội Phú',NULL,NULL,NULL,'Phường'),
	 (315,'Hội Thương',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (315,'Ia Kênh',NULL,NULL,NULL,'Xã'),
	 (315,'Ia Kring­',NULL,NULL,NULL,'Phường'),
	 (315,'Phù Đổng',NULL,NULL,NULL,'Phường'),
	 (315,'Tân Sơn',NULL,NULL,NULL,'Xã'),
	 (315,'Tây Sơn',NULL,NULL,NULL,'Phường'),
	 (315,'Thắng Lợi',NULL,NULL,NULL,'Phường'),
	 (315,'Thống Nhất',NULL,NULL,NULL,'Phường'),
	 (315,'Trà Bá',NULL,NULL,NULL,'Phường'),
	 (315,'Trà Đa',NULL,NULL,NULL,'Xã'),
	 (315,'Yên Đỗ',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (315,'Yên Thế',NULL,NULL,NULL,'Phường'),
	 (316,'An Lộc',NULL,NULL,NULL,'Phường'),
	 (316,'An Phú',NULL,NULL,NULL,'Xã'),
	 (316,'Hưng Chiến',NULL,NULL,NULL,'Phường'),
	 (316,'Phú Đức',NULL,NULL,NULL,'Phường'),
	 (316,'Phú Thịnh',NULL,NULL,NULL,'Phường'),
	 (316,'Thanh Lương',NULL,NULL,NULL,'Xã'),
	 (316,'Thanh Phú',NULL,NULL,NULL,'Xã'),
	 (317,'Bình Minh',NULL,NULL,NULL,'Xã'),
	 (317,'Bom Bo',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (317,'Đắk Nhau',NULL,NULL,NULL,'Xã'),
	 (317,'Đăng Hà',NULL,NULL,NULL,'Xã'),
	 (317,'Đoàn Kết',NULL,NULL,NULL,'Xã'),
	 (317,'Đồng Nai',NULL,NULL,NULL,'Xã'),
	 (317,'Đức Liễu',NULL,NULL,NULL,'Xã'),
	 (317,'Đức Phong',NULL,NULL,NULL,'Thị trấn'),
	 (317,'Đường 10',NULL,NULL,NULL,'Xã'),
	 (317,'Minh Hưng',NULL,NULL,NULL,'Xã'),
	 (317,'Nghĩa Bình',NULL,NULL,NULL,'Xã'),
	 (317,'Nghĩa Trung',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (317,'Phú Sơn',NULL,NULL,NULL,'Xã'),
	 (317,'Phước Sơn',NULL,NULL,NULL,'Xã'),
	 (317,'Thọ Sơn',NULL,NULL,NULL,'Xã'),
	 (317,'Thống Nhất',NULL,NULL,NULL,'Xã'),
	 (318,'Hưng Phước',NULL,NULL,NULL,'Xã'),
	 (318,'Phước Thiện',NULL,NULL,NULL,'Xã'),
	 (318,'Tân Thành',NULL,NULL,NULL,'Xã'),
	 (318,'Tân Tiến',NULL,NULL,NULL,'Xã'),
	 (318,'Thanh Bình',NULL,NULL,NULL,'Thị trấn'),
	 (318,'Thanh Hoà',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (318,'Thiện Hưng',NULL,NULL,NULL,'Xã'),
	 (319,'Bình Thắng',NULL,NULL,NULL,'Xã'),
	 (319,'Bù Gia Mập',NULL,NULL,NULL,'Xã'),
	 (319,'Đa Kia',NULL,NULL,NULL,'Xã'),
	 (319,'Đắk Ơ',NULL,NULL,NULL,'Xã'),
	 (319,'Đức Hạnh',NULL,NULL,NULL,'Xã'),
	 (319,'Đức Phước',NULL,NULL,NULL,'Xã'),
	 (319,'Đức Văn',NULL,NULL,NULL,'Xã'),
	 (319,'Phú Nghĩa',NULL,NULL,NULL,'Xã'),
	 (319,'Phú Văn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (319,'Phước Minh',NULL,NULL,NULL,'Xã'),
	 (320,'Chơn Thành',NULL,NULL,NULL,'Thị trấn'),
	 (320,'Minh Hưng',NULL,NULL,NULL,'Xã'),
	 (320,'Minh Lập',NULL,NULL,NULL,'Xã'),
	 (320,'Minh Long',NULL,NULL,NULL,'Xã'),
	 (320,'Minh Thắng',NULL,NULL,NULL,'Xã'),
	 (320,'Minh Thành',NULL,NULL,NULL,'Xã'),
	 (320,'Nha Bích',NULL,NULL,NULL,'Xã'),
	 (320,'Quang Minh',NULL,NULL,NULL,'Xã'),
	 (320,'Thành Tâm',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (321,'Đồng Tâm',NULL,NULL,NULL,'Xã'),
	 (321,'Đồng Tiến',NULL,NULL,NULL,'Xã'),
	 (321,'Tân Hòa',NULL,NULL,NULL,'Xã'),
	 (321,'Tân Hưng',NULL,NULL,NULL,'Xã'),
	 (321,'Tân Lập',NULL,NULL,NULL,'Xã'),
	 (321,'Tân Lợi',NULL,NULL,NULL,'Xã'),
	 (321,'Tân phú',NULL,NULL,NULL,'Thị trấn'),
	 (321,'Tân Phước',NULL,NULL,NULL,'Xã'),
	 (321,'Tân Tiến',NULL,NULL,NULL,'Xã'),
	 (321,'Thuận Lợi',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (321,'Thuận Phú',NULL,NULL,NULL,'Xã'),
	 (322,'Tân Bình',NULL,NULL,NULL,'Phường'),
	 (322,'Tân Đồng',NULL,NULL,NULL,'Phường'),
	 (322,'Tân Phú',NULL,NULL,NULL,'Phường'),
	 (322,'Tân Thành',NULL,NULL,NULL,'Xã'),
	 (322,'Tân Thiện',NULL,NULL,NULL,'Phường'),
	 (322,'Tân Xuân',NULL,NULL,NULL,'Phường'),
	 (322,'Tiến Hưng',NULL,NULL,NULL,'Xã'),
	 (322,'Tiến Thành',NULL,NULL,NULL,'Xã'),
	 (323,'An Khương',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (323,'An Phú',NULL,NULL,NULL,'Xã'),
	 (323,'Đồng Nơ',NULL,NULL,NULL,'Xã'),
	 (323,'Minh Đức',NULL,NULL,NULL,'Xã'),
	 (323,'Minh Tâm',NULL,NULL,NULL,'Xã'),
	 (323,'Phước An',NULL,NULL,NULL,'Xã'),
	 (323,'Tân Hiệp',NULL,NULL,NULL,'Xã'),
	 (323,'Tân Hưng',NULL,NULL,NULL,'Xã'),
	 (323,'Tân Khai',NULL,NULL,NULL,'Xã'),
	 (323,'Tân Lợi',NULL,NULL,NULL,'Xã'),
	 (323,'Tân Quan',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (323,'Thanh An',NULL,NULL,NULL,'Xã'),
	 (323,'Thanh Bình',NULL,NULL,NULL,'Xã'),
	 (324,'Lộc An',NULL,NULL,NULL,'Xã'),
	 (324,'Lộc Điền',NULL,NULL,NULL,'Xã'),
	 (324,'Lộc Hiệp',NULL,NULL,NULL,'Xã'),
	 (324,'Lộc Hoà',NULL,NULL,NULL,'Xã'),
	 (324,'Lộc Hưng',NULL,NULL,NULL,'Xã'),
	 (324,'Lộc Khánh',NULL,NULL,NULL,'Xã'),
	 (324,'Lộc Ninh',NULL,NULL,NULL,'Thị trấn'),
	 (324,'Lộc Phú',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (324,'Lộc Quang',NULL,NULL,NULL,'Xã'),
	 (324,'Lộc Tấn',NULL,NULL,NULL,'Xã'),
	 (324,'Lộc Thái',NULL,NULL,NULL,'Xã'),
	 (324,'Lộc Thành',NULL,NULL,NULL,'Xã'),
	 (324,'Lộc Thạnh',NULL,NULL,NULL,'Xã'),
	 (324,'Lộc Thiện',NULL,NULL,NULL,'Xã'),
	 (324,'Lộc Thịnh',NULL,NULL,NULL,'Xã'),
	 (324,'Lộc Thuận',NULL,NULL,NULL,'Xã'),
	 (325,'Bình Sơn',NULL,NULL,NULL,'Xã'),
	 (325,'Bình Tân',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (325,'Bù Nho',NULL,NULL,NULL,'Xã'),
	 (325,'Long Bình',NULL,NULL,NULL,'Xã'),
	 (325,'Long Hà',NULL,NULL,NULL,'Xã'),
	 (325,'Long Hưng',NULL,NULL,NULL,'Xã'),
	 (325,'Long Tân',NULL,NULL,NULL,'Xã'),
	 (325,'Phú Riềng',NULL,NULL,NULL,'Xã'),
	 (325,'Phú Trung',NULL,NULL,NULL,'Xã'),
	 (325,'Phước Tân',NULL,NULL,NULL,'Xã'),
	 (326,'Long Giang',NULL,NULL,NULL,'Xã'),
	 (326,'Long Phước',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (326,'Long Thủy',NULL,NULL,NULL,'Phường'),
	 (326,'Phước Bình',NULL,NULL,NULL,'Phường'),
	 (326,'Phước Tín',NULL,NULL,NULL,'Xã'),
	 (326,'Sơn Giang',NULL,NULL,NULL,'Phường'),
	 (326,'Thác Mơ',NULL,NULL,NULL,'Phường'),
	 (327,' Hồng Quang',NULL,NULL,NULL,'Xã'),
	 (327,'Ân Thi',NULL,NULL,NULL,'Thị trấn'),
	 (327,'Bắc Sơn',NULL,NULL,NULL,'Xã'),
	 (327,'Bãi Sậy',NULL,NULL,NULL,'Xã'),
	 (327,'Cẩm Ninh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (327,'Đa Lộc',NULL,NULL,NULL,'Xã'),
	 (327,'Đặng Lễ',NULL,NULL,NULL,'Xã'),
	 (327,'Đào Dương',NULL,NULL,NULL,'Xã'),
	 (327,'Hạ Lễ',NULL,NULL,NULL,'Xã'),
	 (327,'Hồ Tùng Mậu',NULL,NULL,NULL,'Xã'),
	 (327,'Hoàng Hoa Thám',NULL,NULL,NULL,'Xã'),
	 (327,'Hồng Vân',NULL,NULL,NULL,'Xã'),
	 (327,'Nguyễn Trãi',NULL,NULL,NULL,'Xã'),
	 (327,'Phù Ủng',NULL,NULL,NULL,'Xã'),
	 (327,'Quảng Lãng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (327,'Quang Vinh',NULL,NULL,NULL,'Xã'),
	 (327,'Tân Phúc',NULL,NULL,NULL,'Xã'),
	 (327,'Tiền Phong',NULL,NULL,NULL,'Xã'),
	 (327,'Vân Du',NULL,NULL,NULL,'Xã'),
	 (327,'Văn Nhuệ',NULL,NULL,NULL,'Xã'),
	 (327,'Xuân Trúc',NULL,NULL,NULL,'Xã'),
	 (328,' Lam Sơn',NULL,NULL,NULL,'Phường'),
	 (328,' Lê Lợi',NULL,NULL,NULL,'Phường'),
	 (328,' Liên Phương',NULL,NULL,NULL,'Xã'),
	 (328,' Trung Nghĩa',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (328,'An Tảo',NULL,NULL,NULL,'Phường'),
	 (328,'Bảo Khê',NULL,NULL,NULL,'Xã'),
	 (328,'Hiến Nam',NULL,NULL,NULL,'Phường'),
	 (328,'Hoàng Hanh',NULL,NULL,NULL,'Xã'),
	 (328,'Hồng Châu',NULL,NULL,NULL,'Phường'),
	 (328,'Hồng Nam',NULL,NULL,NULL,'Xã'),
	 (328,'Hùng Cường',NULL,NULL,NULL,'Xã'),
	 (328,'Minh Khai',NULL,NULL,NULL,'Phường'),
	 (328,'Phú Cường',NULL,NULL,NULL,'Xã'),
	 (328,'Phương Chiểu',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (328,'Quảng Châu',NULL,NULL,NULL,'Xã'),
	 (328,'Quang Trung',NULL,NULL,NULL,'Phường'),
	 (328,'Tân Hưng',NULL,NULL,NULL,'Xã'),
	 (329,' Chí Tân',NULL,NULL,NULL,'Xã'),
	 (329,' Đại Hưng',NULL,NULL,NULL,'Xã'),
	 (329,' Nhuế Dương',NULL,NULL,NULL,'Xã'),
	 (329,' Thành Công',NULL,NULL,NULL,'Xã'),
	 (329,' Việt Hòa',NULL,NULL,NULL,'Xã'),
	 (329,'An Vĩ',NULL,NULL,NULL,'Xã'),
	 (329,'Bình Kiều',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (329,'Bình Minh',NULL,NULL,NULL,'Xã'),
	 (329,'Dạ Trạch',NULL,NULL,NULL,'Xã'),
	 (329,'Đại Tập',NULL,NULL,NULL,'Xã'),
	 (329,'Dân Tiến',NULL,NULL,NULL,'Xã'),
	 (329,'Đông Kết',NULL,NULL,NULL,'Xã'),
	 (329,'Đông Ninh',NULL,NULL,NULL,'Xã'),
	 (329,'Đông Tảo',NULL,NULL,NULL,'Xã'),
	 (329,'Đồng Tiến',NULL,NULL,NULL,'Xã'),
	 (329,'Hàm Tử',NULL,NULL,NULL,'Xã'),
	 (329,'Hồng Tiến',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (329,'Khoái Châu',NULL,NULL,NULL,'Thị trấn'),
	 (329,'Liên Khê',NULL,NULL,NULL,'Xã'),
	 (329,'Ông Đình',NULL,NULL,NULL,'Xã'),
	 (329,'Phùng Hưng',NULL,NULL,NULL,'Xã'),
	 (329,'Tân Châu',NULL,NULL,NULL,'Xã'),
	 (329,'Tân Dân',NULL,NULL,NULL,'Xã'),
	 (329,'Thuần Hưng',NULL,NULL,NULL,'Xã'),
	 (329,'Tứ Dân',NULL,NULL,NULL,'Xã'),
	 (330,'Chính Nghĩa',NULL,NULL,NULL,'Xã'),
	 (330,'Đồng Thanh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (330,'Đức Hợp',NULL,NULL,NULL,'Xã'),
	 (330,'Hiệp Cường',NULL,NULL,NULL,'Xã'),
	 (330,'Hùng An',NULL,NULL,NULL,'Xã'),
	 (330,'Lương Bằng',NULL,NULL,NULL,'Thị trấn'),
	 (330,'Mai Động',NULL,NULL,NULL,'Xã'),
	 (330,'Nghĩa Dân',NULL,NULL,NULL,'Xã'),
	 (330,'Ngọc Thanh',NULL,NULL,NULL,'Xã'),
	 (330,'Nhân La',NULL,NULL,NULL,'Xã'),
	 (330,'Phạm Ngũ Lão',NULL,NULL,NULL,'Xã'),
	 (330,'Phú Thịnh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (330,'Song Mai',NULL,NULL,NULL,'Xã'),
	 (330,'Thọ Vinh',NULL,NULL,NULL,'Xã'),
	 (330,'Toàn Thắng',NULL,NULL,NULL,'Xã'),
	 (330,'Vĩnh Xá',NULL,NULL,NULL,'Xã'),
	 (330,'Vũ Xá',NULL,NULL,NULL,'Xã'),
	 (331,'Bạch Sam',NULL,NULL,NULL,'Xã'),
	 (331,'Bần Yên Nhân',NULL,NULL,NULL,'Thị trấn'),
	 (331,'Cẩm Xá',NULL,NULL,NULL,'Xã'),
	 (331,'Dị Sử',NULL,NULL,NULL,'Xã'),
	 (331,'Dương Quang',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (331,'Hòa Phong',NULL,NULL,NULL,'Xã'),
	 (331,'Hưng Long',NULL,NULL,NULL,'Xã'),
	 (331,'Minh Đức',NULL,NULL,NULL,'Xã'),
	 (331,'Ngọc Lâm',NULL,NULL,NULL,'Xã'),
	 (331,'Nhân Hòa',NULL,NULL,NULL,'Xã'),
	 (331,'Phan Đình Phùng',NULL,NULL,NULL,'Xã'),
	 (331,'Phùng Chí Kiên',NULL,NULL,NULL,'Xã'),
	 (331,'Xuân Dục',NULL,NULL,NULL,'Xã'),
	 (332,' Tống Trân',NULL,NULL,NULL,'Xã'),
	 (332,'Đình Cao',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (332,'Đoàn Đào',NULL,NULL,NULL,'Xã'),
	 (332,'Minh Hoàng',NULL,NULL,NULL,'Xã'),
	 (332,'Minh Tân',NULL,NULL,NULL,'Xã'),
	 (332,'Minh Tiến',NULL,NULL,NULL,'Xã'),
	 (332,'Nguyên Hoà',NULL,NULL,NULL,'Xã'),
	 (332,'Nhật Quang',NULL,NULL,NULL,'Xã'),
	 (332,'Phan Sào Nam',NULL,NULL,NULL,'Xã'),
	 (332,'Quang Hưng',NULL,NULL,NULL,'Xã'),
	 (332,'Tam Đa',NULL,NULL,NULL,'Xã'),
	 (332,'Tiên Tiến',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (332,'Tống Phan',NULL,NULL,NULL,'Xã'),
	 (332,'Trần Cao',NULL,NULL,NULL,'Thị trấn'),
	 (333,'An Viên',NULL,NULL,NULL,'Xã'),
	 (333,'Cương Chính',NULL,NULL,NULL,'Xã'),
	 (333,'Dị Chế',NULL,NULL,NULL,'Xã'),
	 (333,'Đức Thắng',NULL,NULL,NULL,'Xã'),
	 (333,'Hải Triều',NULL,NULL,NULL,'Xã'),
	 (333,'Hưng Đạo',NULL,NULL,NULL,'Xã'),
	 (333,'Lệ Xá',NULL,NULL,NULL,'Xã'),
	 (333,'Minh Phượng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (333,'Ngô Quyền',NULL,NULL,NULL,'Xã'),
	 (333,'Nhật Tân',NULL,NULL,NULL,'Xã'),
	 (333,'Thiện Phiến',NULL,NULL,NULL,'Xã'),
	 (333,'Thủ Sỹ',NULL,NULL,NULL,'Xã'),
	 (333,'Thụy Lôi',NULL,NULL,NULL,'Xã'),
	 (333,'Trung Dũng',NULL,NULL,NULL,'Xã'),
	 (333,'Vương',NULL,NULL,NULL,'Thị trấn'),
	 (334,' Mễ Sở',NULL,NULL,NULL,'Xã'),
	 (334,'Cửu Cao',NULL,NULL,NULL,'Xã'),
	 (334,'Liên Nghĩa',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (334,'Long Hưng',NULL,NULL,NULL,'Xã'),
	 (334,'Nghĩa Trụ',NULL,NULL,NULL,'Xã'),
	 (334,'Phụng Công',NULL,NULL,NULL,'Xã'),
	 (334,'Tân Tiến',NULL,NULL,NULL,'Xã'),
	 (334,'Thắng Lợi',NULL,NULL,NULL,'Xã'),
	 (334,'Văn Giang',NULL,NULL,NULL,'Thị trấn'),
	 (334,'Vĩnh Khúc',NULL,NULL,NULL,'Xã'),
	 (334,'Xuân Quan',NULL,NULL,NULL,'Xã'),
	 (335,' Lương Tài',NULL,NULL,NULL,'Xã'),
	 (335,' Việt Hưng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (335,'Chỉ Đạo',NULL,NULL,NULL,'Xã'),
	 (335,'Đại Đồng',NULL,NULL,NULL,'Xã'),
	 (335,'Đình Dù',NULL,NULL,NULL,'Xã'),
	 (335,'Lạc Đạo',NULL,NULL,NULL,'Xã'),
	 (335,'Lạc Hồng',NULL,NULL,NULL,'Xã'),
	 (335,'Minh Hải',NULL,NULL,NULL,'Xã'),
	 (335,'Như Quỳnh',NULL,NULL,NULL,'Thị trấn'),
	 (335,'Tân Quang',NULL,NULL,NULL,'Xã'),
	 (335,'Trưng Trắc',NULL,NULL,NULL,'Xã'),
	 (336,' Yên Hòa',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (336,'Đồng Than',NULL,NULL,NULL,'Xã'),
	 (336,'Giai Phạm',NULL,NULL,NULL,'Xã'),
	 (336,'Hoàn Long',NULL,NULL,NULL,'Xã'),
	 (336,'Liêu Xá',NULL,NULL,NULL,'Xã'),
	 (336,'Lý Thường Kiệt',NULL,NULL,NULL,'Xã'),
	 (336,'Minh Châu',NULL,NULL,NULL,'Xã'),
	 (336,'Nghĩa Hiệp',NULL,NULL,NULL,'Xã'),
	 (336,'Ngọc Long',NULL,NULL,NULL,'Xã'),
	 (336,'Tân Lập',NULL,NULL,NULL,'Xã'),
	 (336,'Tân Việt',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (336,'Thanh Long',NULL,NULL,NULL,'Xã'),
	 (336,'Trai Trang',NULL,NULL,NULL,'Xã'),
	 (336,'Trung Hòa',NULL,NULL,NULL,'Xã'),
	 (336,'Trung Hưng',NULL,NULL,NULL,'Xã'),
	 (336,'Việt Cường',NULL,NULL,NULL,'Xã'),
	 (336,'Yên Mỹ',NULL,NULL,NULL,'Thị trấn'),
	 (336,'Yên Phú',NULL,NULL,NULL,'Xã'),
	 (337,'An Dũng',NULL,NULL,NULL,'Xã'),
	 (337,'An Hòa',NULL,NULL,NULL,'Xã'),
	 (337,'An Hưng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (337,'An Lão',NULL,NULL,NULL,'Thị trấn'),
	 (337,'An Nghĩa',NULL,NULL,NULL,'Xã'),
	 (337,'An Quang',NULL,NULL,NULL,'Xã'),
	 (337,'An Tân',NULL,NULL,NULL,'Xã'),
	 (337,'An Toàn',NULL,NULL,NULL,'Xã'),
	 (337,'An Trung',NULL,NULL,NULL,'Xã'),
	 (337,'An Vinh',NULL,NULL,NULL,'Xã'),
	 (338,'Bình Định',NULL,NULL,NULL,'Phường'),
	 (338,'Đập Đá',NULL,NULL,NULL,'Phường'),
	 (338,'Nhơn An',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (338,'Nhơn Hạnh',NULL,NULL,NULL,'Xã'),
	 (338,'Nhơn Hậu',NULL,NULL,NULL,'Xã'),
	 (338,'Nhơn Hòa',NULL,NULL,NULL,'Phường'),
	 (338,'Nhơn Hưng',NULL,NULL,NULL,'Phường'),
	 (338,'Nhơn Khánh',NULL,NULL,NULL,'Xã'),
	 (338,'Nhơn Lộc',NULL,NULL,NULL,'Xã'),
	 (338,'Nhơn Mỹ',NULL,NULL,NULL,'Xã'),
	 (338,'Nhơn Phong',NULL,NULL,NULL,'Xã'),
	 (338,'Nhơn Phúc',NULL,NULL,NULL,'Xã'),
	 (338,'Nhơn Tân',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (338,'Nhơn Thành',NULL,NULL,NULL,'Phường'),
	 (338,'Nhơn Thọ',NULL,NULL,NULL,'Xã'),
	 (339,'Ân Đức',NULL,NULL,NULL,'Xã'),
	 (339,'Ân Hảo Đông',NULL,NULL,NULL,'Xã'),
	 (339,'Ân Hảo Tây',NULL,NULL,NULL,'Xã'),
	 (339,'Ân Hữu',NULL,NULL,NULL,'Xã'),
	 (339,'Ân Mỹ',NULL,NULL,NULL,'Xã'),
	 (339,'Ân Nghĩa',NULL,NULL,NULL,'Xã'),
	 (339,'Ân Phong',NULL,NULL,NULL,'Xã'),
	 (339,'Ân Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (339,'Ân Thạnh',NULL,NULL,NULL,'Xã'),
	 (339,'Ân Tín',NULL,NULL,NULL,'Xã'),
	 (339,'Ân Tường Đông',NULL,NULL,NULL,'Xã'),
	 (339,'Ân Tường Tây',NULL,NULL,NULL,'Xã'),
	 (339,'BokTơi',NULL,NULL,NULL,'Xã'),
	 (339,'ĐakMang',NULL,NULL,NULL,'Xã'),
	 (339,'Tăng Bạt Hổ',NULL,NULL,NULL,'Thị trấn'),
	 (340,'Bồng Sơn',NULL,NULL,NULL,'Thị trấn'),
	 (340,'Hoài Châu',NULL,NULL,NULL,'Xã'),
	 (340,'Hoài Châu Bắc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (340,'Hoài Đức',NULL,NULL,NULL,'Xã'),
	 (340,'Hoài Hải',NULL,NULL,NULL,'Xã'),
	 (340,'Hoài Hảo',NULL,NULL,NULL,'Xã'),
	 (340,'Hoài Hương',NULL,NULL,NULL,'Xã'),
	 (340,'Hoài Mỹ',NULL,NULL,NULL,'Xã'),
	 (340,'Hoài Phú',NULL,NULL,NULL,'Xã'),
	 (340,'Hoài Sơn',NULL,NULL,NULL,'Xã'),
	 (340,'Hoài Tân',NULL,NULL,NULL,'Xã'),
	 (340,'Hoài Thanh',NULL,NULL,NULL,'Xã'),
	 (340,'Hoài Thanh Tây',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (340,'Hoài Xuân',NULL,NULL,NULL,'Xã'),
	 (340,'Tam Quan',NULL,NULL,NULL,'Thị trấn'),
	 (340,'Tam Quan Bắc',NULL,NULL,NULL,'Xã'),
	 (340,'Tam Quan Nam',NULL,NULL,NULL,'Xã'),
	 (341,'Cát Chánh',NULL,NULL,NULL,'Xã'),
	 (341,'Cát Hải',NULL,NULL,NULL,'Xã'),
	 (341,'Cát Hanh',NULL,NULL,NULL,'Xã'),
	 (341,'Cát Hiệp',NULL,NULL,NULL,'Xã'),
	 (341,'Cát Hưng',NULL,NULL,NULL,'Xã'),
	 (341,'Cát Khánh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (341,'Cát Lâm',NULL,NULL,NULL,'Xã'),
	 (341,'Cát Minh',NULL,NULL,NULL,'Xã'),
	 (341,'Cát Nhơn',NULL,NULL,NULL,'Xã'),
	 (341,'Cát Tài',NULL,NULL,NULL,'Xã'),
	 (341,'Cát Thắng',NULL,NULL,NULL,'Xã'),
	 (341,'Cát Thành',NULL,NULL,NULL,'Xã'),
	 (341,'Cát Tiến',NULL,NULL,NULL,'Xã'),
	 (341,'Cát Trinh',NULL,NULL,NULL,'Xã'),
	 (341,'Cát Tường',NULL,NULL,NULL,'Xã'),
	 (341,'Ngô Mây',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (342,'Bình Dương',NULL,NULL,NULL,'Thị trấn'),
	 (342,'Cát Khánh',NULL,NULL,NULL,'Xã'),
	 (342,'Cát Sơn',NULL,NULL,NULL,'Xã'),
	 (342,'Cát Tân',NULL,NULL,NULL,'Xã'),
	 (342,'Mỹ An',NULL,NULL,NULL,'Xã'),
	 (342,'Mỹ Cát',NULL,NULL,NULL,'Xã'),
	 (342,'Mỹ Chánh',NULL,NULL,NULL,'Xã'),
	 (342,'Mỹ Chánh Tây',NULL,NULL,NULL,'Xã'),
	 (342,'Mỹ Châu',NULL,NULL,NULL,'Xã'),
	 (342,'Mỹ Đức',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (342,'Mỹ Hiệp',NULL,NULL,NULL,'Xã'),
	 (342,'Mỹ Hòa',NULL,NULL,NULL,'Xã'),
	 (342,'Mỹ Lộc',NULL,NULL,NULL,'Xã'),
	 (342,'Mỹ Lợi',NULL,NULL,NULL,'Xã'),
	 (342,'Mỹ Phong',NULL,NULL,NULL,'Xã'),
	 (342,'Mỹ Quang',NULL,NULL,NULL,'Xã'),
	 (342,'Mỹ Tài',NULL,NULL,NULL,'Xã'),
	 (342,'Mỹ Thắng',NULL,NULL,NULL,'Xã'),
	 (342,'Mỹ Thành',NULL,NULL,NULL,'Xã'),
	 (342,'Mỹ Thọ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (342,'Mỹ Trinh',NULL,NULL,NULL,'Xã'),
	 (342,'Phù Mỹ',NULL,NULL,NULL,'Thị trấn'),
	 (343,'Bùi Thị Xuân',NULL,NULL,NULL,'Phường'),
	 (343,'Đống Đa',NULL,NULL,NULL,'Phường'),
	 (343,'Ghềnh Ráng',NULL,NULL,NULL,'Phường'),
	 (343,'Hải Cảng',NULL,NULL,NULL,'Phường'),
	 (343,'Lê Hồng Phong',NULL,NULL,NULL,'Phường'),
	 (343,'Lê Lợi',NULL,NULL,NULL,'Phường'),
	 (343,'Lý Thường Kiệt',NULL,NULL,NULL,'Phường'),
	 (343,'Ngô Mây',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (343,'Nguyễn Văn Cừ',NULL,NULL,NULL,'Phường'),
	 (343,'Nhơn Bình',NULL,NULL,NULL,'Xã'),
	 (343,'Nhơn Châu',NULL,NULL,NULL,'Xã'),
	 (343,'Nhơn Hải',NULL,NULL,NULL,'Xã'),
	 (343,'Nhơn Hội',NULL,NULL,NULL,'Xã'),
	 (343,'Nhơn Lý',NULL,NULL,NULL,'Xã'),
	 (343,'Nhơn Phú',NULL,NULL,NULL,'Phường'),
	 (343,'Phước Mỹ',NULL,NULL,NULL,'Xã'),
	 (343,'Quang Trung',NULL,NULL,NULL,'Phường'),
	 (343,'Thị Nại',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (343,'Trần Hưng Đạo',NULL,NULL,NULL,'Phường'),
	 (343,'Trần Phú',NULL,NULL,NULL,'Phường'),
	 (343,'Trần Quang Diệu',NULL,NULL,NULL,'Phường'),
	 (344,'Bình Hòa',NULL,NULL,NULL,'Xã'),
	 (344,'Bình Nghi',NULL,NULL,NULL,'Xã'),
	 (344,'Bình Tân',NULL,NULL,NULL,'Xã'),
	 (344,'Bình Thành',NULL,NULL,NULL,'Xã'),
	 (344,'Bình Thuận',NULL,NULL,NULL,'Xã'),
	 (344,'Bình Tường',NULL,NULL,NULL,'Xã'),
	 (344,'Phú Phong',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (344,'Tây An',NULL,NULL,NULL,'Xã'),
	 (344,'Tây Bình',NULL,NULL,NULL,'Xã'),
	 (344,'Tây Giang',NULL,NULL,NULL,'Xã'),
	 (344,'Tây Phú',NULL,NULL,NULL,'Xã'),
	 (344,'Tây Thuận',NULL,NULL,NULL,'Xã'),
	 (344,'Tây Vinh',NULL,NULL,NULL,'Xã'),
	 (344,'Tây Xuân',NULL,NULL,NULL,'Xã'),
	 (344,'Vĩnh An',NULL,NULL,NULL,'Xã'),
	 (345,'Diêu Trì',NULL,NULL,NULL,'Thị trấn'),
	 (345,'Phước An',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (345,'Phước Hiệp',NULL,NULL,NULL,'Xã'),
	 (345,'Phước Hòa',NULL,NULL,NULL,'Xã'),
	 (345,'Phước Hưng',NULL,NULL,NULL,'Xã'),
	 (345,'Phước Lộc',NULL,NULL,NULL,'Xã'),
	 (345,'Phước Nghĩa',NULL,NULL,NULL,'Xã'),
	 (345,'Phước Quang',NULL,NULL,NULL,'Xã'),
	 (345,'Phước Sơn',NULL,NULL,NULL,'Xã'),
	 (345,'Phước Thắng',NULL,NULL,NULL,'Xã'),
	 (345,'Phước Thành',NULL,NULL,NULL,'Xã'),
	 (345,'Phước Thuận',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (345,'Tuy Phước',NULL,NULL,NULL,'Thị trấn'),
	 (346,'Canh Hiển',NULL,NULL,NULL,'Xã'),
	 (346,'Canh Hiệp',NULL,NULL,NULL,'Xã'),
	 (346,'Canh Hòa',NULL,NULL,NULL,'Xã'),
	 (346,'Canh Liên',NULL,NULL,NULL,'Xã'),
	 (346,'Canh Thuận',NULL,NULL,NULL,'Xã'),
	 (346,'Canh Vinh',NULL,NULL,NULL,'Xã'),
	 (346,'Vân Canh',NULL,NULL,NULL,'Thị trấn'),
	 (347,'Vĩnh Hảo',NULL,NULL,NULL,'Xã'),
	 (347,'Vĩnh Hiệp',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (347,'Vĩnh Hòa',NULL,NULL,NULL,'Xã'),
	 (347,'Vĩnh Kim',NULL,NULL,NULL,'Xã'),
	 (347,'Vĩnh Quang',NULL,NULL,NULL,'Xã'),
	 (347,'Vĩnh Sơn',NULL,NULL,NULL,'Xã'),
	 (347,'Vĩnh Thạnh',NULL,NULL,NULL,'Thị trấn'),
	 (347,'Vĩnh Thịnh',NULL,NULL,NULL,'Xã'),
	 (347,'Vĩnh Thuận',NULL,NULL,NULL,'Xã'),
	 (348,'An Cư',NULL,NULL,NULL,'Xã'),
	 (348,'An Hữu',NULL,NULL,NULL,'Xã'),
	 (348,'An Thái Đông',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (348,'An Thái Trung',NULL,NULL,NULL,'Xã'),
	 (348,'Cái Bè',NULL,NULL,NULL,'Thị trấn'),
	 (348,'Đông Hòa Hiệp',NULL,NULL,NULL,'Xã'),
	 (348,'Hậu Mỹ Bắc A',NULL,NULL,NULL,'Xã'),
	 (348,'Hậu Mỹ Bắc B',NULL,NULL,NULL,'Xã'),
	 (348,'Hậu Mỹ Phú',NULL,NULL,NULL,'Xã'),
	 (348,'Hậu Mỹ Trinh',NULL,NULL,NULL,'Xã'),
	 (348,'Hậu Thành',NULL,NULL,NULL,'Xã'),
	 (348,'Hòa Hưng',NULL,NULL,NULL,'Xã'),
	 (348,'Hòa Khánh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (348,'Mỹ Đức Đông',NULL,NULL,NULL,'Xã'),
	 (348,'Mỹ Đức Tây',NULL,NULL,NULL,'Xã'),
	 (348,'Mỹ Hội',NULL,NULL,NULL,'Xã'),
	 (348,'Mỹ Lợi A',NULL,NULL,NULL,'Xã'),
	 (348,'Mỹ Lợi B',NULL,NULL,NULL,'Xã'),
	 (348,'Mỹ Lương',NULL,NULL,NULL,'Xã'),
	 (348,'Mỹ Tân',NULL,NULL,NULL,'Xã'),
	 (348,'Mỹ Trung',NULL,NULL,NULL,'Xã'),
	 (348,'Tân Hưng',NULL,NULL,NULL,'Xã'),
	 (348,'Tân Thanh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (348,'Thiện Trí',NULL,NULL,NULL,'Xã'),
	 (348,'Thiện Trung',NULL,NULL,NULL,'Xã'),
	 (349,'1',NULL,NULL,NULL,'Phường'),
	 (349,'2',NULL,NULL,NULL,'Phường'),
	 (349,'3',NULL,NULL,NULL,'Phường'),
	 (349,'4',NULL,NULL,NULL,'Phường'),
	 (349,'5',NULL,NULL,NULL,'Phường'),
	 (349,'Long Khánh',NULL,NULL,NULL,'Xã'),
	 (349,'Mỹ Hạnh Đông',NULL,NULL,NULL,'Xã'),
	 (349,'Mỹ Hạnh Tây',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (349,'Mỹ Phước Tây',NULL,NULL,NULL,'Xã'),
	 (349,'Nhi Mỹ',NULL,NULL,NULL,'Phường'),
	 (349,'Nhị Quý',NULL,NULL,NULL,'Xã'),
	 (349,'Phú Quý',NULL,NULL,NULL,'Xã'),
	 (349,'Tân Bình',NULL,NULL,NULL,'Xã'),
	 (349,'Tân Hội',NULL,NULL,NULL,'Xã'),
	 (349,'Tân Phú',NULL,NULL,NULL,'Xã'),
	 (349,'Thanh Hòa',NULL,NULL,NULL,'Xã'),
	 (350,'Bàn Long',NULL,NULL,NULL,'Xã'),
	 (350,'Bình Đức',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (350,'Bình Trưng',NULL,NULL,NULL,'Xã'),
	 (350,'Điềm Hy',NULL,NULL,NULL,'Xã'),
	 (350,'Đông Hòa',NULL,NULL,NULL,'Xã'),
	 (350,'Dưỡng Điềm',NULL,NULL,NULL,'Xã'),
	 (350,'Hựu Đạo',NULL,NULL,NULL,'Xã'),
	 (350,'Kim Sơn',NULL,NULL,NULL,'Xã'),
	 (350,'Long An',NULL,NULL,NULL,'Xã'),
	 (350,'Long Định',NULL,NULL,NULL,'Xã'),
	 (350,'Long Hưng',NULL,NULL,NULL,'Xã'),
	 (350,'Nhị Bình',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (350,'Phú Phong',NULL,NULL,NULL,'Xã'),
	 (350,'Song Thuận',NULL,NULL,NULL,'Xã'),
	 (350,'Tam Hiệp',NULL,NULL,NULL,'Xã'),
	 (350,'Tân Hiệp',NULL,NULL,NULL,'Thị trấn'),
	 (350,'Tân Hội Đông',NULL,NULL,NULL,'Xã'),
	 (350,'Tân Hương',NULL,NULL,NULL,'Xã'),
	 (350,'Tân Lý Đông',NULL,NULL,NULL,'Xã'),
	 (350,'Tân Lý Tây',NULL,NULL,NULL,'Xã'),
	 (350,'Thân Cửu Nghĩa',NULL,NULL,NULL,'Xã'),
	 (350,'Thạnh Phú',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (350,'Vĩnh Kim',NULL,NULL,NULL,'Xã'),
	 (351,'An Thạnh Thủy',NULL,NULL,NULL,'Xã'),
	 (351,'Bình Ninh',NULL,NULL,NULL,'Xã'),
	 (351,'Bình Phan',NULL,NULL,NULL,'Xã'),
	 (351,'Bình Phục Nhứt',NULL,NULL,NULL,'Xã'),
	 (351,'Chợ Gạo',NULL,NULL,NULL,'Thị trấn'),
	 (351,'Đăng Hưng Phước',NULL,NULL,NULL,'Xã'),
	 (351,'Hòa Định',NULL,NULL,NULL,'Xã'),
	 (351,'Hòa Tịnh',NULL,NULL,NULL,'Xã'),
	 (351,'Long Bình Điền',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (351,'Lương Hòa Lạc',NULL,NULL,NULL,'Xã'),
	 (351,'Mỹ Tịnh An',NULL,NULL,NULL,'Xã'),
	 (351,'Phú Kiết',NULL,NULL,NULL,'Xã'),
	 (351,'Quơn Long',NULL,NULL,NULL,'Xã'),
	 (351,'Song Bình',NULL,NULL,NULL,'Xã'),
	 (351,'Tân Bình Thạnh',NULL,NULL,NULL,'Xã'),
	 (351,'Tân Thuận Bình',NULL,NULL,NULL,'Xã'),
	 (351,'Thanh Bình',NULL,NULL,NULL,'Xã'),
	 (351,'Trung Hòa',NULL,NULL,NULL,'Xã'),
	 (351,'Xuân Đông',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (352,'1',NULL,NULL,NULL,'Phường'),
	 (352,'2',NULL,NULL,NULL,'Phường'),
	 (352,'3',NULL,NULL,NULL,'Phường'),
	 (352,'4',NULL,NULL,NULL,'Phường'),
	 (352,'5',NULL,NULL,NULL,'Phường'),
	 (352,'Bình Đông',NULL,NULL,NULL,'Xã'),
	 (352,'Bình Xuân',NULL,NULL,NULL,'Xã'),
	 (352,'Long Chánh',NULL,NULL,NULL,'Xã'),
	 (352,'Long Hòa',NULL,NULL,NULL,'Xã'),
	 (352,'Long Hưng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (352,'Long Thành',NULL,NULL,NULL,'Xã'),
	 (352,'Long Thuận',NULL,NULL,NULL,'Xã'),
	 (352,'Tân Trung',NULL,NULL,NULL,'Xã'),
	 (353,'Bình Ân',NULL,NULL,NULL,'Xã'),
	 (353,'Bình Nghị',NULL,NULL,NULL,'Xã'),
	 (353,'Gia Thuận',NULL,NULL,NULL,'Xã'),
	 (353,'Kiểng Phước',NULL,NULL,NULL,'Xã'),
	 (353,'Phước Trung',NULL,NULL,NULL,'Xã'),
	 (353,'Tân Điền',NULL,NULL,NULL,'Xã'),
	 (353,'Tân Đông',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (353,'Tân Hòa',NULL,NULL,NULL,'Thị trấn'),
	 (353,'Tân Phước',NULL,NULL,NULL,'Xã'),
	 (353,'Tân Tây',NULL,NULL,NULL,'Xã'),
	 (353,'Tân Thành',NULL,NULL,NULL,'Xã'),
	 (353,'Tăng Hòa',NULL,NULL,NULL,'Xã'),
	 (353,'Vàm Láng',NULL,NULL,NULL,'Thị trấn'),
	 (354,'Bình Nhì',NULL,NULL,NULL,'Xã'),
	 (354,'Bình Phú',NULL,NULL,NULL,'Xã'),
	 (354,'Bình Tân',NULL,NULL,NULL,'Xã'),
	 (354,'Đồng Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (354,'Đồng Thạnh',NULL,NULL,NULL,'Xã'),
	 (354,'Long Bình',NULL,NULL,NULL,'Xã'),
	 (354,'Long Vĩnh',NULL,NULL,NULL,'Xã'),
	 (354,'Thành Công',NULL,NULL,NULL,'Xã'),
	 (354,'Thạnh Nhựt',NULL,NULL,NULL,'Xã'),
	 (354,'Thạnh Trị',NULL,NULL,NULL,'Xã'),
	 (354,'Vĩnh Bình',NULL,NULL,NULL,'Thị trấn'),
	 (354,'Vĩnh Hữu',NULL,NULL,NULL,'Xã'),
	 (354,'Yên Luông',NULL,NULL,NULL,'Xã'),
	 (355,'Bình Phú',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (355,'Cai Lậy',NULL,NULL,NULL,'Thị trấn'),
	 (355,'Cẩm Sơn',NULL,NULL,NULL,'Xã'),
	 (355,'Hiệp Đức',NULL,NULL,NULL,'Xã'),
	 (355,'Hội Xuân',NULL,NULL,NULL,'Xã'),
	 (355,'Long Tiên',NULL,NULL,NULL,'Xã'),
	 (355,'Long Trung',NULL,NULL,NULL,'Xã'),
	 (355,'Mỹ Hạnh Trung',NULL,NULL,NULL,'Xã'),
	 (355,'Mỹ Long',NULL,NULL,NULL,'Xã'),
	 (355,'Mỹ Thành Bắc',NULL,NULL,NULL,'Xã'),
	 (355,'Mỹ Thành Nam',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (355,'Ngũ Hiệp',NULL,NULL,NULL,'Xã'),
	 (355,'Nhị Mỹ',NULL,NULL,NULL,'Xã'),
	 (355,'Phú An',NULL,NULL,NULL,'Xã'),
	 (355,'Phú Cường',NULL,NULL,NULL,'Xã'),
	 (355,'Phú Nhuận',NULL,NULL,NULL,'Xã'),
	 (355,'Quý Thạnh',NULL,NULL,NULL,'Xã'),
	 (355,'Tam Bình',NULL,NULL,NULL,'Xã'),
	 (355,'Tân Hội',NULL,NULL,NULL,'Xã'),
	 (355,'Tân Phong',NULL,NULL,NULL,'Xã'),
	 (355,'Thạnh Lộc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (356,'1',NULL,NULL,NULL,'Phường'),
	 (356,'10',NULL,NULL,NULL,'Phường'),
	 (356,'2',NULL,NULL,NULL,'Phường'),
	 (356,'3',NULL,NULL,NULL,'Phường'),
	 (356,'4',NULL,NULL,NULL,'Phường'),
	 (356,'5',NULL,NULL,NULL,'Phường'),
	 (356,'6',NULL,NULL,NULL,'Phường'),
	 (356,'7',NULL,NULL,NULL,'Phường'),
	 (356,'8',NULL,NULL,NULL,'Phường'),
	 (356,'9',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (356,'Đạo Thạnh',NULL,NULL,NULL,'Xã'),
	 (356,'Mỹ Phong',NULL,NULL,NULL,'Xã'),
	 (356,'Phước Thạnh',NULL,NULL,NULL,'Xã'),
	 (356,'Tân Long',NULL,NULL,NULL,'Phường'),
	 (356,'Tân Mỹ Chánh',NULL,NULL,NULL,'Xã'),
	 (356,'Thới Sơn',NULL,NULL,NULL,'Xã'),
	 (356,'Trung An',NULL,NULL,NULL,'Xã'),
	 (357,'Phú Đông',NULL,NULL,NULL,'Xã'),
	 (357,'Phú Tân',NULL,NULL,NULL,'Xã'),
	 (357,'Phú Thạnh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (357,'Tân Phú',NULL,NULL,NULL,'Xã'),
	 (357,'Tân Thạnh',NULL,NULL,NULL,'Xã'),
	 (357,'Tân Thới',NULL,NULL,NULL,'Xã'),
	 (358,'Hưng Thạnh',NULL,NULL,NULL,'Xã'),
	 (358,'Mỹ Phước',NULL,NULL,NULL,'Thị trấn'),
	 (358,'Mỹ Phước',NULL,NULL,NULL,'Xã'),
	 (358,'Phú Mỹ',NULL,NULL,NULL,'Xã'),
	 (358,'Phước Lập',NULL,NULL,NULL,'Xã'),
	 (358,'Tân Hòa Đông',NULL,NULL,NULL,'Xã'),
	 (358,'Tân Hòa Tây',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (358,'Tân Hòa Thành',NULL,NULL,NULL,'Xã'),
	 (358,'Tân Lập 1',NULL,NULL,NULL,'Xã'),
	 (358,'Tân Lập 2',NULL,NULL,NULL,'Xã'),
	 (358,'Thạnh Hòa',NULL,NULL,NULL,'Xã'),
	 (358,'Thạnh Mỹ',NULL,NULL,NULL,'Xã'),
	 (358,'Thạnh Tân',NULL,NULL,NULL,'Xã'),
	 (359,'An Châu',NULL,NULL,NULL,'Xã'),
	 (359,'Bạch Đằng',NULL,NULL,NULL,'Xã'),
	 (359,'Chương Dương',NULL,NULL,NULL,'Xã'),
	 (359,'Đô Lương',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (359,'Đông Á',NULL,NULL,NULL,'Xã'),
	 (359,'Đông Các',NULL,NULL,NULL,'Xã'),
	 (359,'Đông Cường',NULL,NULL,NULL,'Xã'),
	 (359,'Đông Động',NULL,NULL,NULL,'Xã'),
	 (359,'Đông Dương',NULL,NULL,NULL,'Xã'),
	 (359,'Đông Giang',NULL,NULL,NULL,'Xã'),
	 (359,'Đông Hà',NULL,NULL,NULL,'Xã'),
	 (359,'Đông Hoàng',NULL,NULL,NULL,'Xã'),
	 (359,'Đông Hợp',NULL,NULL,NULL,'Xã'),
	 (359,'Đông Hưng',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (359,'Đông Huy',NULL,NULL,NULL,'Xã'),
	 (359,'Đông Kinh',NULL,NULL,NULL,'Xã'),
	 (359,'Đông La',NULL,NULL,NULL,'Xã'),
	 (359,'Đông Lĩnh',NULL,NULL,NULL,'Xã'),
	 (359,'Đông Phong',NULL,NULL,NULL,'Xã'),
	 (359,'Đồng Phú',NULL,NULL,NULL,'Xã'),
	 (359,'Đông Phương',NULL,NULL,NULL,'Xã'),
	 (359,'Đông Quang',NULL,NULL,NULL,'Xã'),
	 (359,'Đông Sơn',NULL,NULL,NULL,'Xã'),
	 (359,'Đông Tân',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (359,'Đông Vinh',NULL,NULL,NULL,'Xã'),
	 (359,'Đông Xá',NULL,NULL,NULL,'Xã'),
	 (359,'Đông Xuân',NULL,NULL,NULL,'Xã'),
	 (359,'Hoa Lư',NULL,NULL,NULL,'Xã'),
	 (359,'Hoa Nam',NULL,NULL,NULL,'Xã'),
	 (359,'Hồng Châu',NULL,NULL,NULL,'Xã'),
	 (359,'Hồng Giang',NULL,NULL,NULL,'Xã'),
	 (359,'Hồng Việt',NULL,NULL,NULL,'Xã'),
	 (359,'Hợp Tiến',NULL,NULL,NULL,'Xã'),
	 (359,'Liên Giang',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (359,'Lô Giang',NULL,NULL,NULL,'Xã'),
	 (359,'Mê Linh',NULL,NULL,NULL,'Xã'),
	 (359,'Minh Châu',NULL,NULL,NULL,'Xã'),
	 (359,'Minh Tân',NULL,NULL,NULL,'Xã'),
	 (359,'Nguyên Xá',NULL,NULL,NULL,'Xã'),
	 (359,'Phong Châu',NULL,NULL,NULL,'Xã'),
	 (359,'Phú Châu',NULL,NULL,NULL,'Xã'),
	 (359,'Phú Lương',NULL,NULL,NULL,'Xã'),
	 (359,'Thăng Long',NULL,NULL,NULL,'Xã'),
	 (359,'Trọng Quan',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (360,'Bắc Sơn',NULL,NULL,NULL,'Xã'),
	 (360,'Canh Tân',NULL,NULL,NULL,'Xã'),
	 (360,'Chí Hòa',NULL,NULL,NULL,'Xã'),
	 (360,'Chi Lăng',NULL,NULL,NULL,'Xã'),
	 (360,'Cộng Hòa',NULL,NULL,NULL,'Xã'),
	 (360,'Dân Chủ',NULL,NULL,NULL,'Xã'),
	 (360,'Điệp Nông',NULL,NULL,NULL,'Xã'),
	 (360,'Đoan Hùng',NULL,NULL,NULL,'Xã'),
	 (360,'Độc Lập',NULL,NULL,NULL,'Xã'),
	 (360,'Đông Đô',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (360,'Duyên Hải',NULL,NULL,NULL,'Xã'),
	 (360,'Hòa Bình',NULL,NULL,NULL,'Xã'),
	 (360,'Hòa Tiến',NULL,NULL,NULL,'Xã'),
	 (360,'Hồng An',NULL,NULL,NULL,'Xã'),
	 (360,'Hồng Lĩnh',NULL,NULL,NULL,'Xã'),
	 (360,'Hồng Minh',NULL,NULL,NULL,'Xã'),
	 (360,'Hùng Dũng',NULL,NULL,NULL,'Xã'),
	 (360,'Hưng Hà',NULL,NULL,NULL,'Thị trấn'),
	 (360,'Hưng Nhân',NULL,NULL,NULL,'Thị trấn'),
	 (360,'Kim Chung',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (360,'Liên Hiệp',NULL,NULL,NULL,'Xã'),
	 (360,'Minh Hòa',NULL,NULL,NULL,'Xã'),
	 (360,'Minh Khai',NULL,NULL,NULL,'Xã'),
	 (360,'Minh Tân',NULL,NULL,NULL,'Xã'),
	 (360,'Phúc Khánh',NULL,NULL,NULL,'Xã'),
	 (360,'Tân Hòa',NULL,NULL,NULL,'Xã'),
	 (360,'Tân Lễ',NULL,NULL,NULL,'Xã'),
	 (360,'Tân Tiến',NULL,NULL,NULL,'Xã'),
	 (360,'Tây Đô',NULL,NULL,NULL,'Xã'),
	 (360,'Thái Hưng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (360,'Thái Phương',NULL,NULL,NULL,'Xã'),
	 (360,'Thống Nhất',NULL,NULL,NULL,'Xã'),
	 (360,'Tiến Đức',NULL,NULL,NULL,'Xã'),
	 (360,'Văn Cẩm',NULL,NULL,NULL,'Xã'),
	 (360,'Văn Lang',NULL,NULL,NULL,'Xã'),
	 (361,'An Bình',NULL,NULL,NULL,'Xã'),
	 (361,'An Bồi',NULL,NULL,NULL,'Xã'),
	 (361,'Bình Định',NULL,NULL,NULL,'Xã'),
	 (361,'Bình Minh',NULL,NULL,NULL,'Xã'),
	 (361,'Bình Nguyên',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (361,'Bình Thanh',NULL,NULL,NULL,'Xã'),
	 (361,'Đình Phùng',NULL,NULL,NULL,'Xã'),
	 (361,'Hoà Bình',NULL,NULL,NULL,'Xã'),
	 (361,'Hồng Thái',NULL,NULL,NULL,'Xã'),
	 (361,'Hồng Tiến',NULL,NULL,NULL,'Xã'),
	 (361,'Lê Lợi',NULL,NULL,NULL,'Xã'),
	 (361,'Minh Hưng',NULL,NULL,NULL,'Xã'),
	 (361,'Minh Tân',NULL,NULL,NULL,'Xã'),
	 (361,'Nam Bình',NULL,NULL,NULL,'Xã'),
	 (361,'Nam Cao',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (361,'Quang Bình',NULL,NULL,NULL,'Xã'),
	 (361,'Quang Hưng',NULL,NULL,NULL,'Xã'),
	 (361,'Quang Lịch',NULL,NULL,NULL,'Xã'),
	 (361,'Quang Minh',NULL,NULL,NULL,'Xã'),
	 (361,'Quang Trung',NULL,NULL,NULL,'Xã'),
	 (361,'Quốc Tuấn',NULL,NULL,NULL,'Xã'),
	 (361,'Quyết Tiến',NULL,NULL,NULL,'Xã'),
	 (361,'Thanh Nê',NULL,NULL,NULL,'Thị trấn'),
	 (361,'Thanh Tân',NULL,NULL,NULL,'Xã'),
	 (361,'Thượng Hiền',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (361,'Trà Giang',NULL,NULL,NULL,'Xã'),
	 (361,'Vũ An',NULL,NULL,NULL,'Xã'),
	 (361,'Vũ Bình',NULL,NULL,NULL,'Xã'),
	 (361,'Vũ Công',NULL,NULL,NULL,'Xã'),
	 (361,'Vũ Hoà',NULL,NULL,NULL,'Xã'),
	 (361,'Vũ Lạc',NULL,NULL,NULL,'Xã'),
	 (361,'Vũ Lễ',NULL,NULL,NULL,'Xã'),
	 (361,'Vũ Ninh',NULL,NULL,NULL,'Xã'),
	 (361,'Vũ Quý',NULL,NULL,NULL,'Thị trấn'),
	 (361,'Vũ Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (361,'Vũ Tây',NULL,NULL,NULL,'Xã'),
	 (361,'Vũ Thắng',NULL,NULL,NULL,'Xã'),
	 (361,'Vũ Trung',NULL,NULL,NULL,'Xã'),
	 (362,'An Ấp',NULL,NULL,NULL,'Xã'),
	 (362,'An Bài',NULL,NULL,NULL,'Thị trấn'),
	 (362,'An Cầu',NULL,NULL,NULL,'Xã'),
	 (362,'An Đồng',NULL,NULL,NULL,'Xã'),
	 (362,'An Dục',NULL,NULL,NULL,'Xã'),
	 (362,'An Hiệp',NULL,NULL,NULL,'Xã'),
	 (362,'An Khê',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (362,'An Lễ',NULL,NULL,NULL,'Xã'),
	 (362,'An Mỹ',NULL,NULL,NULL,'Xã'),
	 (362,'An Ninh',NULL,NULL,NULL,'Xã'),
	 (362,'An Quý',NULL,NULL,NULL,'Xã'),
	 (362,'An Thái',NULL,NULL,NULL,'Xã'),
	 (362,'An Thanh',NULL,NULL,NULL,'Xã'),
	 (362,'An Tràng',NULL,NULL,NULL,'Xã'),
	 (362,'An Vinh',NULL,NULL,NULL,'Xã'),
	 (362,'An Vũ',NULL,NULL,NULL,'Xã'),
	 (362,'Đông Hải',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (362,'Đồng Tiến',NULL,NULL,NULL,'Xã'),
	 (362,'Quỳnh Bảo',NULL,NULL,NULL,'Xã'),
	 (362,'Quỳnh Châu',NULL,NULL,NULL,'Xã'),
	 (362,'Quỳnh Côi',NULL,NULL,NULL,'Thị trấn'),
	 (362,'Quỳnh Giao',NULL,NULL,NULL,'Xã'),
	 (362,'Quỳnh Hải',NULL,NULL,NULL,'Xã'),
	 (362,'Quỳnh Hoa',NULL,NULL,NULL,'Xã'),
	 (362,'Quỳnh Hoàng',NULL,NULL,NULL,'Xã'),
	 (362,'Quỳnh Hội',NULL,NULL,NULL,'Xã'),
	 (362,'Quỳnh Hồng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (362,'Quỳnh Hưng',NULL,NULL,NULL,'Xã'),
	 (362,'Quỳnh Khê',NULL,NULL,NULL,'Xã'),
	 (362,'Quỳnh Lâm',NULL,NULL,NULL,'Xã'),
	 (362,'Quỳnh Minh',NULL,NULL,NULL,'Xã'),
	 (362,'Quỳnh Mỹ',NULL,NULL,NULL,'Xã'),
	 (362,'Quỳnh Ngọc',NULL,NULL,NULL,'Xã'),
	 (362,'Quỳnh Nguyên',NULL,NULL,NULL,'Xã'),
	 (362,'Quỳnh Sơn',NULL,NULL,NULL,'Xã'),
	 (362,'Quỳnh Thọ',NULL,NULL,NULL,'Xã'),
	 (362,'Quỳnh Trang',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (362,'Quỳnh Xá',NULL,NULL,NULL,'Xã'),
	 (363,'Bồ Xuyên',NULL,NULL,NULL,'Phường'),
	 (363,'Đề Thám',NULL,NULL,NULL,'Phường'),
	 (363,'Đông Hòa',NULL,NULL,NULL,'Xã'),
	 (363,'Đông Mỹ',NULL,NULL,NULL,'Xã'),
	 (363,'Đông Thọ',NULL,NULL,NULL,'Xã'),
	 (363,'Hoàng Diệu',NULL,NULL,NULL,'Phường'),
	 (363,'Kỳ Bá',NULL,NULL,NULL,'Phường'),
	 (363,'Lê Hồng Phong',NULL,NULL,NULL,'Phường'),
	 (363,'Phú Khánh',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (363,'Phú Xuân',NULL,NULL,NULL,'Xã'),
	 (363,'Quang Trung',NULL,NULL,NULL,'Phường'),
	 (363,'Tân Bình',NULL,NULL,NULL,'Xã'),
	 (363,'Tiền Phong',NULL,NULL,NULL,'Phường'),
	 (363,'Trần Hưng Đạo',NULL,NULL,NULL,'Phường'),
	 (363,'Trần Lãm',NULL,NULL,NULL,'Phường'),
	 (363,'Vũ Chính',NULL,NULL,NULL,'Xã'),
	 (363,'Vũ Đông',NULL,NULL,NULL,'Xã'),
	 (363,'Vũ Lạc',NULL,NULL,NULL,'Xã'),
	 (363,'Vũ Phúc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (364,'Diêm Điền',NULL,NULL,NULL,'Thị trấn'),
	 (364,'Hồng Quỳnh',NULL,NULL,NULL,'Xã'),
	 (364,'Mỹ Lộc',NULL,NULL,NULL,'Xã'),
	 (364,'Thái An',NULL,NULL,NULL,'Xã'),
	 (364,'Thái Đô',NULL,NULL,NULL,'Xã'),
	 (364,'Thái Dương',NULL,NULL,NULL,'Xã'),
	 (364,'Thái Giang',NULL,NULL,NULL,'Xã'),
	 (364,'Thái Hà',NULL,NULL,NULL,'Xã'),
	 (364,'Thái Hòa',NULL,NULL,NULL,'Xã'),
	 (364,'Thái Học',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (364,'Thái Hồng',NULL,NULL,NULL,'Xã'),
	 (364,'Thái Hưng',NULL,NULL,NULL,'Xã'),
	 (364,'Thái Nguyên',NULL,NULL,NULL,'Xã'),
	 (364,'Thái Phúc',NULL,NULL,NULL,'Xã'),
	 (364,'Thái Sơn',NULL,NULL,NULL,'Xã'),
	 (364,'Thái Tân',NULL,NULL,NULL,'Xã'),
	 (364,'Thái Thành',NULL,NULL,NULL,'Xã'),
	 (364,'Thái Thịnh',NULL,NULL,NULL,'Xã'),
	 (364,'Thái Thọ',NULL,NULL,NULL,'Xã'),
	 (364,'Thái Thuần',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (364,'Thái Thượng',NULL,NULL,NULL,'Xã'),
	 (364,'Thái Thủy',NULL,NULL,NULL,'Xã'),
	 (364,'Thái Xuyên',NULL,NULL,NULL,'Xã'),
	 (364,'Thụy An',NULL,NULL,NULL,'Xã'),
	 (364,'Thụy Bình',NULL,NULL,NULL,'Xã'),
	 (364,'Thụy Chính',NULL,NULL,NULL,'Xã'),
	 (364,'Thụy Dân',NULL,NULL,NULL,'Xã'),
	 (364,'Thụy Dũng',NULL,NULL,NULL,'Xã'),
	 (364,'Thụy Dương',NULL,NULL,NULL,'Xã'),
	 (364,'Thụy Duyên',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (364,'Thụy Hà',NULL,NULL,NULL,'Xã'),
	 (364,'Thụy Hải',NULL,NULL,NULL,'Xã'),
	 (364,'Thụy Hồng',NULL,NULL,NULL,'Xã'),
	 (364,'Thụy Hưng',NULL,NULL,NULL,'Xã'),
	 (364,'Thụy Liên',NULL,NULL,NULL,'Xã'),
	 (364,'Thụy Lương',NULL,NULL,NULL,'Xã'),
	 (364,'Thụy Ninh',NULL,NULL,NULL,'Xã'),
	 (364,'Thụy Phong',NULL,NULL,NULL,'Xã'),
	 (364,'Thụy Phúc',NULL,NULL,NULL,'Xã'),
	 (364,'Thụy Quỳnh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (364,'Thụy Sơn',NULL,NULL,NULL,'Xã'),
	 (364,'Thụy Tân',NULL,NULL,NULL,'Xã'),
	 (364,'Thụy Thanh',NULL,NULL,NULL,'Xã'),
	 (364,'Thụy Trình',NULL,NULL,NULL,'Xã'),
	 (364,'Thụy Trường',NULL,NULL,NULL,'Xã'),
	 (364,'Thụy Văn',NULL,NULL,NULL,'Xã'),
	 (364,'Thụy Việt',NULL,NULL,NULL,'Xã'),
	 (364,'Thụy Xuân',NULL,NULL,NULL,'Xã'),
	 (365,'An Ninh',NULL,NULL,NULL,'Xã'),
	 (365,'Bắc Hải',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (365,'Đông Cơ',NULL,NULL,NULL,'Xã'),
	 (365,'Đông Hải',NULL,NULL,NULL,'Xã'),
	 (365,'Đông Hoàng',NULL,NULL,NULL,'Xã'),
	 (365,'Đông Lâm',NULL,NULL,NULL,'Xã'),
	 (365,'Đông Long',NULL,NULL,NULL,'Xã'),
	 (365,'Đông Minh',NULL,NULL,NULL,'Xã'),
	 (365,'Đông Phong',NULL,NULL,NULL,'Xã'),
	 (365,'Đông Quý',NULL,NULL,NULL,'Xã'),
	 (365,'Đông Trà',NULL,NULL,NULL,'Xã'),
	 (365,'Đông Trung',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (365,'Đông Xuyên',NULL,NULL,NULL,'Xã'),
	 (365,'Nam Chính',NULL,NULL,NULL,'Xã'),
	 (365,'Nam Cường',NULL,NULL,NULL,'Xã'),
	 (365,'Nam Hà',NULL,NULL,NULL,'Xã'),
	 (365,'Nam Hải',NULL,NULL,NULL,'Xã'),
	 (365,'Nam Hồng',NULL,NULL,NULL,'Xã'),
	 (365,'Nam Hưng',NULL,NULL,NULL,'Xã'),
	 (365,'Nam Phú',NULL,NULL,NULL,'Xã'),
	 (365,'Nam Thắng',NULL,NULL,NULL,'Xã'),
	 (365,'Nam Thanh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (365,'Nam Thịnh',NULL,NULL,NULL,'Xã'),
	 (365,'Nam Trung',NULL,NULL,NULL,'Xã'),
	 (365,'Phương Công',NULL,NULL,NULL,'Xã'),
	 (365,'Tây An',NULL,NULL,NULL,'Xã'),
	 (365,'Tây Giang',NULL,NULL,NULL,'Xã'),
	 (365,'Tây Lương',NULL,NULL,NULL,'Xã'),
	 (365,'Tây Ninh',NULL,NULL,NULL,'Xã'),
	 (365,'Tây Phong',NULL,NULL,NULL,'Xã'),
	 (365,'Tây Sơn',NULL,NULL,NULL,'Xã'),
	 (365,'Tây Tiến',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (365,'Tiền Hải',NULL,NULL,NULL,'Thị trấn'),
	 (365,'Vân Trường',NULL,NULL,NULL,'Xã'),
	 (365,'Vũ Lăng',NULL,NULL,NULL,'Xã'),
	 (366,'Bách Thuận',NULL,NULL,NULL,'Xã'),
	 (366,'Đồng Thanh',NULL,NULL,NULL,'Xã'),
	 (366,'Dũng Nghĩa',NULL,NULL,NULL,'Xã'),
	 (366,'Duy Nhất',NULL,NULL,NULL,'Xã'),
	 (366,'Hiệp Hòa',NULL,NULL,NULL,'Xã'),
	 (366,'Hòa Bình',NULL,NULL,NULL,'Xã'),
	 (366,'Hồng Lý',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (366,'Hồng Phong',NULL,NULL,NULL,'Xã'),
	 (366,'Minh Khai',NULL,NULL,NULL,'Xã'),
	 (366,'Minh Lãng',NULL,NULL,NULL,'Xã'),
	 (366,'Minh Quang',NULL,NULL,NULL,'Xã'),
	 (366,'Nguyên Xá',NULL,NULL,NULL,'Xã'),
	 (366,'Phúc Thành',NULL,NULL,NULL,'Xã'),
	 (366,'Song An',NULL,NULL,NULL,'Xã'),
	 (366,'Song Lãng',NULL,NULL,NULL,'Xã'),
	 (366,'Tam Quang',NULL,NULL,NULL,'Xã'),
	 (366,'Tân Hòa',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (366,'Tân Lập',NULL,NULL,NULL,'Xã'),
	 (366,'Tân Phong',NULL,NULL,NULL,'Xã'),
	 (366,'Trung An',NULL,NULL,NULL,'Xã'),
	 (366,'Tự Tân',NULL,NULL,NULL,'Xã'),
	 (366,'Việt Hùng',NULL,NULL,NULL,'Xã'),
	 (366,'Việt Thuận',NULL,NULL,NULL,'Xã'),
	 (366,'Vũ Đoài',NULL,NULL,NULL,'Xã'),
	 (366,'Vũ Hội',NULL,NULL,NULL,'Xã'),
	 (366,'Vũ Thư',NULL,NULL,NULL,'Thị trấn'),
	 (366,'Vũ Tiến',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (366,'Vũ Vân',NULL,NULL,NULL,'Xã'),
	 (366,'Vũ Vinh',NULL,NULL,NULL,'Xã'),
	 (366,'Xuân Hòa',NULL,NULL,NULL,'Xã'),
	 (367,'Đa Mai',NULL,NULL,NULL,'Xã'),
	 (367,'Dĩnh Kế',NULL,NULL,NULL,'Xã'),
	 (367,'Dĩnh Trì',NULL,NULL,NULL,'Xã'),
	 (367,'Đồng Sơn',NULL,NULL,NULL,'Xã'),
	 (367,'Hoàng Văn Thụ',NULL,NULL,NULL,'Phường'),
	 (367,'Lê Lợi',NULL,NULL,NULL,'Phường'),
	 (367,'Mỹ Độ',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (367,'Ngô Quyền',NULL,NULL,NULL,'Phường'),
	 (367,'Song Khê',NULL,NULL,NULL,'Xã'),
	 (367,'Song Mai',NULL,NULL,NULL,'Xã'),
	 (367,'Tân Mỹ',NULL,NULL,NULL,'Xã'),
	 (367,'Tân Tiến',NULL,NULL,NULL,'Xã'),
	 (367,'Thọ Xương',NULL,NULL,NULL,'Phường'),
	 (367,'Trần Nguyên Hãn',NULL,NULL,NULL,'Phường'),
	 (367,'Trần Phú',NULL,NULL,NULL,'Phường'),
	 (367,'Xương Giang',NULL,NULL,NULL,'Phường'),
	 (368,'Bắc Lý',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (368,'Bách Nhẫn',NULL,NULL,NULL,'Thị trấn'),
	 (368,'Châu Minh',NULL,NULL,NULL,'Xã'),
	 (368,'Đại Thành',NULL,NULL,NULL,'Xã'),
	 (368,'Danh Thắng',NULL,NULL,NULL,'Xã'),
	 (368,'Đoan Bái',NULL,NULL,NULL,'Xã'),
	 (368,'Đông Lỗ',NULL,NULL,NULL,'Xã'),
	 (368,'Đồng Tân',NULL,NULL,NULL,'Xã'),
	 (368,'Đức Thắng',NULL,NULL,NULL,'Xã'),
	 (368,'Hòa Sơn',NULL,NULL,NULL,'Xã'),
	 (368,'Hoàng An',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (368,'Hoàng Lương',NULL,NULL,NULL,'Xã'),
	 (368,'Hoàng Thanh',NULL,NULL,NULL,'Xã'),
	 (368,'Hoàng Vân',NULL,NULL,NULL,'Xã'),
	 (368,'Hợp Thịnh',NULL,NULL,NULL,'Xã'),
	 (368,'Hùng Sơn',NULL,NULL,NULL,'Xã'),
	 (368,'Hương Lâm',NULL,NULL,NULL,'Xã'),
	 (368,'Lương Phong',NULL,NULL,NULL,'Xã'),
	 (368,'Mai Đình',NULL,NULL,NULL,'Xã'),
	 (368,'Mai Trung',NULL,NULL,NULL,'Xã'),
	 (368,'Ngọc Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (368,'Quang Minh',NULL,NULL,NULL,'Xã'),
	 (368,'Thái Sơn',NULL,NULL,NULL,'Xã'),
	 (368,'Thắng',NULL,NULL,NULL,'Thị trấn'),
	 (368,'Thanh Vân',NULL,NULL,NULL,'Xã'),
	 (368,'Thường Thắng',NULL,NULL,NULL,'Xã'),
	 (368,'Xuân Cẩm',NULL,NULL,NULL,'Xã'),
	 (369,'An Hà',NULL,NULL,NULL,'Xã'),
	 (369,'Đại Lâm',NULL,NULL,NULL,'Xã'),
	 (369,'Đào Mỹ',NULL,NULL,NULL,'Xã'),
	 (369,'Dương Đức',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (369,'Hương Lạc',NULL,NULL,NULL,'Xã'),
	 (369,'Hương Sơn',NULL,NULL,NULL,'Xã'),
	 (369,'Kép',NULL,NULL,NULL,'Thị trấn'),
	 (369,'Mỹ Hà',NULL,NULL,NULL,'Xã'),
	 (369,'Mỹ Thái',NULL,NULL,NULL,'Xã'),
	 (369,'Nghĩa Hòa',NULL,NULL,NULL,'Xã'),
	 (369,'Nghĩa Hưng',NULL,NULL,NULL,'Xã'),
	 (369,'Phi Mô',NULL,NULL,NULL,'Xã'),
	 (369,'Quang Thịnh',NULL,NULL,NULL,'Xã'),
	 (369,'Tân Dĩnh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (369,'Tân Hưng',NULL,NULL,NULL,'Xã'),
	 (369,'Tân Thanh',NULL,NULL,NULL,'Xã'),
	 (369,'Tân Thịnh',NULL,NULL,NULL,'Xã'),
	 (369,'Thái Đào',NULL,NULL,NULL,'Xã'),
	 (369,'Tiên Lục',NULL,NULL,NULL,'Xã'),
	 (369,'Vôi',NULL,NULL,NULL,'Thị trấn'),
	 (369,'Xuân Hương',NULL,NULL,NULL,'Xã'),
	 (369,'Xương Lâm',NULL,NULL,NULL,'Xã'),
	 (369,'Yên Mỹ',NULL,NULL,NULL,'Xã'),
	 (370,'Bắc Lũng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (370,'Bảo Đài',NULL,NULL,NULL,'Xã'),
	 (370,'Bảo Sơn',NULL,NULL,NULL,'Xã'),
	 (370,'Bình Sơn',NULL,NULL,NULL,'Xã'),
	 (370,'Cẩm Lý',NULL,NULL,NULL,'Xã'),
	 (370,'Chu Điện',NULL,NULL,NULL,'Xã'),
	 (370,'Cương Sơn',NULL,NULL,NULL,'Xã'),
	 (370,'Đan Hội',NULL,NULL,NULL,'Xã'),
	 (370,'Đồi Ngô',NULL,NULL,NULL,'Thị trấn'),
	 (370,'Đông Hưng',NULL,NULL,NULL,'Xã'),
	 (370,'Đông Phú',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (370,'Huyền Sơn',NULL,NULL,NULL,'Xã'),
	 (370,'Khám Lạng',NULL,NULL,NULL,'Xã'),
	 (370,'Lan Mẫu',NULL,NULL,NULL,'Xã'),
	 (370,'Lục Nam',NULL,NULL,NULL,'Thị trấn'),
	 (370,'Lục Sơn',NULL,NULL,NULL,'Xã'),
	 (370,'Nghĩa Phương',NULL,NULL,NULL,'Xã'),
	 (370,'Phương Sơn',NULL,NULL,NULL,'Xã'),
	 (370,'Tam Dị',NULL,NULL,NULL,'Xã'),
	 (370,'Thanh Lâm',NULL,NULL,NULL,'Xã'),
	 (370,'Tiên Hưng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (370,'Tiên Nha',NULL,NULL,NULL,'Xã'),
	 (370,'Trường Giang',NULL,NULL,NULL,'Xã'),
	 (370,'Trường Sơn',NULL,NULL,NULL,'Xã'),
	 (370,'Vô Tranh',NULL,NULL,NULL,'Xã'),
	 (370,'Vũ Xá',NULL,NULL,NULL,'Xã'),
	 (370,'Yên Sơn',NULL,NULL,NULL,'Xã'),
	 (371,'Biển Động',NULL,NULL,NULL,'Xã'),
	 (371,'Biên Sơn',NULL,NULL,NULL,'Xã'),
	 (371,'Cấm Sơn',NULL,NULL,NULL,'Xã'),
	 (371,'Chũ',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (371,'Đèo Gia',NULL,NULL,NULL,'Xã'),
	 (371,'Đồng Cốc',NULL,NULL,NULL,'Xã'),
	 (371,'Giáp Sơn',NULL,NULL,NULL,'Xã'),
	 (371,'Hộ Đáp',NULL,NULL,NULL,'Xã'),
	 (371,'Hồng Giang',NULL,NULL,NULL,'Xã'),
	 (371,'Kiên Lao',NULL,NULL,NULL,'Xã'),
	 (371,'Kiên Thành',NULL,NULL,NULL,'Xã'),
	 (371,'Kim Sơn',NULL,NULL,NULL,'Xã'),
	 (371,'Mỹ An',NULL,NULL,NULL,'Xã'),
	 (371,'Nam Dương',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (371,'Nghĩa Hồ',NULL,NULL,NULL,'Xã'),
	 (371,'Phì Điền',NULL,NULL,NULL,'Xã'),
	 (371,'Phong Minh',NULL,NULL,NULL,'Xã'),
	 (371,'Phong Vân',NULL,NULL,NULL,'Xã'),
	 (371,'Phú Nhuận',NULL,NULL,NULL,'Xã'),
	 (371,'Phượng Sơn',NULL,NULL,NULL,'Xã'),
	 (371,'Quý Sơn',NULL,NULL,NULL,'Xã'),
	 (371,'Sa Lý',NULL,NULL,NULL,'Xã'),
	 (371,'Sơn Hải',NULL,NULL,NULL,'Xã'),
	 (371,'Tân Hoa',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (371,'Tân Lập',NULL,NULL,NULL,'Xã'),
	 (371,'Tân Mộc',NULL,NULL,NULL,'Xã'),
	 (371,'Tân Quang',NULL,NULL,NULL,'Xã'),
	 (371,'Tân Sơn',NULL,NULL,NULL,'Xã'),
	 (371,'Thanh Hải',NULL,NULL,NULL,'Xã'),
	 (371,'Trù Hựu',NULL,NULL,NULL,'Xã'),
	 (372,'An Bá',NULL,NULL,NULL,'Xã'),
	 (372,'An Châu',NULL,NULL,NULL,'Thị trấn'),
	 (372,'An Châu',NULL,NULL,NULL,'Xã'),
	 (372,'An Lạc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (372,'An Lập',NULL,NULL,NULL,'Xã'),
	 (372,'Bồng Am',NULL,NULL,NULL,'Xã'),
	 (372,'Cẩm Đàn',NULL,NULL,NULL,'Xã'),
	 (372,'Chiên Sơn',NULL,NULL,NULL,'Xã'),
	 (372,'Dương Hưu',NULL,NULL,NULL,'Xã'),
	 (372,'Giáo Liêm',NULL,NULL,NULL,'Xã'),
	 (372,'Hữu Sản',NULL,NULL,NULL,'Xã'),
	 (372,'Lệ Viễn',NULL,NULL,NULL,'Xã'),
	 (372,'Long Sơn',NULL,NULL,NULL,'Xã'),
	 (372,'Ngọc Châu',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (372,'Phúc Thắng',NULL,NULL,NULL,'Xã'),
	 (372,'Quế Sơn',NULL,NULL,NULL,'Xã'),
	 (372,'Thạch Sơn',NULL,NULL,NULL,'Xã'),
	 (372,'Thanh Luận',NULL,NULL,NULL,'Xã'),
	 (372,'Thanh Sơn',NULL,NULL,NULL,'Thị trấn'),
	 (372,'Tuấn Đạo',NULL,NULL,NULL,'Xã'),
	 (372,'Tuấn Mậu',NULL,NULL,NULL,'Xã'),
	 (372,'Vân Sơn',NULL,NULL,NULL,'Xã'),
	 (372,'Vĩnh Khương',NULL,NULL,NULL,'Xã'),
	 (372,'Yên Định',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (373,'An Dương',NULL,NULL,NULL,'Xã'),
	 (373,'Cao Thượng',NULL,NULL,NULL,'Thị trấn'),
	 (373,'Cao Thượng',NULL,NULL,NULL,'Xã'),
	 (373,'Cao Xá',NULL,NULL,NULL,'Xã'),
	 (373,'Đại Hóa',NULL,NULL,NULL,'Xã'),
	 (373,'Hợp Đức',NULL,NULL,NULL,'Xã'),
	 (373,'Lam Cốt',NULL,NULL,NULL,'Xã'),
	 (373,'Lan Giới',NULL,NULL,NULL,'Xã'),
	 (373,'Liên Chung',NULL,NULL,NULL,'Xã'),
	 (373,'Liên Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (373,'Ngọc Châu',NULL,NULL,NULL,'Xã'),
	 (373,'Ngọc Lý',NULL,NULL,NULL,'Xã'),
	 (373,'Ngọc Thiện',NULL,NULL,NULL,'Xã'),
	 (373,'Ngọc Vân',NULL,NULL,NULL,'Xã'),
	 (373,'Nhã Nam',NULL,NULL,NULL,'Thị trấn'),
	 (373,'Nhã Nam',NULL,NULL,NULL,'Xã'),
	 (373,'Phúc Hòa',NULL,NULL,NULL,'Xã'),
	 (373,'Phúc Sơn',NULL,NULL,NULL,'Xã'),
	 (373,'Quang Tiến',NULL,NULL,NULL,'Xã'),
	 (373,'Quế Nham',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (373,'Song Vân',NULL,NULL,NULL,'Xã'),
	 (373,'Tân Trung',NULL,NULL,NULL,'Xã'),
	 (373,'Việt Lập',NULL,NULL,NULL,'Xã'),
	 (373,'Việt Ngọc',NULL,NULL,NULL,'Xã'),
	 (374,'Bích Động',NULL,NULL,NULL,'Thị trấn'),
	 (374,'Bích Sơn',NULL,NULL,NULL,'Xã'),
	 (374,'Hoàng Ninh',NULL,NULL,NULL,'Xã'),
	 (374,'Hồng Thái',NULL,NULL,NULL,'Xã'),
	 (374,'Hương Mai',NULL,NULL,NULL,'Xã'),
	 (374,'Minh Đức',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (374,'Nếnh',NULL,NULL,NULL,'Thị trấn'),
	 (374,'Nếnh',NULL,NULL,NULL,'Xã'),
	 (374,'Nghĩa Trung',NULL,NULL,NULL,'Xã'),
	 (374,'Ninh Sơn',NULL,NULL,NULL,'Xã'),
	 (374,'Quang Châu',NULL,NULL,NULL,'Xã'),
	 (374,'Quảng Minh',NULL,NULL,NULL,'Xã'),
	 (374,'Tăng Tiến',NULL,NULL,NULL,'Xã'),
	 (374,'Thượng Lan',NULL,NULL,NULL,'Xã'),
	 (374,'Tiên Sơn',NULL,NULL,NULL,'Xã'),
	 (374,'Trung Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (374,'Tự Lan',NULL,NULL,NULL,'Xã'),
	 (374,'Vân Hà',NULL,NULL,NULL,'Xã'),
	 (374,'Vân Trung',NULL,NULL,NULL,'Xã'),
	 (374,'Việt Tiến',NULL,NULL,NULL,'Xã'),
	 (375,'Cảnh Thụy',NULL,NULL,NULL,'Xã'),
	 (375,'Đồng Phúc',NULL,NULL,NULL,'Xã'),
	 (375,'Đồng Tâm',NULL,NULL,NULL,'Xã'),
	 (375,'Đồng Việt',NULL,NULL,NULL,'Xã'),
	 (375,'Đức Giang',NULL,NULL,NULL,'Xã'),
	 (375,'Hồng Kỳ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (375,'Hương Gián',NULL,NULL,NULL,'Xã'),
	 (375,'Lãng Sơn',NULL,NULL,NULL,'Xã'),
	 (375,'Lão Hộ',NULL,NULL,NULL,'Xã'),
	 (375,'Neo',NULL,NULL,NULL,'Thị trấn'),
	 (375,'Nham Sơn',NULL,NULL,NULL,'Xã'),
	 (375,'Nội Hoàng',NULL,NULL,NULL,'Xã'),
	 (375,'Quỳnh Sơn',NULL,NULL,NULL,'Xã'),
	 (375,'Tân An',NULL,NULL,NULL,'Xã'),
	 (375,'Tân Dân',NULL,NULL,NULL,'Thị trấn'),
	 (375,'Tân Liễu',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (375,'Thắng Cương',NULL,NULL,NULL,'Xã'),
	 (375,'Tiến Dũng',NULL,NULL,NULL,'Xã'),
	 (375,'Tiền Phong',NULL,NULL,NULL,'Xã'),
	 (375,'Trí Yên',NULL,NULL,NULL,'Xã'),
	 (375,'Tư Mại',NULL,NULL,NULL,'Xã'),
	 (375,'Xuân Phú',NULL,NULL,NULL,'Xã'),
	 (375,'Yên Lư',NULL,NULL,NULL,'Xã'),
	 (376,'An Thượng',NULL,NULL,NULL,'Xã'),
	 (376,'Bố Hạ',NULL,NULL,NULL,'Thị trấn'),
	 (376,'Bố Hạ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (376,'Canh Nậu',NULL,NULL,NULL,'Xã'),
	 (376,'Cầu Gồ',NULL,NULL,NULL,'Thị trấn'),
	 (376,'Đồng Hưu',NULL,NULL,NULL,'Xã'),
	 (376,'Đồng Kỳ',NULL,NULL,NULL,'Xã'),
	 (376,'Đồng Lạc',NULL,NULL,NULL,'Xã'),
	 (376,'Đông Sơn',NULL,NULL,NULL,'Xã'),
	 (376,'Đồng Tiến',NULL,NULL,NULL,'Xã'),
	 (376,'Đồng Vương',NULL,NULL,NULL,'Xã'),
	 (376,'Hương Vĩ',NULL,NULL,NULL,'Thị trấn'),
	 (376,'Phồn Xương',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (376,'Tam Hiệp',NULL,NULL,NULL,'Xã'),
	 (376,'Tam Tiến',NULL,NULL,NULL,'Xã'),
	 (376,'Tân Hiệp',NULL,NULL,NULL,'Xã'),
	 (376,'Tân Sỏi',NULL,NULL,NULL,'Xã'),
	 (376,'Tiến Thắng',NULL,NULL,NULL,'Xã'),
	 (376,'Xuân Lương',NULL,NULL,NULL,'Xã'),
	 (377,'Bắc Phong',NULL,NULL,NULL,'Xã'),
	 (377,'Bình Thanh',NULL,NULL,NULL,'Xã'),
	 (377,'Cao Phong',NULL,NULL,NULL,'Thị trấn'),
	 (377,'Đông Phong',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (377,'Dũng Phong',NULL,NULL,NULL,'Xã'),
	 (377,'Nam Phong',NULL,NULL,NULL,'Xã'),
	 (377,'Tân Phong',NULL,NULL,NULL,'Xã'),
	 (377,'Tây Phong',NULL,NULL,NULL,'Xã'),
	 (377,'Thu Phong',NULL,NULL,NULL,'Xã'),
	 (377,'Thung Nai',NULL,NULL,NULL,'Xã'),
	 (377,'Xuân Phong',NULL,NULL,NULL,'Xã'),
	 (377,'Yên Lập',NULL,NULL,NULL,'Xã'),
	 (377,'Yên Thượng',NULL,NULL,NULL,'Xã'),
	 (378,'Cao Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (378,'Đà Bắc',NULL,NULL,NULL,'Thị trấn'),
	 (378,'Đoàn Kết',NULL,NULL,NULL,'Xã'),
	 (378,'Đồng Chum',NULL,NULL,NULL,'Xã'),
	 (378,'Đồng Nghê',NULL,NULL,NULL,'Xã'),
	 (378,'Đồng Ruộng',NULL,NULL,NULL,'Xã'),
	 (378,'Giáp Đắt',NULL,NULL,NULL,'Xã'),
	 (378,'Hào Lý',NULL,NULL,NULL,'Xã'),
	 (378,'Hiền Lương',NULL,NULL,NULL,'Xã'),
	 (378,'Mường Chiềng',NULL,NULL,NULL,'Xã'),
	 (378,'Mường Tuổng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (378,'Suối Nánh',NULL,NULL,NULL,'Xã'),
	 (378,'Tân Minh',NULL,NULL,NULL,'Xã'),
	 (378,'Tân Pheo',NULL,NULL,NULL,'Xã'),
	 (378,'Tiền Phong',NULL,NULL,NULL,'Xã'),
	 (378,'Toàn Sơn',NULL,NULL,NULL,'Xã'),
	 (378,'Trung Thành',NULL,NULL,NULL,'Xã'),
	 (378,'Tu Lý',NULL,NULL,NULL,'Xã'),
	 (378,'Vầy Nưa',NULL,NULL,NULL,'Xã'),
	 (378,'Yên Hoà',NULL,NULL,NULL,'Xã'),
	 (379,'Chăm Mát',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (379,'Dân Chủ',NULL,NULL,NULL,'Xã'),
	 (379,'Đồng Tiến',NULL,NULL,NULL,'Phường'),
	 (379,'Hòa Bình',NULL,NULL,NULL,'Xã'),
	 (379,'Hữu Nghị',NULL,NULL,NULL,'Phường'),
	 (379,'Phương Lâm',NULL,NULL,NULL,'Phường'),
	 (379,'Sủ Ngòi',NULL,NULL,NULL,'Xã'),
	 (379,'Tân Hòa',NULL,NULL,NULL,'Phường'),
	 (379,'Tân Thịnh',NULL,NULL,NULL,'Phường'),
	 (379,'Thái Bình',NULL,NULL,NULL,'Phường'),
	 (379,'Thái Thịnh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (379,'Thịnh Lang',NULL,NULL,NULL,'Phường'),
	 (379,'Thống Nhất',NULL,NULL,NULL,'Xã'),
	 (379,'Trung Minh',NULL,NULL,NULL,'Xã'),
	 (379,'Yên Mông',NULL,NULL,NULL,'Xã'),
	 (380,'Bắc Sơn',NULL,NULL,NULL,'Xã'),
	 (380,'Bình Sơn',NULL,NULL,NULL,'Xã'),
	 (380,'Bo',NULL,NULL,NULL,'Thị trấn'),
	 (380,'Cuối Hạ',NULL,NULL,NULL,'Xã'),
	 (380,'Đông Bắc',NULL,NULL,NULL,'Xã'),
	 (380,'Đú Sáng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (380,'Hạ Bì',NULL,NULL,NULL,'Xã'),
	 (380,'Hợp Đồng',NULL,NULL,NULL,'Xã'),
	 (380,'Hợp Kim',NULL,NULL,NULL,'Xã'),
	 (380,'Hùng Tiến',NULL,NULL,NULL,'Xã'),
	 (380,'Kim Bình',NULL,NULL,NULL,'Xã'),
	 (380,'Kim Bôi',NULL,NULL,NULL,'Xã'),
	 (380,'Kim Sơn',NULL,NULL,NULL,'Xã'),
	 (380,'Kim Tiến',NULL,NULL,NULL,'Xã'),
	 (380,'Kim Truy',NULL,NULL,NULL,'Xã'),
	 (380,'Lập Chiệng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (380,'Mị Hòa',NULL,NULL,NULL,'Xã'),
	 (380,'Nam Thượng',NULL,NULL,NULL,'Xã'),
	 (380,'Nật Sơn',NULL,NULL,NULL,'Xã'),
	 (380,'Nuông Dăm',NULL,NULL,NULL,'Xã'),
	 (380,'Sào Báy',NULL,NULL,NULL,'Xã'),
	 (380,'Sơn Thủy',NULL,NULL,NULL,'Xã'),
	 (380,'Thượng Bì',NULL,NULL,NULL,'Xã'),
	 (380,'Thượng Tiến',NULL,NULL,NULL,'Xã'),
	 (380,'Trung Bì',NULL,NULL,NULL,'Xã'),
	 (380,'Tú Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (380,'Vĩnh Đồng',NULL,NULL,NULL,'Xã'),
	 (380,'Vĩnh Tiến',NULL,NULL,NULL,'Xã'),
	 (381,'Dân Hạ',NULL,NULL,NULL,'Xã'),
	 (381,'Dân Hòa',NULL,NULL,NULL,'Xã'),
	 (381,'Độc Lập',NULL,NULL,NULL,'Xã'),
	 (381,'Hợp Thành',NULL,NULL,NULL,'Xã'),
	 (381,'Hợp Thịnh',NULL,NULL,NULL,'Xã'),
	 (381,'Kỳ Sơn',NULL,NULL,NULL,'Thị trấn'),
	 (381,'Mông Hóa',NULL,NULL,NULL,'Xã'),
	 (381,'Phú Minh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (381,'Phúc Tiến',NULL,NULL,NULL,'Xã'),
	 (381,'Yên Quang',NULL,NULL,NULL,'Xã'),
	 (382,'Ân Nghĩa',NULL,NULL,NULL,'Xã'),
	 (382,'Bình Cảng',NULL,NULL,NULL,'Xã'),
	 (382,'Bình Chân',NULL,NULL,NULL,'Xã'),
	 (382,'Bình Hẻm',NULL,NULL,NULL,'Xã'),
	 (382,'Chí Đạo',NULL,NULL,NULL,'Xã'),
	 (382,'Chí Thiện',NULL,NULL,NULL,'Xã'),
	 (382,'Định Cư',NULL,NULL,NULL,'Xã'),
	 (382,'Hương Nhượng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (382,'Liên Vũ',NULL,NULL,NULL,'Xã'),
	 (382,'Miền Đồi',NULL,NULL,NULL,'Xã'),
	 (382,'Mỹ Thành',NULL,NULL,NULL,'Xã'),
	 (382,'Ngọc Lâu',NULL,NULL,NULL,'Xã'),
	 (382,'Ngọc Sơn',NULL,NULL,NULL,'Xã'),
	 (382,'Nhân Nghĩa',NULL,NULL,NULL,'Xã'),
	 (382,'Phú Lương',NULL,NULL,NULL,'Xã'),
	 (382,'Phúc Tuy',NULL,NULL,NULL,'Xã'),
	 (382,'Quý Hoà',NULL,NULL,NULL,'Xã'),
	 (382,'Tân Lập',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (382,'Tân Mỹ',NULL,NULL,NULL,'Xã'),
	 (382,'Thượng Cốc',NULL,NULL,NULL,'Xã'),
	 (382,'Tự Do',NULL,NULL,NULL,'Xã'),
	 (382,'Tuân Đạo',NULL,NULL,NULL,'Xã'),
	 (382,'Văn Nghĩa',NULL,NULL,NULL,'Xã'),
	 (382,'Văn Sơn',NULL,NULL,NULL,'Xã'),
	 (382,'Vụ Bản',NULL,NULL,NULL,'Thị trấn'),
	 (382,'Vũ Lâm',NULL,NULL,NULL,'Xã'),
	 (382,'Xuất Hóa',NULL,NULL,NULL,'Xã'),
	 (382,'Yên Nghiệp',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (382,'Yên Phú',NULL,NULL,NULL,'Xã'),
	 (383,'An Bình',NULL,NULL,NULL,'Xã'),
	 (383,'An Lạc',NULL,NULL,NULL,'Xã'),
	 (383,'Chi Nê',NULL,NULL,NULL,'Thị trấn'),
	 (383,'Cố Nghĩa',NULL,NULL,NULL,'Xã'),
	 (383,'Đồng Môn',NULL,NULL,NULL,'Xã'),
	 (383,'Đồng Tâm',NULL,NULL,NULL,'Xã'),
	 (383,'Hưng Thi',NULL,NULL,NULL,'Xã'),
	 (383,'Khoan Dụ',NULL,NULL,NULL,'Xã'),
	 (383,'Lạc Long',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (383,'Liên Hòa',NULL,NULL,NULL,'Xã'),
	 (383,'Phú Lão',NULL,NULL,NULL,'Xã'),
	 (383,'Phú Thành',NULL,NULL,NULL,'Xã'),
	 (383,'Thanh Hà',NULL,NULL,NULL,'Thị trấn'),
	 (383,'Thanh Nông',NULL,NULL,NULL,'Xã'),
	 (383,'Yên Bồng',NULL,NULL,NULL,'Xã'),
	 (384,'Cao Dương',NULL,NULL,NULL,'Xã'),
	 (384,'Cao Răm',NULL,NULL,NULL,'Xã'),
	 (384,'Cao Thắng',NULL,NULL,NULL,'Xã'),
	 (384,'Cư Yên',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (384,'Hoà Hợp',NULL,NULL,NULL,'Xã'),
	 (384,'Hòa Sơn',NULL,NULL,NULL,'Xã'),
	 (384,'Hợp Châu',NULL,NULL,NULL,'Xã'),
	 (384,'Hợp Hòa',NULL,NULL,NULL,'Xã'),
	 (384,'Hợp Thanh',NULL,NULL,NULL,'Xã'),
	 (384,'Lâm Sơn',NULL,NULL,NULL,'Xã'),
	 (384,'Liên Sơn',NULL,NULL,NULL,'Xã'),
	 (384,'Long Sơn',NULL,NULL,NULL,'Xã'),
	 (384,'Lương Sơn',NULL,NULL,NULL,'Thị trấn'),
	 (384,'Nhuận Trạch',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (384,'Tân Thành',NULL,NULL,NULL,'Xã'),
	 (384,'Tân Vinh',NULL,NULL,NULL,'Xã'),
	 (384,'Thành Lập',NULL,NULL,NULL,'Xã'),
	 (384,'Thanh Lương',NULL,NULL,NULL,'Xã'),
	 (384,'Tiến Sơn',NULL,NULL,NULL,'Xã'),
	 (384,'Trung Sơn',NULL,NULL,NULL,'Xã'),
	 (384,'Trường Sơn',NULL,NULL,NULL,'Xã'),
	 (385,'Ba Khan',NULL,NULL,NULL,'Xã'),
	 (385,'Bao La',NULL,NULL,NULL,'Xã'),
	 (385,'Chiềng Châu',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (385,'Cun Pheo',NULL,NULL,NULL,'Xã'),
	 (385,'Đồng Bảng',NULL,NULL,NULL,'Xã'),
	 (385,'Hang Kia',NULL,NULL,NULL,'Xã'),
	 (385,'Mai Châu',NULL,NULL,NULL,'Thị trấn'),
	 (385,'Mai Hạ',NULL,NULL,NULL,'Xã'),
	 (385,'Mai Hịch',NULL,NULL,NULL,'Xã'),
	 (385,'Nà Mèo',NULL,NULL,NULL,'Xã'),
	 (385,'Nà Phòn',NULL,NULL,NULL,'Xã'),
	 (385,'Noong Luông',NULL,NULL,NULL,'Xã'),
	 (385,'Pà Cò',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (385,'Phúc Sạn',NULL,NULL,NULL,'Xã'),
	 (385,'Piềng Vế',NULL,NULL,NULL,'Xã'),
	 (385,'Pù Pin',NULL,NULL,NULL,'Xã'),
	 (385,'Tân Dân',NULL,NULL,NULL,'Xã'),
	 (385,'Tân Mai',NULL,NULL,NULL,'Xã'),
	 (385,'Tân Sơn',NULL,NULL,NULL,'Xã'),
	 (385,'Thung Khe',NULL,NULL,NULL,'Xã'),
	 (385,'Tòng Đậu',NULL,NULL,NULL,'Xã'),
	 (385,'Vạn Mai',NULL,NULL,NULL,'Xã'),
	 (385,'Xăm Khòe',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (386,'Bắc Sơn',NULL,NULL,NULL,'Xã'),
	 (386,'Địch Giáo',NULL,NULL,NULL,'Xã'),
	 (386,'Do Nhân',NULL,NULL,NULL,'Xã'),
	 (386,'Đông Lai',NULL,NULL,NULL,'Xã'),
	 (386,'Gia Mô',NULL,NULL,NULL,'Xã'),
	 (386,'Lỗ Sơn',NULL,NULL,NULL,'Xã'),
	 (386,'Lũng Vân',NULL,NULL,NULL,'Xã'),
	 (386,'Mãn Đức',NULL,NULL,NULL,'Xã'),
	 (386,'Mường Khến',NULL,NULL,NULL,'Thị trấn'),
	 (386,'Mỹ Hoà',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (386,'Nam Sơn',NULL,NULL,NULL,'Xã'),
	 (386,'Ngổ Luông',NULL,NULL,NULL,'Xã'),
	 (386,'Ngọc Mỹ',NULL,NULL,NULL,'Xã'),
	 (386,'Ngòi Hoa',NULL,NULL,NULL,'Xã'),
	 (386,'Phong Phú',NULL,NULL,NULL,'Xã'),
	 (386,'Phú Cường',NULL,NULL,NULL,'Xã'),
	 (386,'Phú Vinh',NULL,NULL,NULL,'Xã'),
	 (386,'Quy Hậu',NULL,NULL,NULL,'Xã'),
	 (386,'Quy Mỹ',NULL,NULL,NULL,'Xã'),
	 (386,'Quyết Chiến',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (386,'Thanh Hối',NULL,NULL,NULL,'Xã'),
	 (386,'Trung Hoà',NULL,NULL,NULL,'Xã'),
	 (386,'Tử Nê',NULL,NULL,NULL,'Xã'),
	 (386,'Tuân Lộ',NULL,NULL,NULL,'Xã'),
	 (387,'Bảo Hiệu',NULL,NULL,NULL,'Xã'),
	 (387,'Đa Phúc',NULL,NULL,NULL,'Xã'),
	 (387,'Đoàn Kết',NULL,NULL,NULL,'Xã'),
	 (387,'Hàng Trạm',NULL,NULL,NULL,'Thị trấn'),
	 (387,'Hữu Lợi',NULL,NULL,NULL,'Xã'),
	 (387,'Lạc Hưng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (387,'Lạc Lương',NULL,NULL,NULL,'Xã'),
	 (387,'Lạc Sỹ',NULL,NULL,NULL,'Xã'),
	 (387,'Lạc Thịnh',NULL,NULL,NULL,'Xã'),
	 (387,'Ngọc Lương',NULL,NULL,NULL,'Xã'),
	 (387,'Phú Lai',NULL,NULL,NULL,'Xã'),
	 (387,'Yên Lạc',NULL,NULL,NULL,'Xã'),
	 (387,'Yên Trị',NULL,NULL,NULL,'Xã'),
	 (388,'An Phú',NULL,NULL,NULL,'Thị trấn'),
	 (388,'Đa Phước',NULL,NULL,NULL,'Xã'),
	 (388,'Khánh An',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (388,'Khánh Bình',NULL,NULL,NULL,'Xã'),
	 (388,'Long Bình',NULL,NULL,NULL,'Thị trấn'),
	 (388,'Nhơn Hội',NULL,NULL,NULL,'Xã'),
	 (388,'Phú Hội',NULL,NULL,NULL,'Xã'),
	 (388,'Phú Hữu',NULL,NULL,NULL,'Xã'),
	 (388,'Phước Hưng',NULL,NULL,NULL,'Xã'),
	 (388,'Quốc Thái',NULL,NULL,NULL,'Xã'),
	 (388,'Vĩnh Hậu',NULL,NULL,NULL,'Xã'),
	 (388,'Vĩnh Hội Đông',NULL,NULL,NULL,'Xã'),
	 (388,'Vĩnh Lộc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (388,'Vĩnh Trường',NULL,NULL,NULL,'Xã'),
	 (389,'Châu Phú A',NULL,NULL,NULL,'Phường'),
	 (389,'Châu Phú B',NULL,NULL,NULL,'Phường'),
	 (389,'Núi Sam',NULL,NULL,NULL,'Phường'),
	 (389,'Vĩnh Châu',NULL,NULL,NULL,'Xã'),
	 (389,'Vĩnh Mỹ',NULL,NULL,NULL,'Phường'),
	 (389,'Vĩnh Ngươn',NULL,NULL,NULL,'Xã'),
	 (389,'Vĩnh Tế',NULL,NULL,NULL,'Xã'),
	 (390,'Bình Chánh',NULL,NULL,NULL,'Xã'),
	 (390,'Bình Long',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (390,'Bình Mỹ',NULL,NULL,NULL,'Xã'),
	 (390,'Bình Phú',NULL,NULL,NULL,'Xã'),
	 (390,'Bình Thủy',NULL,NULL,NULL,'Xã'),
	 (390,'Cái Dầu',NULL,NULL,NULL,'Thị trấn'),
	 (390,'Đạo Hữu Cảnh',NULL,NULL,NULL,'Xã'),
	 (390,'Khánh Hòa',NULL,NULL,NULL,'Xã'),
	 (390,'Mỹ Đức',NULL,NULL,NULL,'Xã'),
	 (390,'Mỹ Phú',NULL,NULL,NULL,'Xã'),
	 (390,'Ô Long Vĩ',NULL,NULL,NULL,'Xã'),
	 (390,'Thạnh Mỹ Tây',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (390,'Vĩnh Thạnh Trung',NULL,NULL,NULL,'Xã'),
	 (391,'An Châu',NULL,NULL,NULL,'Thị trấn'),
	 (391,'An Hòa',NULL,NULL,NULL,'Xã'),
	 (391,'Bình Hòa',NULL,NULL,NULL,'Xã'),
	 (391,'Bình Thạnh',NULL,NULL,NULL,'Xã'),
	 (391,'Cần Đăng',NULL,NULL,NULL,'Xã'),
	 (391,'Hòa Bình Thạnh',NULL,NULL,NULL,'Xã'),
	 (391,'Tân Phú',NULL,NULL,NULL,'Xã'),
	 (391,'Vĩnh An',NULL,NULL,NULL,'Xã'),
	 (391,'Vĩnh Bình',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (391,'Vĩnh Hanh',NULL,NULL,NULL,'Xã'),
	 (391,'Vĩnh Lợi',NULL,NULL,NULL,'Xã'),
	 (391,'Vĩnh Nhuận',NULL,NULL,NULL,'Xã'),
	 (391,'Vĩnh Thành',NULL,NULL,NULL,'Xã'),
	 (392,'An Thạnh Trung',NULL,NULL,NULL,'Xã'),
	 (392,'Bình Phước Xuân',NULL,NULL,NULL,'Xã'),
	 (392,'Chợ Mới',NULL,NULL,NULL,'Thị trấn'),
	 (392,'Hòa An',NULL,NULL,NULL,'Xã'),
	 (392,'Hòa Bình',NULL,NULL,NULL,'Xã'),
	 (392,'Hội An',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (392,'Kiến An',NULL,NULL,NULL,'Xã'),
	 (392,'Kiến Thành',NULL,NULL,NULL,'Xã'),
	 (392,'Long Điền A',NULL,NULL,NULL,'Xã'),
	 (392,'Long Điền B',NULL,NULL,NULL,'Xã'),
	 (392,'Long Giang',NULL,NULL,NULL,'Xã'),
	 (392,'Long Kiến',NULL,NULL,NULL,'Xã'),
	 (392,'Mỹ An',NULL,NULL,NULL,'Xã'),
	 (392,'Mỹ Hiệp',NULL,NULL,NULL,'Xã'),
	 (392,'Mỹ Hội Đông',NULL,NULL,NULL,'Xã'),
	 (392,'Mỹ Luông',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (392,'Nhơn Mỹ',NULL,NULL,NULL,'Xã'),
	 (392,'Tấn Mỹ',NULL,NULL,NULL,'Xã'),
	 (393,'Bình Đức',NULL,NULL,NULL,'Phường'),
	 (393,'Bình Khánh',NULL,NULL,NULL,'Phường'),
	 (393,'Đông Xuyên',NULL,NULL,NULL,'Phường'),
	 (393,'Mỹ Bình',NULL,NULL,NULL,'Phường'),
	 (393,'Mỹ Hòa',NULL,NULL,NULL,'Phường'),
	 (393,'Mỹ Hòa Hưng',NULL,NULL,NULL,'Xã'),
	 (393,'Mỹ Khánh',NULL,NULL,NULL,'Xã'),
	 (393,'Mỹ Long',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (393,'Mỹ Phước',NULL,NULL,NULL,'Phường'),
	 (393,'Mỹ Quý',NULL,NULL,NULL,'Phường'),
	 (393,'Mỹ Thạnh',NULL,NULL,NULL,'Phường'),
	 (393,'Mỹ Thới',NULL,NULL,NULL,'Phường'),
	 (393,'Mỹ Xuyên',NULL,NULL,NULL,'Phường'),
	 (394,'Bình Thạnh Đông',NULL,NULL,NULL,'Xã'),
	 (394,'Chợ Vàm',NULL,NULL,NULL,'Thị trấn'),
	 (394,'Hiệp Xương',NULL,NULL,NULL,'Xã'),
	 (394,'Hòa Lạc',NULL,NULL,NULL,'Xã'),
	 (394,'Long Hòa',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (394,'Phú An',NULL,NULL,NULL,'Xã'),
	 (394,'Phú Bình',NULL,NULL,NULL,'Xã'),
	 (394,'Phú Hiệp',NULL,NULL,NULL,'Xã'),
	 (394,'Phú Hưng',NULL,NULL,NULL,'Xã'),
	 (394,'Phú Lâm',NULL,NULL,NULL,'Xã'),
	 (394,'Phú Long',NULL,NULL,NULL,'Xã'),
	 (394,'Phú Mỹ',NULL,NULL,NULL,'Thị trấn'),
	 (394,'Phú Thành',NULL,NULL,NULL,'Xã'),
	 (394,'Phú Thạnh',NULL,NULL,NULL,'Xã'),
	 (394,'Phú Thọ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (394,'Phú Xuân',NULL,NULL,NULL,'Xã'),
	 (394,'Tân Hòa',NULL,NULL,NULL,'Xã'),
	 (394,'Tân Trung',NULL,NULL,NULL,'Xã'),
	 (395,'Châu Phong',NULL,NULL,NULL,'Xã'),
	 (395,'Lê Chánh',NULL,NULL,NULL,'Xã'),
	 (395,'Long An',NULL,NULL,NULL,'Xã'),
	 (395,'Long Châu',NULL,NULL,NULL,'Phường'),
	 (395,'Long Hưng',NULL,NULL,NULL,'Phường'),
	 (395,'Long Phú',NULL,NULL,NULL,'Phường'),
	 (395,'Long Sơn',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (395,'Long Thạnh',NULL,NULL,NULL,'Phường'),
	 (395,'Phú Lộc',NULL,NULL,NULL,'Xã'),
	 (395,'Phú Vĩnh',NULL,NULL,NULL,'Xã'),
	 (395,'Tân An',NULL,NULL,NULL,'Xã'),
	 (395,'Tân Thạnh',NULL,NULL,NULL,'Xã'),
	 (395,'Vĩnh Hòa',NULL,NULL,NULL,'Xã'),
	 (395,'Vĩnh Xương',NULL,NULL,NULL,'Xã'),
	 (396,'An Bình',NULL,NULL,NULL,'Xã'),
	 (396,'Bình Thành',NULL,NULL,NULL,'Xã'),
	 (396,'Định Mỹ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (396,'Định Thành',NULL,NULL,NULL,'Xã'),
	 (396,'Mỹ Phú Đông',NULL,NULL,NULL,'Xã'),
	 (396,'Núi Sập',NULL,NULL,NULL,'Thị trấn'),
	 (396,'Óc Eo',NULL,NULL,NULL,'Thị trấn'),
	 (396,'Phú Hòa',NULL,NULL,NULL,'Thị trấn'),
	 (396,'Phú Thuận',NULL,NULL,NULL,'Xã'),
	 (396,'Tây Phú',NULL,NULL,NULL,'Xã'),
	 (396,'Thoại Giang',NULL,NULL,NULL,'Xã'),
	 (396,'Vĩnh Chánh',NULL,NULL,NULL,'Xã'),
	 (396,'Vĩnh Khánh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (396,'Vĩnh Phú',NULL,NULL,NULL,'Xã'),
	 (396,'Vĩnh Trạch',NULL,NULL,NULL,'Xã'),
	 (396,'Vọng Đông',NULL,NULL,NULL,'Xã'),
	 (396,'Vọng Thê',NULL,NULL,NULL,'Xã'),
	 (397,'An Cư',NULL,NULL,NULL,'Xã'),
	 (397,'An Hảo',NULL,NULL,NULL,'Xã'),
	 (397,'An Nông',NULL,NULL,NULL,'Xã'),
	 (397,'An Phú',NULL,NULL,NULL,'Xã'),
	 (397,'Chi Lăng',NULL,NULL,NULL,'Thị trấn'),
	 (397,'Nhà Bàng',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (397,'Nhơn Hưng',NULL,NULL,NULL,'Xã'),
	 (397,'Núi Voi',NULL,NULL,NULL,'Xã'),
	 (397,'Tân Lập',NULL,NULL,NULL,'Xã'),
	 (397,'Tân Lợi',NULL,NULL,NULL,'Xã'),
	 (397,'Thới Sơn',NULL,NULL,NULL,'Xã'),
	 (397,'Tịnh Biên',NULL,NULL,NULL,'Thị trấn'),
	 (397,'Văn Giáo',NULL,NULL,NULL,'Xã'),
	 (397,'Vĩnh Trung',NULL,NULL,NULL,'Xã'),
	 (398,'An Tức',NULL,NULL,NULL,'Xã'),
	 (398,'Ba Chúc',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (398,'Châu Lăng',NULL,NULL,NULL,'Xã'),
	 (398,'Cô Tô',NULL,NULL,NULL,'Xã'),
	 (398,'Lạc Quới',NULL,NULL,NULL,'Xã'),
	 (398,'Lê Trì',NULL,NULL,NULL,'Xã'),
	 (398,'Lương An Trà',NULL,NULL,NULL,'Xã'),
	 (398,'Lương Phi',NULL,NULL,NULL,'Xã'),
	 (398,'Núi Tô',NULL,NULL,NULL,'Xã'),
	 (398,'Ô Lâm',NULL,NULL,NULL,'Xã'),
	 (398,'Tà Đảnh',NULL,NULL,NULL,'Xã'),
	 (398,'Tân Tuyến',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (398,'Tri Tôn',NULL,NULL,NULL,'Thị trấn'),
	 (398,'Vĩnh Gia',NULL,NULL,NULL,'Xã'),
	 (398,'Vĩnh Phước',NULL,NULL,NULL,'Xã'),
	 (399,'Bá Hiến',NULL,NULL,NULL,'Xã'),
	 (399,'Đạo Đức',NULL,NULL,NULL,'Xã'),
	 (399,'Gia Khánh',NULL,NULL,NULL,'Thị trấn'),
	 (399,'Hương Canh',NULL,NULL,NULL,'Thị trấn'),
	 (399,'Hương Sơn',NULL,NULL,NULL,'Xã'),
	 (399,'Phú Xuân',NULL,NULL,NULL,'Xã'),
	 (399,'Quất Lưu',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (399,'Sơn Lôi',NULL,NULL,NULL,'Xã'),
	 (399,'Tam Hợp',NULL,NULL,NULL,'Xã'),
	 (399,'Tân Phong',NULL,NULL,NULL,'Xã'),
	 (399,'Thanh Lãng',NULL,NULL,NULL,'Thị trấn'),
	 (399,'Thiện Kế',NULL,NULL,NULL,'Xã'),
	 (399,'Trung Mỹ',NULL,NULL,NULL,'Xã'),
	 (400,'Bắc Bình',NULL,NULL,NULL,'Xã'),
	 (400,'Bàn Giản',NULL,NULL,NULL,'Xã'),
	 (400,'Đình Chu',NULL,NULL,NULL,'Xã'),
	 (400,'Đồng Ích',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (400,'Hoa Sơn',NULL,NULL,NULL,'Thị trấn'),
	 (400,'Hợp Lý',NULL,NULL,NULL,'Xã'),
	 (400,'Lập Thạch',NULL,NULL,NULL,'Thị trấn'),
	 (400,'Liên Hòa',NULL,NULL,NULL,'Xã'),
	 (400,'Liễn Sơn',NULL,NULL,NULL,'Xã'),
	 (400,'Ngọc Mỹ',NULL,NULL,NULL,'Xã'),
	 (400,'Quang Sơn',NULL,NULL,NULL,'Xã'),
	 (400,'Sơn Đông',NULL,NULL,NULL,'Xã'),
	 (400,'Thái Hòa',NULL,NULL,NULL,'Xã'),
	 (400,'Tiên Lữ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (400,'Triệu Đề',NULL,NULL,NULL,'Xã'),
	 (400,'Tử Du',NULL,NULL,NULL,'Xã'),
	 (400,'Văn Quán',NULL,NULL,NULL,'Xã'),
	 (400,'Vân Trục',NULL,NULL,NULL,'Xã'),
	 (400,'Xuân Hòa',NULL,NULL,NULL,'Xã'),
	 (400,'Xuân Lôi',NULL,NULL,NULL,'Xã'),
	 (401,'Cao Minh',NULL,NULL,NULL,'Xã'),
	 (401,'Đồng Xuân',NULL,NULL,NULL,'Phường'),
	 (401,'Hùng Vương',NULL,NULL,NULL,'Phường'),
	 (401,'Nam Viêm',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (401,'Ngọc Thanh',NULL,NULL,NULL,'Xã'),
	 (401,'Phúc Thắng',NULL,NULL,NULL,'Phường'),
	 (401,'Tiền Châu',NULL,NULL,NULL,'Xã'),
	 (401,'Trưng Nhị',NULL,NULL,NULL,'Phường'),
	 (401,'Trưng Trắc',NULL,NULL,NULL,'Phường'),
	 (401,'Xuân Hòa',NULL,NULL,NULL,'Phường'),
	 (402,'Bạch Lưu',NULL,NULL,NULL,'Xã'),
	 (402,'Cao Phong',NULL,NULL,NULL,'Xã'),
	 (402,'Đôn Nhân',NULL,NULL,NULL,'Xã'),
	 (402,'Đồng Quế',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (402,'Đồng Thịnh',NULL,NULL,NULL,'Xã'),
	 (402,'Đức Bác',NULL,NULL,NULL,'Xã'),
	 (402,'Hải Lựu',NULL,NULL,NULL,'Xã'),
	 (402,'Lãng Công',NULL,NULL,NULL,'Xã'),
	 (402,'Nhân Đạo',NULL,NULL,NULL,'Xã'),
	 (402,'Nhạo Sơn',NULL,NULL,NULL,'Xã'),
	 (402,'Như Thụy',NULL,NULL,NULL,'Xã'),
	 (402,'Phương Khoan',NULL,NULL,NULL,'Xã'),
	 (402,'Quang Yên',NULL,NULL,NULL,'Xã'),
	 (402,'Tam Sơn',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (402,'Tân Lập',NULL,NULL,NULL,'Xã'),
	 (402,'Tứ Yên',NULL,NULL,NULL,'Xã'),
	 (402,'Yên Thạch',NULL,NULL,NULL,'Xã'),
	 (403,'Bồ Lý',NULL,NULL,NULL,'Xã'),
	 (403,'Đại Đình',NULL,NULL,NULL,'Xã'),
	 (403,'Đạo Trù',NULL,NULL,NULL,'Xã'),
	 (403,'Hồ Sơn',NULL,NULL,NULL,'Xã'),
	 (403,'Hợp Châu',NULL,NULL,NULL,'Xã'),
	 (403,'Minh Quang',NULL,NULL,NULL,'Xã'),
	 (403,'Tam Đảo',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (403,'Tam Quan',NULL,NULL,NULL,'Xã'),
	 (403,'Yên Dương',NULL,NULL,NULL,'Xã'),
	 (404,'An Hòa',NULL,NULL,NULL,'Xã'),
	 (404,'Đạo Tú',NULL,NULL,NULL,'Xã'),
	 (404,'Đồng Tĩnh',NULL,NULL,NULL,'Xã'),
	 (404,'Duy Phiên',NULL,NULL,NULL,'Xã'),
	 (404,'Hoàng Đan',NULL,NULL,NULL,'Xã'),
	 (404,'Hoàng Hoa',NULL,NULL,NULL,'Xã'),
	 (404,'Hoàng Lâu',NULL,NULL,NULL,'Xã'),
	 (404,'Hợp Hòa',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (404,'Hợp Thịnh',NULL,NULL,NULL,'Xã'),
	 (404,'Hướng Đạo',NULL,NULL,NULL,'Xã'),
	 (404,'Kim Long',NULL,NULL,NULL,'Xã'),
	 (404,'Thanh Vân',NULL,NULL,NULL,'Xã'),
	 (404,'Vân Hội',NULL,NULL,NULL,'Xã'),
	 (405,'An Tường',NULL,NULL,NULL,'Xã'),
	 (405,'Bình Dương',NULL,NULL,NULL,'Xã'),
	 (405,'Bồ Sao',NULL,NULL,NULL,'Xã'),
	 (405,'Cao Đại',NULL,NULL,NULL,'Xã'),
	 (405,'Chấn Hưng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (405,'Đại Đồng',NULL,NULL,NULL,'Xã'),
	 (405,'Kim Xá',NULL,NULL,NULL,'Xã'),
	 (405,'Lũng Hoà',NULL,NULL,NULL,'Xã'),
	 (405,'Lý Nhân',NULL,NULL,NULL,'Xã'),
	 (405,'Nghĩa Hưng',NULL,NULL,NULL,'Xã'),
	 (405,'Ngũ Kiên',NULL,NULL,NULL,'Xã'),
	 (405,'Phú Đa',NULL,NULL,NULL,'Xã'),
	 (405,'Phú Thịnh',NULL,NULL,NULL,'Xã'),
	 (405,'Tam Phúc',NULL,NULL,NULL,'Xã'),
	 (405,'Tân Cương',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (405,'Tân Tiến',NULL,NULL,NULL,'Xã'),
	 (405,'Thổ Tang',NULL,NULL,NULL,'Thị trấn'),
	 (405,'Thượng Trưng',NULL,NULL,NULL,'Xã'),
	 (405,'Tứ Trưng',NULL,NULL,NULL,'Thị trấn'),
	 (405,'Tuân Chính',NULL,NULL,NULL,'Xã'),
	 (405,'Vân Xuân',NULL,NULL,NULL,'Xã'),
	 (405,'Việt Xuân',NULL,NULL,NULL,'Xã'),
	 (405,'Vĩnh Ninh',NULL,NULL,NULL,'Xã'),
	 (405,'Vĩnh Sơn',NULL,NULL,NULL,'Xã'),
	 (405,'Vĩnh Thịnh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (405,'Vĩnh Tường',NULL,NULL,NULL,'Thị trấn'),
	 (405,'Vũ Di',NULL,NULL,NULL,'Xã'),
	 (405,'Yên Bình',NULL,NULL,NULL,'Xã'),
	 (405,'Yên Lập',NULL,NULL,NULL,'Xã'),
	 (406,'Định Trung',NULL,NULL,NULL,'Xã'),
	 (406,'Đống Đa',NULL,NULL,NULL,'Phường'),
	 (406,'Đồng Tâm',NULL,NULL,NULL,'Phường'),
	 (406,'Hội Hợp',NULL,NULL,NULL,'Phường'),
	 (406,'Khai Quang',NULL,NULL,NULL,'Phường'),
	 (406,'Liên Bảo',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (406,'Ngô Quyền',NULL,NULL,NULL,'Phường'),
	 (406,'Thanh Trù',NULL,NULL,NULL,'Xã'),
	 (406,'Tích Sơn',NULL,NULL,NULL,'Phường'),
	 (407,'Bình Định',NULL,NULL,NULL,'Xã'),
	 (407,'Đại Tự',NULL,NULL,NULL,'Xã'),
	 (407,'Đồng Cương',NULL,NULL,NULL,'Xã'),
	 (407,'Đồng Văn',NULL,NULL,NULL,'Xã'),
	 (407,'Hồng Châu',NULL,NULL,NULL,'Xã'),
	 (407,'Hồng Phương',NULL,NULL,NULL,'Xã'),
	 (407,'Liên Châu',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (407,'Nguyệt Đức',NULL,NULL,NULL,'Xã'),
	 (407,'Tam Hồng',NULL,NULL,NULL,'Xã'),
	 (407,'Tề Lỗ',NULL,NULL,NULL,'Xã'),
	 (407,'Trung Hà',NULL,NULL,NULL,'Xã'),
	 (407,'Trung Kiên',NULL,NULL,NULL,'Xã'),
	 (407,'Trung Nguyên',NULL,NULL,NULL,'Xã'),
	 (407,'Văn Tiến',NULL,NULL,NULL,'Xã'),
	 (407,'Yên Đồng',NULL,NULL,NULL,'Xã'),
	 (407,'Yên Lạc',NULL,NULL,NULL,'Thị trấn'),
	 (407,'Yên Phương',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (408,'An Thạnh',NULL,NULL,NULL,'Xã'),
	 (408,'Bến Cầu',NULL,NULL,NULL,'Thị trấn'),
	 (408,'Lợi Thuận',NULL,NULL,NULL,'Xã'),
	 (408,'Long Chữ',NULL,NULL,NULL,'Xã'),
	 (408,'Long Giang',NULL,NULL,NULL,'Xã'),
	 (408,'Long Khánh',NULL,NULL,NULL,'Xã'),
	 (408,'Long Phước',NULL,NULL,NULL,'Xã'),
	 (408,'Long Thuận',NULL,NULL,NULL,'Xã'),
	 (408,'Tiên Thuận',NULL,NULL,NULL,'Xã'),
	 (409,'An Bình',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (409,'An Cơ',NULL,NULL,NULL,'Xã'),
	 (409,'Biên Giới',NULL,NULL,NULL,'Xã'),
	 (409,'Châu Thành',NULL,NULL,NULL,'Thị trấn'),
	 (409,'Đồng Khởi',NULL,NULL,NULL,'Xã'),
	 (409,'Hảo Đước',NULL,NULL,NULL,'Xã'),
	 (409,'Hòa Hội',NULL,NULL,NULL,'Xã'),
	 (409,'Hòa Thạnh',NULL,NULL,NULL,'Xã'),
	 (409,'Long Vĩnh',NULL,NULL,NULL,'Xã'),
	 (409,'Ninh Điền',NULL,NULL,NULL,'Xã'),
	 (409,'Phước Vinh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (409,'Thái Bình',NULL,NULL,NULL,'Xã'),
	 (409,'Thanh Điền',NULL,NULL,NULL,'Xã'),
	 (409,'Thành Long',NULL,NULL,NULL,'Xã'),
	 (409,'Trí Bình',NULL,NULL,NULL,'Xã'),
	 (410,'Bàu Năng',NULL,NULL,NULL,'Xã'),
	 (410,'Bến Củi',NULL,NULL,NULL,'Xã'),
	 (410,'Cầu Khởi',NULL,NULL,NULL,'Xã'),
	 (410,'Chà Là',NULL,NULL,NULL,'Xã'),
	 (410,'Dương Minh Châu',NULL,NULL,NULL,'Thị trấn'),
	 (410,'Lộc Ninh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (410,'Phan',NULL,NULL,NULL,'Xã'),
	 (410,'Phước Minh',NULL,NULL,NULL,'Xã'),
	 (410,'Phước Ninh',NULL,NULL,NULL,'Xã'),
	 (410,'Suối Đá',NULL,NULL,NULL,'Xã'),
	 (410,'Truông Mít',NULL,NULL,NULL,'Xã'),
	 (411,'Bàu Đồn',NULL,NULL,NULL,'Xã'),
	 (411,'Cẩm Giang',NULL,NULL,NULL,'Xã'),
	 (411,'Gò Dầu',NULL,NULL,NULL,'Thị trấn'),
	 (411,'Hiệp Thạnh',NULL,NULL,NULL,'Xã'),
	 (411,'Phước Đông',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (411,'Phước Thạnh',NULL,NULL,NULL,'Xã'),
	 (411,'Phước Trạch',NULL,NULL,NULL,'Xã'),
	 (411,'Thạnh Đức',NULL,NULL,NULL,'Xã'),
	 (411,'Thanh Phước',NULL,NULL,NULL,'Xã'),
	 (412,'Hiệp Tân',NULL,NULL,NULL,'Xã'),
	 (412,'Hòa Thành',NULL,NULL,NULL,'Thị trấn'),
	 (412,'Long Thành Bắc',NULL,NULL,NULL,'Xã'),
	 (412,'Long Thành Nam',NULL,NULL,NULL,'Xã'),
	 (412,'Long Thành Trung',NULL,NULL,NULL,'Xã'),
	 (412,'Trường Đông',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (412,'Trường Hòa',NULL,NULL,NULL,'Xã'),
	 (412,'Trường Tây',NULL,NULL,NULL,'Xã'),
	 (413,'Hòa Hiệp',NULL,NULL,NULL,'Xã'),
	 (413,'Mỏ Công',NULL,NULL,NULL,'Xã'),
	 (413,'Tân Biên',NULL,NULL,NULL,'Thị trấn'),
	 (413,'Tân Bình',NULL,NULL,NULL,'Xã'),
	 (413,'Tân Lập',NULL,NULL,NULL,'Xã'),
	 (413,'Tân Phong',NULL,NULL,NULL,'Xã'),
	 (413,'Thạnh Bắc',NULL,NULL,NULL,'Xã'),
	 (413,'Thạnh Bình',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (413,'Thạnh Tây',NULL,NULL,NULL,'Xã'),
	 (413,'Trà Vong',NULL,NULL,NULL,'Xã'),
	 (414,'Suối Dây',NULL,NULL,NULL,'Xã'),
	 (414,'Suối Ngô',NULL,NULL,NULL,'Xã'),
	 (414,'Tân Châu',NULL,NULL,NULL,'Thị trấn'),
	 (414,'Tân Đông',NULL,NULL,NULL,'Xã'),
	 (414,'Tân Hà',NULL,NULL,NULL,'Xã'),
	 (414,'Tân Hiệp',NULL,NULL,NULL,'Xã'),
	 (414,'Tân Hòa',NULL,NULL,NULL,'Xã'),
	 (414,'Tân Hội',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (414,'Tân Hưng',NULL,NULL,NULL,'Xã'),
	 (414,'Tân Phú',NULL,NULL,NULL,'Xã'),
	 (414,'Tân Thành',NULL,NULL,NULL,'Xã'),
	 (414,'Thạnh Đông',NULL,NULL,NULL,'Xã'),
	 (415,'1',NULL,NULL,NULL,'Phường'),
	 (415,'2',NULL,NULL,NULL,'Phường'),
	 (415,'3',NULL,NULL,NULL,'Phường'),
	 (415,'4',NULL,NULL,NULL,'Phường'),
	 (415,'Bình Minh',NULL,NULL,NULL,'Xã'),
	 (415,'Hiệp Ninh',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (415,'Ninh Sơn',NULL,NULL,NULL,'Xã'),
	 (415,'Ninh Thạnh',NULL,NULL,NULL,'Xã'),
	 (415,'Tân Bình',NULL,NULL,NULL,'Xã'),
	 (415,'Thạnh Tân',NULL,NULL,NULL,'Xã'),
	 (416,'An Hòa',NULL,NULL,NULL,'Xã'),
	 (416,'An Tịnh',NULL,NULL,NULL,'Xã'),
	 (416,'Bình Thạnh',NULL,NULL,NULL,'Xã'),
	 (416,'Đôn Thuận',NULL,NULL,NULL,'Xã'),
	 (416,'Gia Bình',NULL,NULL,NULL,'Xã'),
	 (416,'Gia Lộc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (416,'Hưng Thuận',NULL,NULL,NULL,'Xã'),
	 (416,'Lộc Hưng',NULL,NULL,NULL,'Xã'),
	 (416,'Phước Chỉ',NULL,NULL,NULL,'Xã'),
	 (416,'Phước Lưu',NULL,NULL,NULL,'Xã'),
	 (416,'Trảng Bàng',NULL,NULL,NULL,'Thị trấn'),
	 (417,'An Khánh',NULL,NULL,NULL,'Xã'),
	 (417,'Bản Ngoại',NULL,NULL,NULL,'Xã'),
	 (417,'Bình Thuận',NULL,NULL,NULL,'Xã'),
	 (417,'Cát Nê',NULL,NULL,NULL,'Xã'),
	 (417,'Cù Vân',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (417,'Đại Từ',NULL,NULL,NULL,'Thị trấn'),
	 (417,'Đức Lương',NULL,NULL,NULL,'Xã'),
	 (417,'Hà Thượng',NULL,NULL,NULL,'Xã'),
	 (417,'Hoàng Nông',NULL,NULL,NULL,'Xã'),
	 (417,'Hùng Sơn',NULL,NULL,NULL,'Xã'),
	 (417,'Khôi Kỳ',NULL,NULL,NULL,'Xã'),
	 (417,'Ký Phú',NULL,NULL,NULL,'Xã'),
	 (417,'La Bằng',NULL,NULL,NULL,'Xã'),
	 (417,'Lục Ba',NULL,NULL,NULL,'Xã'),
	 (417,'Minh Tiến',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (417,'Mỹ Yên',NULL,NULL,NULL,'Xã'),
	 (417,'Na Mao',NULL,NULL,NULL,'Xã'),
	 (417,'Phú Cường',NULL,NULL,NULL,'Xã'),
	 (417,'Phú Lạc',NULL,NULL,NULL,'Xã'),
	 (417,'Phú Thịnh',NULL,NULL,NULL,'Xã'),
	 (417,'Phú Xuyên',NULL,NULL,NULL,'Xã'),
	 (417,'Phục Linh',NULL,NULL,NULL,'Xã'),
	 (417,'Phúc Lương',NULL,NULL,NULL,'Xã'),
	 (417,'Quân Chu',NULL,NULL,NULL,'Thị trấn'),
	 (417,'Quân Chu',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (417,'Tân Linh',NULL,NULL,NULL,'Xã'),
	 (417,'Tân Thái',NULL,NULL,NULL,'Xã'),
	 (417,'Tiên Hội',NULL,NULL,NULL,'Xã'),
	 (417,'Vạn Thọ',NULL,NULL,NULL,'Xã'),
	 (417,'Văn Yên',NULL,NULL,NULL,'Xã'),
	 (417,'Yên Lãng',NULL,NULL,NULL,'Xã'),
	 (418,'Bảo Cường',NULL,NULL,NULL,'Xã'),
	 (418,'Bảo Linh',NULL,NULL,NULL,'Xã'),
	 (418,'Bình Thành',NULL,NULL,NULL,'Xã'),
	 (418,'Bình Yên',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (418,'Bộc Nhiêu',NULL,NULL,NULL,'Xã'),
	 (418,'Chợ Chu',NULL,NULL,NULL,'Thị trấn'),
	 (418,'Điềm Mặc',NULL,NULL,NULL,'Xã'),
	 (418,'Định Biên',NULL,NULL,NULL,'Xã'),
	 (418,'Đồng Thịnh',NULL,NULL,NULL,'Xã'),
	 (418,'Kim Phượng',NULL,NULL,NULL,'Xã'),
	 (418,'Kim Sơn',NULL,NULL,NULL,'Xã'),
	 (418,'Lam Vỹ',NULL,NULL,NULL,'Xã'),
	 (418,'Linh Thông',NULL,NULL,NULL,'Xã'),
	 (418,'Phú Đình',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (418,'Phú Tiến',NULL,NULL,NULL,'Xã'),
	 (418,'Phúc Chu',NULL,NULL,NULL,'Xã'),
	 (418,'Phượng Tiến',NULL,NULL,NULL,'Xã'),
	 (418,'Quy Kỳ',NULL,NULL,NULL,'Xã'),
	 (418,'Sơn Phú',NULL,NULL,NULL,'Xã'),
	 (418,'Tân Dương',NULL,NULL,NULL,'Xã'),
	 (418,'Tân Thịnh',NULL,NULL,NULL,'Xã'),
	 (418,'Thanh Định',NULL,NULL,NULL,'Xã'),
	 (418,'Trung Hội',NULL,NULL,NULL,'Xã'),
	 (418,'Trung Lương',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (419,'Cây Thị',NULL,NULL,NULL,'Xã'),
	 (419,'Chùa Hang',NULL,NULL,NULL,'Thị trấn'),
	 (419,'Hòa Bình',NULL,NULL,NULL,'Xã'),
	 (419,'Hóa Thượng',NULL,NULL,NULL,'Xã'),
	 (419,'Hóa Trung',NULL,NULL,NULL,'Xã'),
	 (419,'Hợp Tiến',NULL,NULL,NULL,'Xã'),
	 (419,'Huống Thượng',NULL,NULL,NULL,'Xã'),
	 (419,'Khe Mo',NULL,NULL,NULL,'Xã'),
	 (419,'Linh Sơn',NULL,NULL,NULL,'Xã'),
	 (419,'Minh Lập',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (419,'Nam Hòa',NULL,NULL,NULL,'Xã'),
	 (419,'Quang Sơn',NULL,NULL,NULL,'Xã'),
	 (419,'Sông Cầu',NULL,NULL,NULL,'Thị trấn'),
	 (419,'Tân Lợi',NULL,NULL,NULL,'Xã'),
	 (419,'Tân Long',NULL,NULL,NULL,'Xã'),
	 (419,'Trại Cau',NULL,NULL,NULL,'Thị trấn'),
	 (419,'Văn Hán',NULL,NULL,NULL,'Xã'),
	 (419,'Văn Lăng',NULL,NULL,NULL,'Xã'),
	 (420,'Ba Hàng',NULL,NULL,NULL,'Thị trấn'),
	 (420,'Bắc Sơn',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (420,'Bãi Bông',NULL,NULL,NULL,'Thị trấn'),
	 (420,'Đắc Sơn',NULL,NULL,NULL,'Xã'),
	 (420,'Đông Cao',NULL,NULL,NULL,'Xã'),
	 (420,'Đồng Tiến',NULL,NULL,NULL,'Xã'),
	 (420,'Hồng Tiến',NULL,NULL,NULL,'Xã'),
	 (420,'Minh Đức',NULL,NULL,NULL,'Xã'),
	 (420,'Nam Tiến',NULL,NULL,NULL,'Xã'),
	 (420,'Phúc Tân',NULL,NULL,NULL,'Xã'),
	 (420,'Phúc Thuận',NULL,NULL,NULL,'Xã'),
	 (420,'Tân Hương',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (420,'Tân Phú',NULL,NULL,NULL,'Xã'),
	 (420,'Thành Công',NULL,NULL,NULL,'Xã'),
	 (420,'Thuận Thành',NULL,NULL,NULL,'Xã'),
	 (420,'Tiên Phong',NULL,NULL,NULL,'Xã'),
	 (420,'Trung Thành',NULL,NULL,NULL,'Xã'),
	 (420,'Vạn Phái',NULL,NULL,NULL,'Xã'),
	 (421,'Bàn Đạt',NULL,NULL,NULL,'Xã'),
	 (421,'Bảo Lý',NULL,NULL,NULL,'Xã'),
	 (421,'Đào Xá',NULL,NULL,NULL,'Xã'),
	 (421,'Điềm Thụy',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (421,'Đồng Liên',NULL,NULL,NULL,'Xã'),
	 (421,'Dương Thành',NULL,NULL,NULL,'Xã'),
	 (421,'Hà Châu',NULL,NULL,NULL,'Xã'),
	 (421,'Hương Sơn',NULL,NULL,NULL,'Thị trấn'),
	 (421,'Kha Sơn',NULL,NULL,NULL,'Xã'),
	 (421,'Lương Phú',NULL,NULL,NULL,'Xã'),
	 (421,'Nga My',NULL,NULL,NULL,'Xã'),
	 (421,'Nhã Lộng',NULL,NULL,NULL,'Xã'),
	 (421,'Tân Đức',NULL,NULL,NULL,'Xã'),
	 (421,'Tân Hòa',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (421,'Tân Khánh',NULL,NULL,NULL,'Xã'),
	 (421,'Tân Kim',NULL,NULL,NULL,'Xã'),
	 (421,'Tân Thành',NULL,NULL,NULL,'Xã'),
	 (421,'Thanh Ninh',NULL,NULL,NULL,'Xã'),
	 (421,'Thượng Đình',NULL,NULL,NULL,'Xã'),
	 (421,'Úc Kỳ',NULL,NULL,NULL,'Xã'),
	 (421,'Xuân Phương',NULL,NULL,NULL,'Xã'),
	 (422,'Cổ Lũng',NULL,NULL,NULL,'Xã'),
	 (422,'Động Đạt',NULL,NULL,NULL,'Xã'),
	 (422,'Đu',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (422,'Giang Tiên',NULL,NULL,NULL,'Thị trấn'),
	 (422,'Hợp Thành',NULL,NULL,NULL,'Xã'),
	 (422,'Ôn Lương',NULL,NULL,NULL,'Xã'),
	 (422,'Phấn Mễ',NULL,NULL,NULL,'Xã'),
	 (422,'Phú Đô',NULL,NULL,NULL,'Xã'),
	 (422,'Phủ Lý',NULL,NULL,NULL,'Xã'),
	 (422,'Sơn Cẩm',NULL,NULL,NULL,'Xã'),
	 (422,'Tức Tranh',NULL,NULL,NULL,'Xã'),
	 (422,'Vô Tranh',NULL,NULL,NULL,'Xã'),
	 (422,'Yên Đổ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (422,'Yên Lạc',NULL,NULL,NULL,'Xã'),
	 (422,'Yên Ninh',NULL,NULL,NULL,'Xã'),
	 (422,'Yên Trạch',NULL,NULL,NULL,'Xã'),
	 (423,'Bá Xuyên',NULL,NULL,NULL,'Xã'),
	 (423,'Bách Quang',NULL,NULL,NULL,'Phường'),
	 (423,'Bình Sơn',NULL,NULL,NULL,'Xã'),
	 (423,'Cải Đan',NULL,NULL,NULL,'Phường'),
	 (423,'Lương Châu',NULL,NULL,NULL,'Phường'),
	 (423,'Mỏ Chè',NULL,NULL,NULL,'Phường'),
	 (423,'Phố Cò',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (423,'Tân Quang',NULL,NULL,NULL,'Xã'),
	 (423,'Thắng Lợi',NULL,NULL,NULL,'Phường'),
	 (423,'Vinh Sơn',NULL,NULL,NULL,'Xã'),
	 (424,'Cam Giá',NULL,NULL,NULL,'Phường'),
	 (424,'Cao Ngạn',NULL,NULL,NULL,'Xã'),
	 (424,'Đồng Bẩm',NULL,NULL,NULL,'Xã'),
	 (424,'Đồng Quang',NULL,NULL,NULL,'Phường'),
	 (424,'Gia Sàng',NULL,NULL,NULL,'Phường'),
	 (424,'Hoàng Văn Thụ',NULL,NULL,NULL,'Phường'),
	 (424,'Hương Sơn',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (424,'Lương Sơn',NULL,NULL,NULL,'Xã'),
	 (424,'Phan Đình Phùng',NULL,NULL,NULL,'Phường'),
	 (424,'Phú Xá',NULL,NULL,NULL,'Phường'),
	 (424,'Phúc Hà',NULL,NULL,NULL,'Xã'),
	 (424,'Phúc Trìu',NULL,NULL,NULL,'Xã'),
	 (424,'Phúc Xuân',NULL,NULL,NULL,'Xã'),
	 (424,'Quan Triều',NULL,NULL,NULL,'Phường'),
	 (424,'Quang Trung',NULL,NULL,NULL,'Phường'),
	 (424,'Quang Vinh',NULL,NULL,NULL,'Phường'),
	 (424,'Quyết Thắng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (424,'Tân Cương',NULL,NULL,NULL,'Xã'),
	 (424,'Tân Lập',NULL,NULL,NULL,'Phường'),
	 (424,'Tân Long',NULL,NULL,NULL,'Phường'),
	 (424,'Tân Thành',NULL,NULL,NULL,'Phường'),
	 (424,'Tân Thịnh',NULL,NULL,NULL,'Phường'),
	 (424,'Thịnh Đán',NULL,NULL,NULL,'Phường'),
	 (424,'Thịnh Đức',NULL,NULL,NULL,'Xã'),
	 (424,'Thủy Đường',NULL,NULL,NULL,'Xã'),
	 (424,'Tích Lương',NULL,NULL,NULL,'Phường'),
	 (424,'Trung Thành',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (424,'Trưng Vương',NULL,NULL,NULL,'Phường'),
	 (424,'Túc Duyên',NULL,NULL,NULL,'Phường'),
	 (425,'Bình Long',NULL,NULL,NULL,'Xã'),
	 (425,'Cúc Đường',NULL,NULL,NULL,'Xã'),
	 (425,'Dân Tiến',NULL,NULL,NULL,'Xã'),
	 (425,'Đình Cả',NULL,NULL,NULL,'Thị trấn'),
	 (425,'La Hiên',NULL,NULL,NULL,'Xã'),
	 (425,'Lâu Thượng',NULL,NULL,NULL,'Xã'),
	 (425,'Liên Minh',NULL,NULL,NULL,'Xã'),
	 (425,'Nghinh Tường',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (425,'Phú Thượng',NULL,NULL,NULL,'Xã'),
	 (425,'Phương Giao',NULL,NULL,NULL,'Xã'),
	 (425,'Sảng Mộc',NULL,NULL,NULL,'Xã'),
	 (425,'Thần Sa',NULL,NULL,NULL,'Xã'),
	 (425,'Thượng Nung',NULL,NULL,NULL,'Xã'),
	 (425,'Tràng Xá',NULL,NULL,NULL,'Xã'),
	 (425,'Vũ Chấn',NULL,NULL,NULL,'Xã'),
	 (426,'Bắc Hà',NULL,NULL,NULL,'Thị trấn'),
	 (426,'Bản Cái',NULL,NULL,NULL,'Xã'),
	 (426,'Bản Già',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (426,'Bản Liền',NULL,NULL,NULL,'Xã'),
	 (426,'Bản Phố',NULL,NULL,NULL,'Xã'),
	 (426,'Bảo Nhai',NULL,NULL,NULL,'Xã'),
	 (426,'Cốc Lầu',NULL,NULL,NULL,'Xã'),
	 (426,'Cốc Ly',NULL,NULL,NULL,'Xã'),
	 (426,'Hoàng Thu Phố',NULL,NULL,NULL,'Xã'),
	 (426,'Lầu Thí Ngài',NULL,NULL,NULL,'Xã'),
	 (426,'Lùng Cải',NULL,NULL,NULL,'Xã'),
	 (426,'Lùng Phình',NULL,NULL,NULL,'Xã'),
	 (426,'Na Hối',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (426,'Nậm Đét',NULL,NULL,NULL,'Xã'),
	 (426,'Nậm Khánh',NULL,NULL,NULL,'Xã'),
	 (426,'Nậm Lúc',NULL,NULL,NULL,'Xã'),
	 (426,'Nậm Mòn',NULL,NULL,NULL,'Xã'),
	 (426,'Tà Chải',NULL,NULL,NULL,'Xã'),
	 (426,'Tả Củ Tỷ',NULL,NULL,NULL,'Xã'),
	 (426,'Tả Van Chư',NULL,NULL,NULL,'Xã'),
	 (426,'Thải Giàng Phố',NULL,NULL,NULL,'Xã'),
	 (427,'Bản Cầm',NULL,NULL,NULL,'Xã'),
	 (427,'Bản Phiệt',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (427,'Gia Phú',NULL,NULL,NULL,'Xã'),
	 (427,'Nông trường Phong Hải',NULL,NULL,NULL,'Thị trấn'),
	 (427,'Phố Lu',NULL,NULL,NULL,'Thị trấn'),
	 (427,'Phố Lu',NULL,NULL,NULL,'Xã'),
	 (427,'Phong Niên',NULL,NULL,NULL,'Xã'),
	 (427,'Phú Nhuận',NULL,NULL,NULL,'Xã'),
	 (427,'Sơn Hà',NULL,NULL,NULL,'Xã'),
	 (427,'Sơn Hải',NULL,NULL,NULL,'Xã'),
	 (427,'Tằng Loỏng',NULL,NULL,NULL,'Thị trấn'),
	 (427,'Thái Niên',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (427,'Trì Quang',NULL,NULL,NULL,'Xã'),
	 (427,'Xuân Giao',NULL,NULL,NULL,'Xã'),
	 (427,'Xuân Quang',NULL,NULL,NULL,'Xã'),
	 (428,'Bảo Hà',NULL,NULL,NULL,'Xã'),
	 (428,'Cam Con',NULL,NULL,NULL,'Xã'),
	 (428,'Điện Quan',NULL,NULL,NULL,'Xã'),
	 (428,'Kim Sơn',NULL,NULL,NULL,'Xã'),
	 (428,'Long Khánh',NULL,NULL,NULL,'Xã'),
	 (428,'Long Phúc',NULL,NULL,NULL,'Xã'),
	 (428,'Lương Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (428,'Minh Tân',NULL,NULL,NULL,'Xã'),
	 (428,'Nghĩa Đô',NULL,NULL,NULL,'Xã'),
	 (428,'Phố Ràng',NULL,NULL,NULL,'Thị trấn'),
	 (428,'Tân Dương',NULL,NULL,NULL,'Xã'),
	 (428,'Tân Tiến',NULL,NULL,NULL,'Xã'),
	 (428,'Thượng Hà',NULL,NULL,NULL,'Xã'),
	 (428,'Việt Tiến',NULL,NULL,NULL,'Xã'),
	 (428,'Vĩnh Yên',NULL,NULL,NULL,'Xã'),
	 (428,'Xuân Hòa',NULL,NULL,NULL,'Xã'),
	 (428,'Xuân Thượng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (428,'Yên Sơn',NULL,NULL,NULL,'Xã'),
	 (429,'A Lù',NULL,NULL,NULL,'Xã'),
	 (429,'A Mú Sung',NULL,NULL,NULL,'Xã'),
	 (429,'Bản Qua',NULL,NULL,NULL,'Xã'),
	 (429,'Bản Vược',NULL,NULL,NULL,'Xã'),
	 (429,'Bản Xèo',NULL,NULL,NULL,'Xã'),
	 (429,'Bát Xát',NULL,NULL,NULL,'Thị trấn'),
	 (429,'Cốc Mỳ',NULL,NULL,NULL,'Xã'),
	 (429,'Cốc San',NULL,NULL,NULL,'Xã'),
	 (429,'Dền Sáng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (429,'Dền Thàng',NULL,NULL,NULL,'Xã'),
	 (429,'Mường Hum',NULL,NULL,NULL,'Xã'),
	 (429,'Mường Vi',NULL,NULL,NULL,'Xã'),
	 (429,'Nậm Chạc',NULL,NULL,NULL,'Xã'),
	 (429,'Nậm Pung',NULL,NULL,NULL,'Xã'),
	 (429,'Ngải Thầu',NULL,NULL,NULL,'Xã'),
	 (429,'Pa Cheo',NULL,NULL,NULL,'Xã'),
	 (429,'Phìn Ngan',NULL,NULL,NULL,'Xã'),
	 (429,'Quang Kim',NULL,NULL,NULL,'Xã'),
	 (429,'Sàng Ma Sáo',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (429,'Tòng Sanh',NULL,NULL,NULL,'Xã'),
	 (429,'Trịnh Tường',NULL,NULL,NULL,'Xã'),
	 (429,'Trung Lèng Hồ',NULL,NULL,NULL,'Xã'),
	 (429,'Y Tý',NULL,NULL,NULL,'Xã'),
	 (430,'Bắc Cường',NULL,NULL,NULL,'Phường'),
	 (430,'Bắc Lệnh',NULL,NULL,NULL,'Phường'),
	 (430,'Bình Minh',NULL,NULL,NULL,'Phường'),
	 (430,'Cam Đường',NULL,NULL,NULL,'Xã'),
	 (430,'Cốc Lếu',NULL,NULL,NULL,'Phường'),
	 (430,'Đồng Tuyển',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (430,'Duyên Hải',NULL,NULL,NULL,'Phường'),
	 (430,'Hợp Thành',NULL,NULL,NULL,'Xã'),
	 (430,'Kim Tân',NULL,NULL,NULL,'Phường'),
	 (430,'Lào Cai',NULL,NULL,NULL,'Phường'),
	 (430,'Nam Cường',NULL,NULL,NULL,'Phường'),
	 (430,'Nam Cường',NULL,NULL,NULL,'Phường'),
	 (430,'Phố Mới',NULL,NULL,NULL,'Phường'),
	 (430,'Pom Hán',NULL,NULL,NULL,'Phường'),
	 (430,'Tả Phời',NULL,NULL,NULL,'Xã'),
	 (430,'Thống Nhất',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (430,'Vạn Hòa',NULL,NULL,NULL,'Xã'),
	 (430,'Xuân Tăng',NULL,NULL,NULL,'Phường'),
	 (431,'Bản Lầu',NULL,NULL,NULL,'Xã'),
	 (431,'Bản Sen',NULL,NULL,NULL,'Xã'),
	 (431,'Cao Sơn',NULL,NULL,NULL,'Xã'),
	 (431,'Dìn Chin',NULL,NULL,NULL,'Xã'),
	 (431,'La Pan Tẩn',NULL,NULL,NULL,'Xã'),
	 (431,'Lùng Khấu Nhin',NULL,NULL,NULL,'Xã'),
	 (431,'Lùng Vai',NULL,NULL,NULL,'Xã'),
	 (431,'Mường Khương',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (431,'Nậm Chảy',NULL,NULL,NULL,'Xã'),
	 (431,'Nấm Lư',NULL,NULL,NULL,'Xã'),
	 (431,'Pha Long',NULL,NULL,NULL,'Xã'),
	 (431,'Tả Gia Khâu',NULL,NULL,NULL,'Xã'),
	 (431,'Tả Ngải Chồ',NULL,NULL,NULL,'Xã'),
	 (431,'Tả Thàng',NULL,NULL,NULL,'Xã'),
	 (431,'Thanh Bình',NULL,NULL,NULL,'Xã'),
	 (431,'Tung Chung Phố',NULL,NULL,NULL,'Xã'),
	 (432,'Bản Hồ',NULL,NULL,NULL,'Xã'),
	 (432,'Bản Khoang',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (432,'Bản Phùng',NULL,NULL,NULL,'Xã'),
	 (432,'Hầu Thào',NULL,NULL,NULL,'Xã'),
	 (432,'Lao Chải',NULL,NULL,NULL,'Xã'),
	 (432,'Nậm Cang',NULL,NULL,NULL,'Xã'),
	 (432,'Nậm Sài',NULL,NULL,NULL,'Xã'),
	 (432,'Sa Pa',NULL,NULL,NULL,'Thị trấn'),
	 (432,'Sa Pả',NULL,NULL,NULL,'Xã'),
	 (432,'San Sả Hồ',NULL,NULL,NULL,'Xã'),
	 (432,'Sử Pán',NULL,NULL,NULL,'Xã'),
	 (432,'Suối Thầu',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (432,'Tả Giàng Phình',NULL,NULL,NULL,'Xã'),
	 (432,'Tả Phìn',NULL,NULL,NULL,'Xã'),
	 (432,'Tả Van',NULL,NULL,NULL,'Xã'),
	 (432,'Thanh Kim',NULL,NULL,NULL,'Xã'),
	 (432,'Thanh Phú',NULL,NULL,NULL,'Xã'),
	 (432,'Trung Chải',NULL,NULL,NULL,'Xã'),
	 (433,'Chiềng Ken',NULL,NULL,NULL,'Xã'),
	 (433,'Dần Thàng',NULL,NULL,NULL,'Xã'),
	 (433,'Dương Qùy',NULL,NULL,NULL,'Xã'),
	 (433,'Hòa Mạc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (433,'Khánh Yên',NULL,NULL,NULL,'Thị trấn'),
	 (433,'Khánh Yên Hạ',NULL,NULL,NULL,'Xã'),
	 (433,'Khánh Yên Thượng',NULL,NULL,NULL,'Xã'),
	 (433,'Khánh Yên Trung',NULL,NULL,NULL,'Xã'),
	 (433,'Làng Giàng',NULL,NULL,NULL,'Xã'),
	 (433,'Liêm Phú',NULL,NULL,NULL,'Xã'),
	 (433,'Minh Lương',NULL,NULL,NULL,'Xã'),
	 (433,'Nậm Chày',NULL,NULL,NULL,'Xã'),
	 (433,'Nậm Mả',NULL,NULL,NULL,'Xã'),
	 (433,'Nậm Rạng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (433,'Nậm Tha',NULL,NULL,NULL,'Xã'),
	 (433,'Nậm Xây',NULL,NULL,NULL,'Xã'),
	 (433,'Nậm Xé',NULL,NULL,NULL,'Xã'),
	 (433,'Sơn Thủy',NULL,NULL,NULL,'Xã'),
	 (433,'Tân An',NULL,NULL,NULL,'Xã'),
	 (433,'Tân Thượng',NULL,NULL,NULL,'Xã'),
	 (433,'Thẳm Dương',NULL,NULL,NULL,'Xã'),
	 (433,'Văn Sơn',NULL,NULL,NULL,'Xã'),
	 (433,'Võ Lao',NULL,NULL,NULL,'Xã'),
	 (434,'Bản Mế',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (434,'Cán Cấu',NULL,NULL,NULL,'Xã'),
	 (434,'Cán Hồ',NULL,NULL,NULL,'Xã'),
	 (434,'Lử Thẩn',NULL,NULL,NULL,'Xã'),
	 (434,'Lùng Sui',NULL,NULL,NULL,'Xã'),
	 (434,'Mản Thẩn',NULL,NULL,NULL,'Xã'),
	 (434,'Nàn Sán',NULL,NULL,NULL,'Xã'),
	 (434,'Nàn Xín',NULL,NULL,NULL,'Xã'),
	 (434,'Quan Thần Sán',NULL,NULL,NULL,'Xã'),
	 (434,'Sán Chải',NULL,NULL,NULL,'Xã'),
	 (434,'Si Ma Cai',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (434,'Sín Chéng',NULL,NULL,NULL,'Xã'),
	 (434,'Thào Chư Phìn',NULL,NULL,NULL,'Xã'),
	 (435,'Bạch Long',NULL,NULL,NULL,'Xã'),
	 (435,'Bình Hòa',NULL,NULL,NULL,'Xã'),
	 (435,'Giao An',NULL,NULL,NULL,'Xã'),
	 (435,'Giao Châu',NULL,NULL,NULL,'Xã'),
	 (435,'Giao Hà',NULL,NULL,NULL,'Xã'),
	 (435,'Giao Hải',NULL,NULL,NULL,'Xã'),
	 (435,'Giao Hưng',NULL,NULL,NULL,'Xã'),
	 (435,'Giao Hương',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (435,'Giao Lạc',NULL,NULL,NULL,'Xã'),
	 (435,'Giao Long',NULL,NULL,NULL,'Xã'),
	 (435,'Giao Nhân',NULL,NULL,NULL,'Xã'),
	 (435,'Giao Phong',NULL,NULL,NULL,'Xã'),
	 (435,'Giao Tân',NULL,NULL,NULL,'Xã'),
	 (435,'Giao Thanh',NULL,NULL,NULL,'Xã'),
	 (435,'Giao Thiện',NULL,NULL,NULL,'Xã'),
	 (435,'Giao Thịnh',NULL,NULL,NULL,'Xã'),
	 (435,'Giao Tiến',NULL,NULL,NULL,'Xã'),
	 (435,'Giao Xuân',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (435,'Giao Yến',NULL,NULL,NULL,'Xã'),
	 (435,'Hoành Sơn',NULL,NULL,NULL,'Xã'),
	 (435,'Hồng Thuận',NULL,NULL,NULL,'Xã'),
	 (435,'Ngô Đồng',NULL,NULL,NULL,'Thị trấn'),
	 (435,'Quất Lâm',NULL,NULL,NULL,'Thị trấn'),
	 (436,'Cồn',NULL,NULL,NULL,'Thị trấn'),
	 (436,'Hải An',NULL,NULL,NULL,'Xã'),
	 (436,'Hải Anh',NULL,NULL,NULL,'Xã'),
	 (436,'Hải Bắc',NULL,NULL,NULL,'Xã'),
	 (436,'Hải Châu',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (436,'Hải Chính',NULL,NULL,NULL,'Xã'),
	 (436,'Hải Cường',NULL,NULL,NULL,'Xã'),
	 (436,'Hải Đông',NULL,NULL,NULL,'Xã'),
	 (436,'Hải Đường',NULL,NULL,NULL,'Xã'),
	 (436,'Hải Giang',NULL,NULL,NULL,'Xã'),
	 (436,'Hải Hà',NULL,NULL,NULL,'Xã'),
	 (436,'Hải Hòa',NULL,NULL,NULL,'Xã'),
	 (436,'Hải Hưng',NULL,NULL,NULL,'Xã'),
	 (436,'Hải Lộc',NULL,NULL,NULL,'Xã'),
	 (436,'Hải Long',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (436,'Hải Lý',NULL,NULL,NULL,'Xã'),
	 (436,'Hải Minh',NULL,NULL,NULL,'Xã'),
	 (436,'Hải Nam',NULL,NULL,NULL,'Xã'),
	 (436,'Hải Ninh',NULL,NULL,NULL,'Xã'),
	 (436,'Hải Phong',NULL,NULL,NULL,'Xã'),
	 (436,'Hải Phú',NULL,NULL,NULL,'Xã'),
	 (436,'Hải Phúc',NULL,NULL,NULL,'Xã'),
	 (436,'Hải Phương',NULL,NULL,NULL,'Xã'),
	 (436,'Hải Quang',NULL,NULL,NULL,'Xã'),
	 (436,'Hải Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (436,'Hải Tân',NULL,NULL,NULL,'Xã'),
	 (436,'Hải Tây',NULL,NULL,NULL,'Xã'),
	 (436,'Hải Thanh',NULL,NULL,NULL,'Xã'),
	 (436,'Hải Toàn',NULL,NULL,NULL,'Xã'),
	 (436,'Hải Triều',NULL,NULL,NULL,'Xã'),
	 (436,'Hải Trung',NULL,NULL,NULL,'Xã'),
	 (436,'Hải Vân',NULL,NULL,NULL,'Xã'),
	 (436,'Hải Xuân',NULL,NULL,NULL,'Xã'),
	 (436,'Thịnh Long',NULL,NULL,NULL,'Thị trấn'),
	 (436,'Yên Định',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (437,'Mỹ Hà',NULL,NULL,NULL,'Xã'),
	 (437,'Mỹ Hưng',NULL,NULL,NULL,'Xã'),
	 (437,'Mỹ Lộc',NULL,NULL,NULL,'Thị trấn'),
	 (437,'Mỹ Phúc',NULL,NULL,NULL,'Xã'),
	 (437,'Mỹ Tân',NULL,NULL,NULL,'Xã'),
	 (437,'Mỹ Thắng',NULL,NULL,NULL,'Xã'),
	 (437,'Mỹ Thành',NULL,NULL,NULL,'Xã'),
	 (437,'Mỹ Thịnh',NULL,NULL,NULL,'Xã'),
	 (437,'Mỹ Thuận',NULL,NULL,NULL,'Xã'),
	 (437,'Mỹ Tiến',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (437,'Mỹ Trung',NULL,NULL,NULL,'Xã'),
	 (438,'Bà Triệu',NULL,NULL,NULL,'Phường'),
	 (438,'Cửa Bắc',NULL,NULL,NULL,'Phường'),
	 (438,'Cửa Nam',NULL,NULL,NULL,'Phường'),
	 (438,'Hạ Long',NULL,NULL,NULL,'Phường'),
	 (438,'Lộc An',NULL,NULL,NULL,'Xã'),
	 (438,'Lộc Hạ',NULL,NULL,NULL,'Phường'),
	 (438,'Lộc Hòa',NULL,NULL,NULL,'Xã'),
	 (438,'Lộc Vượng',NULL,NULL,NULL,'Phường'),
	 (438,'Mỹ Xá',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (438,'Nam Phong',NULL,NULL,NULL,'Xã'),
	 (438,'Nam Vân',NULL,NULL,NULL,'Xã'),
	 (438,'Năng Tĩnh',NULL,NULL,NULL,'Phường'),
	 (438,'Ngô Quyền',NULL,NULL,NULL,'Phường'),
	 (438,'Nguyễn Du',NULL,NULL,NULL,'Phường'),
	 (438,'Phan Đình Phùng',NULL,NULL,NULL,'Phường'),
	 (438,'Quang Trung',NULL,NULL,NULL,'Phường'),
	 (438,'Thống Nhất',NULL,NULL,NULL,'Phường'),
	 (438,'Trần Đăng Ninh',NULL,NULL,NULL,'Phường'),
	 (438,'Trần Hưng Đạo',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (438,'Trần Quang Khải',NULL,NULL,NULL,'Phường'),
	 (438,'Trần Tế Xương',NULL,NULL,NULL,'Phường'),
	 (438,'Trường Thi',NULL,NULL,NULL,'Phường'),
	 (438,'Văn Miếu',NULL,NULL,NULL,'Phường'),
	 (438,'Vị Hoàng',NULL,NULL,NULL,'Phường'),
	 (438,'Vị Xuyên',NULL,NULL,NULL,'Phường'),
	 (439,'Bình Minh',NULL,NULL,NULL,'Xã'),
	 (439,'Điền Xá',NULL,NULL,NULL,'Xã'),
	 (439,'Đồng Sơn',NULL,NULL,NULL,'Xã'),
	 (439,'Hồng Quang',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (439,'Nam Cường',NULL,NULL,NULL,'Xã'),
	 (439,'Nam Dương',NULL,NULL,NULL,'Xã'),
	 (439,'Nam Giang',NULL,NULL,NULL,'Thị trấn'),
	 (439,'Nam Hải',NULL,NULL,NULL,'Xã'),
	 (439,'Nam Hoa',NULL,NULL,NULL,'Xã'),
	 (439,'Nam Hồng',NULL,NULL,NULL,'Xã'),
	 (439,'Nam Hùng',NULL,NULL,NULL,'Xã'),
	 (439,'Nam Lợi',NULL,NULL,NULL,'Xã'),
	 (439,'Nam Mỹ',NULL,NULL,NULL,'Xã'),
	 (439,'Nam Thái',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (439,'Nam Thắng',NULL,NULL,NULL,'Xã'),
	 (439,'Nam Thanh',NULL,NULL,NULL,'Xã'),
	 (439,'Nam Tiến',NULL,NULL,NULL,'Xã'),
	 (439,'Nam Toàn',NULL,NULL,NULL,'Xã'),
	 (439,'Nghĩa An',NULL,NULL,NULL,'Xã'),
	 (439,'Tân Thịnh',NULL,NULL,NULL,'Xã'),
	 (440,'Hoàng Nam',NULL,NULL,NULL,'Xã'),
	 (440,'Liễu Đề',NULL,NULL,NULL,'Thị trấn'),
	 (440,'Nam Điền',NULL,NULL,NULL,'Xã'),
	 (440,'Nghĩa Bình',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (440,'Nghĩa Châu',NULL,NULL,NULL,'Xã'),
	 (440,'Nghĩa Đồng',NULL,NULL,NULL,'Xã'),
	 (440,'Nghĩa Hải',NULL,NULL,NULL,'Xã'),
	 (440,'Nghĩa Hồng',NULL,NULL,NULL,'Xã'),
	 (440,'Nghĩa Hùng',NULL,NULL,NULL,'Xã'),
	 (440,'Nghĩa Lạc',NULL,NULL,NULL,'Xã'),
	 (440,'Nghĩa Lâm',NULL,NULL,NULL,'Xã'),
	 (440,'Nghĩa Lợi',NULL,NULL,NULL,'Xã'),
	 (440,'Nghĩa Minh',NULL,NULL,NULL,'Xã'),
	 (440,'Nghĩa Phong',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (440,'Nghĩa Phú',NULL,NULL,NULL,'Xã'),
	 (440,'Nghĩa Phúc',NULL,NULL,NULL,'Xã'),
	 (440,'Nghĩa Sơn',NULL,NULL,NULL,'Xã'),
	 (440,'Nghĩa Tân',NULL,NULL,NULL,'Xã'),
	 (440,'Nghĩa Thái',NULL,NULL,NULL,'Xã'),
	 (440,'Nghĩa Thắng',NULL,NULL,NULL,'Xã'),
	 (440,'Nghĩa Thành',NULL,NULL,NULL,'Xã'),
	 (440,'Nghĩa Thịnh',NULL,NULL,NULL,'Xã'),
	 (440,'Nghĩa Trung',NULL,NULL,NULL,'Xã'),
	 (440,'Quỹ Nhất',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (440,'Rạng Đông',NULL,NULL,NULL,'Thị trấn'),
	 (441,'Cát Thành',NULL,NULL,NULL,'Thị trấn'),
	 (441,'Cổ Lễ',NULL,NULL,NULL,'Thị trấn'),
	 (441,'Liêm Hải',NULL,NULL,NULL,'Xã'),
	 (441,'Phương Định',NULL,NULL,NULL,'Xã'),
	 (441,'Trực Chính',NULL,NULL,NULL,'Xã'),
	 (441,'Trực Cường',NULL,NULL,NULL,'Xã'),
	 (441,'Trực Đại',NULL,NULL,NULL,'Xã'),
	 (441,'Trực Đạo',NULL,NULL,NULL,'Xã'),
	 (441,'Trực Hùng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (441,'Trực Hưng',NULL,NULL,NULL,'Xã'),
	 (441,'Trực Khang',NULL,NULL,NULL,'Xã'),
	 (441,'Trực Mỹ',NULL,NULL,NULL,'Xã'),
	 (441,'Trực Nội',NULL,NULL,NULL,'Xã'),
	 (441,'Trực Phú',NULL,NULL,NULL,'Xã'),
	 (441,'Trực Thái',NULL,NULL,NULL,'Xã'),
	 (441,'Trực Thắng',NULL,NULL,NULL,'Xã'),
	 (441,'Trực Thanh',NULL,NULL,NULL,'Xã'),
	 (441,'Trực Thuận',NULL,NULL,NULL,'Xã'),
	 (441,'Trực Tuấn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (441,'Trung Đông',NULL,NULL,NULL,'Xã'),
	 (441,'Việt Hùng',NULL,NULL,NULL,'Xã'),
	 (442,'Cộng Hòa',NULL,NULL,NULL,'Xã'),
	 (442,'Đại An',NULL,NULL,NULL,'Xã'),
	 (442,'Đại Thắng',NULL,NULL,NULL,'Xã'),
	 (442,'Gôi',NULL,NULL,NULL,'Thị trấn'),
	 (442,'Hiển Khánh',NULL,NULL,NULL,'Xã'),
	 (442,'Hợp Hưng',NULL,NULL,NULL,'Xã'),
	 (442,'Kim Thái',NULL,NULL,NULL,'Xã'),
	 (442,'Liên Bảo',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (442,'Liên Minh',NULL,NULL,NULL,'Xã'),
	 (442,'Minh Tân',NULL,NULL,NULL,'Xã'),
	 (442,'Minh Thuận',NULL,NULL,NULL,'Xã'),
	 (442,'Quang Trung',NULL,NULL,NULL,'Xã'),
	 (442,'Tam Thanh',NULL,NULL,NULL,'Xã'),
	 (442,'Tân Khánh',NULL,NULL,NULL,'Xã'),
	 (442,'Tân Thành',NULL,NULL,NULL,'Xã'),
	 (442,'Thành Lợi',NULL,NULL,NULL,'Xã'),
	 (442,'Trung Thành',NULL,NULL,NULL,'Xã'),
	 (442,'Vĩnh Hào',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (443,'Thọ Nghiệp',NULL,NULL,NULL,'Xã'),
	 (443,'Xuân Bắc',NULL,NULL,NULL,'Xã'),
	 (443,'Xuân Châu',NULL,NULL,NULL,'Xã'),
	 (443,'Xuân Đài',NULL,NULL,NULL,'Xã'),
	 (443,'Xuân Hòa',NULL,NULL,NULL,'Xã'),
	 (443,'Xuân Hồng',NULL,NULL,NULL,'Xã'),
	 (443,'Xuân Kiên',NULL,NULL,NULL,'Xã'),
	 (443,'Xuân Ngọc',NULL,NULL,NULL,'Xã'),
	 (443,'Xuân Ninh',NULL,NULL,NULL,'Xã'),
	 (443,'Xuân Phong',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (443,'Xuân Phú',NULL,NULL,NULL,'Xã'),
	 (443,'Xuân Phương',NULL,NULL,NULL,'Xã'),
	 (443,'Xuân Tân',NULL,NULL,NULL,'Xã'),
	 (443,'Xuân Thành',NULL,NULL,NULL,'Xã'),
	 (443,'Xuân Thượng',NULL,NULL,NULL,'Xã'),
	 (443,'Xuân Thủy',NULL,NULL,NULL,'Xã'),
	 (443,'Xuân Tiến',NULL,NULL,NULL,'Xã'),
	 (443,'Xuân Trung',NULL,NULL,NULL,'Xã'),
	 (443,'Xuân Trường',NULL,NULL,NULL,'Thị trấn'),
	 (443,'Xuân Vinh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (444,'Lâm',NULL,NULL,NULL,'Thị trấn'),
	 (444,'Yên Bằng',NULL,NULL,NULL,'Xã'),
	 (444,'Yên Bình',NULL,NULL,NULL,'Xã'),
	 (444,'Yên Chính',NULL,NULL,NULL,'Xã'),
	 (444,'Yên Cường',NULL,NULL,NULL,'Xã'),
	 (444,'Yên Đồng',NULL,NULL,NULL,'Xã'),
	 (444,'Yên Dương',NULL,NULL,NULL,'Xã'),
	 (444,'Yên Hồng',NULL,NULL,NULL,'Xã'),
	 (444,'Yên Hưng',NULL,NULL,NULL,'Xã'),
	 (444,'Yên Khang',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (444,'Yên Khánh',NULL,NULL,NULL,'Xã'),
	 (444,'Yên Lộc',NULL,NULL,NULL,'Xã'),
	 (444,'Yên Lợi',NULL,NULL,NULL,'Xã'),
	 (444,'Yên Lương',NULL,NULL,NULL,'Xã'),
	 (444,'Yên Minh',NULL,NULL,NULL,'Xã'),
	 (444,'Yên Mỹ',NULL,NULL,NULL,'Xã'),
	 (444,'Yên Nghĩa',NULL,NULL,NULL,'Xã'),
	 (444,'Yên Nhân',NULL,NULL,NULL,'Xã'),
	 (444,'Yên Ninh',NULL,NULL,NULL,'Xã'),
	 (444,'Yên Phong',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (444,'Yên Phú',NULL,NULL,NULL,'Xã'),
	 (444,'Yên Phúc',NULL,NULL,NULL,'Xã'),
	 (444,'Yên Phương',NULL,NULL,NULL,'Xã'),
	 (444,'Yên Quang',NULL,NULL,NULL,'Xã'),
	 (444,'Yên Tân',NULL,NULL,NULL,'Xã'),
	 (444,'Yên Thắng',NULL,NULL,NULL,'Xã'),
	 (444,'Yên Thành',NULL,NULL,NULL,'Xã'),
	 (444,'Yên Thọ',NULL,NULL,NULL,'Xã'),
	 (444,'Yên Tiến',NULL,NULL,NULL,'Xã'),
	 (444,'Yên Trị',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (444,'Yên Trung',NULL,NULL,NULL,'Xã'),
	 (444,'Yên Xá',NULL,NULL,NULL,'Xã'),
	 (445,'Ba Bích',NULL,NULL,NULL,'Xã'),
	 (445,'Ba Chùa',NULL,NULL,NULL,'Xã'),
	 (445,'Ba Cung',NULL,NULL,NULL,'Xã'),
	 (445,'Ba Điền',NULL,NULL,NULL,'Xã'),
	 (445,'Ba Dinh',NULL,NULL,NULL,'Xã'),
	 (445,'Ba Động',NULL,NULL,NULL,'Xã'),
	 (445,'Ba Giang',NULL,NULL,NULL,'Xã'),
	 (445,'Ba Khâm',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (445,'Ba Lế',NULL,NULL,NULL,'Xã'),
	 (445,'Ba Liên',NULL,NULL,NULL,'Xã'),
	 (445,'Ba Nam',NULL,NULL,NULL,'Xã'),
	 (445,'Ba Ngạc',NULL,NULL,NULL,'Xã'),
	 (445,'Ba Thành',NULL,NULL,NULL,'Xã'),
	 (445,'Ba Tiêu',NULL,NULL,NULL,'Xã'),
	 (445,'Ba Tô',NULL,NULL,NULL,'Xã'),
	 (445,'Ba Tơ',NULL,NULL,NULL,'Thị trấn'),
	 (445,'Ba Trang',NULL,NULL,NULL,'Xã'),
	 (445,'Ba Vì',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (445,'Ba Vinh',NULL,NULL,NULL,'Xã'),
	 (445,'Ba Xa',NULL,NULL,NULL,'Xã'),
	 (446,'Bình An',NULL,NULL,NULL,'Xã'),
	 (446,'Bình Chánh',NULL,NULL,NULL,'Xã'),
	 (446,'Bình Châu',NULL,NULL,NULL,'Xã'),
	 (446,'Bình Chương',NULL,NULL,NULL,'Xã'),
	 (446,'Bình Đông',NULL,NULL,NULL,'Xã'),
	 (446,'Bình Dương',NULL,NULL,NULL,'Xã'),
	 (446,'Bình Hải',NULL,NULL,NULL,'Xã'),
	 (446,'Bình Hiệp',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (446,'Bình Hòa',NULL,NULL,NULL,'Xã'),
	 (446,'Bình Khương',NULL,NULL,NULL,'Xã'),
	 (446,'Bình Long',NULL,NULL,NULL,'Xã'),
	 (446,'Bình Minh',NULL,NULL,NULL,'Xã'),
	 (446,'Bình Mỹ',NULL,NULL,NULL,'Xã'),
	 (446,'Bình Nguyên',NULL,NULL,NULL,'Xã'),
	 (446,'Bình Phú',NULL,NULL,NULL,'Xã'),
	 (446,'Bình Phước',NULL,NULL,NULL,'Xã'),
	 (446,'Bình Tân',NULL,NULL,NULL,'Xã'),
	 (446,'Bình Thạnh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (446,'Bình Thanh Đông',NULL,NULL,NULL,'Xã'),
	 (446,'Bình Thanh Tây',NULL,NULL,NULL,'Xã'),
	 (446,'Bình Thới',NULL,NULL,NULL,'Xã'),
	 (446,'Bình Thuận',NULL,NULL,NULL,'Xã'),
	 (446,'Bình Trị',NULL,NULL,NULL,'Xã'),
	 (446,'Bình Trung',NULL,NULL,NULL,'Xã'),
	 (446,'Châu Ổ',NULL,NULL,NULL,'Thị trấn'),
	 (447,'Đức Phổ',NULL,NULL,NULL,'Thị trấn'),
	 (447,'Phổ An',NULL,NULL,NULL,'Xã'),
	 (447,'Phổ Châu',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (447,'Phổ Cường',NULL,NULL,NULL,'Xã'),
	 (447,'Phổ Hòa',NULL,NULL,NULL,'Xã'),
	 (447,'Phổ Khánh',NULL,NULL,NULL,'Xã'),
	 (447,'Phổ Minh',NULL,NULL,NULL,'Xã'),
	 (447,'Phổ Nhơn',NULL,NULL,NULL,'Xã'),
	 (447,'Phổ Ninh',NULL,NULL,NULL,'Xã'),
	 (447,'Phổ Phong',NULL,NULL,NULL,'Xã'),
	 (447,'Phổ Quang',NULL,NULL,NULL,'Xã'),
	 (447,'Phổ Thạnh',NULL,NULL,NULL,'Xã'),
	 (447,'Phổ Thuận',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (447,'Phổ Văn',NULL,NULL,NULL,'Xã'),
	 (447,'Phổ Vinh',NULL,NULL,NULL,'Xã'),
	 (448,'An Bình',NULL,NULL,NULL,'Xã'),
	 (448,'An Hải',NULL,NULL,NULL,'Xã'),
	 (448,'An Vĩnh',NULL,NULL,NULL,'Xã'),
	 (449,'Long Hiệp',NULL,NULL,NULL,'Xã'),
	 (449,'Long Mai',NULL,NULL,NULL,'Xã'),
	 (449,'Long Môn',NULL,NULL,NULL,'Xã'),
	 (449,'Long Sơn',NULL,NULL,NULL,'Xã'),
	 (449,'Thanh An',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (450,'Đức Chánh',NULL,NULL,NULL,'Xã'),
	 (450,'Đức Hiệp',NULL,NULL,NULL,'Xã'),
	 (450,'Đức Hòa',NULL,NULL,NULL,'Xã'),
	 (450,'Đức Lân',NULL,NULL,NULL,'Xã'),
	 (450,'Đức Lợi',NULL,NULL,NULL,'Xã'),
	 (450,'Đức Minh',NULL,NULL,NULL,'Xã'),
	 (450,'Đức Nhuận',NULL,NULL,NULL,'Xã'),
	 (450,'Đức Phong',NULL,NULL,NULL,'Xã'),
	 (450,'Đức Phú',NULL,NULL,NULL,'Xã'),
	 (450,'Đức Tân',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (450,'Đức Thắng',NULL,NULL,NULL,'Xã'),
	 (450,'Đức Thạnh',NULL,NULL,NULL,'Xã'),
	 (450,'Mộ Đức',NULL,NULL,NULL,'Thị trấn'),
	 (451,'Chợ Chùa',NULL,NULL,NULL,'Thị trấn'),
	 (451,'Hành Đức',NULL,NULL,NULL,'Xã'),
	 (451,'Hành Dũng',NULL,NULL,NULL,'Xã'),
	 (451,'Hành Minh',NULL,NULL,NULL,'Xã'),
	 (451,'Hành Nhân',NULL,NULL,NULL,'Xã'),
	 (451,'Hành Phước',NULL,NULL,NULL,'Xã'),
	 (451,'Hành Thiện',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (451,'Hành Thịnh',NULL,NULL,NULL,'Xã'),
	 (451,'Hành Thuận',NULL,NULL,NULL,'Xã'),
	 (451,'Hành Tín Đông',NULL,NULL,NULL,'Xã'),
	 (451,'Hành Tín Tây',NULL,NULL,NULL,'Xã'),
	 (451,'Hành Trung',NULL,NULL,NULL,'Xã'),
	 (452,'Chánh Lộ',NULL,NULL,NULL,'Phường'),
	 (452,'Lê Hồng Phong',NULL,NULL,NULL,'Phường'),
	 (452,'Nghĩa Chánh',NULL,NULL,NULL,'Phường'),
	 (452,'Nghĩa Dõng',NULL,NULL,NULL,'Xã'),
	 (452,'Nghĩa Dũng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (452,'Nghĩa Hà',NULL,NULL,NULL,'Xã'),
	 (452,'Nghĩa Lộ',NULL,NULL,NULL,'Phường'),
	 (452,'Nghĩa Phú',NULL,NULL,NULL,'Xã'),
	 (452,'Nguyễn Nghiêm',NULL,NULL,NULL,'Phường'),
	 (452,'Quảng Phú',NULL,NULL,NULL,'Phường'),
	 (452,'Tịnh Ấn Tây',NULL,NULL,NULL,'Xã'),
	 (452,'Trần Hưng Đạo',NULL,NULL,NULL,'Phường'),
	 (452,'Trần Phú',NULL,NULL,NULL,'Phường'),
	 (452,'Trương Quang Trọng',NULL,NULL,NULL,'Phường'),
	 (453,'Di Lăng',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (453,'Sơn Ba',NULL,NULL,NULL,'Xã'),
	 (453,'Sơn Bao',NULL,NULL,NULL,'Xã'),
	 (453,'Sơn Cao',NULL,NULL,NULL,'Xã'),
	 (453,'Sơn Giang',NULL,NULL,NULL,'Xã'),
	 (453,'Sơn Hạ',NULL,NULL,NULL,'Xã'),
	 (453,'Sơn Hải',NULL,NULL,NULL,'Xã'),
	 (453,'Sơn Kỳ',NULL,NULL,NULL,'Xã'),
	 (453,'Sơn Linh',NULL,NULL,NULL,'Xã'),
	 (453,'Sơn Nham',NULL,NULL,NULL,'Xã'),
	 (453,'Sơn Thành',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (453,'Sơn Thượng',NULL,NULL,NULL,'Xã'),
	 (453,'Sơn Thủy',NULL,NULL,NULL,'Xã'),
	 (453,'Sơn Trung',NULL,NULL,NULL,'Xã'),
	 (454,'Sơn Bua',NULL,NULL,NULL,'Xã'),
	 (454,'Sơn Dung',NULL,NULL,NULL,'Xã'),
	 (454,'Sơn Lập',NULL,NULL,NULL,'Xã'),
	 (454,'Sơn Liên',NULL,NULL,NULL,'Xã'),
	 (454,'Sơn Long',NULL,NULL,NULL,'Xã'),
	 (454,'Sơn Màu',NULL,NULL,NULL,'Xã'),
	 (454,'Sơn Mùa',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (454,'Sơn Tân',NULL,NULL,NULL,'Xã'),
	 (454,'Sơn Tinh',NULL,NULL,NULL,'Xã'),
	 (455,'Sơn Tịnh',NULL,NULL,NULL,'Thị trấn'),
	 (455,'Tịnh An',NULL,NULL,NULL,'Xã'),
	 (455,'Tịnh Ấn Đông',NULL,NULL,NULL,'Xã'),
	 (455,'Tịnh Ấn Tây',NULL,NULL,NULL,'Xã'),
	 (455,'Tịnh bắc',NULL,NULL,NULL,'Xã'),
	 (455,'Tịnh Bình',NULL,NULL,NULL,'Xã'),
	 (455,'Tịnh Châu',NULL,NULL,NULL,'Xã'),
	 (455,'Tịnh Đông',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (455,'Tịnh Giang',NULL,NULL,NULL,'Xã'),
	 (455,'Tịnh Hà',NULL,NULL,NULL,'Xã'),
	 (455,'Tịnh Hiệp',NULL,NULL,NULL,'Xã'),
	 (455,'Tịnh Hòa',NULL,NULL,NULL,'Xã'),
	 (455,'Tịnh Khê',NULL,NULL,NULL,'Xã'),
	 (455,'Tịnh Kỳ',NULL,NULL,NULL,'Xã'),
	 (455,'Tịnh Long',NULL,NULL,NULL,'Xã'),
	 (455,'Tịnh Minh',NULL,NULL,NULL,'Xã'),
	 (455,'Tịnh Phong',NULL,NULL,NULL,'Xã'),
	 (455,'Tịnh Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (455,'Tịnh Thiện',NULL,NULL,NULL,'Xã'),
	 (455,'Tịnh Thọ',NULL,NULL,NULL,'Xã'),
	 (455,'Tịnh Trà',NULL,NULL,NULL,'Xã'),
	 (456,'Trà Khê',NULL,NULL,NULL,'Xã'),
	 (456,'Trà Lãnh',NULL,NULL,NULL,'Xã'),
	 (456,'Trà Nham',NULL,NULL,NULL,'Xã'),
	 (456,'Trà Phong',NULL,NULL,NULL,'Xã'),
	 (456,'Trà Quân',NULL,NULL,NULL,'Xã'),
	 (456,'Trà Thanh',NULL,NULL,NULL,'Xã'),
	 (456,'Trà Thọ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (456,'Trà Trung',NULL,NULL,NULL,'Xã'),
	 (456,'Trà Xinh',NULL,NULL,NULL,'Xã'),
	 (457,'Trà Bình',NULL,NULL,NULL,'Xã'),
	 (457,'Trà Bùi',NULL,NULL,NULL,'Xã'),
	 (457,'Trà Giang',NULL,NULL,NULL,'Xã'),
	 (457,'Trà Hiệp',NULL,NULL,NULL,'Xã'),
	 (457,'Trà Lâm',NULL,NULL,NULL,'Xã'),
	 (457,'Trà Phú',NULL,NULL,NULL,'Xã'),
	 (457,'Trà Sơn',NULL,NULL,NULL,'Xã'),
	 (457,'Trà Tân',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (457,'Trà Thủy',NULL,NULL,NULL,'Xã'),
	 (457,'Trà Xuân',NULL,NULL,NULL,'Thị trấn'),
	 (458,'La Hà',NULL,NULL,NULL,'Thị trấn'),
	 (458,'Nghĩa An',NULL,NULL,NULL,'Xã'),
	 (458,'Nghĩa Điền',NULL,NULL,NULL,'Xã'),
	 (458,'Nghĩa Hiệp',NULL,NULL,NULL,'Xã'),
	 (458,'Nghĩa Hòa',NULL,NULL,NULL,'Xã'),
	 (458,'Nghĩa Kỳ',NULL,NULL,NULL,'Xã'),
	 (458,'Nghĩa Lâm',NULL,NULL,NULL,'Xã'),
	 (458,'Nghĩa Mỹ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (458,'Nghĩa Phú',NULL,NULL,NULL,'Xã'),
	 (458,'Nghĩa Phương',NULL,NULL,NULL,'Xã'),
	 (458,'Nghĩa Sơn',NULL,NULL,NULL,'Xã'),
	 (458,'Nghĩa Thắng',NULL,NULL,NULL,'Xã'),
	 (458,'Nghĩa Thọ',NULL,NULL,NULL,'Xã'),
	 (458,'Nghĩa Thuận',NULL,NULL,NULL,'Xã'),
	 (458,'Nghĩa Thương',NULL,NULL,NULL,'Xã'),
	 (458,'Nghĩa Trung',NULL,NULL,NULL,'Xã'),
	 (458,'Sông Vệ',NULL,NULL,NULL,'Thị trấn'),
	 (459,'An Bình Tây',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (459,'An Đức',NULL,NULL,NULL,'Xã'),
	 (459,'An Hiệp',NULL,NULL,NULL,'Xã'),
	 (459,'An Hòa Tây',NULL,NULL,NULL,'Xã'),
	 (459,'An Ngãi Tây',NULL,NULL,NULL,'Xã'),
	 (459,'An Ngãi Trung',NULL,NULL,NULL,'Xã'),
	 (459,'An Phú Trung',NULL,NULL,NULL,'Xã'),
	 (459,'An Thủy',NULL,NULL,NULL,'Xã'),
	 (459,'Ba Tri',NULL,NULL,NULL,'Thị trấn'),
	 (459,'Bảo Thạnh',NULL,NULL,NULL,'Xã'),
	 (459,'Bảo Thuận',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (459,'Mỹ Chánh',NULL,NULL,NULL,'Xã'),
	 (459,'Mỹ Hòa',NULL,NULL,NULL,'Xã'),
	 (459,'Mỹ Nhơn',NULL,NULL,NULL,'Xã'),
	 (459,'Mỹ Thạn',NULL,NULL,NULL,'Xã'),
	 (459,'Mỹ Thạnh',NULL,NULL,NULL,'Xã'),
	 (459,'Phú Lễ',NULL,NULL,NULL,'Xã'),
	 (459,'Phú Ngãi',NULL,NULL,NULL,'Xã'),
	 (459,'Phước Tuy',NULL,NULL,NULL,'Xã'),
	 (459,'Tân Hưng',NULL,NULL,NULL,'Xã'),
	 (459,'Tân Mỹ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (459,'Tân Thủy',NULL,NULL,NULL,'Xã'),
	 (459,'Tân Xuân',NULL,NULL,NULL,'Xã'),
	 (459,'Vĩnh An',NULL,NULL,NULL,'Xã'),
	 (459,'Vĩnh Hòa',NULL,NULL,NULL,'Xã'),
	 (460,'1',NULL,NULL,NULL,'Phường'),
	 (460,'2',NULL,NULL,NULL,'Phường'),
	 (460,'3',NULL,NULL,NULL,'Phường'),
	 (460,'4',NULL,NULL,NULL,'Phường'),
	 (460,'5',NULL,NULL,NULL,'Phường'),
	 (460,'6',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (460,'7',NULL,NULL,NULL,'Phường'),
	 (460,'8',NULL,NULL,NULL,'Phường'),
	 (460,'Bình Phú',NULL,NULL,NULL,'Xã'),
	 (460,'Mỹ Thành',NULL,NULL,NULL,'Xã'),
	 (460,'Mỹ Thạnh An',NULL,NULL,NULL,'Xã'),
	 (460,'Nhơn Thạnh',NULL,NULL,NULL,'Xã'),
	 (460,'Phú Hưng',NULL,NULL,NULL,'Xã'),
	 (460,'Phú Khương',NULL,NULL,NULL,'Phường'),
	 (460,'Phú Nhuận',NULL,NULL,NULL,'Xã'),
	 (460,'Phú Tân',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (460,'Sơn Đông',NULL,NULL,NULL,'Xã'),
	 (460,'Sơn Đông',NULL,NULL,NULL,'Xã'),
	 (461,'Bình Đại',NULL,NULL,NULL,'Thị trấn'),
	 (461,'Bình Thắng',NULL,NULL,NULL,'Xã'),
	 (461,'Bình Thới',NULL,NULL,NULL,'Xã'),
	 (461,'Châu Hưng',NULL,NULL,NULL,'Xã'),
	 (461,'Đại Hòa Lộc',NULL,NULL,NULL,'Xã'),
	 (461,'Định Trung',NULL,NULL,NULL,'Xã'),
	 (461,'Lộc Thuận',NULL,NULL,NULL,'Xã'),
	 (461,'Long Định',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (461,'Long Hòa',NULL,NULL,NULL,'Xã'),
	 (461,'Phú Long',NULL,NULL,NULL,'Xã'),
	 (461,'Phú Thuận',NULL,NULL,NULL,'Xã'),
	 (461,'Phú Vang',NULL,NULL,NULL,'Xã'),
	 (461,'Tam Hiệp',NULL,NULL,NULL,'Xã'),
	 (461,'Thạnh Phước',NULL,NULL,NULL,'Xã'),
	 (461,'Thạnh Trị',NULL,NULL,NULL,'Xã'),
	 (461,'Thới Lai',NULL,NULL,NULL,'Xã'),
	 (461,'Thới Thuận',NULL,NULL,NULL,'Xã'),
	 (461,'Thừa Đức',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (461,'Vang Quới Đông',NULL,NULL,NULL,'Xã'),
	 (461,'Vang Quới Tây',NULL,NULL,NULL,'Xã'),
	 (462,'An Hiệp',NULL,NULL,NULL,'Xã'),
	 (462,'An Hóa',NULL,NULL,NULL,'Xã'),
	 (462,'An Khánh',NULL,NULL,NULL,'Xã'),
	 (462,'An Phước',NULL,NULL,NULL,'Xã'),
	 (462,'Châu Thành',NULL,NULL,NULL,'Thị trấn'),
	 (462,'Giao Hòa',NULL,NULL,NULL,'Xã'),
	 (462,'Giao Long',NULL,NULL,NULL,'Xã'),
	 (462,'Hữu Định',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (462,'Phú An Hòa',NULL,NULL,NULL,'Xã'),
	 (462,'Phú Đức',NULL,NULL,NULL,'Xã'),
	 (462,'Phú Túc',NULL,NULL,NULL,'Xã'),
	 (462,'Phước Thạnh',NULL,NULL,NULL,'Xã'),
	 (462,'Quới Sơn',NULL,NULL,NULL,'Xã'),
	 (462,'Quới Thành',NULL,NULL,NULL,'Xã'),
	 (462,'Sơn Hòa',NULL,NULL,NULL,'Xã'),
	 (462,'Tam Phước',NULL,NULL,NULL,'Xã'),
	 (462,'Tân Phú',NULL,NULL,NULL,'Xã'),
	 (462,'Tân Thạch',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (462,'Thành Triệu',NULL,NULL,NULL,'Xã'),
	 (462,'Tiên Long',NULL,NULL,NULL,'Xã'),
	 (462,'Tiên Thủy',NULL,NULL,NULL,'Xã'),
	 (462,'Tường Đa',NULL,NULL,NULL,'Xã'),
	 (463,'Chợ Lách',NULL,NULL,NULL,'Thị trấn'),
	 (463,'Hòa Nghĩa',NULL,NULL,NULL,'Xã'),
	 (463,'Hưng Khánh Trung B',NULL,NULL,NULL,'Xã'),
	 (463,'Long Thới',NULL,NULL,NULL,'Xã'),
	 (463,'Phú Phụng',NULL,NULL,NULL,'Xã'),
	 (463,'Phú Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (463,'Sơn Định',NULL,NULL,NULL,'Xã'),
	 (463,'Tân Thiềng',NULL,NULL,NULL,'Xã'),
	 (463,'Vĩnh Bình',NULL,NULL,NULL,'Xã'),
	 (463,'Vĩnh Hòa',NULL,NULL,NULL,'Xã'),
	 (463,'Vĩnh Thành',NULL,NULL,NULL,'Xã'),
	 (464,'Bình Hòa',NULL,NULL,NULL,'Xã'),
	 (464,'Bình Thành',NULL,NULL,NULL,'Xã'),
	 (464,'Châu Bình',NULL,NULL,NULL,'Xã'),
	 (464,'Châu Hòa',NULL,NULL,NULL,'Xã'),
	 (464,'Giồng Trôm',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (464,'Hưng Lễ',NULL,NULL,NULL,'Xã'),
	 (464,'Hưng Nhượng',NULL,NULL,NULL,'Xã'),
	 (464,'Hưng Phong',NULL,NULL,NULL,'Xã'),
	 (464,'Long Mỹ',NULL,NULL,NULL,'Xã'),
	 (464,'Lương Hòa',NULL,NULL,NULL,'Xã'),
	 (464,'Lương Phú',NULL,NULL,NULL,'Xã'),
	 (464,'Lương Quới',NULL,NULL,NULL,'Xã'),
	 (464,'Mỹ Thạnh',NULL,NULL,NULL,'Xã'),
	 (464,'Phong Mỹ',NULL,NULL,NULL,'Xã'),
	 (464,'Phong Nẫm',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (464,'Phước Long',NULL,NULL,NULL,'Xã'),
	 (464,'Sơn Phú',NULL,NULL,NULL,'Xã'),
	 (464,'Tân Hào',NULL,NULL,NULL,'Xã'),
	 (464,'Tân Hòa',NULL,NULL,NULL,'Xã'),
	 (464,'Tân Lợi Thạnh',NULL,NULL,NULL,'Xã'),
	 (464,'Tân Thanh',NULL,NULL,NULL,'Xã'),
	 (464,'Thạnh Phú Đông',NULL,NULL,NULL,'Xã'),
	 (464,'Thuận Điền',NULL,NULL,NULL,'Xã'),
	 (465,'Hòa Lộc',NULL,NULL,NULL,'Xã'),
	 (465,'Hưng Khánh Trung A',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (465,'Khánh Thạnh Tân',NULL,NULL,NULL,'Xã'),
	 (465,'Nhuận Phú Tân',NULL,NULL,NULL,'Xã'),
	 (465,'Phú Mỹ',NULL,NULL,NULL,'Xã'),
	 (465,'Phước Mỹ Trung',NULL,NULL,NULL,'Xã'),
	 (465,'Tân Bình',NULL,NULL,NULL,'Xã'),
	 (465,'Tân Phú Tây',NULL,NULL,NULL,'Xã'),
	 (465,'Tân Thành Bình',NULL,NULL,NULL,'Xã'),
	 (465,'Tân Thanh Tây',NULL,NULL,NULL,'Xã'),
	 (465,'Thành An',NULL,NULL,NULL,'Xã'),
	 (465,'Thạnh Ngãi',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (465,'Thanh Tân',NULL,NULL,NULL,'Xã'),
	 (466,'An Định',NULL,NULL,NULL,'Xã'),
	 (466,'An Thạnh',NULL,NULL,NULL,'Xã'),
	 (466,'An Thới',NULL,NULL,NULL,'Xã'),
	 (466,'Bình Khánh Đông',NULL,NULL,NULL,'Xã'),
	 (466,'Bình Khánh Tây',NULL,NULL,NULL,'Xã'),
	 (466,'Cẩm Sơn',NULL,NULL,NULL,'Xã'),
	 (466,'Đa Phước Hội',NULL,NULL,NULL,'Xã'),
	 (466,'Định Thủy',NULL,NULL,NULL,'Xã'),
	 (466,'Hương Mỹ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (466,'Minh Đức',NULL,NULL,NULL,'Xã'),
	 (466,'Mỏ Cày',NULL,NULL,NULL,'Thị trấn'),
	 (466,'Ngãi Đăng',NULL,NULL,NULL,'Xã'),
	 (466,'Phước Hiệp',NULL,NULL,NULL,'Xã'),
	 (466,'Tân Hội',NULL,NULL,NULL,'Xã'),
	 (466,'Tân Trung',NULL,NULL,NULL,'Xã'),
	 (466,'Thành Thới A',NULL,NULL,NULL,'Xã'),
	 (466,'Thành Thới B',NULL,NULL,NULL,'Xã'),
	 (467,'An Điền',NULL,NULL,NULL,'Xã'),
	 (467,'An Nhơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (467,'An Quy',NULL,NULL,NULL,'Xã'),
	 (467,'An Thạnh',NULL,NULL,NULL,'Xã'),
	 (467,'An Thuận',NULL,NULL,NULL,'Xã'),
	 (467,'Bình Thạnh',NULL,NULL,NULL,'Xã'),
	 (467,'Đại Điền',NULL,NULL,NULL,'Xã'),
	 (467,'Giao Thạnh',NULL,NULL,NULL,'Xã'),
	 (467,'Hòa Lợi',NULL,NULL,NULL,'Xã'),
	 (467,'Mỹ An',NULL,NULL,NULL,'Xã'),
	 (467,'Mỹ Hưng',NULL,NULL,NULL,'Xã'),
	 (467,'Phú Khánh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (467,'Quới Điền',NULL,NULL,NULL,'Xã'),
	 (467,'Tân Phong',NULL,NULL,NULL,'Xã'),
	 (467,'Thạnh Hải',NULL,NULL,NULL,'Xã'),
	 (467,'Thạnh Phong',NULL,NULL,NULL,'Xã'),
	 (467,'Thạnh Phú',NULL,NULL,NULL,'Thị trấn'),
	 (467,'Thới Thạnh',NULL,NULL,NULL,'Xã'),
	 (468,'Cư KNia',NULL,NULL,NULL,'Xã'),
	 (468,'Đăk Đrông',NULL,NULL,NULL,'Xã'),
	 (468,'Đăk Wil',NULL,NULL,NULL,'Xã'),
	 (468,'Ea Pô',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (468,'Ea T''ling',NULL,NULL,NULL,'Thị trấn'),
	 (468,'Nam Dong',NULL,NULL,NULL,'Xã'),
	 (468,'Tâm Thắng',NULL,NULL,NULL,'Xã'),
	 (468,'Trúc Sơn',NULL,NULL,NULL,'Xã'),
	 (469,'Đắk Ha',NULL,NULL,NULL,'Xã'),
	 (469,'Đắk PLao',NULL,NULL,NULL,'Xã'),
	 (469,'Đắk R''Măng',NULL,NULL,NULL,'Xã'),
	 (469,'Đắk Som',NULL,NULL,NULL,'Xã'),
	 (469,'Quảng Hòa',NULL,NULL,NULL,'Xã'),
	 (469,'Quảng Khê',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (469,'Quảng Sơn',NULL,NULL,NULL,'Thị trấn'),
	 (470,'Đắk Gằn',NULL,NULL,NULL,'Xã'),
	 (470,'Đắk Lao',NULL,NULL,NULL,'Xã'),
	 (470,'Đắk Mil',NULL,NULL,NULL,'Thị trấn'),
	 (470,'Đắk N''Drót',NULL,NULL,NULL,'Xã'),
	 (470,'Đắk R''La',NULL,NULL,NULL,'Xã'),
	 (470,'Đắk Sắk',NULL,NULL,NULL,'Xã'),
	 (470,'Đức Mạnh',NULL,NULL,NULL,'Xã'),
	 (470,'Đức Minh',NULL,NULL,NULL,'Xã'),
	 (470,'Long Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (470,'Thuận An',NULL,NULL,NULL,'Xã'),
	 (471,'Đắk Ru',NULL,NULL,NULL,'Xã'),
	 (471,'Đắk Sin',NULL,NULL,NULL,'Xã'),
	 (471,'Đắk Wer',NULL,NULL,NULL,'Xã'),
	 (471,'Đạo Nghĩa',NULL,NULL,NULL,'Xã'),
	 (471,'Hưng Bình',NULL,NULL,NULL,'Xã'),
	 (471,'Kiến Đức',NULL,NULL,NULL,'Thị trấn'),
	 (471,'Kiến Thành',NULL,NULL,NULL,'Xã'),
	 (471,'Nghĩa Thắng',NULL,NULL,NULL,'Xã'),
	 (471,'Nhân Cơ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (471,'Nhân Đạo',NULL,NULL,NULL,'Xã'),
	 (471,'Quảng Tín',NULL,NULL,NULL,'Xã'),
	 (472,'Đắk Hoà',NULL,NULL,NULL,'Xã'),
	 (472,'Đắk Môl',NULL,NULL,NULL,'Xã'),
	 (472,'Đắk N''Drung',NULL,NULL,NULL,'Xã'),
	 (472,'Đức An',NULL,NULL,NULL,'Thị trấn'),
	 (472,'Nam Bình',NULL,NULL,NULL,'Xã'),
	 (472,'Nâm N''Jang',NULL,NULL,NULL,'Xã'),
	 (472,'Thuận Hà',NULL,NULL,NULL,'Xã'),
	 (472,'Thuận Hạnh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (472,'Trường Xuân',NULL,NULL,NULL,'Xã'),
	 (473,'Đắk Nia',NULL,NULL,NULL,'Xã'),
	 (473,'Đắk R’Moan',NULL,NULL,NULL,'Xã'),
	 (473,'Nghĩa Đức',NULL,NULL,NULL,'Phường'),
	 (473,'Nghĩa Phú',NULL,NULL,NULL,'Phường'),
	 (473,'Nghĩa Tân',NULL,NULL,NULL,'Phường'),
	 (473,'Nghĩa Thành',NULL,NULL,NULL,'Phường'),
	 (473,'Nghĩa Trung',NULL,NULL,NULL,'Phường'),
	 (473,'Quảng Thành',NULL,NULL,NULL,'Xã'),
	 (474,'Buôn Choah',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (474,'Đăk Drô',NULL,NULL,NULL,'Xã'),
	 (474,'Đăk Mâm',NULL,NULL,NULL,'Thị trấn'),
	 (474,'Đăk Nang',NULL,NULL,NULL,'Xã'),
	 (474,'Đăk Sôr',NULL,NULL,NULL,'Xã'),
	 (474,'Đức Xuyên',NULL,NULL,NULL,'Xã'),
	 (474,'Nam Đà',NULL,NULL,NULL,'Xã'),
	 (474,'Nâm N''Đir',NULL,NULL,NULL,'Xã'),
	 (474,'Nâm Nung',NULL,NULL,NULL,'Xã'),
	 (474,'Nam Xuân',NULL,NULL,NULL,'Xã'),
	 (474,'Quảng Phú',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (474,'Tân Thành',NULL,NULL,NULL,'Xã'),
	 (475,'Đắk Búk So',NULL,NULL,NULL,'Thị trấn'),
	 (475,'Đắk Ngo',NULL,NULL,NULL,'Xã'),
	 (475,'Đắk R''Tíh',NULL,NULL,NULL,'Xã'),
	 (475,'Quảng Tâm',NULL,NULL,NULL,'Xã'),
	 (475,'Quảng Tân',NULL,NULL,NULL,'Xã'),
	 (475,'Quảng Trực',NULL,NULL,NULL,'Xã'),
	 (476,'1',NULL,NULL,NULL,'Phường'),
	 (476,'2',NULL,NULL,NULL,'Phường'),
	 (476,'3',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (476,'4',NULL,NULL,NULL,'Phường'),
	 (476,'5',NULL,NULL,NULL,'Phường'),
	 (476,'6',NULL,NULL,NULL,'Phường'),
	 (476,'7',NULL,NULL,NULL,'Phường'),
	 (476,'8',NULL,NULL,NULL,'Phường'),
	 (476,'9',NULL,NULL,NULL,'Phường'),
	 (476,'An Xuyên',NULL,NULL,NULL,'Xã'),
	 (476,'Định Bình',NULL,NULL,NULL,'Xã'),
	 (476,'Hòa Tân',NULL,NULL,NULL,'Xã'),
	 (476,'Hòa Thành',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (476,'Lý Văn Lâm',NULL,NULL,NULL,'Xã'),
	 (476,'Tắc Vân',NULL,NULL,NULL,'Xã'),
	 (476,'Tân Thành',NULL,NULL,NULL,'Phường'),
	 (476,'Tân Thành',NULL,NULL,NULL,'Xã'),
	 (476,'Tân Xuyên',NULL,NULL,NULL,'Phường'),
	 (477,'Cái Nước',NULL,NULL,NULL,'Thị trấn'),
	 (477,'Đông Hưng',NULL,NULL,NULL,'Xã'),
	 (477,'Đông Thới',NULL,NULL,NULL,'Xã'),
	 (477,'Hòa Mỹ',NULL,NULL,NULL,'Xã'),
	 (477,'Hưng Mỹ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (477,'Lương Thế Trân',NULL,NULL,NULL,'Xã'),
	 (477,'Phú Hưng',NULL,NULL,NULL,'Xã'),
	 (477,'Tân Hưng',NULL,NULL,NULL,'Xã'),
	 (477,'Tân Hưng Đông',NULL,NULL,NULL,'Xã'),
	 (477,'Thạnh Phú',NULL,NULL,NULL,'Xã'),
	 (477,'Trần Thới',NULL,NULL,NULL,'Xã'),
	 (478,'Đầm Dơi',NULL,NULL,NULL,'Thị trấn'),
	 (478,'Ngọc Chánh',NULL,NULL,NULL,'Xã'),
	 (478,'Nguyễn Huân',NULL,NULL,NULL,'Xã'),
	 (478,'Quách Phẩm',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (478,'Quách Phẩm Bắc',NULL,NULL,NULL,'Xã'),
	 (478,'Tạ An Khương',NULL,NULL,NULL,'Xã'),
	 (478,'Tạ An Khương Đông',NULL,NULL,NULL,'Xã'),
	 (478,'Tạ An Khương Nam',NULL,NULL,NULL,'Xã'),
	 (478,'Tân Dân',NULL,NULL,NULL,'Xã'),
	 (478,'Tân Đức',NULL,NULL,NULL,'Xã'),
	 (478,'Tân Duyệt',NULL,NULL,NULL,'Xã'),
	 (478,'Tân Thuận',NULL,NULL,NULL,'Xã'),
	 (478,'Tân Tiến',NULL,NULL,NULL,'Xã'),
	 (478,'Tân Trung',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (478,'Thanh Tùng',NULL,NULL,NULL,'Xã'),
	 (478,'Trần Phán',NULL,NULL,NULL,'Xã'),
	 (479,'Đất Mới',NULL,NULL,NULL,'Xã'),
	 (479,'Hàm Rồng',NULL,NULL,NULL,'Xã'),
	 (479,'Hàng Vịnh',NULL,NULL,NULL,'Xã'),
	 (479,'Hiệp Tùng',NULL,NULL,NULL,'Xã'),
	 (479,'Lâm Hải',NULL,NULL,NULL,'Xã'),
	 (479,'Năm Căn',NULL,NULL,NULL,'Thị trấn'),
	 (479,'Tam Giang',NULL,NULL,NULL,'Xã'),
	 (479,'Tam Giang Đông',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (480,'Đất Mũi',NULL,NULL,NULL,'Xã'),
	 (480,'Rạch Gốc',NULL,NULL,NULL,'Thị trấn'),
	 (480,'Tam Giang Tây',NULL,NULL,NULL,'Xã'),
	 (480,'Tân Ân',NULL,NULL,NULL,'Xã'),
	 (480,'Tân Ân Tây',NULL,NULL,NULL,'Xã'),
	 (480,'Viên An',NULL,NULL,NULL,'Xã'),
	 (480,'Viên An Đông',NULL,NULL,NULL,'Xã'),
	 (481,'Cái Đôi Vàm',NULL,NULL,NULL,'Thị trấn'),
	 (481,'Nguyễn Việt Khái',NULL,NULL,NULL,'Xã'),
	 (481,'Phú Mỹ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (481,'Phú Tân',NULL,NULL,NULL,'Xã'),
	 (481,'Phú Thuận',NULL,NULL,NULL,'Xã'),
	 (481,'Rạch Chèo',NULL,NULL,NULL,'Xã'),
	 (481,'Tân Hải',NULL,NULL,NULL,'Xã'),
	 (481,'Tân Hưng Tây',NULL,NULL,NULL,'Xã'),
	 (481,'Việt Thắng',NULL,NULL,NULL,'Xã'),
	 (482,'Biển Bạch',NULL,NULL,NULL,'Xã'),
	 (482,'Biển Bạch Đông',NULL,NULL,NULL,'Xã'),
	 (482,'Hồ Thị Kỷ',NULL,NULL,NULL,'Xã'),
	 (482,'Tân Bằng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (482,'Tân Lộc',NULL,NULL,NULL,'Xã'),
	 (482,'Tân Lộc Bắc',NULL,NULL,NULL,'Xã'),
	 (482,'Tân Lộc Đông',NULL,NULL,NULL,'Xã'),
	 (482,'Tân Phú',NULL,NULL,NULL,'Xã'),
	 (482,'Thới Bình',NULL,NULL,NULL,'Thị trấn'),
	 (482,'Thới Bình',NULL,NULL,NULL,'Xã'),
	 (482,'Trí Lực',NULL,NULL,NULL,'Xã'),
	 (482,'Trí Phải',NULL,NULL,NULL,'Xã'),
	 (483,'Khánh Bình',NULL,NULL,NULL,'Xã'),
	 (483,'Khánh Bình Đông',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (483,'Khánh Bình Tây',NULL,NULL,NULL,'Xã'),
	 (483,'Khánh Bình Tây Bắc',NULL,NULL,NULL,'Xã'),
	 (483,'Khánh Hải',NULL,NULL,NULL,'Xã'),
	 (483,'Khánh Hưng',NULL,NULL,NULL,'Xã'),
	 (483,'Khánh Lộc',NULL,NULL,NULL,'Xã'),
	 (483,'Lợi An',NULL,NULL,NULL,'Xã'),
	 (483,'Phong Điền',NULL,NULL,NULL,'Xã'),
	 (483,'Phong Lạc',NULL,NULL,NULL,'Xã'),
	 (483,'Sông Đốc',NULL,NULL,NULL,'Thị trấn'),
	 (483,'Trần Hợi',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (483,'Trần Văn Thời',NULL,NULL,NULL,'Thị trấn'),
	 (484,'Khánh An',NULL,NULL,NULL,'Xã'),
	 (484,'Khánh Hòa',NULL,NULL,NULL,'Xã'),
	 (484,'Khánh Hội',NULL,NULL,NULL,'Xã'),
	 (484,'Khánh Lâm',NULL,NULL,NULL,'Xã'),
	 (484,'Khánh Thuận',NULL,NULL,NULL,'Xã'),
	 (484,'Khánh Tiến',NULL,NULL,NULL,'Xã'),
	 (484,'Nguyễn Phích',NULL,NULL,NULL,'Xã'),
	 (484,'U Minh',NULL,NULL,NULL,'Thị trấn'),
	 (485,'Cái Vồn',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (485,'Đông Bình',NULL,NULL,NULL,'Xã'),
	 (485,'Đông Thành',NULL,NULL,NULL,'Xã'),
	 (485,'Đông Thạnh',NULL,NULL,NULL,'Xã'),
	 (485,'Đông Thuận',NULL,NULL,NULL,'Phường'),
	 (485,'Mỹ Hòa',NULL,NULL,NULL,'Xã'),
	 (485,'Thành Phước',NULL,NULL,NULL,'Phường'),
	 (485,'Thuận An',NULL,NULL,NULL,'Xã'),
	 (486,'Mỹ Thuận',NULL,NULL,NULL,'Xã'),
	 (486,'Nguyễn Văn Thảnh',NULL,NULL,NULL,'Xã'),
	 (486,'Tân An Thạnh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (486,'Tân Bình',NULL,NULL,NULL,'Xã'),
	 (486,'Tân Hưng',NULL,NULL,NULL,'Xã'),
	 (486,'Tân Lược',NULL,NULL,NULL,'Xã'),
	 (486,'Tân Quới',NULL,NULL,NULL,'Thị trấn'),
	 (486,'Tân Thành',NULL,NULL,NULL,'Xã'),
	 (486,'Thành Đông',NULL,NULL,NULL,'Xã'),
	 (486,'Thành Lợi',NULL,NULL,NULL,'Xã'),
	 (486,'Thành Trung',NULL,NULL,NULL,'Xã'),
	 (487,'An Bình',NULL,NULL,NULL,'Xã'),
	 (487,'Bình Hoà Phước',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (487,'Đồng Phú',NULL,NULL,NULL,'Xã'),
	 (487,'Hoà Ninh',NULL,NULL,NULL,'Xã'),
	 (487,'Hoà Phú',NULL,NULL,NULL,'Xã'),
	 (487,'Lộc Hoà',NULL,NULL,NULL,'Xã'),
	 (487,'Long An',NULL,NULL,NULL,'Xã'),
	 (487,'Long Hồ',NULL,NULL,NULL,'Thị trấn'),
	 (487,'Long Phước',NULL,NULL,NULL,'Xã'),
	 (487,'Phú Đức',NULL,NULL,NULL,'Xã'),
	 (487,'Phú Quới',NULL,NULL,NULL,'Xã'),
	 (487,'Phước Hậu',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (487,'Tân Hạnh',NULL,NULL,NULL,'Xã'),
	 (487,'Thanh Đức',NULL,NULL,NULL,'Xã'),
	 (487,'Thạnh Quới',NULL,NULL,NULL,'Xã'),
	 (488,'An Phước',NULL,NULL,NULL,'Xã'),
	 (488,'Bình Phước',NULL,NULL,NULL,'Xã'),
	 (488,'Cái Nhum',NULL,NULL,NULL,'Thị trấn'),
	 (488,'Chánh An',NULL,NULL,NULL,'Xã'),
	 (488,'Chánh Hội',NULL,NULL,NULL,'Xã'),
	 (488,'Hoà Tịnh',NULL,NULL,NULL,'Xã'),
	 (488,'Long Mỹ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (488,'Mỹ An',NULL,NULL,NULL,'Xã'),
	 (488,'Mỹ Phước',NULL,NULL,NULL,'Xã'),
	 (488,'Nhơn Phú',NULL,NULL,NULL,'Xã'),
	 (488,'Tân An Hội',NULL,NULL,NULL,'Xã'),
	 (488,'Tân Long',NULL,NULL,NULL,'Xã'),
	 (488,'Tân Long Hội',NULL,NULL,NULL,'Xã'),
	 (489,'Bình Ninh',NULL,NULL,NULL,'Xã'),
	 (489,'Hậu Lộc',NULL,NULL,NULL,'Xã'),
	 (489,'Hòa Hiệp',NULL,NULL,NULL,'Xã'),
	 (489,'Hòa Lộc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (489,'Hòa Thạnh',NULL,NULL,NULL,'Xã'),
	 (489,'Loan Mỹ',NULL,NULL,NULL,'Xã'),
	 (489,'Long Phú',NULL,NULL,NULL,'Xã'),
	 (489,'Mỹ Lộc',NULL,NULL,NULL,'Xã'),
	 (489,'Mỹ Thạnh Trung',NULL,NULL,NULL,'Xã'),
	 (489,'Ngãi Tứ',NULL,NULL,NULL,'Xã'),
	 (489,'Phú Lộc',NULL,NULL,NULL,'Xã'),
	 (489,'Phú Thịnh',NULL,NULL,NULL,'Xã'),
	 (489,'Song Phú',NULL,NULL,NULL,'Xã'),
	 (489,'Tam Bình',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (489,'Tân Lộc',NULL,NULL,NULL,'Xã'),
	 (489,'Tân Phú',NULL,NULL,NULL,'Xã'),
	 (489,'Tường Lộc',NULL,NULL,NULL,'Xã'),
	 (490,'Hoà Bình',NULL,NULL,NULL,'Xã'),
	 (490,'Hựu Thành',NULL,NULL,NULL,'Xã'),
	 (490,'Lục Sĩ Thành',NULL,NULL,NULL,'Xã'),
	 (490,'Nhơn Bình',NULL,NULL,NULL,'Xã'),
	 (490,'Phú Thành',NULL,NULL,NULL,'Xã'),
	 (490,'Tân Mỹ',NULL,NULL,NULL,'Xã'),
	 (490,'Thiện Mỹ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (490,'Thới Hoà',NULL,NULL,NULL,'Xã'),
	 (490,'Thuận Thới',NULL,NULL,NULL,'Xã'),
	 (490,'Tích Thiện',NULL,NULL,NULL,'Xã'),
	 (490,'Trà Côn',NULL,NULL,NULL,'Xã'),
	 (490,'Trà Ôn',NULL,NULL,NULL,'Thị trấn'),
	 (490,'Vĩnh Xuân',NULL,NULL,NULL,'Xã'),
	 (490,'Xuân Hiệp',NULL,NULL,NULL,'Xã'),
	 (491,'1',NULL,NULL,NULL,'Phường'),
	 (491,'2',NULL,NULL,NULL,'Phường'),
	 (491,'3',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (491,'4',NULL,NULL,NULL,'Phường'),
	 (491,'5',NULL,NULL,NULL,'Phường'),
	 (491,'8',NULL,NULL,NULL,'Phường'),
	 (491,'9',NULL,NULL,NULL,'Phường'),
	 (491,'Tân Hòa',NULL,NULL,NULL,'Xã'),
	 (491,'Tân Hội',NULL,NULL,NULL,'Xã'),
	 (491,'Tân Ngãi',NULL,NULL,NULL,'Xã'),
	 (491,'Trường An',NULL,NULL,NULL,'Xã'),
	 (492,'Hiếu Nghĩa',NULL,NULL,NULL,'Xã'),
	 (492,'Hiếu Nhơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (492,'Hiếu Phụng',NULL,NULL,NULL,'Xã'),
	 (492,'Hiếu Thành',NULL,NULL,NULL,'Xã'),
	 (492,'Hiếu Thuận',NULL,NULL,NULL,'Xã'),
	 (492,'Quới An',NULL,NULL,NULL,'Xã'),
	 (492,'Quới Thiện',NULL,NULL,NULL,'Xã'),
	 (492,'Tân An Luông',NULL,NULL,NULL,'Xã'),
	 (492,'Tân Quới Trung',NULL,NULL,NULL,'Xã'),
	 (492,'Thanh Bình',NULL,NULL,NULL,'Xã'),
	 (492,'Trung An',NULL,NULL,NULL,'Xã'),
	 (492,'Trung Chánh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (492,'Trung Hiệp',NULL,NULL,NULL,'Xã'),
	 (492,'Trung Hiếu',NULL,NULL,NULL,'Xã'),
	 (492,'Trung Ngãi',NULL,NULL,NULL,'Xã'),
	 (492,'Trung Nghĩa',NULL,NULL,NULL,'Xã'),
	 (492,'Trung Thành',NULL,NULL,NULL,'Xã'),
	 (492,'Trung Thành Đông',NULL,NULL,NULL,'Xã'),
	 (492,'Trung Thành Tây',NULL,NULL,NULL,'Xã'),
	 (492,'Vũng Liêm',NULL,NULL,NULL,'Thị trấn'),
	 (493,'Gia Hoà',NULL,NULL,NULL,'Xã'),
	 (493,'Gia Hưng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (493,'Gia Lạc',NULL,NULL,NULL,'Xã'),
	 (493,'Gia Lập',NULL,NULL,NULL,'Xã'),
	 (493,'Gia Minh',NULL,NULL,NULL,'Xã'),
	 (493,'Gia Phong',NULL,NULL,NULL,'Xã'),
	 (493,'Gia Phú',NULL,NULL,NULL,'Xã'),
	 (493,'Gia Phương',NULL,NULL,NULL,'Xã'),
	 (493,'Gia Sinh',NULL,NULL,NULL,'Xã'),
	 (493,'Gia Tân',NULL,NULL,NULL,'Xã'),
	 (493,'Gia Thắng',NULL,NULL,NULL,'Xã'),
	 (493,'Gia Thanh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (493,'Gia Thịnh',NULL,NULL,NULL,'Xã'),
	 (493,'Gia Tiến',NULL,NULL,NULL,'Xã'),
	 (493,'Gia Trấn',NULL,NULL,NULL,'Xã'),
	 (493,'Gia Trung',NULL,NULL,NULL,'Xã'),
	 (493,'Gia Vân',NULL,NULL,NULL,'Xã'),
	 (493,'Gia Vượng',NULL,NULL,NULL,'Xã'),
	 (493,'Gia Xuân',NULL,NULL,NULL,'Xã'),
	 (493,'Liên Sơn',NULL,NULL,NULL,'Xã'),
	 (493,'Me',NULL,NULL,NULL,'Thị trấn'),
	 (494,'Ninh An',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (494,'Ninh Giang',NULL,NULL,NULL,'Xã'),
	 (494,'Ninh Hải',NULL,NULL,NULL,'Xã'),
	 (494,'Ninh Hòa',NULL,NULL,NULL,'Xã'),
	 (494,'Ninh Khang',NULL,NULL,NULL,'Xã'),
	 (494,'Ninh Mỹ',NULL,NULL,NULL,'Xã'),
	 (494,'Ninh Thắng',NULL,NULL,NULL,'Xã'),
	 (494,'Ninh Vân',NULL,NULL,NULL,'Xã'),
	 (494,'Ninh Xuân',NULL,NULL,NULL,'Xã'),
	 (494,'Thiên Tôn',NULL,NULL,NULL,'Thị trấn'),
	 (494,'Trường Yên',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (495,'Ân Hòa',NULL,NULL,NULL,'Xã'),
	 (495,'Bình Minh',NULL,NULL,NULL,'Thị trấn'),
	 (495,'Chất Bình',NULL,NULL,NULL,'Xã'),
	 (495,'Chính Tâm',NULL,NULL,NULL,'Xã'),
	 (495,'Con Thoi',NULL,NULL,NULL,'Xã'),
	 (495,'Định Hoá',NULL,NULL,NULL,'Xã'),
	 (495,'Đồng Hướng',NULL,NULL,NULL,'Xã'),
	 (495,'Hồi Ninh',NULL,NULL,NULL,'Xã'),
	 (495,'Hùng Tiến',NULL,NULL,NULL,'Xã'),
	 (495,'Kim Chính',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (495,'Kim Định',NULL,NULL,NULL,'Xã'),
	 (495,'Kim Đồng',NULL,NULL,NULL,'Xã'),
	 (495,'Kim Hải',NULL,NULL,NULL,'Xã'),
	 (495,'Kim Mỹ',NULL,NULL,NULL,'Xã'),
	 (495,'Kim Tân',NULL,NULL,NULL,'Xã'),
	 (495,'Kim Trung',NULL,NULL,NULL,'Xã'),
	 (495,'Lai Thành',NULL,NULL,NULL,'Xã'),
	 (495,'Lưu Phương',NULL,NULL,NULL,'Xã'),
	 (495,'Như Hòa',NULL,NULL,NULL,'Xã'),
	 (495,'Phát Diệm',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (495,'Quang Thiện',NULL,NULL,NULL,'Xã'),
	 (495,'Tân Thành',NULL,NULL,NULL,'Xã'),
	 (495,'Thượng Kiệm',NULL,NULL,NULL,'Xã'),
	 (495,'Văn Hải',NULL,NULL,NULL,'Xã'),
	 (495,'Xuân Thiện',NULL,NULL,NULL,'Xã'),
	 (495,'Yên Lộc',NULL,NULL,NULL,'Xã'),
	 (495,'Yên Mật',NULL,NULL,NULL,'Xã'),
	 (496,'Cúc Phương',NULL,NULL,NULL,'Xã'),
	 (496,'Đồng Phong',NULL,NULL,NULL,'Xã'),
	 (496,'Đức Long',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (496,'Gia Lâm',NULL,NULL,NULL,'Xã'),
	 (496,'Gia Sơn',NULL,NULL,NULL,'Xã'),
	 (496,'Gia Thủy',NULL,NULL,NULL,'Xã'),
	 (496,'Gia Tường',NULL,NULL,NULL,'Xã'),
	 (496,'Kỳ Phú',NULL,NULL,NULL,'Xã'),
	 (496,'Lạc Vân',NULL,NULL,NULL,'Xã'),
	 (496,'Lạng Phong',NULL,NULL,NULL,'Xã'),
	 (496,'Nho Quan',NULL,NULL,NULL,'Thị trấn'),
	 (496,'Phú Lộc',NULL,NULL,NULL,'Xã'),
	 (496,'Phú Long',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (496,'Phú Sơn',NULL,NULL,NULL,'Xã'),
	 (496,'Quảng Lạc',NULL,NULL,NULL,'Xã'),
	 (496,'Quỳnh Lưu',NULL,NULL,NULL,'Xã'),
	 (496,'Sơn Hà',NULL,NULL,NULL,'Xã'),
	 (496,'Sơn Lai',NULL,NULL,NULL,'Xã'),
	 (496,'Sơn Thành',NULL,NULL,NULL,'Xã'),
	 (496,'Thạch Bình',NULL,NULL,NULL,'Xã'),
	 (496,'Thanh Lạc',NULL,NULL,NULL,'Xã'),
	 (496,'Thượng Hoà',NULL,NULL,NULL,'Xã'),
	 (496,'Văn Phong',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (496,'Văn Phú',NULL,NULL,NULL,'Xã'),
	 (496,'Văn Phương',NULL,NULL,NULL,'Xã'),
	 (496,'Xích Thổ',NULL,NULL,NULL,'Xã'),
	 (496,'Yên Quang',NULL,NULL,NULL,'Xã'),
	 (497,'Bích Đào',NULL,NULL,NULL,'Phường'),
	 (497,'Đông Thành',NULL,NULL,NULL,'Phường'),
	 (497,'Nam Bình',NULL,NULL,NULL,'Phường'),
	 (497,'Nam Thành',NULL,NULL,NULL,'Phường'),
	 (497,'Ninh Khánh',NULL,NULL,NULL,'Phường'),
	 (497,'Ninh nhất',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (497,'Ninh Phong',NULL,NULL,NULL,'Phường'),
	 (497,'Ninh Phúc',NULL,NULL,NULL,'Xã'),
	 (497,'Ninh Sơn',NULL,NULL,NULL,'Phường'),
	 (497,'Ninh Tiến',NULL,NULL,NULL,'Xã'),
	 (497,'Phúc Thành',NULL,NULL,NULL,'Phường'),
	 (497,'Tân Thành',NULL,NULL,NULL,'Phường'),
	 (497,'Thanh Bình',NULL,NULL,NULL,'Phường'),
	 (497,'Vân Giang',NULL,NULL,NULL,'Phường'),
	 (498,'Bắc Sơn',NULL,NULL,NULL,'Phường'),
	 (498,'Đông Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (498,'Nam Sơn',NULL,NULL,NULL,'Phường'),
	 (498,'Quang Sơn',NULL,NULL,NULL,'Xã'),
	 (498,'Tân Bình',NULL,NULL,NULL,'Phường'),
	 (498,'Tây Sơn',NULL,NULL,NULL,'Phường'),
	 (498,'Trung Sơn',NULL,NULL,NULL,'Phường'),
	 (498,'Yên Bình',NULL,NULL,NULL,'Xã'),
	 (498,'Yên Sơn',NULL,NULL,NULL,'Xã'),
	 (499,'Khánh An',NULL,NULL,NULL,'Xã'),
	 (499,'Khánh Công',NULL,NULL,NULL,'Xã'),
	 (499,'Khánh Cư',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (499,'Khánh Cường',NULL,NULL,NULL,'Xã'),
	 (499,'Khánh Hải',NULL,NULL,NULL,'Xã'),
	 (499,'Khánh Hòa',NULL,NULL,NULL,'Xã'),
	 (499,'Khánh Hội',NULL,NULL,NULL,'Xã'),
	 (499,'Khánh Hồng',NULL,NULL,NULL,'Xã'),
	 (499,'Khánh Lợi',NULL,NULL,NULL,'Xã'),
	 (499,'Khánh Mậu',NULL,NULL,NULL,'Xã'),
	 (499,'Khánh Nhạc',NULL,NULL,NULL,'Xã'),
	 (499,'Khánh Phú',NULL,NULL,NULL,'Xã'),
	 (499,'Khánh Thành',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (499,'Khánh Thiện',NULL,NULL,NULL,'Xã'),
	 (499,'Khánh Thủy',NULL,NULL,NULL,'Xã'),
	 (499,'Khánh Tiên',NULL,NULL,NULL,'Xã'),
	 (499,'Khánh Trung',NULL,NULL,NULL,'Xã'),
	 (499,'Khánh Vân',NULL,NULL,NULL,'Xã'),
	 (499,'Yên Ninh',NULL,NULL,NULL,'Thị trấn'),
	 (500,'Khánh Dương',NULL,NULL,NULL,'Xã'),
	 (500,'Khánh Thịnh',NULL,NULL,NULL,'Xã'),
	 (500,'Khánh Thượng',NULL,NULL,NULL,'Xã'),
	 (500,'Mai Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (500,'Yên Đồng',NULL,NULL,NULL,'Xã'),
	 (500,'Yên Hòa',NULL,NULL,NULL,'Xã'),
	 (500,'Yên Hưng',NULL,NULL,NULL,'Xã'),
	 (500,'Yên Lâm',NULL,NULL,NULL,'Xã'),
	 (500,'Yên Mạc',NULL,NULL,NULL,'Xã'),
	 (500,'Yên Mỹ',NULL,NULL,NULL,'Xã'),
	 (500,'Yên Nhân',NULL,NULL,NULL,'Xã'),
	 (500,'Yên Phong',NULL,NULL,NULL,'Xã'),
	 (500,'Yên Phú',NULL,NULL,NULL,'Xã'),
	 (500,'Yên Thái',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (500,'Yên Thắng',NULL,NULL,NULL,'Xã'),
	 (500,'Yên Thành',NULL,NULL,NULL,'Xã'),
	 (500,'Yên Thịnh',NULL,NULL,NULL,'Thị trấn'),
	 (500,'Yên Từ',NULL,NULL,NULL,'Xã'),
	 (501,'Cấp Dẫn',NULL,NULL,NULL,'Xã'),
	 (501,'Cát Trù',NULL,NULL,NULL,'Xã'),
	 (501,'Chương Xá',NULL,NULL,NULL,'Xã'),
	 (501,'Điêu Lương',NULL,NULL,NULL,'Xã'),
	 (501,'Đồng Cam',NULL,NULL,NULL,'Xã'),
	 (501,'Đồng Lương',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (501,'Hiền Đa',NULL,NULL,NULL,'Xã'),
	 (501,'Hương Lung',NULL,NULL,NULL,'Xã'),
	 (501,'Ngô Xá',NULL,NULL,NULL,'Xã'),
	 (501,'Phú Khê',NULL,NULL,NULL,'Xã'),
	 (501,'Phú Lạc',NULL,NULL,NULL,'Xã'),
	 (501,'Phùng Xá',NULL,NULL,NULL,'Xã'),
	 (501,'Phượng Vĩ',NULL,NULL,NULL,'Xã'),
	 (501,'Phương Xá',NULL,NULL,NULL,'Xã'),
	 (501,'Sai Nga',NULL,NULL,NULL,'Xã'),
	 (501,'Sơn Nga',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (501,'Sơn Tịnh',NULL,NULL,NULL,'Xã'),
	 (501,'Sông Thao',NULL,NULL,NULL,'Thị trấn'),
	 (501,'Tạ Xá',NULL,NULL,NULL,'Xã'),
	 (501,'Tam Sơn',NULL,NULL,NULL,'Xã'),
	 (501,'Thanh Nga',NULL,NULL,NULL,'Xã'),
	 (501,'Thụy Liễu',NULL,NULL,NULL,'Xã'),
	 (501,'Tiên Lương',NULL,NULL,NULL,'Xã'),
	 (501,'Tình Cương',NULL,NULL,NULL,'Xã'),
	 (501,'Tùng Khê',NULL,NULL,NULL,'Xã'),
	 (501,'Tuy Lộc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (501,'Văn Bán',NULL,NULL,NULL,'Xã'),
	 (501,'Văn Khúc',NULL,NULL,NULL,'Xã'),
	 (501,'Xương Thịnh',NULL,NULL,NULL,'Xã'),
	 (501,'Yên Dưỡng',NULL,NULL,NULL,'Xã'),
	 (501,'Yên Tập',NULL,NULL,NULL,'Xã'),
	 (502,'Bằng Doãn',NULL,NULL,NULL,'Xã'),
	 (502,'Bằng Luân',NULL,NULL,NULL,'Xã'),
	 (502,'Ca Đình',NULL,NULL,NULL,'Xã'),
	 (502,'Chân Mộng',NULL,NULL,NULL,'Xã'),
	 (502,'Chí Đám',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (502,'Đại Nghĩa',NULL,NULL,NULL,'Xã'),
	 (502,'Đoan Hùng',NULL,NULL,NULL,'Thị trấn'),
	 (502,'Đông Khê',NULL,NULL,NULL,'Xã'),
	 (502,'Hùng Long',NULL,NULL,NULL,'Xã'),
	 (502,'Hùng Quan',NULL,NULL,NULL,'Xã'),
	 (502,'Hữu Đô',NULL,NULL,NULL,'Xã'),
	 (502,'Minh Lương',NULL,NULL,NULL,'Xã'),
	 (502,'Minh Phú',NULL,NULL,NULL,'Xã'),
	 (502,'Minh Tiến',NULL,NULL,NULL,'Xã'),
	 (502,'Nghinh Xuyên',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (502,'Ngọc Quan',NULL,NULL,NULL,'Xã'),
	 (502,'Phong Phú',NULL,NULL,NULL,'Xã'),
	 (502,'Phú Thứ',NULL,NULL,NULL,'Xã'),
	 (502,'Phúc Lai',NULL,NULL,NULL,'Xã'),
	 (502,'Phương Trung',NULL,NULL,NULL,'Xã'),
	 (502,'Quế Lâm',NULL,NULL,NULL,'Xã'),
	 (502,'Sóc Đăng',NULL,NULL,NULL,'Xã'),
	 (502,'Tây Cốc',NULL,NULL,NULL,'Xã'),
	 (502,'Tiêu Sơn',NULL,NULL,NULL,'Xã'),
	 (502,'Vân Đồn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (502,'Vân Du',NULL,NULL,NULL,'Xã'),
	 (502,'Vụ Quang',NULL,NULL,NULL,'Xã'),
	 (502,'Yên Kiện',NULL,NULL,NULL,'Xã'),
	 (503,'Ấm Hạ',NULL,NULL,NULL,'Xã'),
	 (503,'Bằng Giã',NULL,NULL,NULL,'Xã'),
	 (503,'Cáo Điền',NULL,NULL,NULL,'Xã'),
	 (503,'Chính Công',NULL,NULL,NULL,'Xã'),
	 (503,'Chuế Lưu',NULL,NULL,NULL,'Xã'),
	 (503,'Đại Phạm',NULL,NULL,NULL,'Xã'),
	 (503,'Đan Hà',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (503,'Đan Thượng',NULL,NULL,NULL,'Xã'),
	 (503,'Động Lâm',NULL,NULL,NULL,'Xã'),
	 (503,'Gia Điền',NULL,NULL,NULL,'Xã'),
	 (503,'Hạ Hòa',NULL,NULL,NULL,'Thị trấn'),
	 (503,'Hà Lương',NULL,NULL,NULL,'Xã'),
	 (503,'Hậu Bổng',NULL,NULL,NULL,'Xã'),
	 (503,'Hiền Lương',NULL,NULL,NULL,'Xã'),
	 (503,'Hương Xạ',NULL,NULL,NULL,'Xã'),
	 (503,'Lâm Lợi',NULL,NULL,NULL,'Xã'),
	 (503,'Lang Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (503,'Lệnh Khanh',NULL,NULL,NULL,'Xã'),
	 (503,'Liên Phương',NULL,NULL,NULL,'Xã'),
	 (503,'Mai Tùng',NULL,NULL,NULL,'Xã'),
	 (503,'Minh Côi',NULL,NULL,NULL,'Xã'),
	 (503,'Minh Hạc',NULL,NULL,NULL,'Xã'),
	 (503,'Phụ Khánh',NULL,NULL,NULL,'Xã'),
	 (503,'Phương Viên',NULL,NULL,NULL,'Xã'),
	 (503,'Quân Khê',NULL,NULL,NULL,'Xã'),
	 (503,'Văn Lang',NULL,NULL,NULL,'Xã'),
	 (503,'Vĩnh Chân',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (503,'Vô Tranh',NULL,NULL,NULL,'Xã'),
	 (503,'Vụ Cầu',NULL,NULL,NULL,'Xã'),
	 (503,'Xuân Áng',NULL,NULL,NULL,'Xã'),
	 (503,'Y Sơn',NULL,NULL,NULL,'Xã'),
	 (503,'Yên Kỳ',NULL,NULL,NULL,'Xã'),
	 (503,'Yên Luật',NULL,NULL,NULL,'Xã'),
	 (504,'Bản Nguyên',NULL,NULL,NULL,'Xã'),
	 (504,'Cao Xá',NULL,NULL,NULL,'Xã'),
	 (504,'Hợp Hải',NULL,NULL,NULL,'Xã'),
	 (504,'Hùng Sơn',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (504,'Kinh Kệ',NULL,NULL,NULL,'Xã'),
	 (504,'Lâm Thao',NULL,NULL,NULL,'Thị trấn'),
	 (504,'Sơn Dương',NULL,NULL,NULL,'Xã'),
	 (504,'Sơn Vi',NULL,NULL,NULL,'Xã'),
	 (504,'Thạch Sơn',NULL,NULL,NULL,'Xã'),
	 (504,'Tiên Kiên',NULL,NULL,NULL,'Xã'),
	 (504,'Tứ Xã',NULL,NULL,NULL,'Xã'),
	 (504,'Vĩnh Lại',NULL,NULL,NULL,'Xã'),
	 (504,'Xuân Huy',NULL,NULL,NULL,'Xã'),
	 (504,'Xuân Lũng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (505,'An Đạo',NULL,NULL,NULL,'Xã'),
	 (505,'Bảo Thanh',NULL,NULL,NULL,'Xã'),
	 (505,'Bình Bộ',NULL,NULL,NULL,'Xã'),
	 (505,'Gia Thanh',NULL,NULL,NULL,'Xã'),
	 (505,'Hạ Giáp',NULL,NULL,NULL,'Xã'),
	 (505,'Lệ Mỹ',NULL,NULL,NULL,'Xã'),
	 (505,'Liên Hoa',NULL,NULL,NULL,'Xã'),
	 (505,'Phong Châu',NULL,NULL,NULL,'Thị trấn'),
	 (505,'Phú Lộc',NULL,NULL,NULL,'Xã'),
	 (505,'Phú Mỹ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (505,'Phú Nham',NULL,NULL,NULL,'Xã'),
	 (505,'Phù Ninh',NULL,NULL,NULL,'Xã'),
	 (505,'Tiên Du',NULL,NULL,NULL,'Xã'),
	 (505,'Tiên Phú',NULL,NULL,NULL,'Xã'),
	 (505,'Trạm Thản',NULL,NULL,NULL,'Xã'),
	 (505,'Trị Quận',NULL,NULL,NULL,'Xã'),
	 (505,'Trung Giáp',NULL,NULL,NULL,'Xã'),
	 (505,'Tử Đà',NULL,NULL,NULL,'Xã'),
	 (505,'Vĩnh Phú',NULL,NULL,NULL,'Xã'),
	 (506,'Âu Cơ',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (506,'Hà Lộc',NULL,NULL,NULL,'Xã'),
	 (506,'Hà Thạch',NULL,NULL,NULL,'Xã'),
	 (506,'Hùng Vương',NULL,NULL,NULL,'Phường'),
	 (506,'Phong Châu',NULL,NULL,NULL,'Phường'),
	 (506,'Phú Hộ',NULL,NULL,NULL,'Xã'),
	 (506,'Thanh Minh',NULL,NULL,NULL,'Xã'),
	 (506,'Thanh Vinh',NULL,NULL,NULL,'Xã'),
	 (506,'Trường Thịnh',NULL,NULL,NULL,'Phường'),
	 (506,'Văn Lung',NULL,NULL,NULL,'Xã'),
	 (507,'Cổ Tiết',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (507,'Dậu Dương',NULL,NULL,NULL,'Xã'),
	 (507,'Dị Nậu',NULL,NULL,NULL,'Xã'),
	 (507,'Hiền Quan',NULL,NULL,NULL,'Xã'),
	 (507,'Hồng Đà',NULL,NULL,NULL,'Xã'),
	 (507,'Hùng Đô',NULL,NULL,NULL,'Xã'),
	 (507,'Hưng Hóa',NULL,NULL,NULL,'Thị trấn'),
	 (507,'Hương Nha',NULL,NULL,NULL,'Xã'),
	 (507,'Hương Nộn',NULL,NULL,NULL,'Xã'),
	 (507,'Phương Thịnh',NULL,NULL,NULL,'Xã'),
	 (507,'Quang Húc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (507,'Tam Cường',NULL,NULL,NULL,'Xã'),
	 (507,'Tề Lễ',NULL,NULL,NULL,'Xã'),
	 (507,'Thanh Uyên',NULL,NULL,NULL,'Xã'),
	 (507,'Thọ Văn',NULL,NULL,NULL,'Xã'),
	 (507,'Thượng Nông',NULL,NULL,NULL,'Xã'),
	 (507,'Tứ Mỹ',NULL,NULL,NULL,'Xã'),
	 (507,'Văn Lương',NULL,NULL,NULL,'Xã'),
	 (507,'Vực Trường',NULL,NULL,NULL,'Xã'),
	 (507,'Xuân Quang',NULL,NULL,NULL,'Xã'),
	 (508,'Đồng Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (508,'Kiệt Sơn',NULL,NULL,NULL,'Xã'),
	 (508,'Kim Thượng',NULL,NULL,NULL,'Xã'),
	 (508,'Lai Đồng',NULL,NULL,NULL,'Xã'),
	 (508,'Long Cốc',NULL,NULL,NULL,'Xã'),
	 (508,'Minh Đài',NULL,NULL,NULL,'Xã'),
	 (508,'Mỹ Thuận',NULL,NULL,NULL,'Xã'),
	 (508,'Tam Thanh',NULL,NULL,NULL,'Xã'),
	 (508,'Tân Phú',NULL,NULL,NULL,'Xã'),
	 (508,'Tân Sơn',NULL,NULL,NULL,'Xã'),
	 (508,'Thạch Kiệt',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (508,'Thu Cúc',NULL,NULL,NULL,'Xã'),
	 (508,'Thu Ngạc',NULL,NULL,NULL,'Xã'),
	 (508,'Văn Luông',NULL,NULL,NULL,'Xã'),
	 (508,'Vinh Tiền',NULL,NULL,NULL,'Xã'),
	 (508,'Xuân Đài',NULL,NULL,NULL,'Xã'),
	 (508,'Xuân Sơn',NULL,NULL,NULL,'Xã'),
	 (509,'Chí Tiên',NULL,NULL,NULL,'Xã'),
	 (509,'Đại An',NULL,NULL,NULL,'Xã'),
	 (509,'Đỗ Sơn',NULL,NULL,NULL,'Xã'),
	 (509,'Đỗ Xuyên',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (509,'Đông Lĩnh',NULL,NULL,NULL,'Xã'),
	 (509,'Đông Thành',NULL,NULL,NULL,'Xã'),
	 (509,'Đồng Xuân',NULL,NULL,NULL,'Xã'),
	 (509,'Hanh Cù',NULL,NULL,NULL,'Xã'),
	 (509,'Hoàng Cương',NULL,NULL,NULL,'Xã'),
	 (509,'Khải Xuân',NULL,NULL,NULL,'Xã'),
	 (509,'Lương Lỗ',NULL,NULL,NULL,'Xã'),
	 (509,'Mạn Lạn',NULL,NULL,NULL,'Xã'),
	 (509,'Năng Yên',NULL,NULL,NULL,'Xã'),
	 (509,'Ninh Dân',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (509,'Phương Lĩnh',NULL,NULL,NULL,'Xã'),
	 (509,'Quảng Nạp',NULL,NULL,NULL,'Xã'),
	 (509,'Sơn Cương',NULL,NULL,NULL,'Xã'),
	 (509,'Thái Ninh',NULL,NULL,NULL,'Xã'),
	 (509,'Thanh Ba',NULL,NULL,NULL,'Thị trấn'),
	 (509,'Thanh Hà',NULL,NULL,NULL,'Xã'),
	 (509,'Thanh Vân',NULL,NULL,NULL,'Xã'),
	 (509,'Thanh Xá',NULL,NULL,NULL,'Xã'),
	 (509,'Vân Lĩnh',NULL,NULL,NULL,'Xã'),
	 (509,'Võ Lao',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (509,'Vũ Yển',NULL,NULL,NULL,'Xã'),
	 (509,'Yển Khê',NULL,NULL,NULL,'Xã'),
	 (509,'Yên Nội',NULL,NULL,NULL,'Xã'),
	 (510,'Cự Đồng',NULL,NULL,NULL,'Xã'),
	 (510,'Cự Thắng',NULL,NULL,NULL,'Xã'),
	 (510,'Địch Quả',NULL,NULL,NULL,'Xã'),
	 (510,'Đông Cửu',NULL,NULL,NULL,'Xã'),
	 (510,'Giáp Lai',NULL,NULL,NULL,'Xã'),
	 (510,'Hương Cần',NULL,NULL,NULL,'Xã'),
	 (510,'Khả Cửu',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (510,'Lương Nha',NULL,NULL,NULL,'Xã'),
	 (510,'Sơn Hùng',NULL,NULL,NULL,'Xã'),
	 (510,'Tân Lập',NULL,NULL,NULL,'Xã'),
	 (510,'Tân Minh',NULL,NULL,NULL,'Xã'),
	 (510,'Tất Thắng',NULL,NULL,NULL,'Xã'),
	 (510,'Thạch Khoán',NULL,NULL,NULL,'Xã'),
	 (510,'Thắng Sơn',NULL,NULL,NULL,'Xã'),
	 (510,'Thanh Sơn',NULL,NULL,NULL,'Thị trấn'),
	 (510,'Thục Luyện',NULL,NULL,NULL,'Xã'),
	 (510,'Thượng Cửu',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (510,'Tinh Nhuệ',NULL,NULL,NULL,'Xã'),
	 (510,'Văn Miếu',NULL,NULL,NULL,'Xã'),
	 (510,'Võ Miếu',NULL,NULL,NULL,'Xã'),
	 (510,'Yên Lãng',NULL,NULL,NULL,'Xã'),
	 (510,'Yên Lương',NULL,NULL,NULL,'Xã'),
	 (510,'Yên Sơn',NULL,NULL,NULL,'Xã'),
	 (511,'Bảo Yên',NULL,NULL,NULL,'Xã'),
	 (511,'Đào Xá',NULL,NULL,NULL,'Xã'),
	 (511,'Đoan Hạ',NULL,NULL,NULL,'Xã'),
	 (511,'Đồng Luận',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (511,'Hoàng Xá',NULL,NULL,NULL,'Xã'),
	 (511,'Phượng Mao',NULL,NULL,NULL,'Xã'),
	 (511,'Sơn Thủy',NULL,NULL,NULL,'Xã'),
	 (511,'Tân Phương',NULL,NULL,NULL,'Xã'),
	 (511,'Thạch Đồng',NULL,NULL,NULL,'Xã'),
	 (511,'Thanh Thủy',NULL,NULL,NULL,'Thị trấn'),
	 (511,'Trung Nghĩa',NULL,NULL,NULL,'Xã'),
	 (511,'Trung Thịnh',NULL,NULL,NULL,'Xã'),
	 (511,'Tu Vũ',NULL,NULL,NULL,'Xã'),
	 (511,'Xuân Lộc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (511,'Yến Mao',NULL,NULL,NULL,'Xã'),
	 (512,'Bạch Hạc',NULL,NULL,NULL,'Phường'),
	 (512,'Bến Gót',NULL,NULL,NULL,'Phường'),
	 (512,'Chu Hóa',NULL,NULL,NULL,'Xã'),
	 (512,'Dữu Lâu',NULL,NULL,NULL,'Phường'),
	 (512,'Gia Cẩm',NULL,NULL,NULL,'Phường'),
	 (512,'Hùng Lô',NULL,NULL,NULL,'Xã'),
	 (512,'Hy Cương',NULL,NULL,NULL,'Xã'),
	 (512,'Kim Đức',NULL,NULL,NULL,'Xã'),
	 (512,'Minh Nông',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (512,'Minh Phương',NULL,NULL,NULL,'Phường'),
	 (512,'Nông Trang',NULL,NULL,NULL,'Phường'),
	 (512,'Phượng Lâu',NULL,NULL,NULL,'Xã'),
	 (512,'Sông Lô',NULL,NULL,NULL,'Xã'),
	 (512,'Tân Dân',NULL,NULL,NULL,'Phường'),
	 (512,'Tân Đức',NULL,NULL,NULL,'Xã'),
	 (512,'Thanh Đình',NULL,NULL,NULL,'Xã'),
	 (512,'Thanh Miếu',NULL,NULL,NULL,'Phường'),
	 (512,'Thọ Sơn',NULL,NULL,NULL,'Phường'),
	 (512,'Thụy Vân',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (512,'Tiên Cát',NULL,NULL,NULL,'Phường'),
	 (512,'Trưng Vương',NULL,NULL,NULL,'Xã'),
	 (512,'Vân Cơ',NULL,NULL,NULL,'Phường'),
	 (512,'Vân Phú',NULL,NULL,NULL,'Phường'),
	 (513,'Đồng Lạc',NULL,NULL,NULL,'Xã'),
	 (513,'Đồng Thịnh',NULL,NULL,NULL,'Xã'),
	 (513,'Hưng Long',NULL,NULL,NULL,'Xã'),
	 (513,'Lương Sơn',NULL,NULL,NULL,'Xã'),
	 (513,'Minh Hòa',NULL,NULL,NULL,'Xã'),
	 (513,'Mỹ Lung',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (513,'Mỹ Lương',NULL,NULL,NULL,'Xã'),
	 (513,'Nga Hoàng',NULL,NULL,NULL,'Xã'),
	 (513,'Ngọc Đồng',NULL,NULL,NULL,'Xã'),
	 (513,'Ngọc Lập',NULL,NULL,NULL,'Xã'),
	 (513,'Phúc Khánh',NULL,NULL,NULL,'Xã'),
	 (513,'Thượng Long',NULL,NULL,NULL,'Xã'),
	 (513,'Trung Sơn',NULL,NULL,NULL,'Xã'),
	 (513,'Xuân An',NULL,NULL,NULL,'Xã'),
	 (513,'Xuân Thủy',NULL,NULL,NULL,'Xã'),
	 (513,'Xuân Viên',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (513,'Yên Lập',NULL,NULL,NULL,'Thị trấn'),
	 (514,'Phước Bình',NULL,NULL,NULL,'Xã'),
	 (514,'Phước Chính',NULL,NULL,NULL,'Xã'),
	 (514,'Phước Đại',NULL,NULL,NULL,'Thị trấn'),
	 (514,'Phước Hòa',NULL,NULL,NULL,'Xã'),
	 (514,'Phước Tân',NULL,NULL,NULL,'Xã'),
	 (514,'Phước Thắng',NULL,NULL,NULL,'Xã'),
	 (514,'Phước Thành',NULL,NULL,NULL,'Xã'),
	 (514,'Phước Tiến',NULL,NULL,NULL,'Xã'),
	 (514,'Phước Trung',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (515,'Hộ Hải',NULL,NULL,NULL,'Xã'),
	 (515,'Khánh Hải',NULL,NULL,NULL,'Thị trấn'),
	 (515,'Nhơn Hải',NULL,NULL,NULL,'Xã'),
	 (515,'Phương Hải',NULL,NULL,NULL,'Xã'),
	 (515,'Tân Hải',NULL,NULL,NULL,'Xã'),
	 (515,'Thanh Hải',NULL,NULL,NULL,'Xã'),
	 (515,'Tri Hải',NULL,NULL,NULL,'Xã'),
	 (515,'Vĩnh Hải',NULL,NULL,NULL,'Xã'),
	 (515,'Xuân Hải',NULL,NULL,NULL,'Xã'),
	 (516,'An Hải',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (516,'Phước Dân',NULL,NULL,NULL,'Thị trấn'),
	 (516,'Phước Hải',NULL,NULL,NULL,'Xã'),
	 (516,'Phước Hậu',NULL,NULL,NULL,'Xã'),
	 (516,'Phước Hữu',NULL,NULL,NULL,'Xã'),
	 (516,'Phước Sơn',NULL,NULL,NULL,'Xã'),
	 (516,'Phước Thái',NULL,NULL,NULL,'Xã'),
	 (516,'Phước Thuận',NULL,NULL,NULL,'Xã'),
	 (516,'Phước Vinh',NULL,NULL,NULL,'Xã'),
	 (517,'Hòa Sơn',NULL,NULL,NULL,'Xã'),
	 (517,'Lâm Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (517,'Lương Sơn',NULL,NULL,NULL,'Xã'),
	 (517,'Ma Nới',NULL,NULL,NULL,'Xã'),
	 (517,'Mỹ Sơn',NULL,NULL,NULL,'Xã'),
	 (517,'Nhơn Sơn',NULL,NULL,NULL,'Xã'),
	 (517,'Quảng Sơn',NULL,NULL,NULL,'Xã'),
	 (517,'Tân Sơn',NULL,NULL,NULL,'Thị trấn'),
	 (518,'Bảo An',NULL,NULL,NULL,'Phường'),
	 (518,'Đài Sơn',NULL,NULL,NULL,'Phường'),
	 (518,'Đạo Long',NULL,NULL,NULL,'Phường'),
	 (518,'Đô Vinh',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (518,'Đông Hải',NULL,NULL,NULL,'Phường'),
	 (518,'Kinh Dinh',NULL,NULL,NULL,'Phường'),
	 (518,'Mỹ Bình',NULL,NULL,NULL,'Phường'),
	 (518,'Mỹ Đông',NULL,NULL,NULL,'Phường'),
	 (518,'Mỹ Hải',NULL,NULL,NULL,'Phường'),
	 (518,'Mỹ Hương',NULL,NULL,NULL,'Phường'),
	 (518,'Phủ Hà',NULL,NULL,NULL,'Phường'),
	 (518,'Phước Mỹ',NULL,NULL,NULL,'Phường'),
	 (518,'Tấn Tài',NULL,NULL,NULL,'Phường'),
	 (518,'Thành Hải',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (518,'Thanh Sơn',NULL,NULL,NULL,'Phường'),
	 (518,'Văn Hải',NULL,NULL,NULL,'Phường'),
	 (519,'Bắc Phong',NULL,NULL,NULL,'Xã'),
	 (519,'Bắc Sơn',NULL,NULL,NULL,'Xã'),
	 (519,'Công Hải',NULL,NULL,NULL,'Xã'),
	 (519,'Lợi Hải',NULL,NULL,NULL,'Thị trấn'),
	 (519,'Phước Chiến',NULL,NULL,NULL,'Xã'),
	 (519,'Phước Kháng',NULL,NULL,NULL,'Xã'),
	 (520,'Cà Ná',NULL,NULL,NULL,'Xã'),
	 (520,'Nhị Hà',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (520,'Phước Diêm',NULL,NULL,NULL,'Xã'),
	 (520,'Phước Dinh',NULL,NULL,NULL,'Xã'),
	 (520,'Phước Hà',NULL,NULL,NULL,'Xã'),
	 (520,'Phước Minh',NULL,NULL,NULL,'Xã'),
	 (520,'Phước Nam',NULL,NULL,NULL,'Xã'),
	 (520,'Phước Ninh',NULL,NULL,NULL,'Xã'),
	 (521,'Hòa Hiệp Bắc',NULL,NULL,NULL,'Xã'),
	 (521,'Hòa Hiệp Nam',NULL,NULL,NULL,'Xã'),
	 (521,'Hòa Hiệp Trung',NULL,NULL,NULL,'Xã'),
	 (521,'Hòa Tâm',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (521,'Hòa Tân Đông',NULL,NULL,NULL,'Xã'),
	 (521,'Hòa Thành',NULL,NULL,NULL,'Xã'),
	 (521,'Hòa Vinh',NULL,NULL,NULL,'Xã'),
	 (521,'Hòa Xuân Đông',NULL,NULL,NULL,'Xã'),
	 (521,'Hòa Xuân Nam',NULL,NULL,NULL,'Xã'),
	 (521,'Hòa Xuân Tây',NULL,NULL,NULL,'Xã'),
	 (522,'Đa Lộc',NULL,NULL,NULL,'Xã'),
	 (522,'La Hai',NULL,NULL,NULL,'Thị trấn'),
	 (522,'Phú Mỡ',NULL,NULL,NULL,'Xã'),
	 (522,'Xuân Lãnh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (522,'Xuân Long',NULL,NULL,NULL,'Xã'),
	 (522,'Xuân Phước',NULL,NULL,NULL,'Xã'),
	 (522,'Xuân Quang 1',NULL,NULL,NULL,'Xã'),
	 (522,'Xuân Quang 2',NULL,NULL,NULL,'Xã'),
	 (522,'Xuân Quang 3',NULL,NULL,NULL,'Xã'),
	 (522,'Xuân Sơn Bắc',NULL,NULL,NULL,'Xã'),
	 (522,'Xuân Sơn Nam',NULL,NULL,NULL,'Xã'),
	 (523,'Hòa An',NULL,NULL,NULL,'Xã'),
	 (523,'Hòa Định Đông',NULL,NULL,NULL,'Xã'),
	 (523,'Hòa Định Tây',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (523,'Hòa Hội',NULL,NULL,NULL,'Xã'),
	 (523,'Hoà Quang Bắc',NULL,NULL,NULL,'Xã'),
	 (523,'Hoà Quang Nam',NULL,NULL,NULL,'Xã'),
	 (523,'Hòa Thắng',NULL,NULL,NULL,'Xã'),
	 (523,'Hòa Trị',NULL,NULL,NULL,'Xã'),
	 (523,'Phú Hòa',NULL,NULL,NULL,'Thị trấn'),
	 (524,'Cà Lúi',NULL,NULL,NULL,'Xã'),
	 (524,'Củng Sơn',NULL,NULL,NULL,'Thị trấn'),
	 (524,'Eachà Rang',NULL,NULL,NULL,'Xã'),
	 (524,'Krông Pa',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (524,'Phước Tân',NULL,NULL,NULL,'Xã'),
	 (524,'Sơn Định',NULL,NULL,NULL,'Xã'),
	 (524,'Sơn Hà',NULL,NULL,NULL,'Xã'),
	 (524,'Sơn Hội',NULL,NULL,NULL,'Xã'),
	 (524,'Sơn Long',NULL,NULL,NULL,'Xã'),
	 (524,'Sơn Nguyên',NULL,NULL,NULL,'Xã'),
	 (524,'Sơn Phước',NULL,NULL,NULL,'Xã'),
	 (524,'Sơn Xuân',NULL,NULL,NULL,'Xã'),
	 (524,'Suối Bạc',NULL,NULL,NULL,'Xã'),
	 (524,'Suối Trai',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (525,'Xuân Bình',NULL,NULL,NULL,'Xã'),
	 (525,'Xuân Cảnh',NULL,NULL,NULL,'Xã'),
	 (525,'Xuân Đài',NULL,NULL,NULL,'Phường'),
	 (525,'Xuân Hải',NULL,NULL,NULL,'Xã'),
	 (525,'Xuân Hòa',NULL,NULL,NULL,'Xã'),
	 (525,'Xuân Lâm',NULL,NULL,NULL,'Xã'),
	 (525,'Xuân Lộc',NULL,NULL,NULL,'Xã'),
	 (525,'Xuân Phú',NULL,NULL,NULL,'Phường'),
	 (525,'Xuân Phương',NULL,NULL,NULL,'Xã'),
	 (525,'Xuân Thành',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (525,'Xuân Thịnh',NULL,NULL,NULL,'Xã'),
	 (525,'Xuân Thọ 1',NULL,NULL,NULL,'Xã'),
	 (525,'Xuân Thọ 2',NULL,NULL,NULL,'Xã'),
	 (525,'Xuân Yên',NULL,NULL,NULL,'Phường'),
	 (526,'Đức Bình Đông',NULL,NULL,NULL,'Xã'),
	 (526,'Đức Bình Tây',NULL,NULL,NULL,'Xã'),
	 (526,'Ea Bá',NULL,NULL,NULL,'Xã'),
	 (526,'Ea Bar',NULL,NULL,NULL,'Xã'),
	 (526,'Ea Bia',NULL,NULL,NULL,'Xã'),
	 (526,'Ea Lâm',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (526,'Ea Ly',NULL,NULL,NULL,'Xã'),
	 (526,'Ea Trol',NULL,NULL,NULL,'Xã'),
	 (526,'Hai Riêng',NULL,NULL,NULL,'Thị trấn'),
	 (526,'Sơn Giang',NULL,NULL,NULL,'Xã'),
	 (526,'Sông Hinh',NULL,NULL,NULL,'Xã'),
	 (527,'Hòa Bình 1',NULL,NULL,NULL,'Xã'),
	 (527,'Hòa Đồng',NULL,NULL,NULL,'Xã'),
	 (527,'Hòa Mỹ Đông',NULL,NULL,NULL,'Xã'),
	 (527,'Hòa Mỹ Tây',NULL,NULL,NULL,'Xã'),
	 (527,'Hòa Phong',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (527,'Hòa Phú',NULL,NULL,NULL,'Xã'),
	 (527,'Hòa Tân Tây',NULL,NULL,NULL,'Xã'),
	 (527,'Hòa Thịnh',NULL,NULL,NULL,'Xã'),
	 (527,'Phú Thứ',NULL,NULL,NULL,'Thị trấn'),
	 (527,'Sơn Thành Đông',NULL,NULL,NULL,'Xã'),
	 (527,'Sơn Thành Tây',NULL,NULL,NULL,'Xã'),
	 (528,'An Chấn',NULL,NULL,NULL,'Xã'),
	 (528,'An Cư',NULL,NULL,NULL,'Xã'),
	 (528,'An Dân',NULL,NULL,NULL,'Xã'),
	 (528,'An Định',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (528,'An Hải',NULL,NULL,NULL,'Xã'),
	 (528,'An Hiệp',NULL,NULL,NULL,'Xã'),
	 (528,'An Hoà',NULL,NULL,NULL,'Xã'),
	 (528,'An Lĩnh',NULL,NULL,NULL,'Xã'),
	 (528,'An Mỹ',NULL,NULL,NULL,'Xã'),
	 (528,'An Nghiệp',NULL,NULL,NULL,'Xã'),
	 (528,'An Ninh Đông',NULL,NULL,NULL,'Xã'),
	 (528,'An Ninh Tây',NULL,NULL,NULL,'Xã'),
	 (528,'An Thạch',NULL,NULL,NULL,'Xã'),
	 (528,'An Thọ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (528,'An Xuân',NULL,NULL,NULL,'Xã'),
	 (528,'Chí Thạnh',NULL,NULL,NULL,'Thị trấn'),
	 (529,'1',NULL,NULL,NULL,'Phường'),
	 (529,'2',NULL,NULL,NULL,'Phường'),
	 (529,'3',NULL,NULL,NULL,'Phường'),
	 (529,'4',NULL,NULL,NULL,'Phường'),
	 (529,'5',NULL,NULL,NULL,'Phường'),
	 (529,'6',NULL,NULL,NULL,'Phường'),
	 (529,'7',NULL,NULL,NULL,'Phường'),
	 (529,'8',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (529,'9',NULL,NULL,NULL,'Phường'),
	 (529,'An Phú',NULL,NULL,NULL,'Xã'),
	 (529,'Bình Kiến',NULL,NULL,NULL,'Xã'),
	 (529,'Bình Ngọc',NULL,NULL,NULL,'Xã'),
	 (529,'Hoà Kiến',NULL,NULL,NULL,'Xã'),
	 (529,'Phú Đông',NULL,NULL,NULL,'Phường'),
	 (529,'Phú Lâm',NULL,NULL,NULL,'Phường'),
	 (529,'Phú Lâm',NULL,NULL,NULL,'Phường'),
	 (529,'Phú Thạnh',NULL,NULL,NULL,'Phường'),
	 (530,'An Đổ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (530,'An Lão',NULL,NULL,NULL,'Xã'),
	 (530,'An Mỹ',NULL,NULL,NULL,'Xã'),
	 (530,'An Ninh',NULL,NULL,NULL,'Xã'),
	 (530,'An Nội',NULL,NULL,NULL,'Xã'),
	 (530,'Bình Mỹ',NULL,NULL,NULL,'Thị trấn'),
	 (530,'Bình Nghĩa',NULL,NULL,NULL,'Xã'),
	 (530,'Bồ Đề',NULL,NULL,NULL,'Xã'),
	 (530,'Bối Cầu',NULL,NULL,NULL,'Xã'),
	 (530,'Đồn Xá',NULL,NULL,NULL,'Xã'),
	 (530,'Đồng Du',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (530,'Hưng Công',NULL,NULL,NULL,'Xã'),
	 (530,'La Sơn',NULL,NULL,NULL,'Xã'),
	 (530,'Mỹ Thọ',NULL,NULL,NULL,'Xã'),
	 (530,'Ngọc Lũ',NULL,NULL,NULL,'Xã'),
	 (530,'Tiêu Động',NULL,NULL,NULL,'Xã'),
	 (530,'Tràng An',NULL,NULL,NULL,'Xã'),
	 (530,'Trung Lương',NULL,NULL,NULL,'Xã'),
	 (530,'Vũ Bản',NULL,NULL,NULL,'Xã'),
	 (531,'Bạch Thượng',NULL,NULL,NULL,'Xã'),
	 (531,'Châu Giang',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (531,'Châu Sơn',NULL,NULL,NULL,'Xã'),
	 (531,'Chuyên Ngoại',NULL,NULL,NULL,'Xã'),
	 (531,'Đọi Sơn',NULL,NULL,NULL,'Xã'),
	 (531,'Đồng Văn',NULL,NULL,NULL,'Thị trấn'),
	 (531,'Duy Hải',NULL,NULL,NULL,'Xã'),
	 (531,'Duy Minh',NULL,NULL,NULL,'Xã'),
	 (531,'Hòa Mạc',NULL,NULL,NULL,'Thị trấn'),
	 (531,'Hoàng Đông',NULL,NULL,NULL,'Xã'),
	 (531,'Mộc Bắc',NULL,NULL,NULL,'Xã'),
	 (531,'Mộc Nam',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (531,'Tiên Ngoại',NULL,NULL,NULL,'Xã'),
	 (531,'Tiên Nội',NULL,NULL,NULL,'Xã'),
	 (531,'Tiên Phong',NULL,NULL,NULL,'Xã'),
	 (531,'Trác Văn',NULL,NULL,NULL,'Xã'),
	 (531,'Yên Bắc',NULL,NULL,NULL,'Xã'),
	 (531,'Yên Nam',NULL,NULL,NULL,'Xã'),
	 (532,'Ba Sao',NULL,NULL,NULL,'Thị trấn'),
	 (532,'Đại Cương',NULL,NULL,NULL,'Xã'),
	 (532,'Đồng Hóa',NULL,NULL,NULL,'Xã'),
	 (532,'Hoàng Tây',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (532,'Khả Phong',NULL,NULL,NULL,'Xã'),
	 (532,'Lê Hồ',NULL,NULL,NULL,'Xã'),
	 (532,'Liên Sơn',NULL,NULL,NULL,'Xã'),
	 (532,'Ngọc Sơn',NULL,NULL,NULL,'Xã'),
	 (532,'Nguyễn Úy',NULL,NULL,NULL,'Xã'),
	 (532,'Nhật Tân',NULL,NULL,NULL,'Xã'),
	 (532,'Nhật Tựu',NULL,NULL,NULL,'Xã'),
	 (532,'Quế',NULL,NULL,NULL,'Thị trấn'),
	 (532,'Tân Sơn',NULL,NULL,NULL,'Xã'),
	 (532,'Thanh Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (532,'Thi Sơn',NULL,NULL,NULL,'Xã'),
	 (532,'Thụy Lôi',NULL,NULL,NULL,'Xã'),
	 (532,'Tượng Lĩnh',NULL,NULL,NULL,'Xã'),
	 (532,'Văn Xá',NULL,NULL,NULL,'Xã'),
	 (533,'Bắc Lý',NULL,NULL,NULL,'Xã'),
	 (533,'Chân Lý',NULL,NULL,NULL,'Xã'),
	 (533,'Chính Lý',NULL,NULL,NULL,'Xã'),
	 (533,'Công Lý',NULL,NULL,NULL,'Xã'),
	 (533,'Đạo Lý',NULL,NULL,NULL,'Xã'),
	 (533,'Đồng Lý',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (533,'Đức Lý',NULL,NULL,NULL,'Xã'),
	 (533,'Hoà Hậu',NULL,NULL,NULL,'Thị trấn'),
	 (533,'Hợp Lý',NULL,NULL,NULL,'Xã'),
	 (533,'Nguyên Lý',NULL,NULL,NULL,'Xã'),
	 (533,'Nhân Bình',NULL,NULL,NULL,'Xã'),
	 (533,'Nhân Chính',NULL,NULL,NULL,'Xã'),
	 (533,'Nhân Đạo',NULL,NULL,NULL,'Xã'),
	 (533,'Nhân Hưng',NULL,NULL,NULL,'Xã'),
	 (533,'Nhân Khang',NULL,NULL,NULL,'Xã'),
	 (533,'Nhân Mỹ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (533,'Nhân Nghĩa',NULL,NULL,NULL,'Xã'),
	 (533,'Nhân Thịnh',NULL,NULL,NULL,'Xã'),
	 (533,'Phú Phúc',NULL,NULL,NULL,'Thị trấn'),
	 (533,'Tiến Thắng',NULL,NULL,NULL,'Xã'),
	 (533,'Văn Lý',NULL,NULL,NULL,'Xã'),
	 (533,'Vĩnh Trụ',NULL,NULL,NULL,'Thị trấn'),
	 (533,'Xuân Khê',NULL,NULL,NULL,'Xã'),
	 (534,'Châu Sơn',NULL,NULL,NULL,'Xã'),
	 (534,'Đinh Xá',NULL,NULL,NULL,'Xã'),
	 (534,'Hai Bà Trưng',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (534,'Kim Bình',NULL,NULL,NULL,'Xã'),
	 (534,'Lam Hạ',NULL,NULL,NULL,'Xã'),
	 (534,'Lê Hồng Phong',NULL,NULL,NULL,'Phường'),
	 (534,'Liêm Chính',NULL,NULL,NULL,'Xã'),
	 (534,'Liêm Chung',NULL,NULL,NULL,'Xã'),
	 (534,'Liêm Tiết',NULL,NULL,NULL,'Xã'),
	 (534,'Liêm Tuyền',NULL,NULL,NULL,'Xã'),
	 (534,'Lương Khánh Thiện',NULL,NULL,NULL,'Phường'),
	 (534,'Minh Khai',NULL,NULL,NULL,'Phường'),
	 (534,'Phù Vân',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (534,'Quang Trung',NULL,NULL,NULL,'Phường'),
	 (534,'Thanh Châu',NULL,NULL,NULL,'Xã'),
	 (534,'Thanh Tuyền',NULL,NULL,NULL,'Phường'),
	 (534,'Tiên Hải',NULL,NULL,NULL,'Xã'),
	 (534,'Tiên Hiệp',NULL,NULL,NULL,'Xã'),
	 (534,'Tiên Tân',NULL,NULL,NULL,'Xã'),
	 (534,'Trần Hưng Đạo',NULL,NULL,NULL,'Phường'),
	 (534,'Trịnh Xá',NULL,NULL,NULL,'Xã'),
	 (535,'Kiện Khê',NULL,NULL,NULL,'Thị trấn'),
	 (535,'Liêm Cần',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (535,'Liêm Phong',NULL,NULL,NULL,'Xã'),
	 (535,'Liêm Sơn',NULL,NULL,NULL,'Xã'),
	 (535,'Liêm Thuận',NULL,NULL,NULL,'Xã'),
	 (535,'Liêm Túc',NULL,NULL,NULL,'Xã'),
	 (535,'Thanh Bình',NULL,NULL,NULL,'Xã'),
	 (535,'Thanh Hà',NULL,NULL,NULL,'Xã'),
	 (535,'Thanh Hải',NULL,NULL,NULL,'Xã'),
	 (535,'Thanh Hương',NULL,NULL,NULL,'Xã'),
	 (535,'Thanh Lưu',NULL,NULL,NULL,'Xã'),
	 (535,'Thanh Nghị',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (535,'Thanh Nguyên',NULL,NULL,NULL,'Xã'),
	 (535,'Thanh Phong',NULL,NULL,NULL,'Xã'),
	 (535,'Thanh Tâm',NULL,NULL,NULL,'Xã'),
	 (535,'Thanh Tân',NULL,NULL,NULL,'Xã'),
	 (535,'Thanh Thủy',NULL,NULL,NULL,'Xã'),
	 (536,' Cẩm Lộc',NULL,NULL,NULL,'Xã'),
	 (536,' Cẩm Mỹ',NULL,NULL,NULL,'Xã'),
	 (536,' Cẩm Nhượng',NULL,NULL,NULL,'Xã'),
	 (536,'Cẩm Bình',NULL,NULL,NULL,'Xã'),
	 (536,'Cẩm Duệ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (536,'Cẩm Dương',NULL,NULL,NULL,'Xã'),
	 (536,'Cẩm Hà',NULL,NULL,NULL,'Xã'),
	 (536,'Cẩm Hoà',NULL,NULL,NULL,'Xã'),
	 (536,'Cẩm Hưng',NULL,NULL,NULL,'Xã'),
	 (536,'Cẩm Huy',NULL,NULL,NULL,'Xã'),
	 (536,'Cẩm Lạc',NULL,NULL,NULL,'Xã'),
	 (536,'Cẩm Lĩnh',NULL,NULL,NULL,'Xã'),
	 (536,'Cẩm Minh',NULL,NULL,NULL,'Xã'),
	 (536,'Cẩm Nam',NULL,NULL,NULL,'Xã'),
	 (536,'Cẩm Phúc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (536,'Cẩm Quan',NULL,NULL,NULL,'Xã'),
	 (536,'Cẩm Quang',NULL,NULL,NULL,'Xã'),
	 (536,'Cẩm Sơn',NULL,NULL,NULL,'Xã'),
	 (536,'Cẩm thạch',NULL,NULL,NULL,'Xã'),
	 (536,'Cẩm Thăng',NULL,NULL,NULL,'Xã'),
	 (536,'Cẩm Thành',NULL,NULL,NULL,'Xã'),
	 (536,'Cẩm Thịnh',NULL,NULL,NULL,'Xã'),
	 (536,'Cẩm Trung',NULL,NULL,NULL,'Xã'),
	 (536,'Cẩm Vịnh',NULL,NULL,NULL,'Xã'),
	 (536,'Cẩm Xuyên',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (536,'Cẩm Yên',NULL,NULL,NULL,'Xã'),
	 (536,'Thiên Cầm',NULL,NULL,NULL,'Thị trấn'),
	 (537,' Xuân Lộc',NULL,NULL,NULL,'Xã'),
	 (537,'Đồng Lộc',NULL,NULL,NULL,'Xã'),
	 (537,'Gia Hanh',NULL,NULL,NULL,'Xã'),
	 (537,'Khánh Lộc',NULL,NULL,NULL,'Xã'),
	 (537,'Kim Lộc',NULL,NULL,NULL,'Xã'),
	 (537,'Mỹ Lộc',NULL,NULL,NULL,'Xã'),
	 (537,'Nghèn',NULL,NULL,NULL,'Thị trấn'),
	 (537,'Phú Lộc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (537,'Quang Lộc',NULL,NULL,NULL,'Xã'),
	 (537,'Sơn Lộc',NULL,NULL,NULL,'Xã'),
	 (537,'Song Lộc',NULL,NULL,NULL,'Xã'),
	 (537,'Thanh Lộc',NULL,NULL,NULL,'Xã'),
	 (537,'Thiên Lộc',NULL,NULL,NULL,'Xã'),
	 (537,'Thuần Thiện',NULL,NULL,NULL,'Xã'),
	 (537,'Thượng Lộc',NULL,NULL,NULL,'Xã'),
	 (537,'Thường Nga',NULL,NULL,NULL,'Xã'),
	 (537,'Tiến Lộc',NULL,NULL,NULL,'Xã'),
	 (537,'Trung Lộc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (537,'Trường Lộc',NULL,NULL,NULL,'Xã'),
	 (537,'Tùng Lộc',NULL,NULL,NULL,'Xã'),
	 (537,'Vĩnh Lộc',NULL,NULL,NULL,'Xã'),
	 (537,'Vượng Lộc',NULL,NULL,NULL,'Xã'),
	 (537,'Yên Lộc',NULL,NULL,NULL,'Xã'),
	 (538,'Bùi Xá',NULL,NULL,NULL,'Xã'),
	 (538,'Đức An',NULL,NULL,NULL,'Xã'),
	 (538,'Đức Châu',NULL,NULL,NULL,'Xã'),
	 (538,'Đức Đồng',NULL,NULL,NULL,'Xã'),
	 (538,'Đức Dũng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (538,'Đức Hòa',NULL,NULL,NULL,'Xã'),
	 (538,'Đức La',NULL,NULL,NULL,'Xã'),
	 (538,'Đức Lạc',NULL,NULL,NULL,'Xã'),
	 (538,'Đức Lâm',NULL,NULL,NULL,'Xã'),
	 (538,'Đức Lạng',NULL,NULL,NULL,'Xã'),
	 (538,'Đức Lập',NULL,NULL,NULL,'Xã'),
	 (538,'Đức Long',NULL,NULL,NULL,'Xã'),
	 (538,'Đức Nhân',NULL,NULL,NULL,'Xã'),
	 (538,'Đức Quang',NULL,NULL,NULL,'Xã'),
	 (538,'Đức Thanh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (538,'Đức Thịnh',NULL,NULL,NULL,'Xã'),
	 (538,'Đức Thọ',NULL,NULL,NULL,'Thị trấn'),
	 (538,'Đức Thủy',NULL,NULL,NULL,'Xã'),
	 (538,'Đức Tùng',NULL,NULL,NULL,'Xã'),
	 (538,'Đức Vịnh',NULL,NULL,NULL,'Xã'),
	 (538,'Đức Yên',NULL,NULL,NULL,'Xã'),
	 (538,'Liên Minh',NULL,NULL,NULL,'Xã'),
	 (538,'Tân Hương',NULL,NULL,NULL,'Xã'),
	 (538,'Thái Yên',NULL,NULL,NULL,'Xã'),
	 (538,'Trung Lễ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (538,'Trường Sơn',NULL,NULL,NULL,'Xã'),
	 (538,'Tùng Ảnh',NULL,NULL,NULL,'Xã'),
	 (538,'Yên Hồ',NULL,NULL,NULL,'Xã'),
	 (539,' Nam Hà',NULL,NULL,NULL,'Phường'),
	 (539,' Thạch Quý',NULL,NULL,NULL,'Phường'),
	 (539,' Văn Yên',NULL,NULL,NULL,'Phường'),
	 (539,'Bắc Hà',NULL,NULL,NULL,'Phường'),
	 (539,'Đại Nài',NULL,NULL,NULL,'Phường'),
	 (539,'Hà Huy Tập',NULL,NULL,NULL,'Phường'),
	 (539,'Nguyễn Du',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (539,'Tân Giang',NULL,NULL,NULL,'Phường'),
	 (539,'Thạch Bình',NULL,NULL,NULL,'Xã'),
	 (539,'Thạch Đồng',NULL,NULL,NULL,'Xã'),
	 (539,'Thạch Hạ',NULL,NULL,NULL,'Xã'),
	 (539,'Thạch Hưng',NULL,NULL,NULL,'Xã'),
	 (539,'Thạch Linh',NULL,NULL,NULL,'Phường'),
	 (539,'Thạch Môn',NULL,NULL,NULL,'Xã'),
	 (539,'Thạch Trung',NULL,NULL,NULL,'Xã'),
	 (539,'Trần Phú',NULL,NULL,NULL,'Phường'),
	 (540,' Trung Lương',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (540,'Bắc Hồng',NULL,NULL,NULL,'Phường'),
	 (540,'Đậu Liêu',NULL,NULL,NULL,'Phường'),
	 (540,'Đức Thuận',NULL,NULL,NULL,'Phường'),
	 (540,'Nam Hồng',NULL,NULL,NULL,'Phường'),
	 (540,'Thuận Lộc',NULL,NULL,NULL,'Xã'),
	 (541,' Phúc Đồng',NULL,NULL,NULL,'Xã'),
	 (541,'Gia Phố',NULL,NULL,NULL,'Xã'),
	 (541,'Hà Linh',NULL,NULL,NULL,'Xã'),
	 (541,'Hoà Hải',NULL,NULL,NULL,'Xã'),
	 (541,'Hương Bình',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (541,'Hương Đô',NULL,NULL,NULL,'Xã'),
	 (541,'Hương Giang',NULL,NULL,NULL,'Xã'),
	 (541,'Hương Khê',NULL,NULL,NULL,'Thị trấn'),
	 (541,'Hương Lâm',NULL,NULL,NULL,'Xã'),
	 (541,'Hương Liên',NULL,NULL,NULL,'Xã'),
	 (541,'Hương Long',NULL,NULL,NULL,'Xã'),
	 (541,'Hương Thuỷ',NULL,NULL,NULL,'Xã'),
	 (541,'Hương Trà',NULL,NULL,NULL,'Xã'),
	 (541,'Hương Trạch',NULL,NULL,NULL,'Xã'),
	 (541,'Hương Vĩnh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (541,'Hương Xuân',NULL,NULL,NULL,'Xã'),
	 (541,'Lộc Yên',NULL,NULL,NULL,'Xã'),
	 (541,'Phú Gia',NULL,NULL,NULL,'Xã'),
	 (541,'Phú Phong',NULL,NULL,NULL,'Xã'),
	 (541,'Phúc Trạch',NULL,NULL,NULL,'Xã'),
	 (541,'Phương Điền',NULL,NULL,NULL,'Xã'),
	 (541,'Phương Mỹ',NULL,NULL,NULL,'Xã'),
	 (542,' Sơn Phúc',NULL,NULL,NULL,'Xã'),
	 (542,'Phố Châu',NULL,NULL,NULL,'Thị trấn'),
	 (542,'Sơn An',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (542,'Sơn Bằng',NULL,NULL,NULL,'Xã'),
	 (542,'Sơn Bình',NULL,NULL,NULL,'Xã'),
	 (542,'Sơn Châu',NULL,NULL,NULL,'Xã'),
	 (542,'Sơn Diệm',NULL,NULL,NULL,'Xã'),
	 (542,'Sơn Giang',NULL,NULL,NULL,'Xã'),
	 (542,'Sơn Hà',NULL,NULL,NULL,'Xã'),
	 (542,'Sơn Hàm',NULL,NULL,NULL,'Xã'),
	 (542,'Sơn Hòa',NULL,NULL,NULL,'Xã'),
	 (542,'Sơn Hồng',NULL,NULL,NULL,'Xã'),
	 (542,'Sơn Kim 1',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (542,'Sơn Kim 2',NULL,NULL,NULL,'Xã'),
	 (542,'Sơn Lâm',NULL,NULL,NULL,'Xã'),
	 (542,'Sơn Lễ',NULL,NULL,NULL,'Xã'),
	 (542,'Sơn Lĩnh',NULL,NULL,NULL,'Xã'),
	 (542,'Sơn Long',NULL,NULL,NULL,'Xã'),
	 (542,'Sơn Mai',NULL,NULL,NULL,'Xã'),
	 (542,'Sơn Mỹ',NULL,NULL,NULL,'Xã'),
	 (542,'Sơn Ninh',NULL,NULL,NULL,'Xã'),
	 (542,'Sơn Phú',NULL,NULL,NULL,'Xã'),
	 (542,'Sơn Quang',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (542,'Sơn Tân',NULL,NULL,NULL,'Xã'),
	 (542,'Sơn Tây',NULL,NULL,NULL,'Xã'),
	 (542,'Sơn Thịnh',NULL,NULL,NULL,'Xã'),
	 (542,'Sơn Thủy',NULL,NULL,NULL,'Xã'),
	 (542,'Sơn Tiến',NULL,NULL,NULL,'Xã'),
	 (542,'Sơn Trà',NULL,NULL,NULL,'Xã'),
	 (542,'Sơn Trung',NULL,NULL,NULL,'Xã'),
	 (542,'Sơn Trường',NULL,NULL,NULL,'Xã'),
	 (542,'Tây Sơn',NULL,NULL,NULL,'Thị trấn'),
	 (543,' Kỳ Lợi',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (543,' Kỳ Long',NULL,NULL,NULL,'Xã'),
	 (543,' Kỳ Phương',NULL,NULL,NULL,'Xã'),
	 (543,' Kỳ Tiến',NULL,NULL,NULL,'Xã'),
	 (543,'Kỳ Anh',NULL,NULL,NULL,'Thị trấn'),
	 (543,'Kỳ Bắc',NULL,NULL,NULL,'Xã'),
	 (543,'Kỳ Châu',NULL,NULL,NULL,'Xã'),
	 (543,'Kỳ Đồng',NULL,NULL,NULL,'Xã'),
	 (543,'Kỳ Giang',NULL,NULL,NULL,'Xã'),
	 (543,'Kỳ Hà',NULL,NULL,NULL,'Xã'),
	 (543,'Kỳ Hải',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (543,'Kỳ Hoa',NULL,NULL,NULL,'Xã'),
	 (543,'Kỳ Hợp',NULL,NULL,NULL,'Xã'),
	 (543,'Kỳ Hưng',NULL,NULL,NULL,'Xã'),
	 (543,'Kỳ Khang',NULL,NULL,NULL,'Xã'),
	 (543,'Kỳ Lạc',NULL,NULL,NULL,'Xã'),
	 (543,'Kỳ Lâm',NULL,NULL,NULL,'Xã'),
	 (543,'Kỳ Liên',NULL,NULL,NULL,'Xã'),
	 (543,'Kỳ Nam',NULL,NULL,NULL,'Xã'),
	 (543,'Kỳ Ninh',NULL,NULL,NULL,'Xã'),
	 (543,'Kỳ Phong',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (543,'Kỳ Phú',NULL,NULL,NULL,'Xã'),
	 (543,'Kỳ Sơn',NULL,NULL,NULL,'Xã'),
	 (543,'Kỳ Tân',NULL,NULL,NULL,'Xã'),
	 (543,'Kỳ Tây',NULL,NULL,NULL,'Xã'),
	 (543,'Kỳ Thịnh',NULL,NULL,NULL,'Xã'),
	 (543,'Kỳ Thọ',NULL,NULL,NULL,'Xã'),
	 (543,'Kỳ Thư',NULL,NULL,NULL,'Xã'),
	 (543,'Kỳ Thượng',NULL,NULL,NULL,'Xã'),
	 (543,'Kỳ Trinh',NULL,NULL,NULL,'Xã'),
	 (543,'Kỳ Trung',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (543,'Kỳ Văn',NULL,NULL,NULL,'Xã'),
	 (543,'Kỳ Xuân',NULL,NULL,NULL,'Xã'),
	 (543,'Sông Trí',NULL,NULL,NULL,'Phường'),
	 (544,'An Lộc',NULL,NULL,NULL,'Xã'),
	 (544,'Bình Lộc',NULL,NULL,NULL,'Xã'),
	 (544,'Hộ Độ',NULL,NULL,NULL,'Xã'),
	 (544,'Hồng Lộc',NULL,NULL,NULL,'Xã'),
	 (544,'Ích Hậu',NULL,NULL,NULL,'Xã'),
	 (544,'Mai Phụ',NULL,NULL,NULL,'Xã'),
	 (544,'Phù Lưu',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (544,'Tân Lộc',NULL,NULL,NULL,'Xã'),
	 (544,'Thạch Bằng',NULL,NULL,NULL,'Xã'),
	 (544,'Thạch Châu',NULL,NULL,NULL,'Xã'),
	 (544,'Thạch Kim',NULL,NULL,NULL,'Xã'),
	 (544,'Thạch Mỹ',NULL,NULL,NULL,'Xã'),
	 (544,'Thịnh Lộc',NULL,NULL,NULL,'Xã'),
	 (545,' Xuân Hải',NULL,NULL,NULL,'Xã'),
	 (545,' Xuân Phổ',NULL,NULL,NULL,'Xã'),
	 (545,'Cổ Đạm',NULL,NULL,NULL,'Xã'),
	 (545,'Cương Gián',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (545,'Nghi Trường',NULL,NULL,NULL,'Xã'),
	 (545,'Nghi Xuân',NULL,NULL,NULL,'Thị trấn'),
	 (545,'Tiên Điền',NULL,NULL,NULL,'Xã'),
	 (545,'Xuân An',NULL,NULL,NULL,'Thị trấn'),
	 (545,'Xuân An',NULL,NULL,NULL,'Thị trấn'),
	 (545,'Xuân Đan',NULL,NULL,NULL,'Xã'),
	 (545,'Xuân Giang',NULL,NULL,NULL,'Xã'),
	 (545,'Xuân Hội',NULL,NULL,NULL,'Xã'),
	 (545,'Xuân Hồng',NULL,NULL,NULL,'Xã'),
	 (545,'Xuân Lam',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (545,'Xuân Liên',NULL,NULL,NULL,'Xã'),
	 (545,'Xuân Lĩnh',NULL,NULL,NULL,'Xã'),
	 (545,'Xuân Mỹ',NULL,NULL,NULL,'Xã'),
	 (545,'Xuân Thành',NULL,NULL,NULL,'Xã'),
	 (545,'Xuân Trường',NULL,NULL,NULL,'Xã'),
	 (545,'Xuân Viên',NULL,NULL,NULL,'Xã'),
	 (545,'Xuân Yên',NULL,NULL,NULL,'Xã'),
	 (546,'Bắc Sơn',NULL,NULL,NULL,'Xã'),
	 (546,'Nam Hương',NULL,NULL,NULL,'Xã'),
	 (546,'Ngọc Sơn ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (546,'Phù Việt',NULL,NULL,NULL,'Xã'),
	 (546,'Thạch Bàn',NULL,NULL,NULL,'Xã'),
	 (546,'Thạch Đài',NULL,NULL,NULL,'Xã'),
	 (546,'Thạch Điền',NULL,NULL,NULL,'Xã'),
	 (546,'Thạch Đỉnh',NULL,NULL,NULL,'Xã'),
	 (546,'Thạch Hà',NULL,NULL,NULL,'Thị trấn'),
	 (546,'Thạch Hải',NULL,NULL,NULL,'Xã'),
	 (546,'Thạch Hội',NULL,NULL,NULL,'Xã'),
	 (546,'Thạch Hương',NULL,NULL,NULL,'Xã'),
	 (546,'Thạch Kênh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (546,'Thạch Khê',NULL,NULL,NULL,'Xã'),
	 (546,'Thạch Lạc',NULL,NULL,NULL,'Xã'),
	 (546,'Thạch Lâm',NULL,NULL,NULL,'Xã'),
	 (546,'Thạch Liên',NULL,NULL,NULL,'Xã'),
	 (546,'Thạch Long',NULL,NULL,NULL,'Xã'),
	 (546,'Thạch Lưu',NULL,NULL,NULL,'Xã'),
	 (546,'Thạch Ngọc',NULL,NULL,NULL,'Xã'),
	 (546,'Thạch Sơn',NULL,NULL,NULL,'Xã'),
	 (546,'Thạch Tân',NULL,NULL,NULL,'Xã'),
	 (546,'Thạch Thắng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (546,'Thạch Thanh',NULL,NULL,NULL,'Xã'),
	 (546,'Thạch Tiến',NULL,NULL,NULL,'Xã'),
	 (546,'Thạch Trị',NULL,NULL,NULL,'Xã'),
	 (546,'Thạch Văn',NULL,NULL,NULL,'Xã'),
	 (546,'Thạch Vĩnh',NULL,NULL,NULL,'Xã'),
	 (546,'Thạch Xuân',NULL,NULL,NULL,'Xã'),
	 (546,'Tượng Sơn',NULL,NULL,NULL,'Xã'),
	 (546,'Việt Xuyên',NULL,NULL,NULL,'Xã'),
	 (547,'Ân Phú',NULL,NULL,NULL,'Xã'),
	 (547,'Đức Bồng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (547,'Đức Giang',NULL,NULL,NULL,'Xã'),
	 (547,'Đức Hương',NULL,NULL,NULL,'Xã'),
	 (547,'Đức Liên',NULL,NULL,NULL,'Xã'),
	 (547,'Đức Lĩnh',NULL,NULL,NULL,'Xã'),
	 (547,'Hương Điền',NULL,NULL,NULL,'Xã'),
	 (547,'Hương Minh',NULL,NULL,NULL,'Xã'),
	 (547,'Hương Quang',NULL,NULL,NULL,'Xã'),
	 (547,'Hương Thọ',NULL,NULL,NULL,'Xã'),
	 (547,'Sơn Thọ',NULL,NULL,NULL,'Xã'),
	 (547,'Vũ Quang',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (548,'1',NULL,NULL,NULL,'Phường'),
	 (548,'11',NULL,NULL,NULL,'Phường'),
	 (548,'2',NULL,NULL,NULL,'Phường'),
	 (548,'3',NULL,NULL,NULL,'Phường'),
	 (548,'4',NULL,NULL,NULL,'Phường'),
	 (548,'6',NULL,NULL,NULL,'Phường'),
	 (548,'Hoà An',NULL,NULL,NULL,'Xã'),
	 (548,'Hoà Thuận',NULL,NULL,NULL,'Phường'),
	 (548,'Mỹ Ngãi',NULL,NULL,NULL,'Xã'),
	 (548,'Mỹ Phú',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (548,'Mỹ Phú',NULL,NULL,NULL,'Phường'),
	 (548,'Mỹ Tân',NULL,NULL,NULL,'Xã'),
	 (548,'Mỹ Trà',NULL,NULL,NULL,'Xã'),
	 (548,'Tân Thuận Đông',NULL,NULL,NULL,'Xã'),
	 (548,'Tân Thuận Tây',NULL,NULL,NULL,'Xã'),
	 (548,'Tịnh Thới',NULL,NULL,NULL,'Xã'),
	 (549,'An Hiệp',NULL,NULL,NULL,'Xã'),
	 (549,'An Khánh',NULL,NULL,NULL,'Xã'),
	 (549,'An Nhơn',NULL,NULL,NULL,'Xã'),
	 (549,'An Phú Thuận',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (549,'Cái Tàu Hạ',NULL,NULL,NULL,'Thị trấn'),
	 (549,'Hòa Tân',NULL,NULL,NULL,'Xã'),
	 (549,'Phú Hựu',NULL,NULL,NULL,'Xã'),
	 (549,'Phú Long',NULL,NULL,NULL,'Xã'),
	 (549,'Tân Bình',NULL,NULL,NULL,'Xã'),
	 (549,'Tân Nhuận Đông',NULL,NULL,NULL,'Xã'),
	 (549,'Tân Phú',NULL,NULL,NULL,'Xã'),
	 (549,'Tân Phú Trung',NULL,NULL,NULL,'Xã'),
	 (550,'An Bình A',NULL,NULL,NULL,'Xã'),
	 (550,'An Bình B',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (550,'An Lạc',NULL,NULL,NULL,'Phường'),
	 (550,'An Lộc',NULL,NULL,NULL,'Phường'),
	 (550,'An Thạnh',NULL,NULL,NULL,'Phường'),
	 (550,'Bình Thạnh',NULL,NULL,NULL,'Xã'),
	 (550,'Tân Hội',NULL,NULL,NULL,'Xã'),
	 (551,'An Bình',NULL,NULL,NULL,'Xã'),
	 (551,'Ba Sao',NULL,NULL,NULL,'Xã'),
	 (551,'Bình Hàng Tây',NULL,NULL,NULL,'Xã'),
	 (551,'Bình Hàng Trung',NULL,NULL,NULL,'Xã'),
	 (551,'Bình Thạnh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (551,'Gáo Giồng',NULL,NULL,NULL,'Xã'),
	 (551,'Mỹ Hiệp',NULL,NULL,NULL,'Xã'),
	 (551,'Mỹ Hội',NULL,NULL,NULL,'Xã'),
	 (551,'Mỹ Long',NULL,NULL,NULL,'Xã'),
	 (551,'Mỹ Thọ',NULL,NULL,NULL,'Thị trấn'),
	 (551,'Mỹ Xương',NULL,NULL,NULL,'Xã'),
	 (551,'Nhị Mỹ',NULL,NULL,NULL,'Xã'),
	 (551,'Phong Mỹ',NULL,NULL,NULL,'Xã'),
	 (551,'Phương Thịnh',NULL,NULL,NULL,'Xã'),
	 (551,'Phương Trà',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (551,'Tân Hội Trung',NULL,NULL,NULL,'Xã'),
	 (551,'Tân Nghĩa',NULL,NULL,NULL,'Xã'),
	 (551,'Xã Mỹ Thọ',NULL,NULL,NULL,'Xã'),
	 (552,'Long Khánh A',NULL,NULL,NULL,'Xã'),
	 (552,'Long Khánh B',NULL,NULL,NULL,'Xã'),
	 (552,'Long Thuận',NULL,NULL,NULL,'Xã'),
	 (552,'Phú Thuận A',NULL,NULL,NULL,'Xã'),
	 (552,'Phú Thuận B',NULL,NULL,NULL,'Xã'),
	 (552,'Thường Lạc',NULL,NULL,NULL,'Xã'),
	 (552,'Thường Phước 1',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (552,'Thường Phước 2',NULL,NULL,NULL,'Xã'),
	 (552,'Thường Thới Hậu A',NULL,NULL,NULL,'Xã'),
	 (552,'Thường Thới Hậu B',NULL,NULL,NULL,'Xã'),
	 (552,'Thường Thới Tiền',NULL,NULL,NULL,'Xã'),
	 (553,'Định Hòa',NULL,NULL,NULL,'Xã'),
	 (553,'Hòa Long',NULL,NULL,NULL,'Xã'),
	 (553,'Hòa Thành',NULL,NULL,NULL,'Xã'),
	 (553,'Lai Vung',NULL,NULL,NULL,'Thị trấn'),
	 (553,'Long Hậu',NULL,NULL,NULL,'Xã'),
	 (553,'Long Thắng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (553,'Phong Hòa',NULL,NULL,NULL,'Xã'),
	 (553,'Tân Dương',NULL,NULL,NULL,'Xã'),
	 (553,'Tân Hòa',NULL,NULL,NULL,'Xã'),
	 (553,'Tân Phước',NULL,NULL,NULL,'Xã'),
	 (553,'Tân Thành',NULL,NULL,NULL,'Xã'),
	 (553,'Vĩnh Thới',NULL,NULL,NULL,'Xã'),
	 (554,'Bình Thành',NULL,NULL,NULL,'Xã'),
	 (554,'Bình Thạnh Trung',NULL,NULL,NULL,'Xã'),
	 (554,'Định An',NULL,NULL,NULL,'Xã'),
	 (554,'Định Yên',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (554,'Hội An Đông',NULL,NULL,NULL,'Xã'),
	 (554,'Lấp Vò',NULL,NULL,NULL,'Thị trấn'),
	 (554,'Long Hưng A',NULL,NULL,NULL,'Xã'),
	 (554,'Long Hưng B',NULL,NULL,NULL,'Xã'),
	 (554,'Mỹ An Hưng A',NULL,NULL,NULL,'Xã'),
	 (554,'Mỹ An Hưng B',NULL,NULL,NULL,'Xã'),
	 (554,'Tân Khánh Trung',NULL,NULL,NULL,'Xã'),
	 (554,'Tân Mỹ',NULL,NULL,NULL,'Xã'),
	 (554,'Vĩnh Thạnh',NULL,NULL,NULL,'Xã'),
	 (555,'1',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (555,'2',NULL,NULL,NULL,'Phường'),
	 (555,'3',NULL,NULL,NULL,'Phường'),
	 (555,'4',NULL,NULL,NULL,'Phường'),
	 (555,'An Hòa',NULL,NULL,NULL,'Phường'),
	 (555,'Tân Khánh Đông',NULL,NULL,NULL,'Xã'),
	 (555,'Tân Phú Đông',NULL,NULL,NULL,'Xã'),
	 (555,'Tân Quy Đông',NULL,NULL,NULL,'Phường'),
	 (555,'Tân Quy Tây',NULL,NULL,NULL,'Xã'),
	 (556,'An Hòa',NULL,NULL,NULL,'Xã'),
	 (556,'An Long',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (556,'Hòa Bình',NULL,NULL,NULL,'Xã'),
	 (556,'Phú Cường',NULL,NULL,NULL,'Xã'),
	 (556,'Phú Đức',NULL,NULL,NULL,'Xã'),
	 (556,'Phú Hiệp',NULL,NULL,NULL,'Xã'),
	 (556,'Phú Ninh',NULL,NULL,NULL,'Xã'),
	 (556,'Phú Thành A',NULL,NULL,NULL,'Xã'),
	 (556,'Phú Thành B',NULL,NULL,NULL,'Xã'),
	 (556,'Phú Thọ',NULL,NULL,NULL,'Xã'),
	 (556,'Tân Công Sính',NULL,NULL,NULL,'Xã'),
	 (556,'Tràm Chim',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (557,'An Phước',NULL,NULL,NULL,'Xã'),
	 (557,'Bình Phú',NULL,NULL,NULL,'Xã'),
	 (557,'Sa Rài',NULL,NULL,NULL,'Thị trấn'),
	 (557,'Tân Công Chí',NULL,NULL,NULL,'Xã'),
	 (557,'Tân Hộ Cơ',NULL,NULL,NULL,'Xã'),
	 (557,'Tân Phước',NULL,NULL,NULL,'Xã'),
	 (557,'Tân Thành A',NULL,NULL,NULL,'Xã'),
	 (557,'Tân Thành B',NULL,NULL,NULL,'Xã'),
	 (557,'Thông Bình',NULL,NULL,NULL,'Xã'),
	 (558,'An Phong',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (558,'Bình Tấn',NULL,NULL,NULL,'Xã'),
	 (558,'Bình Thành',NULL,NULL,NULL,'Xã'),
	 (558,'Phú Lợi',NULL,NULL,NULL,'Xã'),
	 (558,'Tân Bình',NULL,NULL,NULL,'Xã'),
	 (558,'Tân Hoà',NULL,NULL,NULL,'Xã'),
	 (558,'Tân Huề',NULL,NULL,NULL,'Xã'),
	 (558,'Tân Long',NULL,NULL,NULL,'Xã'),
	 (558,'Tân Mỹ',NULL,NULL,NULL,'Xã'),
	 (558,'Tân Phú',NULL,NULL,NULL,'Xã'),
	 (558,'Tân Quới',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (558,'Tân Thạnh',NULL,NULL,NULL,'Xã'),
	 (558,'Thanh Bình',NULL,NULL,NULL,'Thị trấn'),
	 (559,'Đốc Binh Kiều',NULL,NULL,NULL,'Xã'),
	 (559,'Hưng Thạnh',NULL,NULL,NULL,'Xã'),
	 (559,'Láng Biển',NULL,NULL,NULL,'Xã'),
	 (559,'Mỹ An',NULL,NULL,NULL,'Thị trấn'),
	 (559,'Mỹ An',NULL,NULL,NULL,'Xã'),
	 (559,'Mỹ Đông',NULL,NULL,NULL,'Xã'),
	 (559,'Mỹ Hòa',NULL,NULL,NULL,'Xã'),
	 (559,'Mỹ Quý',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (559,'Phú Điền',NULL,NULL,NULL,'Xã'),
	 (559,'Tân Kiều',NULL,NULL,NULL,'Xã'),
	 (559,'Thạnh Lợi',NULL,NULL,NULL,'Xã'),
	 (559,'Thanh Mỹ',NULL,NULL,NULL,'Xã'),
	 (559,'Trường Xuân',NULL,NULL,NULL,'Xã'),
	 (560,'An Hiệp',NULL,NULL,NULL,'Xã'),
	 (560,'An Ninh',NULL,NULL,NULL,'Xã'),
	 (560,'Châu Thành',NULL,NULL,NULL,'Thị trấn'),
	 (560,'Hồ Đắc Kiện',NULL,NULL,NULL,'Xã'),
	 (560,'Phú Tâm',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (560,'Phú Tân',NULL,NULL,NULL,'Xã'),
	 (560,'Thiện Mỹ',NULL,NULL,NULL,'Xã'),
	 (560,'Thuận Hòa',NULL,NULL,NULL,'Xã'),
	 (561,'An Thạnh 1',NULL,NULL,NULL,'Xã'),
	 (561,'An Thạnh 2',NULL,NULL,NULL,'Xã'),
	 (561,'An Thạnh 3',NULL,NULL,NULL,'Xã'),
	 (561,'An Thạnh Đông',NULL,NULL,NULL,'Xã'),
	 (561,'An Thạnh Nam',NULL,NULL,NULL,'Xã'),
	 (561,'An Thạnh Tây',NULL,NULL,NULL,'Xã'),
	 (561,'Cù Lao Dung',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (561,'Đại Ân 1',NULL,NULL,NULL,'Xã'),
	 (562,'An Lạc Tây',NULL,NULL,NULL,'Xã'),
	 (562,'An Lạc Thôn',NULL,NULL,NULL,'Xã'),
	 (562,'An Mỹ',NULL,NULL,NULL,'Xã'),
	 (562,'Ba Trinh',NULL,NULL,NULL,'Xã'),
	 (562,'Đại Hải',NULL,NULL,NULL,'Xã'),
	 (562,'Kế An',NULL,NULL,NULL,'Xã'),
	 (562,'Kế Sách',NULL,NULL,NULL,'Thị trấn'),
	 (562,'Kế Thành',NULL,NULL,NULL,'Xã'),
	 (562,'Nhơn Mỹ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (562,'Phong Nẫm',NULL,NULL,NULL,'Xã'),
	 (562,'Thới An Hội',NULL,NULL,NULL,'Xã'),
	 (562,'Trinh Phú',NULL,NULL,NULL,'Xã'),
	 (562,'Xuân Hòa',NULL,NULL,NULL,'Xã'),
	 (563,'Châu Khánh',NULL,NULL,NULL,'Xã'),
	 (563,'Đại Ngãi',NULL,NULL,NULL,'Thị trấn'),
	 (563,'Hậu Thạnh',NULL,NULL,NULL,'Xã'),
	 (563,'Long Đức',NULL,NULL,NULL,'Xã'),
	 (563,'Long Phú',NULL,NULL,NULL,'Thị trấn'),
	 (563,'Long Phú',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (563,'Phú Hữu',NULL,NULL,NULL,'Xã'),
	 (563,'Song Phụng',NULL,NULL,NULL,'Xã'),
	 (563,'Tân Hưng',NULL,NULL,NULL,'Xã'),
	 (563,'Tân Thạnh',NULL,NULL,NULL,'Xã'),
	 (563,'Trường Khánh',NULL,NULL,NULL,'Xã'),
	 (564,'Hưng Phú',NULL,NULL,NULL,'Xã'),
	 (564,'Huỳnh Hữu Nghĩa',NULL,NULL,NULL,'Thị trấn'),
	 (564,'Long Hưng',NULL,NULL,NULL,'Xã'),
	 (564,'Mỹ Hương',NULL,NULL,NULL,'Xã'),
	 (564,'Mỹ Phước',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (564,'Mỹ Thuận',NULL,NULL,NULL,'Xã'),
	 (564,'Mỹ Tú',NULL,NULL,NULL,'Xã'),
	 (564,'Phú Mỹ',NULL,NULL,NULL,'Xã'),
	 (564,'Thuận Hưng',NULL,NULL,NULL,'Xã'),
	 (565,'Đại Tâm',NULL,NULL,NULL,'Xã'),
	 (565,'Gia Hòa 1',NULL,NULL,NULL,'Xã'),
	 (565,'Gia Hòa 2',NULL,NULL,NULL,'Xã'),
	 (565,'Hòa Tú 1',NULL,NULL,NULL,'Xã'),
	 (565,'Hòa Tú 2',NULL,NULL,NULL,'Xã'),
	 (565,'Mỹ Xuyên',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (565,'Ngọc Đông',NULL,NULL,NULL,'Xã'),
	 (565,'Ngọc Tố',NULL,NULL,NULL,'Xã'),
	 (565,'Tài Văn',NULL,NULL,NULL,'Xã'),
	 (565,'Tham Đôn',NULL,NULL,NULL,'Xã'),
	 (565,'Thạnh Phú',NULL,NULL,NULL,'Xã'),
	 (565,'Thạnh Quới',NULL,NULL,NULL,'Xã'),
	 (566,'1',NULL,NULL,NULL,'Phường'),
	 (566,'2',NULL,NULL,NULL,'Phường'),
	 (566,'3',NULL,NULL,NULL,'Phường'),
	 (566,'Long Bình',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (566,'Mỹ Bình',NULL,NULL,NULL,'Xã'),
	 (566,'Mỹ Quới',NULL,NULL,NULL,'Xã'),
	 (566,'Tân Long',NULL,NULL,NULL,'Xã'),
	 (566,'Vĩnh Quới',NULL,NULL,NULL,'Xã'),
	 (567,'1',NULL,NULL,NULL,'Phường'),
	 (567,'10',NULL,NULL,NULL,'Phường'),
	 (567,'2',NULL,NULL,NULL,'Phường'),
	 (567,'3',NULL,NULL,NULL,'Phường'),
	 (567,'4',NULL,NULL,NULL,'Phường'),
	 (567,'5',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (567,'6',NULL,NULL,NULL,'Phường'),
	 (567,'7',NULL,NULL,NULL,'Phường'),
	 (567,'8',NULL,NULL,NULL,'Phường'),
	 (567,'9',NULL,NULL,NULL,'Phường'),
	 (567,'Phú Tân',NULL,NULL,NULL,'Xã'),
	 (568,'Châu Hưng',NULL,NULL,NULL,'Xã'),
	 (568,'Hưng Lợi',NULL,NULL,NULL,'Thị trấn'),
	 (568,'Lâm Kiết',NULL,NULL,NULL,'Xã'),
	 (568,'Lâm Tân',NULL,NULL,NULL,'Xã'),
	 (568,'Phú Lộc',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (568,'Thạnh Tân',NULL,NULL,NULL,'Xã'),
	 (568,'Thạnh Trị',NULL,NULL,NULL,'Xã'),
	 (568,'Tuân Tức',NULL,NULL,NULL,'Xã'),
	 (568,'Vĩnh Lợi',NULL,NULL,NULL,'Xã'),
	 (568,'Vĩnh Thành',NULL,NULL,NULL,'Xã'),
	 (569,'Đại Ân',NULL,NULL,NULL,'Xã'),
	 (569,'Đại Ân 2',NULL,NULL,NULL,'Xã'),
	 (569,'Lịch Hội Thượng',NULL,NULL,NULL,'Thị trấn'),
	 (569,'Liêu Tú',NULL,NULL,NULL,'Xã'),
	 (569,'Tài Văn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (569,'Thạnh Thới An',NULL,NULL,NULL,'Xã'),
	 (569,'Thạnh Thới Thuận',NULL,NULL,NULL,'Xã'),
	 (569,'Trần Đề',NULL,NULL,NULL,'Thị trấn'),
	 (569,'Trung Bình',NULL,NULL,NULL,'Xã'),
	 (569,'Viên An',NULL,NULL,NULL,'Xã'),
	 (569,'Viên Bình',NULL,NULL,NULL,'Xã'),
	 (569,'Xã Lịch Hội Thượng',NULL,NULL,NULL,'Xã'),
	 (570,'1',NULL,NULL,NULL,'Phường'),
	 (570,'2',NULL,NULL,NULL,'Phường'),
	 (570,'Hòa Đông',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (570,'Khánh Hòa',NULL,NULL,NULL,'Phường'),
	 (570,'Lạc Hòa',NULL,NULL,NULL,'Xã'),
	 (570,'Lai Hòa',NULL,NULL,NULL,'Xã'),
	 (570,'Vĩnh Hải',NULL,NULL,NULL,'Xã'),
	 (570,'Vĩnh Hiệp',NULL,NULL,NULL,'Xã'),
	 (570,'Vĩnh Phước',NULL,NULL,NULL,'Phường'),
	 (570,'Vĩnh Tân',NULL,NULL,NULL,'Xã'),
	 (571,' Đăk Glei',NULL,NULL,NULL,'Xã'),
	 (571,' Đăk Kroong',NULL,NULL,NULL,'Xã'),
	 (571,' Đăk Môn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (571,'Đăk Choong',NULL,NULL,NULL,'Xã'),
	 (571,'Đăk Long',NULL,NULL,NULL,'Xã'),
	 (571,'Đăk Man',NULL,NULL,NULL,'Xã'),
	 (571,'Đăk Nhoong',NULL,NULL,NULL,'Xã'),
	 (571,'Đăk Pék',NULL,NULL,NULL,'Xã'),
	 (571,'Đăk Plô',NULL,NULL,NULL,'Xã'),
	 (571,'Mường Hoong',NULL,NULL,NULL,'Xã'),
	 (571,'Ngọc Linh',NULL,NULL,NULL,'Xã'),
	 (571,'Xốp',NULL,NULL,NULL,'Xã'),
	 (572,'Đắk Hà',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (572,'Đăk Hring',NULL,NULL,NULL,'Xã'),
	 (572,'Đăk La',NULL,NULL,NULL,'Xã'),
	 (572,'Đắk Long',NULL,NULL,NULL,'Xã'),
	 (572,'Đăk Mar',NULL,NULL,NULL,'Xã'),
	 (572,'Đắk Ngọk',NULL,NULL,NULL,'Xã'),
	 (572,'Đăk Pxi',NULL,NULL,NULL,'Xã'),
	 (572,'Đăk Uy',NULL,NULL,NULL,'Xã'),
	 (572,'Hà Mòn',NULL,NULL,NULL,'Xã'),
	 (572,'Ngọk Réo',NULL,NULL,NULL,'Xã'),
	 (572,'Ngọk Wang',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (573,' Đắk Rơ Nga',NULL,NULL,NULL,'Xã'),
	 (573,' Văn Lem',NULL,NULL,NULL,'Xã'),
	 (573,'Đắk Tô',NULL,NULL,NULL,'Thị trấn'),
	 (573,'Đắk Trăm',NULL,NULL,NULL,'Xã'),
	 (573,'Diên Bình',NULL,NULL,NULL,'Xã'),
	 (573,'Kon Đào',NULL,NULL,NULL,'Xã'),
	 (573,'Ngọk Tụ',NULL,NULL,NULL,'Xã'),
	 (573,'Pô kô',NULL,NULL,NULL,'Xã'),
	 (573,'Tân Cảnh',NULL,NULL,NULL,'Xã'),
	 (574,'Ia Đal',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (574,'Ia Dom',NULL,NULL,NULL,'Xã'),
	 (574,'Ia Tơi',NULL,NULL,NULL,'Xã'),
	 (575,'Đắk Long',NULL,NULL,NULL,'Xã'),
	 (575,'Đăk Nên',NULL,NULL,NULL,'Xã'),
	 (575,'Đăk Ring',NULL,NULL,NULL,'Xã'),
	 (575,'Đăk Tăng',NULL,NULL,NULL,'Xã'),
	 (575,'Hiếu',NULL,NULL,NULL,'Xã'),
	 (575,'Măng Bút',NULL,NULL,NULL,'Xã'),
	 (575,'Măng Cành',NULL,NULL,NULL,'Xã'),
	 (575,'Ngọk Tem',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (575,'Pờ Ê',NULL,NULL,NULL,'Xã'),
	 (576,'Đăk Kôi',NULL,NULL,NULL,'Xã'),
	 (576,'Đăk Pne',NULL,NULL,NULL,'Xã'),
	 (576,'Đăk Ruồng',NULL,NULL,NULL,'Xã'),
	 (576,'Đăk Rve',NULL,NULL,NULL,'Thị trấn'),
	 (576,'Đăk Tơ Lùng',NULL,NULL,NULL,'Xã'),
	 (576,'Đắk Tờ Re',NULL,NULL,NULL,'Xã'),
	 (576,'Tân Lập',NULL,NULL,NULL,'Xã'),
	 (577,' Ia Chim',NULL,NULL,NULL,'Xã'),
	 (577,' Quang Trung',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (577,'Chư Hreng',NULL,NULL,NULL,'Xã'),
	 (577,'Đăk Blà',NULL,NULL,NULL,'Xã'),
	 (577,'Đăk Cấm',NULL,NULL,NULL,'Xã'),
	 (577,'Đăk Năng',NULL,NULL,NULL,'Xã'),
	 (577,'Đăk Rơ Wa',NULL,NULL,NULL,'Xã'),
	 (577,'Đoàn Kết',NULL,NULL,NULL,'Xã'),
	 (577,'Duy Tân',NULL,NULL,NULL,'Phường'),
	 (577,'Hoà Bình',NULL,NULL,NULL,'Xã'),
	 (577,'Kroong',NULL,NULL,NULL,'Xã'),
	 (577,'Lê Lợi',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (577,'Ngô Mây',NULL,NULL,NULL,'Phường'),
	 (577,'Ngọk Bay',NULL,NULL,NULL,'Xã'),
	 (577,'Nguyễn Trãi',NULL,NULL,NULL,'Phường'),
	 (577,'Quyết Thắng',NULL,NULL,NULL,'Phường'),
	 (577,'Thắng Lợi',NULL,NULL,NULL,'Phường'),
	 (577,'Thống Nhất',NULL,NULL,NULL,'Phường'),
	 (577,'Trần Hưng Đạo',NULL,NULL,NULL,'Phường'),
	 (577,'Trường Chinh',NULL,NULL,NULL,'Phường'),
	 (577,'Vinh Quang',NULL,NULL,NULL,'Xã'),
	 (578,' Đăk Xú',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (578,'Đăk Ang',NULL,NULL,NULL,'Xã'),
	 (578,'Đăk Dục',NULL,NULL,NULL,'Xã'),
	 (578,'Đăk Kan',NULL,NULL,NULL,'Xã'),
	 (578,'Đăk Nông',NULL,NULL,NULL,'Xã'),
	 (578,'Plei Kần',NULL,NULL,NULL,'Thị trấn'),
	 (578,'Pờ Y',NULL,NULL,NULL,'Xã'),
	 (578,'Sa Loong',NULL,NULL,NULL,'Xã'),
	 (579,' Sa sơn',NULL,NULL,NULL,'Xã'),
	 (579,'Hơ moong',NULL,NULL,NULL,'Xã'),
	 (579,'Mô Rai',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (579,'Rờ kơi',NULL,NULL,NULL,'Xã'),
	 (579,'Sa Bình',NULL,NULL,NULL,'Xã'),
	 (579,'Sa Nghĩa',NULL,NULL,NULL,'Xã'),
	 (579,'Sa nhơn',NULL,NULL,NULL,'Xã'),
	 (579,'Sa Thầy',NULL,NULL,NULL,'Thị trấn'),
	 (579,'Ya Ly',NULL,NULL,NULL,'Xã'),
	 (579,'Ya tăng ',NULL,NULL,NULL,'Xã'),
	 (579,'Ya Xiêr',NULL,NULL,NULL,'Xã'),
	 (580,'Đắk Hà',NULL,NULL,NULL,'Xã'),
	 (580,'Đắk Na',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (580,'Đắk Rơ Ông',NULL,NULL,NULL,'Xã'),
	 (580,'Đắk Sao',NULL,NULL,NULL,'Xã'),
	 (580,'Đắk Tờ Kan',NULL,NULL,NULL,'Xã'),
	 (580,'Măng Ri',NULL,NULL,NULL,'Xã'),
	 (580,'Ngọk Lây',NULL,NULL,NULL,'Xã'),
	 (580,'Ngọk Yêu',NULL,NULL,NULL,'Xã'),
	 (580,'Tê Xăng',NULL,NULL,NULL,'Xã'),
	 (580,'Tu Mơ Rông',NULL,NULL,NULL,'Xã'),
	 (580,'Văn Xuôi',NULL,NULL,NULL,'Xã'),
	 (581,'Quảng Hòa',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (581,'Quảng Thọ',NULL,NULL,NULL,'Phường'),
	 (581,'Quảng Thuận',NULL,NULL,NULL,'Xã'),
	 (581,'Quảng Thủy',NULL,NULL,NULL,'Xã'),
	 (582,'Bắc Trạch',NULL,NULL,NULL,'Xã'),
	 (582,'Cự Nẫm',NULL,NULL,NULL,'Xã'),
	 (582,'Đại Trạch',NULL,NULL,NULL,'Xã'),
	 (582,'Đồng Trạch',NULL,NULL,NULL,'Xã'),
	 (582,'Đức Trạch',NULL,NULL,NULL,'Xã'),
	 (582,'Hạ Trạch',NULL,NULL,NULL,'Xã'),
	 (582,'Hải Trạch',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (582,'Hoà Trạch',NULL,NULL,NULL,'Xã'),
	 (582,'Hoàn Lão',NULL,NULL,NULL,'Thị trấn'),
	 (582,'Hoàn Trạch',NULL,NULL,NULL,'Xã'),
	 (582,'Hưng Trạch',NULL,NULL,NULL,'Xã'),
	 (582,'Lâm Trạch',NULL,NULL,NULL,'Xã'),
	 (582,'Liên Trạch',NULL,NULL,NULL,'Xã'),
	 (582,'Lý Trạch',NULL,NULL,NULL,'Xã'),
	 (582,'Mỹ Trạch',NULL,NULL,NULL,'Xã'),
	 (582,'Nam Trạch',NULL,NULL,NULL,'Xã'),
	 (582,'Nhân Trạch',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (582,'Nông trường Việt Trung',NULL,NULL,NULL,'Thị trấn'),
	 (582,'Phú Định',NULL,NULL,NULL,'Xã'),
	 (582,'Phú Trạch',NULL,NULL,NULL,'Xã'),
	 (582,'Phúc Trạch',NULL,NULL,NULL,'Xã'),
	 (582,'Sơn Lộc',NULL,NULL,NULL,'Xã'),
	 (582,'Sơn Trạch',NULL,NULL,NULL,'Xã'),
	 (582,'Tân Trạch',NULL,NULL,NULL,'Xã'),
	 (582,'Tây Trạch',NULL,NULL,NULL,'Xã'),
	 (582,'Thanh Trạch',NULL,NULL,NULL,'Xã'),
	 (582,'Thượng Trạch',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (582,'Trung Trạch',NULL,NULL,NULL,'Xã'),
	 (582,'Vạn Trạch',NULL,NULL,NULL,'Xã'),
	 (582,'Xuân Trạch',NULL,NULL,NULL,'Xã'),
	 (583,'Bắc Lý',NULL,NULL,NULL,'Phường'),
	 (583,'Bắc Nghĩa',NULL,NULL,NULL,'Phường'),
	 (583,'Bảo Ninh',NULL,NULL,NULL,'Xã'),
	 (583,'Đồng Mỹ',NULL,NULL,NULL,'Phường'),
	 (583,'Đồng Phú',NULL,NULL,NULL,'Phường'),
	 (583,'Đồng Sơn',NULL,NULL,NULL,'Phường'),
	 (583,'Đức Ninh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (583,'Đức Ninh Đông',NULL,NULL,NULL,'Phường'),
	 (583,'Hải Đình',NULL,NULL,NULL,'Phường'),
	 (583,'Hải Thành',NULL,NULL,NULL,'Phường'),
	 (583,'Lộc Ninh',NULL,NULL,NULL,'Xã'),
	 (583,'Nam Lý',NULL,NULL,NULL,'Phường'),
	 (583,'Nghĩa Ninh',NULL,NULL,NULL,'Xã'),
	 (583,'Phú Hải',NULL,NULL,NULL,'Phường'),
	 (583,'Quang Phú',NULL,NULL,NULL,'Xã'),
	 (583,'Thuận Đức',NULL,NULL,NULL,'Xã'),
	 (584,'An Thuỷ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (584,'Cam Thủy',NULL,NULL,NULL,'Xã'),
	 (584,'Dương Thủy',NULL,NULL,NULL,'Xã'),
	 (584,'Hoa Thủy',NULL,NULL,NULL,'Xã'),
	 (584,'Hồng Thủy',NULL,NULL,NULL,'Xã'),
	 (584,'Hưng Thủy',NULL,NULL,NULL,'Xã'),
	 (584,'Kiến Giang',NULL,NULL,NULL,'Thị trấn'),
	 (584,'Kim Thủy',NULL,NULL,NULL,'Xã'),
	 (584,'Lâm Thủy',NULL,NULL,NULL,'Xã'),
	 (584,'Liên Thủy',NULL,NULL,NULL,'Xã'),
	 (584,'Lộc Thủy',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (584,'Mai Thủy',NULL,NULL,NULL,'Xã'),
	 (584,'Mỹ Thủy',NULL,NULL,NULL,'Xã'),
	 (584,'Ngân Thủy',NULL,NULL,NULL,'Xã'),
	 (584,'Ngư Thủy Bắc',NULL,NULL,NULL,'Xã'),
	 (584,'Ngư Thủy Nam',NULL,NULL,NULL,'Xã'),
	 (584,'Ngư Thủy Trung',NULL,NULL,NULL,'Xã'),
	 (584,'Nông Trường Lệ Ninh',NULL,NULL,NULL,'Thị trấn'),
	 (584,'Phong Thủy',NULL,NULL,NULL,'Xã'),
	 (584,'Phú Thủy',NULL,NULL,NULL,'Xã'),
	 (584,'Sen Thủy',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (584,'Sơn Thủy',NULL,NULL,NULL,'Xã'),
	 (584,'Tân Thủy',NULL,NULL,NULL,'Xã'),
	 (584,'Thái Thủy',NULL,NULL,NULL,'Xã'),
	 (584,'Thanh Thủy',NULL,NULL,NULL,'Xã'),
	 (584,'Trường Thủy',NULL,NULL,NULL,'Xã'),
	 (584,'Văn Thủy',NULL,NULL,NULL,'Xã'),
	 (584,'Xuân Thủy',NULL,NULL,NULL,'Xã'),
	 (585,'Dân Hóa',NULL,NULL,NULL,'Xã'),
	 (585,'Hóa Hợp',NULL,NULL,NULL,'Xã'),
	 (585,'Hóa Phúc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (585,'Hóa Sơn',NULL,NULL,NULL,'Xã'),
	 (585,'Hóa Thanh',NULL,NULL,NULL,'Xã'),
	 (585,'Hóa Tiến',NULL,NULL,NULL,'Xã'),
	 (585,'Hồng Hóa',NULL,NULL,NULL,'Xã'),
	 (585,'Minh Hóa',NULL,NULL,NULL,'Xã'),
	 (585,'Quy Đạt',NULL,NULL,NULL,'Thị trấn'),
	 (585,'Quy Hóa',NULL,NULL,NULL,'Xã'),
	 (585,'Tân Hóa',NULL,NULL,NULL,'Xã'),
	 (585,'Thượng Hóa',NULL,NULL,NULL,'Xã'),
	 (585,'Trọng Hóa',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (585,'Trung Hóa',NULL,NULL,NULL,'Xã'),
	 (585,'Xuân Hóa',NULL,NULL,NULL,'Xã'),
	 (585,'Yên Hóa',NULL,NULL,NULL,'Xã'),
	 (586,'An Ninh',NULL,NULL,NULL,'Xã'),
	 (586,'Duy Ninh',NULL,NULL,NULL,'Xã'),
	 (586,'Gia Ninh',NULL,NULL,NULL,'Xã'),
	 (586,'Hải Ninh',NULL,NULL,NULL,'Xã'),
	 (586,'Hàm Ninh',NULL,NULL,NULL,'Xã'),
	 (586,'Hiền Ninh',NULL,NULL,NULL,'Xã'),
	 (586,'Lương Ninh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (586,'Quán Hàu',NULL,NULL,NULL,'Thị trấn'),
	 (586,'Tân Ninh',NULL,NULL,NULL,'Xã'),
	 (586,'Trường Sơn',NULL,NULL,NULL,'Xã'),
	 (586,'Trường Xuân',NULL,NULL,NULL,'Xã'),
	 (586,'Vạn Ninh',NULL,NULL,NULL,'Xã'),
	 (586,'Vĩnh Ninh',NULL,NULL,NULL,'Xã'),
	 (586,'Võ Ninh',NULL,NULL,NULL,'Xã'),
	 (586,'Xuân Ninh',NULL,NULL,NULL,'Xã'),
	 (587,'Ba Đồn',NULL,NULL,NULL,'Thị trấn'),
	 (587,'Cảnh Dương',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (587,'Cảnh Hoá',NULL,NULL,NULL,'Xã'),
	 (587,'Phù Hóa',NULL,NULL,NULL,'Xã'),
	 (587,'Quảng Châu',NULL,NULL,NULL,'Xã'),
	 (587,'Quảng Đông',NULL,NULL,NULL,'Xã'),
	 (587,'Quảng Hải',NULL,NULL,NULL,'Xã'),
	 (587,'Quảng Hoà',NULL,NULL,NULL,'Xã'),
	 (587,'Quảng Hợp',NULL,NULL,NULL,'Xã'),
	 (587,'Quảng Hưng',NULL,NULL,NULL,'Xã'),
	 (587,'Quảng Kim',NULL,NULL,NULL,'Xã'),
	 (587,'Quảng Liên',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (587,'Quảng Lộc',NULL,NULL,NULL,'Xã'),
	 (587,'Quảng Long',NULL,NULL,NULL,'Xã'),
	 (587,'Quảng Lưu',NULL,NULL,NULL,'Xã'),
	 (587,'Quảng Minh',NULL,NULL,NULL,'Xã'),
	 (587,'Quảng Phong',NULL,NULL,NULL,'Xã'),
	 (587,'Quảng Phú',NULL,NULL,NULL,'Xã'),
	 (587,'Quảng Phúc',NULL,NULL,NULL,'Xã'),
	 (587,'Quảng Phương',NULL,NULL,NULL,'Xã'),
	 (587,'Quảng Sơn',NULL,NULL,NULL,'Xã'),
	 (587,'Quảng Tân',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (587,'Quảng Thạch',NULL,NULL,NULL,'Xã'),
	 (587,'Quảng Thanh',NULL,NULL,NULL,'Xã'),
	 (587,'Quảng Thọ',NULL,NULL,NULL,'Xã'),
	 (587,'Quảng Thuỷ',NULL,NULL,NULL,'Xã'),
	 (587,'Quảng Tiên',NULL,NULL,NULL,'Xã'),
	 (587,'Quảng Tiến',NULL,NULL,NULL,'Xã'),
	 (587,'Quảng Trung',NULL,NULL,NULL,'Xã'),
	 (587,'Quảng Trường',NULL,NULL,NULL,'Xã'),
	 (587,'Quảng Tùng',NULL,NULL,NULL,'Xã'),
	 (587,'Quảng Văn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (587,'Quảng Xuân',NULL,NULL,NULL,'Xã'),
	 (588,'Cao Quảng',NULL,NULL,NULL,'Xã'),
	 (588,'Châu Hóa',NULL,NULL,NULL,'Xã'),
	 (588,'Đồng Hóa',NULL,NULL,NULL,'Xã'),
	 (588,'Đồng Lê',NULL,NULL,NULL,'Thị trấn'),
	 (588,'Đức Hóa',NULL,NULL,NULL,'Xã'),
	 (588,'Hương Hóa',NULL,NULL,NULL,'Xã'),
	 (588,'Kim Hóa',NULL,NULL,NULL,'Xã'),
	 (588,'Lâm Hóa',NULL,NULL,NULL,'Xã'),
	 (588,'Lê Hóa',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (588,'Mai Hóa',NULL,NULL,NULL,'Xã'),
	 (588,'Nam Hóa',NULL,NULL,NULL,'Xã'),
	 (588,'Ngư Hóa',NULL,NULL,NULL,'Xã'),
	 (588,'Phong Hóa',NULL,NULL,NULL,'Xã'),
	 (588,'Sơn Hóa',NULL,NULL,NULL,'Xã'),
	 (588,'Thạch Hóa',NULL,NULL,NULL,'Xã'),
	 (588,'Thanh Hóa',NULL,NULL,NULL,'Xã'),
	 (588,'Thanh Thạch',NULL,NULL,NULL,'Xã'),
	 (588,'Thuận Hóa',NULL,NULL,NULL,'Xã'),
	 (588,'Tiến Hóa',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (588,'Văn Hóa',NULL,NULL,NULL,'Xã'),
	 (589,'Cam An',NULL,NULL,NULL,'Xã'),
	 (589,'Cam Chính',NULL,NULL,NULL,'Xã'),
	 (589,'Cam Hiếu',NULL,NULL,NULL,'Xã'),
	 (589,'Cam Lộ',NULL,NULL,NULL,'Thị trấn'),
	 (589,'Cam Nghĩa',NULL,NULL,NULL,'Xã'),
	 (589,'Cam Thanh',NULL,NULL,NULL,'Xã'),
	 (589,'Cam Thành',NULL,NULL,NULL,'Xã'),
	 (589,'Cam Thủy',NULL,NULL,NULL,'Xã'),
	 (589,'Cam Tuyền',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (590,'A Bung',NULL,NULL,NULL,'Xã'),
	 (590,'A Ngo',NULL,NULL,NULL,'Xã'),
	 (590,'A Vao',NULL,NULL,NULL,'Xã'),
	 (590,'Ba Lòng',NULL,NULL,NULL,'Xã'),
	 (590,'Ba Nang',NULL,NULL,NULL,'Xã'),
	 (590,'Đa Krông',NULL,NULL,NULL,'Xã'),
	 (590,'Hải Phúc',NULL,NULL,NULL,'Xã'),
	 (590,'Húc Nghì',NULL,NULL,NULL,'Xã'),
	 (590,'Hướng Hiệp',NULL,NULL,NULL,'Xã'),
	 (590,'Krông Klang',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (590,'Mò Ó',NULL,NULL,NULL,'Xã'),
	 (590,'Tà Long',NULL,NULL,NULL,'Xã'),
	 (590,'Tà Rụt',NULL,NULL,NULL,'Xã'),
	 (590,'Triệu Nguyên',NULL,NULL,NULL,'Xã'),
	 (592,'1',NULL,NULL,NULL,'Phường'),
	 (592,'2',NULL,NULL,NULL,'Phường'),
	 (592,'3',NULL,NULL,NULL,'Phường'),
	 (592,'4',NULL,NULL,NULL,'Phường'),
	 (592,'5',NULL,NULL,NULL,'Phường'),
	 (592,'Đông Giang',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (592,'Đông Lễ',NULL,NULL,NULL,'Phường'),
	 (592,'Đông Lương',NULL,NULL,NULL,'Phường'),
	 (592,'Đông Thanh',NULL,NULL,NULL,'Phường'),
	 (593,'Cửa Việt',NULL,NULL,NULL,'Thị trấn'),
	 (593,'Gio An',NULL,NULL,NULL,'Xã'),
	 (593,'Gio Bình',NULL,NULL,NULL,'Xã'),
	 (593,'Gio Châu',NULL,NULL,NULL,'Xã'),
	 (593,'Gio Hải',NULL,NULL,NULL,'Xã'),
	 (593,'Gio Hòa',NULL,NULL,NULL,'Xã'),
	 (593,'Gio Linh',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (593,'Gio Mai',NULL,NULL,NULL,'Xã'),
	 (593,'Gio Mỹ',NULL,NULL,NULL,'Xã'),
	 (593,'Gio Phong',NULL,NULL,NULL,'Xã'),
	 (593,'Gio Quang',NULL,NULL,NULL,'Xã'),
	 (593,'Gio Sơn',NULL,NULL,NULL,'Xã'),
	 (593,'Gio Thành',NULL,NULL,NULL,'Xã'),
	 (593,'Gio Việt',NULL,NULL,NULL,'Xã'),
	 (593,'Hải Thái',NULL,NULL,NULL,'Xã'),
	 (593,'Linh Hải',NULL,NULL,NULL,'Xã'),
	 (593,'Linh Thượng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (593,'Trung Giang',NULL,NULL,NULL,'Xã'),
	 (593,'Trung Hải',NULL,NULL,NULL,'Xã'),
	 (593,'Trung Sơn',NULL,NULL,NULL,'Xã'),
	 (593,'Vĩnh Trường',NULL,NULL,NULL,'Xã'),
	 (594,'Hải An',NULL,NULL,NULL,'Xã'),
	 (594,'Hải Ba',NULL,NULL,NULL,'Xã'),
	 (594,'Hải Chánh',NULL,NULL,NULL,'Xã'),
	 (594,'Hải Dương',NULL,NULL,NULL,'Xã'),
	 (594,'Hải Hòa',NULL,NULL,NULL,'Xã'),
	 (594,'Hải Khê',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (594,'Hải Lâm',NULL,NULL,NULL,'Xã'),
	 (594,'Hải Lăng',NULL,NULL,NULL,'Thị trấn'),
	 (594,'Hải Phú',NULL,NULL,NULL,'Xã'),
	 (594,'Hải Quế',NULL,NULL,NULL,'Xã'),
	 (594,'Hải Quy',NULL,NULL,NULL,'Xã'),
	 (594,'Hải Sơn',NULL,NULL,NULL,'Xã'),
	 (594,'Hải Tân',NULL,NULL,NULL,'Xã'),
	 (594,'Hải Thành',NULL,NULL,NULL,'Xã'),
	 (594,'Hải Thiện',NULL,NULL,NULL,'Xã'),
	 (594,'Hải Thọ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (594,'Hải Thượng',NULL,NULL,NULL,'Xã'),
	 (594,'Hải Trường',NULL,NULL,NULL,'Xã'),
	 (594,'Hải Vĩnh',NULL,NULL,NULL,'Xã'),
	 (594,'Hải Xuân',NULL,NULL,NULL,'Xã'),
	 (595,'A Dơi',NULL,NULL,NULL,'Xã'),
	 (595,'A Túc',NULL,NULL,NULL,'Xã'),
	 (595,'A Xing',NULL,NULL,NULL,'Xã'),
	 (595,'Ba Tầng',NULL,NULL,NULL,'Xã'),
	 (595,'Húc',NULL,NULL,NULL,'Xã'),
	 (595,'Hướng Lập',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (595,'Hướng Linh',NULL,NULL,NULL,'Xã'),
	 (595,'Hướng Lộc',NULL,NULL,NULL,'Xã'),
	 (595,'Hướng Phùng',NULL,NULL,NULL,'Xã'),
	 (595,'Hướng Sơn',NULL,NULL,NULL,'Xã'),
	 (595,'Hướng Tân',NULL,NULL,NULL,'Xã'),
	 (595,'Hướng Việt',NULL,NULL,NULL,'Xã'),
	 (595,'Khe Sanh',NULL,NULL,NULL,'Thị trấn'),
	 (595,'Lao Bảo',NULL,NULL,NULL,'Thị trấn'),
	 (595,'Tân Hợp',NULL,NULL,NULL,'Xã'),
	 (595,'Tân Lập',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (595,'Tân Liên',NULL,NULL,NULL,'Xã'),
	 (595,'Tân Long',NULL,NULL,NULL,'Xã'),
	 (595,'Tân Thành',NULL,NULL,NULL,'Xã'),
	 (595,'Thanh',NULL,NULL,NULL,'Xã'),
	 (595,'Thuận',NULL,NULL,NULL,'Xã'),
	 (595,'Xy',NULL,NULL,NULL,'Xã'),
	 (596,'1',NULL,NULL,NULL,'Phường'),
	 (596,'2',NULL,NULL,NULL,'Phường'),
	 (596,'3',NULL,NULL,NULL,'Phường'),
	 (596,'An Đôn',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (596,'Hải Lệ',NULL,NULL,NULL,'Xã'),
	 (597,'Ái Tử',NULL,NULL,NULL,'Thị trấn'),
	 (597,'Triệu Ái',NULL,NULL,NULL,'Xã'),
	 (597,'Triệu An',NULL,NULL,NULL,'Xã'),
	 (597,'Triệu Đại',NULL,NULL,NULL,'Xã'),
	 (597,'Triệu Độ',NULL,NULL,NULL,'Xã'),
	 (597,'Triệu Đông',NULL,NULL,NULL,'Xã'),
	 (597,'Triệu Giang',NULL,NULL,NULL,'Xã'),
	 (597,'Triệu Hòa',NULL,NULL,NULL,'Xã'),
	 (597,'Triệu Lăng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (597,'Triệu Long',NULL,NULL,NULL,'Xã'),
	 (597,'Triệu Phước',NULL,NULL,NULL,'Xã'),
	 (597,'Triệu Sơn',NULL,NULL,NULL,'Xã'),
	 (597,'Triệu Tài',NULL,NULL,NULL,'Xã'),
	 (597,'Triệu Thành',NULL,NULL,NULL,'Xã'),
	 (597,'Triệu Thuận',NULL,NULL,NULL,'Xã'),
	 (597,'Triệu Thượng',NULL,NULL,NULL,'Xã'),
	 (597,'Triệu Trạch',NULL,NULL,NULL,'Xã'),
	 (597,'Triệu Trung',NULL,NULL,NULL,'Xã'),
	 (597,'Triệu Vân',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (598,'Bến Quan',NULL,NULL,NULL,'Thị trấn'),
	 (598,'Cửa Tùng',NULL,NULL,NULL,'Thị trấn'),
	 (598,'Hồ Xá',NULL,NULL,NULL,'Thị trấn'),
	 (598,'Vĩnh Chấp',NULL,NULL,NULL,'Xã'),
	 (598,'Vĩnh Giang',NULL,NULL,NULL,'Xã'),
	 (598,'Vĩnh Hà',NULL,NULL,NULL,'Xã'),
	 (598,'Vĩnh Hiền',NULL,NULL,NULL,'Xã'),
	 (598,'Vĩnh Hòa',NULL,NULL,NULL,'Xã'),
	 (598,'Vĩnh Khê',NULL,NULL,NULL,'Xã'),
	 (598,'Vĩnh Kim',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (598,'Vĩnh Lâm',NULL,NULL,NULL,'Xã'),
	 (598,'Vĩnh Long',NULL,NULL,NULL,'Xã'),
	 (598,'Vĩnh Nam',NULL,NULL,NULL,'Xã'),
	 (598,'Vĩnh Ô',NULL,NULL,NULL,'Xã'),
	 (598,'Vĩnh Sơn',NULL,NULL,NULL,'Xã'),
	 (598,'Vĩnh Tân',NULL,NULL,NULL,'Xã'),
	 (598,'Vĩnh Thạch',NULL,NULL,NULL,'Xã'),
	 (598,'Vĩnh Thái',NULL,NULL,NULL,'Xã'),
	 (598,'Vĩnh Thành',NULL,NULL,NULL,'Xã'),
	 (598,'Vĩnh Thủy',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (598,'Vĩnh Trung',NULL,NULL,NULL,'Xã'),
	 (598,'Vĩnh Tú',NULL,NULL,NULL,'Xã'),
	 (599,'An Trường',NULL,NULL,NULL,'Xã'),
	 (599,'An Trường A',NULL,NULL,NULL,'Xã'),
	 (599,'Bình Phú',NULL,NULL,NULL,'Xã'),
	 (599,'Càng Long',NULL,NULL,NULL,'Thị trấn'),
	 (599,'Đại Phúc',NULL,NULL,NULL,'Xã'),
	 (599,'Đại Phước',NULL,NULL,NULL,'Xã'),
	 (599,'Đức Mỹ',NULL,NULL,NULL,'Xã'),
	 (599,'Huyền Hội',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (599,'Mỹ Cẩm',NULL,NULL,NULL,'Xã'),
	 (599,'Nhị Long',NULL,NULL,NULL,'Xã'),
	 (599,'Nhị Long Phú',NULL,NULL,NULL,'Xã'),
	 (599,'Phương Thạnh',NULL,NULL,NULL,'Xã'),
	 (599,'Tân An',NULL,NULL,NULL,'Xã'),
	 (599,'Tân Bình',NULL,NULL,NULL,'Xã'),
	 (600,'An Phú Tân',NULL,NULL,NULL,'Xã'),
	 (600,'Cầu Kè',NULL,NULL,NULL,'Thị trấn'),
	 (600,'Châu Điền',NULL,NULL,NULL,'Xã'),
	 (600,'Hòa Ân',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (600,'Hòa Tân',NULL,NULL,NULL,'Xã'),
	 (600,'Ninh Thới',NULL,NULL,NULL,'Xã'),
	 (600,'Phong Phú',NULL,NULL,NULL,'Xã'),
	 (600,'Phong Thạnh',NULL,NULL,NULL,'Xã'),
	 (600,'Tam Ngãi',NULL,NULL,NULL,'Xã'),
	 (600,'Thạnh Phú',NULL,NULL,NULL,'Xã'),
	 (600,'Thông Hòa',NULL,NULL,NULL,'Xã'),
	 (601,'Cầu Ngang',NULL,NULL,NULL,'Thị trấn'),
	 (601,'Hiệp Hòa',NULL,NULL,NULL,'Xã'),
	 (601,'Hiệp Mỹ Đông',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (601,'Hiệp Mỹ Tây',NULL,NULL,NULL,'Xã'),
	 (601,'Kim Hòa',NULL,NULL,NULL,'Xã'),
	 (601,'Long Sơn',NULL,NULL,NULL,'Xã'),
	 (601,'Mỹ Hòa',NULL,NULL,NULL,'Xã'),
	 (601,'Mỹ Long',NULL,NULL,NULL,'Thị trấn'),
	 (601,'Mỹ Long Bắc',NULL,NULL,NULL,'Xã'),
	 (601,'Mỹ Long Nam',NULL,NULL,NULL,'Xã'),
	 (601,'Nhị Trường',NULL,NULL,NULL,'Xã'),
	 (601,'Thạnh Hòa Sơn',NULL,NULL,NULL,'Xã'),
	 (601,'Thuận Hòa',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (601,'Trường Thọ',NULL,NULL,NULL,'Xã'),
	 (601,'Vinh Kim',NULL,NULL,NULL,'Xã'),
	 (602,'Châu Thành',NULL,NULL,NULL,'Thị trấn'),
	 (602,'Đa Lộc',NULL,NULL,NULL,'Xã'),
	 (602,'Hòa Lợi',NULL,NULL,NULL,'Xã'),
	 (602,'Hòa Minh',NULL,NULL,NULL,'Xã'),
	 (602,'Hòa Thuận',NULL,NULL,NULL,'Xã'),
	 (602,'Hưng Mỹ',NULL,NULL,NULL,'Xã'),
	 (602,'Long Hòa',NULL,NULL,NULL,'Xã'),
	 (602,'Lương Hòa',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (602,'Lương Hòa A',NULL,NULL,NULL,'Xã'),
	 (602,'Mỹ Chánh',NULL,NULL,NULL,'Xã'),
	 (602,'Nguyệt Hóa',NULL,NULL,NULL,'Xã'),
	 (602,'Phước Hảo',NULL,NULL,NULL,'Xã'),
	 (602,'Song Lộc',NULL,NULL,NULL,'Xã'),
	 (602,'Thanh Mỹ',NULL,NULL,NULL,'Xã'),
	 (603,'1',NULL,NULL,NULL,'Phường'),
	 (603,'2',NULL,NULL,NULL,'Phường'),
	 (603,'Dân Thành',NULL,NULL,NULL,'Xã'),
	 (603,'Đông Hải',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (603,'Duyên Hải',NULL,NULL,NULL,'Thị trấn'),
	 (603,'Hiệp Thạnh',NULL,NULL,NULL,'Xã'),
	 (603,'Long Hữu',NULL,NULL,NULL,'Xã'),
	 (603,'Long Khánh',NULL,NULL,NULL,'Xã'),
	 (603,'Long Thành',NULL,NULL,NULL,'Thị trấn'),
	 (603,'Long Toàn',NULL,NULL,NULL,'Xã'),
	 (603,'Long Vĩnh',NULL,NULL,NULL,'Xã'),
	 (603,'Ngũ Lạc',NULL,NULL,NULL,'Xã'),
	 (603,'Trường Long Hòa',NULL,NULL,NULL,'Xã'),
	 (604,'Cầu Quan',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (604,'Hiếu Trung',NULL,NULL,NULL,'Xã'),
	 (604,'Hiếu Tử',NULL,NULL,NULL,'Xã'),
	 (604,'Hùng Hoà',NULL,NULL,NULL,'Xã'),
	 (604,'Long Thới',NULL,NULL,NULL,'Xã'),
	 (604,'Ngãi Hùng',NULL,NULL,NULL,'Xã'),
	 (604,'Phú Cần',NULL,NULL,NULL,'Xã'),
	 (604,'Tân Hoà',NULL,NULL,NULL,'Xã'),
	 (604,'Tân Hùng',NULL,NULL,NULL,'Xã'),
	 (604,'Tập Ngãi',NULL,NULL,NULL,'Xã'),
	 (604,'Tiểu Cần',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (605,'An Quảng Hữu',NULL,NULL,NULL,'Xã'),
	 (605,'Đại An',NULL,NULL,NULL,'Xã'),
	 (605,'Định An',NULL,NULL,NULL,'Thị trấn'),
	 (605,'Định An',NULL,NULL,NULL,'Xã'),
	 (605,'Đôn Châu',NULL,NULL,NULL,'Xã'),
	 (605,'Đôn Xuân',NULL,NULL,NULL,'Xã'),
	 (605,'Hàm Giang',NULL,NULL,NULL,'Xã'),
	 (605,'Hàm Tân',NULL,NULL,NULL,'Xã'),
	 (605,'Kim Sơn',NULL,NULL,NULL,'Xã'),
	 (605,'Long Hiệp',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (605,'Lưu Nghiệp Anh',NULL,NULL,NULL,'Xã'),
	 (605,'Ngãi Xuyên',NULL,NULL,NULL,'Xã'),
	 (605,'Ngọc Biên',NULL,NULL,NULL,'Xã'),
	 (605,'Phước Hưng',NULL,NULL,NULL,'Xã'),
	 (605,'Tân Hiệp',NULL,NULL,NULL,'Xã'),
	 (605,'Tân Sơn',NULL,NULL,NULL,'Xã'),
	 (605,'Tập Sơn',NULL,NULL,NULL,'Xã'),
	 (605,'Thanh Sơn',NULL,NULL,NULL,'Xã'),
	 (605,'Trà Cú',NULL,NULL,NULL,'Thị trấn'),
	 (606,'1',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (606,'1',NULL,NULL,NULL,'Phường'),
	 (606,'2',NULL,NULL,NULL,'Phường'),
	 (606,'2',NULL,NULL,NULL,'Phường'),
	 (606,'3',NULL,NULL,NULL,'Phường'),
	 (606,'3',NULL,NULL,NULL,'Phường'),
	 (606,'4',NULL,NULL,NULL,'Phường'),
	 (606,'4',NULL,NULL,NULL,'Phường'),
	 (606,'5',NULL,NULL,NULL,'Phường'),
	 (606,'5',NULL,NULL,NULL,'Phường'),
	 (606,'6',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (606,'6',NULL,NULL,NULL,'Phường'),
	 (606,'7',NULL,NULL,NULL,'Phường'),
	 (606,'8',NULL,NULL,NULL,'Phường'),
	 (606,'8',NULL,NULL,NULL,'Phường'),
	 (606,'9',NULL,NULL,NULL,'Phường'),
	 (606,'Long Đức',NULL,NULL,NULL,'Xã'),
	 (607,'Đông Phú',NULL,NULL,NULL,'Xã'),
	 (607,'Đông Phước',NULL,NULL,NULL,'Xã'),
	 (607,'Đông Phước A',NULL,NULL,NULL,'Xã'),
	 (607,'Đông Thạnh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (607,'Mái Dầm',NULL,NULL,NULL,'Xã'),
	 (607,'Ngã Sáu',NULL,NULL,NULL,'Thị trấn'),
	 (607,'Phú An',NULL,NULL,NULL,'Xã'),
	 (607,'Phú Hữu',NULL,NULL,NULL,'Xã'),
	 (607,'Phú Tân',NULL,NULL,NULL,'Xã'),
	 (608,'Bảy Ngàn',NULL,NULL,NULL,'Thị trấn'),
	 (608,'Cái Tắc',NULL,NULL,NULL,'Thị trấn'),
	 (608,'Một Ngàn',NULL,NULL,NULL,'Thị trấn'),
	 (608,'Nhơn Nghĩa A',NULL,NULL,NULL,'Xã'),
	 (608,'Rạch Gòi',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (608,'Tân Hòa',NULL,NULL,NULL,'Xã'),
	 (608,'Tân Phú Thạnh',NULL,NULL,NULL,'Xã'),
	 (608,'Thạnh Xuân',NULL,NULL,NULL,'Xã'),
	 (608,'Trường Long A',NULL,NULL,NULL,'Xã'),
	 (608,'Trường Long Tây',NULL,NULL,NULL,'Xã'),
	 (609,'Long Bình',NULL,NULL,NULL,'Xã'),
	 (609,'Long Mỹ',NULL,NULL,NULL,'Thị trấn'),
	 (609,'Long Phú',NULL,NULL,NULL,'Xã'),
	 (609,'Long Trị',NULL,NULL,NULL,'Xã'),
	 (609,'Long Trị A',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (609,'Lương Nghĩa',NULL,NULL,NULL,'Xã'),
	 (609,'Lương Tâm',NULL,NULL,NULL,'Xã'),
	 (609,'Tân Phú',NULL,NULL,NULL,'Xã'),
	 (609,'Thuận Hòa',NULL,NULL,NULL,'Xã'),
	 (609,'Thuận Hưng',NULL,NULL,NULL,'Xã'),
	 (609,'Trà Lồng',NULL,NULL,NULL,'Thị trấn'),
	 (609,'Vĩnh Thuận Đông',NULL,NULL,NULL,'Xã'),
	 (609,'Vĩnh Viễn',NULL,NULL,NULL,'Xã'),
	 (609,'Vĩnh Viễn A',NULL,NULL,NULL,'Xã'),
	 (609,'Xà Phiên',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (610,'Đại Thành',NULL,NULL,NULL,'Xã'),
	 (610,'Hiệp Lợi',NULL,NULL,NULL,'Xã'),
	 (610,'Hiệp Thành',NULL,NULL,NULL,'Xã'),
	 (610,'Lái Hiếu',NULL,NULL,NULL,'Phường'),
	 (610,'Ngã Bảy',NULL,NULL,NULL,'Phường'),
	 (610,'Tân Thành',NULL,NULL,NULL,'Xã'),
	 (611,'Bình Thành',NULL,NULL,NULL,'Xã'),
	 (611,'Búng Tàu',NULL,NULL,NULL,'Thị trấn'),
	 (611,'Cây Dương',NULL,NULL,NULL,'Thị trấn'),
	 (611,'Hiệp Hưng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (611,'Hòa An',NULL,NULL,NULL,'Xã'),
	 (611,'Hòa Mỹ',NULL,NULL,NULL,'Xã'),
	 (611,'Kinh Cùng',NULL,NULL,NULL,'Xã'),
	 (611,'Long Thạnh',NULL,NULL,NULL,'Xã'),
	 (611,'Phụng Hiệp',NULL,NULL,NULL,'Xã'),
	 (611,'Phương Bình',NULL,NULL,NULL,'Xã'),
	 (611,'Phương Phú',NULL,NULL,NULL,'Xã'),
	 (611,'Tân Bình',NULL,NULL,NULL,'Xã'),
	 (611,'Tân Long',NULL,NULL,NULL,'Xã'),
	 (611,'Tân Phước Hưng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (611,'Thạnh Hòa',NULL,NULL,NULL,'Xã'),
	 (612,'1',NULL,NULL,NULL,'Phường'),
	 (612,'3',NULL,NULL,NULL,'Phường'),
	 (612,'4',NULL,NULL,NULL,'Phường'),
	 (612,'5',NULL,NULL,NULL,'Phường'),
	 (612,'7',NULL,NULL,NULL,'Phường'),
	 (612,'Hoả Lựu',NULL,NULL,NULL,'Xã'),
	 (612,'Hoả Tiến',NULL,NULL,NULL,'Xã'),
	 (612,'Tân Tiến',NULL,NULL,NULL,'Xã'),
	 (612,'Vị Tân',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (613,'Nàng Mau',NULL,NULL,NULL,'Thị trấn'),
	 (613,'Vị Bình',NULL,NULL,NULL,'Xã'),
	 (613,'Vị Đông',NULL,NULL,NULL,'Xã'),
	 (613,'Vị Thắng',NULL,NULL,NULL,'Xã'),
	 (613,'Vị Thanh',NULL,NULL,NULL,'Xã'),
	 (613,'Vị Thủy',NULL,NULL,NULL,'Xã'),
	 (613,'Vị Trung',NULL,NULL,NULL,'Xã'),
	 (613,'Vĩnh Thuận Tây',NULL,NULL,NULL,'Xã'),
	 (613,'Vĩnh Trung',NULL,NULL,NULL,'Xã'),
	 (613,'Vĩnh Tường',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (614,'Bắc Yên',NULL,NULL,NULL,'Thị trấn'),
	 (614,'Chiềng Sại',NULL,NULL,NULL,'Xã'),
	 (614,'Chim Vàn',NULL,NULL,NULL,'Xã'),
	 (614,'Hang Chú',NULL,NULL,NULL,'Xã'),
	 (614,'Háng Đồng',NULL,NULL,NULL,'Xã'),
	 (614,'Hồng Ngài',NULL,NULL,NULL,'Xã'),
	 (614,'Hua Nhàn',NULL,NULL,NULL,'Xã'),
	 (614,'Làng Chếu',NULL,NULL,NULL,'Xã'),
	 (614,'Mường Khoa',NULL,NULL,NULL,'Xã'),
	 (614,'Pắc Ngà',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (614,'Phiêng Ban',NULL,NULL,NULL,'Xã'),
	 (614,'Phiêng Côn',NULL,NULL,NULL,'Xã'),
	 (614,'Song Pe',NULL,NULL,NULL,'Xã'),
	 (614,'Tạ Khoa',NULL,NULL,NULL,'Xã'),
	 (614,'Tà Xùa',NULL,NULL,NULL,'Xã'),
	 (614,'Xím Vàng',NULL,NULL,NULL,'Xã'),
	 (615,'Chiềng Ban',NULL,NULL,NULL,'Xã'),
	 (615,'Chiềng Chăn',NULL,NULL,NULL,'Xã'),
	 (615,'Chiềng Chung',NULL,NULL,NULL,'Xã'),
	 (615,'Chiềng Dong',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (615,'Chiềng Kheo',NULL,NULL,NULL,'Xã'),
	 (615,'Chiềng Lương',NULL,NULL,NULL,'Xã'),
	 (615,'Chiềng Mai',NULL,NULL,NULL,'Xã'),
	 (615,'Chiềng Mung',NULL,NULL,NULL,'Xã'),
	 (615,'Chiềng Nơi',NULL,NULL,NULL,'Xã'),
	 (615,'Chiềng Sung',NULL,NULL,NULL,'Xã'),
	 (615,'Chiềng Ve',NULL,NULL,NULL,'Xã'),
	 (615,'Cò Nòi',NULL,NULL,NULL,'Xã'),
	 (615,'Hát Lót',NULL,NULL,NULL,'Thị trấn'),
	 (615,'Mường Bằng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (615,'Mường Bon',NULL,NULL,NULL,'Xã'),
	 (615,'Mường Tranh',NULL,NULL,NULL,'Xã'),
	 (615,'Nà Bó',NULL,NULL,NULL,'Xã'),
	 (615,'Nà Ớt',NULL,NULL,NULL,'Xã'),
	 (615,'Phiêng Cằm',NULL,NULL,NULL,'Xã'),
	 (615,'Phiêng Pằn',NULL,NULL,NULL,'Xã'),
	 (615,'Tà Hộc',NULL,NULL,NULL,'Xã'),
	 (615,'Xã Hát Lót',NULL,NULL,NULL,'Xã'),
	 (616,'Chiềng Hắc',NULL,NULL,NULL,'Xã'),
	 (616,'Chiềng Khừa',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (616,'Chiềng Sơn',NULL,NULL,NULL,'Xã'),
	 (616,'Đông Sang',NULL,NULL,NULL,'Xã'),
	 (616,'Hua Păng',NULL,NULL,NULL,'Xã'),
	 (616,'Lóng Sập',NULL,NULL,NULL,'Xã'),
	 (616,'Mộc Châu',NULL,NULL,NULL,'Thị trấn'),
	 (616,'Mường Sang',NULL,NULL,NULL,'Xã'),
	 (616,'Nà Mường',NULL,NULL,NULL,'Xã'),
	 (616,'Nông trường Mộc Châu',NULL,NULL,NULL,'Thị trấn'),
	 (616,'Phiêng Luông',NULL,NULL,NULL,'Xã'),
	 (616,'Quy Hướng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (616,'Tà Lại',NULL,NULL,NULL,'Xã'),
	 (616,'Tân Hợp',NULL,NULL,NULL,'Xã'),
	 (616,'Tân Lập',NULL,NULL,NULL,'Xã'),
	 (617,'Chiềng Ân',NULL,NULL,NULL,'Xã'),
	 (617,'Chiềng Công',NULL,NULL,NULL,'Xã'),
	 (617,'Chiềng Hoa',NULL,NULL,NULL,'Xã'),
	 (617,'Chiềng Lao',NULL,NULL,NULL,'Xã'),
	 (617,'Chiềng Muôn',NULL,NULL,NULL,'Xã'),
	 (617,'Chiềng San',NULL,NULL,NULL,'Xã'),
	 (617,'Hua Trai',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (617,'Ít Ong',NULL,NULL,NULL,'Thị trấn'),
	 (617,'Mường Bú',NULL,NULL,NULL,'Xã'),
	 (617,'Mường Chùm',NULL,NULL,NULL,'Xã'),
	 (617,'Mường Trai',NULL,NULL,NULL,'Xã'),
	 (617,'Nậm Giôn',NULL,NULL,NULL,'Xã'),
	 (617,'Nậm Păm',NULL,NULL,NULL,'Xã'),
	 (617,'Ngọc Chiến',NULL,NULL,NULL,'Xã'),
	 (617,'Pi Toong',NULL,NULL,NULL,'Xã'),
	 (617,'Tạ Bú',NULL,NULL,NULL,'Xã'),
	 (618,'Bắc Phong',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (618,'Đá Đỏ',NULL,NULL,NULL,'Xã'),
	 (618,'Gia Phù',NULL,NULL,NULL,'Xã'),
	 (618,'Huy Bắc',NULL,NULL,NULL,'Xã'),
	 (618,'Huy Hạ',NULL,NULL,NULL,'Xã'),
	 (618,'Huy Tân',NULL,NULL,NULL,'Xã'),
	 (618,'Huy Thượng',NULL,NULL,NULL,'Xã'),
	 (618,'Huy Tường',NULL,NULL,NULL,'Xã'),
	 (618,'Kim Bon',NULL,NULL,NULL,'Xã'),
	 (618,'Mường Bang',NULL,NULL,NULL,'Xã'),
	 (618,'Mường Cơi',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (618,'Mường Do',NULL,NULL,NULL,'Xã'),
	 (618,'Mường Lang',NULL,NULL,NULL,'Xã'),
	 (618,'Mường Thải',NULL,NULL,NULL,'Xã'),
	 (618,'Nam Phong',NULL,NULL,NULL,'Xã'),
	 (618,'Phù Yên',NULL,NULL,NULL,'Thị trấn'),
	 (618,'Quang Huy',NULL,NULL,NULL,'Xã'),
	 (618,'Sập Sa',NULL,NULL,NULL,'Xã'),
	 (618,'Suối Bau',NULL,NULL,NULL,'Xã'),
	 (618,'Suối Tọ',NULL,NULL,NULL,'Xã'),
	 (618,'Tân Lang',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (618,'Tân Phong',NULL,NULL,NULL,'Xã'),
	 (618,'Tường Hạ',NULL,NULL,NULL,'Xã'),
	 (618,'Tường Phong',NULL,NULL,NULL,'Xã'),
	 (618,'Tường Phù',NULL,NULL,NULL,'Xã'),
	 (618,'Tường Thượng',NULL,NULL,NULL,'Xã'),
	 (618,'Tường Tiến',NULL,NULL,NULL,'Xã'),
	 (619,'Cà Nàng',NULL,NULL,NULL,'Xã'),
	 (619,'Chiềng Bằng',NULL,NULL,NULL,'Xã'),
	 (619,'Chiềng Khay',NULL,NULL,NULL,'Xã'),
	 (619,'Chiềng Khoang',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (619,'Chiềng Ơn',NULL,NULL,NULL,'Xã'),
	 (619,'Mường Chiên',NULL,NULL,NULL,'Xã'),
	 (619,'Mường Giàng',NULL,NULL,NULL,'Xã'),
	 (619,'Mường Giôn',NULL,NULL,NULL,'Xã'),
	 (619,'Mường Sại',NULL,NULL,NULL,'Xã'),
	 (619,'Nậm Ét',NULL,NULL,NULL,'Xã'),
	 (619,'Pá Ma Pha Khinh',NULL,NULL,NULL,'Xã'),
	 (620,'Chiềng An',NULL,NULL,NULL,'Phường'),
	 (620,'Chiềng Cọ',NULL,NULL,NULL,'Xã'),
	 (620,'Chiềng Cơi',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (620,'Chiềng Đen',NULL,NULL,NULL,'Xã'),
	 (620,'Chiềng Lề',NULL,NULL,NULL,'Phường'),
	 (620,'Chiềng Ngần',NULL,NULL,NULL,'Xã'),
	 (620,'Chiềng Sinh',NULL,NULL,NULL,'Phường'),
	 (620,'Chiềng Xôm',NULL,NULL,NULL,'Xã'),
	 (620,'Hua La',NULL,NULL,NULL,'Xã'),
	 (620,'Quyết Tâm',NULL,NULL,NULL,'Phường'),
	 (620,'Quyết Thắng',NULL,NULL,NULL,'Phường'),
	 (620,'Tô Hiệu',NULL,NULL,NULL,'Phường'),
	 (621,'Bó Sinh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (621,'Chiềng Cang',NULL,NULL,NULL,'Xã'),
	 (621,'Chiềng En',NULL,NULL,NULL,'Xã'),
	 (621,'Chiềng Khoong',NULL,NULL,NULL,'Xã'),
	 (621,'Chiềng Khương',NULL,NULL,NULL,'Xã'),
	 (621,'Chiềng Phung',NULL,NULL,NULL,'Xã'),
	 (621,'Chiềng Sơ',NULL,NULL,NULL,'Xã'),
	 (621,'Đứa Mòn',NULL,NULL,NULL,'Xã'),
	 (621,'Huổi Một',NULL,NULL,NULL,'Xã'),
	 (621,'Mường Cai',NULL,NULL,NULL,'Xã'),
	 (621,'Mường Hung',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (621,'Mường Lầm',NULL,NULL,NULL,'Xã'),
	 (621,'Mường Sai',NULL,NULL,NULL,'Xã'),
	 (621,'Nà Nghịu',NULL,NULL,NULL,'Xã'),
	 (621,'Nậm Mằn',NULL,NULL,NULL,'Xã'),
	 (621,'Nậm Ty',NULL,NULL,NULL,'Xã'),
	 (621,'Pú Pẩu',NULL,NULL,NULL,'Xã'),
	 (621,'Sông Mã',NULL,NULL,NULL,'Thị trấn'),
	 (621,'Yên Hưng',NULL,NULL,NULL,'Xã'),
	 (622,'Dồm Cang',NULL,NULL,NULL,'Xã'),
	 (622,'Mường Lạn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (622,'Mường Lèo',NULL,NULL,NULL,'Xã'),
	 (622,'Mường Và',NULL,NULL,NULL,'Xã'),
	 (622,'Nậm Lạnh',NULL,NULL,NULL,'Xã'),
	 (622,'Púng Bánh',NULL,NULL,NULL,'Xã'),
	 (622,'Sam Kha',NULL,NULL,NULL,'Xã'),
	 (622,'Sốp Cộp',NULL,NULL,NULL,'Xã'),
	 (623,'Bản Lầm',NULL,NULL,NULL,'Xã'),
	 (623,'Bó Mười',NULL,NULL,NULL,'Xã'),
	 (623,'Bon Phặng',NULL,NULL,NULL,'Xã'),
	 (623,'Chiềng Bôm',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (623,'Chiềng La',NULL,NULL,NULL,'Xã'),
	 (623,'Chiềng Ly',NULL,NULL,NULL,'Xã'),
	 (623,'Chiềng Ngàm',NULL,NULL,NULL,'Xã'),
	 (623,'Chiềng Pấc',NULL,NULL,NULL,'Xã'),
	 (623,'Chiềng Pha',NULL,NULL,NULL,'Xã'),
	 (623,'Co Mạ',NULL,NULL,NULL,'Xã'),
	 (623,'Co Tòng',NULL,NULL,NULL,'Xã'),
	 (623,'É Tòng',NULL,NULL,NULL,'Xã'),
	 (623,'Liệp Tè',NULL,NULL,NULL,'Xã'),
	 (623,'Long Hẹ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (623,'Muổi Nọi',NULL,NULL,NULL,'Xã'),
	 (623,'Mường Bám',NULL,NULL,NULL,'Xã'),
	 (623,'Mường É',NULL,NULL,NULL,'Xã'),
	 (623,'Mường Khiêng',NULL,NULL,NULL,'Xã'),
	 (623,'Nậm Lầu',NULL,NULL,NULL,'Xã'),
	 (623,'Nong Lay',NULL,NULL,NULL,'Xã'),
	 (623,'Pá Lông',NULL,NULL,NULL,'Xã'),
	 (623,'Phổng Lái',NULL,NULL,NULL,'Xã'),
	 (623,'Phổng Lặng',NULL,NULL,NULL,'Xã'),
	 (623,'Phỏng Lập',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (623,'Púng Tra',NULL,NULL,NULL,'Xã'),
	 (623,'Thôm Mòn',NULL,NULL,NULL,'Xã'),
	 (623,'Thuận Châu',NULL,NULL,NULL,'Thị trấn'),
	 (623,'Tông Cọ',NULL,NULL,NULL,'Xã'),
	 (623,'Tông Lệnh',NULL,NULL,NULL,'Xã'),
	 (624,'Chiềng Khoa',NULL,NULL,NULL,'Xã'),
	 (624,'Chiềng Xuân',NULL,NULL,NULL,'Xã'),
	 (624,'Chiềng Yên',NULL,NULL,NULL,'Xã'),
	 (624,'Liên Hòa',NULL,NULL,NULL,'Xã'),
	 (624,'Lóng Luông',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (624,'Mường Men',NULL,NULL,NULL,'Xã'),
	 (624,'Mường Tè',NULL,NULL,NULL,'Xã'),
	 (624,'Quang Minh',NULL,NULL,NULL,'Xã'),
	 (624,'Song Khủa',NULL,NULL,NULL,'Xã'),
	 (624,'Suối Bảng',NULL,NULL,NULL,'Xã'),
	 (624,'Tân Xuân',NULL,NULL,NULL,'Xã'),
	 (624,'Tô Múa',NULL,NULL,NULL,'Xã'),
	 (624,'Vân Hồ',NULL,NULL,NULL,'Xã'),
	 (624,'Xuân Nha',NULL,NULL,NULL,'Xã'),
	 (625,'Chiềng Đông',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (625,'Chiềng Hặc',NULL,NULL,NULL,'Xã'),
	 (625,'Chiềng Khoi',NULL,NULL,NULL,'Xã'),
	 (625,'Chiềng On',NULL,NULL,NULL,'Xã'),
	 (625,'Chiềng Pằn',NULL,NULL,NULL,'Xã'),
	 (625,'Chiềng Sàng',NULL,NULL,NULL,'Xã'),
	 (625,'Chiềng Tương',NULL,NULL,NULL,'Xã'),
	 (625,'Lóng Phiêng',NULL,NULL,NULL,'Xã'),
	 (625,'Mường Lựm',NULL,NULL,NULL,'Xã'),
	 (625,'Phiêng Khoài',NULL,NULL,NULL,'Xã'),
	 (625,'Sập Vạt',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (625,'Tú Nang',NULL,NULL,NULL,'Xã'),
	 (625,'Viêng Lán',NULL,NULL,NULL,'Xã'),
	 (625,'Yên Châu',NULL,NULL,NULL,'Thị trấn'),
	 (625,'Yên Sơn',NULL,NULL,NULL,'Xã'),
	 (626,'1',NULL,NULL,NULL,'Phường'),
	 (626,'2',NULL,NULL,NULL,'Phường'),
	 (626,'3',NULL,NULL,NULL,'Phường'),
	 (626,'4',NULL,NULL,NULL,'Phường'),
	 (626,'5',NULL,NULL,NULL,'Phường'),
	 (626,'7',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (626,'8',NULL,NULL,NULL,'Phường'),
	 (626,'Hiệp Thành',NULL,NULL,NULL,'Xã'),
	 (626,'Nhà Mát',NULL,NULL,NULL,'Phường'),
	 (626,'Nhà Mát',NULL,NULL,NULL,'Phường'),
	 (626,'Vĩnh Trạch',NULL,NULL,NULL,'Xã'),
	 (626,'Vĩnh Trạch Đông',NULL,NULL,NULL,'Xã'),
	 (627,'An Phúc',NULL,NULL,NULL,'Xã'),
	 (627,'An Trạch',NULL,NULL,NULL,'Xã'),
	 (627,'An Trạch A',NULL,NULL,NULL,'Xã'),
	 (627,'Điền Hải',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (627,'Định Thành',NULL,NULL,NULL,'Xã'),
	 (627,'Định Thành A',NULL,NULL,NULL,'Xã'),
	 (627,'Gành Hào',NULL,NULL,NULL,'Thị trấn'),
	 (627,'Long Điền',NULL,NULL,NULL,'Xã'),
	 (627,'Long Điền Đông',NULL,NULL,NULL,'Xã'),
	 (627,'Long Điền Đông A',NULL,NULL,NULL,'Xã'),
	 (627,'Long Điền Tây',NULL,NULL,NULL,'Xã'),
	 (628,'Giá Rai',NULL,NULL,NULL,'Thị trấn'),
	 (628,'Hộ Phòng',NULL,NULL,NULL,'Thị trấn'),
	 (628,'Láng Tròn',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (628,'Phong Tân',NULL,NULL,NULL,'Xã'),
	 (628,'Phong Thạnh',NULL,NULL,NULL,'Xã'),
	 (628,'Phong Thạnh A',NULL,NULL,NULL,'Xã'),
	 (628,'Phong Thạnh Đông',NULL,NULL,NULL,'Xã'),
	 (628,'Phong Thạnh Đông A',NULL,NULL,NULL,'Xã'),
	 (628,'Phong Thạnh Tây',NULL,NULL,NULL,'Xã'),
	 (628,'Tân Phong',NULL,NULL,NULL,'Xã'),
	 (628,'Tân Thạnh',NULL,NULL,NULL,'Xã'),
	 (629,'Hoà Bình',NULL,NULL,NULL,'Thị trấn'),
	 (629,'Minh Diệu',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (629,'Vĩnh Bình',NULL,NULL,NULL,'Xã'),
	 (629,'Vĩnh Hậu',NULL,NULL,NULL,'Xã'),
	 (629,'Vĩnh Hậu A',NULL,NULL,NULL,'Xã'),
	 (629,'Vĩnh Mỹ A',NULL,NULL,NULL,'Xã'),
	 (629,'Vĩnh Mỹ B',NULL,NULL,NULL,'Xã'),
	 (629,'Vĩnh Thịnh',NULL,NULL,NULL,'Xã'),
	 (630,'Lộc Ninh',NULL,NULL,NULL,'Xã'),
	 (630,'Ngan Dừa',NULL,NULL,NULL,'Thị trấn'),
	 (630,'Ninh Hòa',NULL,NULL,NULL,'Xã'),
	 (630,'Ninh Quới',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (630,'Ninh Quới A',NULL,NULL,NULL,'Xã'),
	 (630,'Ninh Thạnh Lợi',NULL,NULL,NULL,'Xã'),
	 (630,'Ninh Thạnh Lợi A',NULL,NULL,NULL,'Xã'),
	 (630,'Vĩnh Lộc',NULL,NULL,NULL,'Xã'),
	 (630,'Vĩnh Lộc A',NULL,NULL,NULL,'Xã'),
	 (631,'Hưng Phú',NULL,NULL,NULL,'Xã'),
	 (631,'Phong Thạnh Tây A',NULL,NULL,NULL,'Xã'),
	 (631,'Phong Thạnh Tây B',NULL,NULL,NULL,'Xã'),
	 (631,'Phước Long',NULL,NULL,NULL,'Thị trấn'),
	 (631,'Phước Long',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (631,'Vĩnh Phú Đông',NULL,NULL,NULL,'Xã'),
	 (631,'Vĩnh Phú Tây',NULL,NULL,NULL,'Xã'),
	 (631,'Vĩnh Thanh',NULL,NULL,NULL,'Xã'),
	 (632,'Châu Hưng',NULL,NULL,NULL,'Thị trấn'),
	 (632,'Châu Hưng A',NULL,NULL,NULL,'Xã'),
	 (632,'Châu Thới',NULL,NULL,NULL,'Xã'),
	 (632,'Hưng Hội',NULL,NULL,NULL,'Xã'),
	 (632,'Hưng Thành',NULL,NULL,NULL,'Xã'),
	 (632,'Long Thạnh',NULL,NULL,NULL,'Xã'),
	 (632,'Vĩnh Hưng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (632,'Vĩnh Hưng A',NULL,NULL,NULL,'Xã'),
	 (633,'An Lạc',NULL,NULL,NULL,'Xã'),
	 (633,'An Phú',NULL,NULL,NULL,'Xã'),
	 (633,'Động Quan',NULL,NULL,NULL,'Xã'),
	 (633,'Khai Trung',NULL,NULL,NULL,'Xã'),
	 (633,'Khánh Hòa',NULL,NULL,NULL,'Xã'),
	 (633,'Khánh Thiện',NULL,NULL,NULL,'Xã'),
	 (633,'Lâm Thượng',NULL,NULL,NULL,'Xã'),
	 (633,'Liễu Đô',NULL,NULL,NULL,'Xã'),
	 (633,'Mai Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (633,'Minh Chuẩn',NULL,NULL,NULL,'Xã'),
	 (633,'Minh Tiến',NULL,NULL,NULL,'Xã'),
	 (633,'Minh Xuân',NULL,NULL,NULL,'Xã'),
	 (633,'Mường Lai',NULL,NULL,NULL,'Xã'),
	 (633,'Phan Thanh',NULL,NULL,NULL,'Xã'),
	 (633,'Phúc Lợi',NULL,NULL,NULL,'Xã'),
	 (633,'Tân Lập',NULL,NULL,NULL,'Xã'),
	 (633,'Tân Lĩnh',NULL,NULL,NULL,'Xã'),
	 (633,'Tân Phượng',NULL,NULL,NULL,'Xã'),
	 (633,'Tô Mậu',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (633,'Trúc Lâu',NULL,NULL,NULL,'Xã'),
	 (633,'Trung Tâm',NULL,NULL,NULL,'Xã'),
	 (633,'Vĩnh Lạc',NULL,NULL,NULL,'Xã'),
	 (633,'Yên Thắng',NULL,NULL,NULL,'Xã'),
	 (633,'Yên Thế',NULL,NULL,NULL,'Thị trấn'),
	 (634,'Cao Phạ',NULL,NULL,NULL,'Xã'),
	 (634,'Chế Cu Nha',NULL,NULL,NULL,'Xã'),
	 (634,'Chế Tạo',NULL,NULL,NULL,'Xã'),
	 (634,'Dế Xu Phình',NULL,NULL,NULL,'Xã'),
	 (634,'Hồ Bốn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (634,'Khao Mang',NULL,NULL,NULL,'Xã'),
	 (634,'Kim Nọi',NULL,NULL,NULL,'Xã'),
	 (634,'La Pán Tẩn',NULL,NULL,NULL,'Xã'),
	 (634,'Lao Chải',NULL,NULL,NULL,'Xã'),
	 (634,'Mồ Dề',NULL,NULL,NULL,'Xã'),
	 (634,'Mù Cang Chải',NULL,NULL,NULL,'Thị trấn'),
	 (634,'Nậm Có',NULL,NULL,NULL,'Xã'),
	 (634,'Nậm Khắt',NULL,NULL,NULL,'Xã'),
	 (634,'Púng Luông',NULL,NULL,NULL,'Xã'),
	 (635,'Cầu Thia',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (635,'Nghĩa An',NULL,NULL,NULL,'Xã'),
	 (635,'Nghĩa Lợi',NULL,NULL,NULL,'Xã'),
	 (635,'Nghĩa Phúc',NULL,NULL,NULL,'Xã'),
	 (635,'Pú Trạng',NULL,NULL,NULL,'Phường'),
	 (635,'Tân An',NULL,NULL,NULL,'Phường'),
	 (635,'Trung Tâm',NULL,NULL,NULL,'Phường'),
	 (636,'Bản Công',NULL,NULL,NULL,'Xã'),
	 (636,'Bản Mù',NULL,NULL,NULL,'Xã'),
	 (636,'Hát Lừu',NULL,NULL,NULL,'Xã'),
	 (636,'Làng Nhì',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (636,'Pá Hu',NULL,NULL,NULL,'Xã'),
	 (636,'Pá Lau',NULL,NULL,NULL,'Xã'),
	 (636,'Phình Hồ',NULL,NULL,NULL,'Xã'),
	 (636,'Tà Si Láng',NULL,NULL,NULL,'Xã'),
	 (636,'Trạm Tấu',NULL,NULL,NULL,'Thị trấn'),
	 (636,'Trạm Tấu',NULL,NULL,NULL,'Xã'),
	 (636,'Túc Đán',NULL,NULL,NULL,'Xã'),
	 (636,'Xà Hồ',NULL,NULL,NULL,'Xã'),
	 (637,'Báo Đáp',NULL,NULL,NULL,'Xã'),
	 (637,'Bảo Hưng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (637,'Cổ Phúc',NULL,NULL,NULL,'Thị trấn'),
	 (637,'Cường Thịnh',NULL,NULL,NULL,'Xã'),
	 (637,'Đào Thịnh',NULL,NULL,NULL,'Xã'),
	 (637,'Hòa Cuông',NULL,NULL,NULL,'Xã'),
	 (637,'Hồng Ca',NULL,NULL,NULL,'Xã'),
	 (637,'Hưng Khánh',NULL,NULL,NULL,'Xã'),
	 (637,'Hưng Thịnh',NULL,NULL,NULL,'Xã'),
	 (637,'Kiên Thành',NULL,NULL,NULL,'Xã'),
	 (637,'Lương Thịnh',NULL,NULL,NULL,'Xã'),
	 (637,'Minh Quán',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (637,'Minh Quân',NULL,NULL,NULL,'Xã'),
	 (637,'Minh Tiến',NULL,NULL,NULL,'Xã'),
	 (637,'Nga Quán',NULL,NULL,NULL,'Xã'),
	 (637,'Quy Mông',NULL,NULL,NULL,'Xã'),
	 (637,'Tân Đồng',NULL,NULL,NULL,'Xã'),
	 (637,'Vân Hội',NULL,NULL,NULL,'Xã'),
	 (637,'Việt Cường',NULL,NULL,NULL,'Xã'),
	 (637,'Việt Hồng',NULL,NULL,NULL,'Xã'),
	 (637,'Việt Thành',NULL,NULL,NULL,'Xã'),
	 (637,'Y Can',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (638,'An Lương',NULL,NULL,NULL,'Xã'),
	 (638,'Bình Thuận',NULL,NULL,NULL,'Xã'),
	 (638,'Cát Thịnh',NULL,NULL,NULL,'Xã'),
	 (638,'Chấn Thịnh',NULL,NULL,NULL,'Xã'),
	 (638,'Đại Lịch',NULL,NULL,NULL,'Xã'),
	 (638,'Đồng Khê',NULL,NULL,NULL,'Xã'),
	 (638,'Gia Hội',NULL,NULL,NULL,'Xã'),
	 (638,'Hạnh Sơn',NULL,NULL,NULL,'Xã'),
	 (638,'Minh An',NULL,NULL,NULL,'Xã'),
	 (638,'Nậm Búng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (638,'Nậm Lành',NULL,NULL,NULL,'Xã'),
	 (638,'Nậm Mười',NULL,NULL,NULL,'Xã'),
	 (638,'Nghĩa Sơn',NULL,NULL,NULL,'Xã'),
	 (638,'Nghĩa Tâm',NULL,NULL,NULL,'Xã'),
	 (638,'Nông trường Liên Sơn',NULL,NULL,NULL,'Thị trấn'),
	 (638,'Nông trường Nghĩa Lộ',NULL,NULL,NULL,'Thị trấn'),
	 (638,'Nông trường Trần Phú',NULL,NULL,NULL,'Thị trấn'),
	 (638,'Phù Nham',NULL,NULL,NULL,'Xã'),
	 (638,'Phúc Sơn',NULL,NULL,NULL,'Xã'),
	 (638,'Sơn A',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (638,'Sơn Lương',NULL,NULL,NULL,'Xã'),
	 (638,'Sơn Thịnh',NULL,NULL,NULL,'Xã'),
	 (638,'Sùng Đô',NULL,NULL,NULL,'Xã'),
	 (638,'Suối Bu',NULL,NULL,NULL,'Xã'),
	 (638,'Suối Giàng',NULL,NULL,NULL,'Xã'),
	 (638,'Suối Quyền',NULL,NULL,NULL,'Xã'),
	 (638,'Tân Thịnh',NULL,NULL,NULL,'Xã'),
	 (638,'Thạch Lương',NULL,NULL,NULL,'Xã'),
	 (638,'Thanh Lương',NULL,NULL,NULL,'Xã'),
	 (638,'Thượng Bằng La',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (638,'Tú Lệ',NULL,NULL,NULL,'Xã'),
	 (639,'An Bình',NULL,NULL,NULL,'Xã'),
	 (639,'An Thịnh',NULL,NULL,NULL,'Xã'),
	 (639,'Châu Quế Hạ',NULL,NULL,NULL,'Xã'),
	 (639,'Châu Quế Thượng',NULL,NULL,NULL,'Xã'),
	 (639,'Đại Phác',NULL,NULL,NULL,'Xã'),
	 (639,'Đại Sơn',NULL,NULL,NULL,'Xã'),
	 (639,'Đông An',NULL,NULL,NULL,'Xã'),
	 (639,'Đông Cuông',NULL,NULL,NULL,'Xã'),
	 (639,'Hoàng Thắng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (639,'Lâm Giang',NULL,NULL,NULL,'Xã'),
	 (639,'Lang Thíp',NULL,NULL,NULL,'Xã'),
	 (639,'Mậu A',NULL,NULL,NULL,'Thị trấn'),
	 (639,'Mậu Đông',NULL,NULL,NULL,'Xã'),
	 (639,'Mỏ Vàng',NULL,NULL,NULL,'Xã'),
	 (639,'Nà Hẩu',NULL,NULL,NULL,'Xã'),
	 (639,'Ngòi A',NULL,NULL,NULL,'Xã'),
	 (639,'Phong Dụ Hạ',NULL,NULL,NULL,'Xã'),
	 (639,'Phong Dụ Thượng',NULL,NULL,NULL,'Xã'),
	 (639,'Quang Minh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (639,'Tân Hợp',NULL,NULL,NULL,'Xã'),
	 (639,'Viễn Sơn',NULL,NULL,NULL,'Xã'),
	 (639,'Xuân Ái',NULL,NULL,NULL,'Xã'),
	 (639,'Xuân Tầm',NULL,NULL,NULL,'Xã'),
	 (639,'Yên Hợp',NULL,NULL,NULL,'Xã'),
	 (639,'Yên Hưng',NULL,NULL,NULL,'Xã'),
	 (639,'Yên Phú',NULL,NULL,NULL,'Xã'),
	 (639,'Yên Thái',NULL,NULL,NULL,'Xã'),
	 (640,'Âu Lâu',NULL,NULL,NULL,'Xã'),
	 (640,'Đồng Tâm',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (640,'Giới Phiên',NULL,NULL,NULL,'Xã'),
	 (640,'Hồng Hà',NULL,NULL,NULL,'Phường'),
	 (640,'Hợp Minh',NULL,NULL,NULL,'Xã'),
	 (640,'Minh Bảo',NULL,NULL,NULL,'Xã'),
	 (640,'Minh Tân',NULL,NULL,NULL,'Phường'),
	 (640,'Nam Cường',NULL,NULL,NULL,'Xã'),
	 (640,'Nguyễn Phúc',NULL,NULL,NULL,'Phường'),
	 (640,'Nguyễn Thái Học',NULL,NULL,NULL,'Phường'),
	 (640,'Phúc Lộc',NULL,NULL,NULL,'Xã'),
	 (640,'Tân Thịnh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (640,'Tuy Lộc',NULL,NULL,NULL,'Xã'),
	 (640,'Văn Phú',NULL,NULL,NULL,'Xã'),
	 (640,'Văn Tiến',NULL,NULL,NULL,'Xã'),
	 (640,'Yên Ninh',NULL,NULL,NULL,'Phường'),
	 (640,'Yên Thịnh',NULL,NULL,NULL,'Phường'),
	 (641,'Bạch Hà',NULL,NULL,NULL,'Xã'),
	 (641,'Bảo Ái',NULL,NULL,NULL,'Xã'),
	 (641,'Cảm Ân',NULL,NULL,NULL,'Xã'),
	 (641,'Cẩm Nhân',NULL,NULL,NULL,'Xã'),
	 (641,'Đại Đồng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (641,'Đại Minh',NULL,NULL,NULL,'Xã'),
	 (641,'Hán Đà',NULL,NULL,NULL,'Xã'),
	 (641,'Mông Sơn',NULL,NULL,NULL,'Xã'),
	 (641,'Mỹ Gia',NULL,NULL,NULL,'Xã'),
	 (641,'Ngọc Chấn',NULL,NULL,NULL,'Xã'),
	 (641,'Phú Thịnh',NULL,NULL,NULL,'Xã'),
	 (641,'Phúc An',NULL,NULL,NULL,'Xã'),
	 (641,'Phúc Ninh',NULL,NULL,NULL,'Xã'),
	 (641,'Tân Hương',NULL,NULL,NULL,'Xã'),
	 (641,'Tân Nguyên',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (641,'Thác Bà',NULL,NULL,NULL,'Thị trấn'),
	 (641,'Thịnh Hưng',NULL,NULL,NULL,'Xã'),
	 (641,'Tích Cốc',NULL,NULL,NULL,'Xã'),
	 (641,'Văn Lãng',NULL,NULL,NULL,'Xã'),
	 (641,'Vĩnh Kiên',NULL,NULL,NULL,'Xã'),
	 (641,'Vũ Linh',NULL,NULL,NULL,'Xã'),
	 (641,'Xuân Lai',NULL,NULL,NULL,'Xã'),
	 (641,'Xuân Long',NULL,NULL,NULL,'Xã'),
	 (641,'Yên Bình',NULL,NULL,NULL,'Thị trấn'),
	 (641,'Yên Bình',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (641,'Yên Thành',NULL,NULL,NULL,'Xã'),
	 (642,'Bình Nhân',NULL,NULL,NULL,'Xã'),
	 (642,'Bình Phú',NULL,NULL,NULL,'Xã'),
	 (642,'Hà Lang',NULL,NULL,NULL,'Xã'),
	 (642,'Hòa An',NULL,NULL,NULL,'Xã'),
	 (642,'Hòa Phú',NULL,NULL,NULL,'Xã'),
	 (642,'Hùng Mỹ',NULL,NULL,NULL,'Xã'),
	 (642,'Kiên Đài',NULL,NULL,NULL,'Xã'),
	 (642,'Kim Bình',NULL,NULL,NULL,'Xã'),
	 (642,'Linh Phú',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (642,'Minh Quang',NULL,NULL,NULL,'Xã'),
	 (642,'Ngọc Hội',NULL,NULL,NULL,'Xã'),
	 (642,'Nhân Lý',NULL,NULL,NULL,'Xã'),
	 (642,'Phú Bình',NULL,NULL,NULL,'Xã'),
	 (642,'Phúc Sơn',NULL,NULL,NULL,'Xã'),
	 (642,'Phúc Thịnh',NULL,NULL,NULL,'Xã'),
	 (642,'Tân An',NULL,NULL,NULL,'Xã'),
	 (642,'Tân Mỹ',NULL,NULL,NULL,'Xã'),
	 (642,'Tân Thịnh',NULL,NULL,NULL,'Xã'),
	 (642,'Tri Phú',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (642,'Trung Hà',NULL,NULL,NULL,'Xã'),
	 (642,'Trung Hòa',NULL,NULL,NULL,'Xã'),
	 (642,'Vĩnh Lộc',NULL,NULL,NULL,'Thị trấn'),
	 (642,'Vinh Quang',NULL,NULL,NULL,'Xã'),
	 (642,'Xuân Quang',NULL,NULL,NULL,'Xã'),
	 (642,'Yên Lập',NULL,NULL,NULL,'Xã'),
	 (642,'Yên Nguyên',NULL,NULL,NULL,'Xã'),
	 (643,'Bạch Xa',NULL,NULL,NULL,'Xã'),
	 (643,'Bằng Cốc',NULL,NULL,NULL,'Xã'),
	 (643,'Bình Xa',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (643,'Đức Ninh',NULL,NULL,NULL,'Xã'),
	 (643,'Hùng Đức',NULL,NULL,NULL,'Xã'),
	 (643,'Minh Dân',NULL,NULL,NULL,'Xã'),
	 (643,'Minh Hương',NULL,NULL,NULL,'Xã'),
	 (643,'Minh Khương',NULL,NULL,NULL,'Xã'),
	 (643,'Nhân Mục',NULL,NULL,NULL,'Xã'),
	 (643,'Phù Lưu',NULL,NULL,NULL,'Xã'),
	 (643,'Tân Thành',NULL,NULL,NULL,'Xã'),
	 (643,'Tân Yên',NULL,NULL,NULL,'Thị trấn'),
	 (643,'Thái Hòa',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (643,'Thái Sơn',NULL,NULL,NULL,'Xã'),
	 (643,'Thành Long',NULL,NULL,NULL,'Xã'),
	 (643,'Yên Lâm',NULL,NULL,NULL,'Xã'),
	 (643,'Yên Phú',NULL,NULL,NULL,'Xã'),
	 (643,'Yên Thuận',NULL,NULL,NULL,'Xã'),
	 (644,'Bình An',NULL,NULL,NULL,'Xã'),
	 (644,'Hồng Quang',NULL,NULL,NULL,'Xã'),
	 (644,'Khuôn Hà',NULL,NULL,NULL,'Xã'),
	 (644,'Lăng Can',NULL,NULL,NULL,'Xã'),
	 (644,'Phúc Yên',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (644,'Thổ Bình',NULL,NULL,NULL,'Xã'),
	 (644,'Thượng Lâm',NULL,NULL,NULL,'Xã'),
	 (644,'Xuân Lập',NULL,NULL,NULL,'Xã'),
	 (645,'Côn Lôn',NULL,NULL,NULL,'Xã'),
	 (645,'Đà Vị',NULL,NULL,NULL,'Xã'),
	 (645,'Hồng Thái',NULL,NULL,NULL,'Xã'),
	 (645,'Khâu Tinh',NULL,NULL,NULL,'Xã'),
	 (645,'Na Hang',NULL,NULL,NULL,'Thị trấn'),
	 (645,'Năng Khả',NULL,NULL,NULL,'Xã'),
	 (645,'Sinh Long',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (645,'Sơn Phú',NULL,NULL,NULL,'Xã'),
	 (645,'Thanh Tương',NULL,NULL,NULL,'Xã'),
	 (645,'Thượng Giáp',NULL,NULL,NULL,'Xã'),
	 (645,'Thượng Nông',NULL,NULL,NULL,'Xã'),
	 (645,'Yên Hoa',NULL,NULL,NULL,'Xã'),
	 (646,'Bình Yên',NULL,NULL,NULL,'Xã'),
	 (646,'Cấp Tiến',NULL,NULL,NULL,'Xã'),
	 (646,'Chi Thiết',NULL,NULL,NULL,'Xã'),
	 (646,'Đại Phú',NULL,NULL,NULL,'Xã'),
	 (646,'Đông Lợi',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (646,'Đồng Quý',NULL,NULL,NULL,'Xã'),
	 (646,'Đông Thọ',NULL,NULL,NULL,'Xã'),
	 (646,'Hào Phú',NULL,NULL,NULL,'Xã'),
	 (646,'Hồng Lạc',NULL,NULL,NULL,'Xã'),
	 (646,'Hợp Hòa',NULL,NULL,NULL,'Xã'),
	 (646,'Hợp Thành',NULL,NULL,NULL,'Xã'),
	 (646,'Kháng Nhật',NULL,NULL,NULL,'Xã'),
	 (646,'Lâm Xuyên',NULL,NULL,NULL,'Xã'),
	 (646,'Lương Thiện',NULL,NULL,NULL,'Xã'),
	 (646,'Minh Thanh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (646,'Ninh Lai',NULL,NULL,NULL,'Xã'),
	 (646,'Phú Lương',NULL,NULL,NULL,'Xã'),
	 (646,'Phúc Ứng',NULL,NULL,NULL,'Xã'),
	 (646,'Quyết Thắng',NULL,NULL,NULL,'Xã'),
	 (646,'Sầm Dương',NULL,NULL,NULL,'Xã'),
	 (646,'Sơn Dương',NULL,NULL,NULL,'Thị trấn'),
	 (646,'Sơn Nam',NULL,NULL,NULL,'Xã'),
	 (646,'Tam Đa',NULL,NULL,NULL,'Xã'),
	 (646,'Tân Trào',NULL,NULL,NULL,'Xã'),
	 (646,'Thanh Phát',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (646,'Thiện Kế',NULL,NULL,NULL,'Xã'),
	 (646,'Thương Ấm',NULL,NULL,NULL,'Xã'),
	 (646,'Trung Yên',NULL,NULL,NULL,'Xã'),
	 (646,'Tú Thịnh',NULL,NULL,NULL,'Xã'),
	 (646,'Tuân Lộ',NULL,NULL,NULL,'Xã'),
	 (646,'Văn Phú',NULL,NULL,NULL,'Xã'),
	 (646,'Vân Sơn',NULL,NULL,NULL,'Xã'),
	 (646,'Vĩnh Lợi',NULL,NULL,NULL,'Xã'),
	 (647,'An Khang',NULL,NULL,NULL,'Xã'),
	 (647,'An Tường',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (647,'Đội Cấn',NULL,NULL,NULL,'Xã'),
	 (647,'Hưng Thành',NULL,NULL,NULL,'Phường'),
	 (647,'Lưỡng Vượng',NULL,NULL,NULL,'Xã'),
	 (647,'Minh Xuân',NULL,NULL,NULL,'Phường'),
	 (647,'Nông Tiến',NULL,NULL,NULL,'Phường'),
	 (647,'Phan Thiết',NULL,NULL,NULL,'Phường'),
	 (647,'Tân Binh',NULL,NULL,NULL,'Xã'),
	 (647,'Tân Hà',NULL,NULL,NULL,'Phường'),
	 (647,'Tân Quang',NULL,NULL,NULL,'Phường'),
	 (647,'Thái Long',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (647,'Tràng Đà',NULL,NULL,NULL,'Xã'),
	 (647,'Ỷ La',NULL,NULL,NULL,'Phường'),
	 (648,'Chân Sơn',NULL,NULL,NULL,'Xã'),
	 (648,'Chiêu Yên',NULL,NULL,NULL,'Xã'),
	 (648,'Công Đa',NULL,NULL,NULL,'Xã'),
	 (648,'Đạo Viện',NULL,NULL,NULL,'Xã'),
	 (648,'Đội Bình',NULL,NULL,NULL,'Xã'),
	 (648,'Hoàng Khai',NULL,NULL,NULL,'Xã'),
	 (648,'Hùng Lợi',NULL,NULL,NULL,'Xã'),
	 (648,'Kiến Thiết',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (648,'Kim Phú',NULL,NULL,NULL,'Xã'),
	 (648,'Kim Quan',NULL,NULL,NULL,'Xã'),
	 (648,'Lang Quán',NULL,NULL,NULL,'Xã'),
	 (648,'Lực Hành',NULL,NULL,NULL,'Xã'),
	 (648,'Mỹ Bằng',NULL,NULL,NULL,'Xã'),
	 (648,'Nhữ Hán',NULL,NULL,NULL,'Xã'),
	 (648,'Nhữ Khê',NULL,NULL,NULL,'Xã'),
	 (648,'Phú Lâm',NULL,NULL,NULL,'Xã'),
	 (648,'Phú Thịnh',NULL,NULL,NULL,'Xã'),
	 (648,'Phúc Ninh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (648,'Quý Quân',NULL,NULL,NULL,'Xã'),
	 (648,'Tân Bình',NULL,NULL,NULL,'Thị trấn'),
	 (648,'Tân Long',NULL,NULL,NULL,'Xã'),
	 (648,'Tân Tiến',NULL,NULL,NULL,'Xã'),
	 (648,'Thái Bình',NULL,NULL,NULL,'Xã'),
	 (648,'Thắng Quân',NULL,NULL,NULL,'Xã'),
	 (648,'Tiến Bộ',NULL,NULL,NULL,'Xã'),
	 (648,'Trung Minh',NULL,NULL,NULL,'Xã'),
	 (648,'Trung Môn',NULL,NULL,NULL,'Xã'),
	 (648,'Trung Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (648,'Trung Trực',NULL,NULL,NULL,'Xã'),
	 (648,'Tứ Quận',NULL,NULL,NULL,'Xã'),
	 (648,'Xuân Vân',NULL,NULL,NULL,'Xã'),
	 (649,'Hẹ Muông',NULL,NULL,NULL,'Xã'),
	 (649,'Hua Thanh',NULL,NULL,NULL,'Xã'),
	 (649,'Mường Lói',NULL,NULL,NULL,'Xã'),
	 (649,'Mường Nhà',NULL,NULL,NULL,'Xã'),
	 (649,'Mường Phăng',NULL,NULL,NULL,'Xã'),
	 (649,'Mường Pồn',NULL,NULL,NULL,'Xã'),
	 (649,'Nà Nhạn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (649,'Nà Tấu',NULL,NULL,NULL,'Xã'),
	 (649,'Na Tông',NULL,NULL,NULL,'Xã'),
	 (649,'Na Ư',NULL,NULL,NULL,'Xã'),
	 (649,'Noong Bua',NULL,NULL,NULL,'Phường'),
	 (649,'Noong Hẹt',NULL,NULL,NULL,'Xã'),
	 (649,'Noong Luống',NULL,NULL,NULL,'Xã'),
	 (649,'Núa Ngam',NULL,NULL,NULL,'Xã'),
	 (649,'Pá Khoang',NULL,NULL,NULL,'Xã'),
	 (649,'Pa Thơm',NULL,NULL,NULL,'Xã'),
	 (649,'Phu Luông',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (649,'Pom Lót',NULL,NULL,NULL,'Xã'),
	 (649,'Sam Mứn',NULL,NULL,NULL,'Xã'),
	 (649,'Thanh An',NULL,NULL,NULL,'Xã'),
	 (649,'Thanh Chăn',NULL,NULL,NULL,'Xã'),
	 (649,'Thanh Hưng',NULL,NULL,NULL,'Xã'),
	 (649,'Thanh Luông',NULL,NULL,NULL,'Xã'),
	 (649,'Thanh Nưa',NULL,NULL,NULL,'Xã'),
	 (649,'Thanh Xương',NULL,NULL,NULL,'Xã'),
	 (649,'Thanh Yên',NULL,NULL,NULL,'Xã'),
	 (650,'Chiềng Sơ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (650,'Điện Biên Đông',NULL,NULL,NULL,'Thị trấn'),
	 (650,'Háng Lìa',NULL,NULL,NULL,'Xã'),
	 (650,'Keo Lôm',NULL,NULL,NULL,'Xã'),
	 (650,'Luân Giới',NULL,NULL,NULL,'Xã'),
	 (650,'Mường Luân',NULL,NULL,NULL,'Xã'),
	 (650,'Na Son',NULL,NULL,NULL,'Xã'),
	 (650,'Nong U',NULL,NULL,NULL,'Xã'),
	 (650,'Phì Nhừ',NULL,NULL,NULL,'Xã'),
	 (650,'Phình Giàng',NULL,NULL,NULL,'Xã'),
	 (650,'Pú Hồng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (650,'Pú Nhi',NULL,NULL,NULL,'Xã'),
	 (650,'Tìa Dình',NULL,NULL,NULL,'Xã'),
	 (650,'Xa Dung',NULL,NULL,NULL,'Xã'),
	 (651,'Him Lam',NULL,NULL,NULL,'Phường'),
	 (651,'Mường Thanh',NULL,NULL,NULL,'Phường'),
	 (651,'Nam Thanh',NULL,NULL,NULL,'Phường'),
	 (651,'Noong Bua',NULL,NULL,NULL,'Phường'),
	 (651,'Tà Lèng',NULL,NULL,NULL,'Xã'),
	 (651,'Tân Thanh',NULL,NULL,NULL,'Phường'),
	 (651,'Thanh Bình',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (651,'Thanh Minh',NULL,NULL,NULL,'Xã'),
	 (651,'Thanh Trường',NULL,NULL,NULL,'Phường'),
	 (652,'Ẳng Cang',NULL,NULL,NULL,'Xã'),
	 (652,'Ẳng Nưa',NULL,NULL,NULL,'Xã'),
	 (652,'Ẳng Tở',NULL,NULL,NULL,'Xã'),
	 (652,'Búng Lao',NULL,NULL,NULL,'Xã'),
	 (652,'Mường Ảng',NULL,NULL,NULL,'Thị trấn'),
	 (652,'Mường Đăng',NULL,NULL,NULL,'Xã'),
	 (652,'Mường Lạn',NULL,NULL,NULL,'Xã'),
	 (652,'Nặm Lịch',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (652,'Ngối Cáy',NULL,NULL,NULL,'Xã'),
	 (652,'Xuân Lao',NULL,NULL,NULL,'Xã'),
	 (653,'Hừa Ngài',NULL,NULL,NULL,'Xã'),
	 (653,'Huổi Lèng',NULL,NULL,NULL,'Xã'),
	 (653,'Huổi Mí',NULL,NULL,NULL,'Xã'),
	 (653,'Ma Thì Hồ',NULL,NULL,NULL,'Xã'),
	 (653,'Mường Chà',NULL,NULL,NULL,'Thị trấn'),
	 (653,'Mường Mươn',NULL,NULL,NULL,'Xã'),
	 (653,'Mường Tùng',NULL,NULL,NULL,'Xã'),
	 (653,'Na Sang',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (653,'Nậm Nèn',NULL,NULL,NULL,'Xã'),
	 (653,'Pa Ham',NULL,NULL,NULL,'Xã'),
	 (653,'Phìn Hồ',NULL,NULL,NULL,'Xã'),
	 (653,'Sa Lông',NULL,NULL,NULL,'Xã'),
	 (653,'Sá Tổng',NULL,NULL,NULL,'Xã'),
	 (653,'Si Pa Phìn',NULL,NULL,NULL,'Xã'),
	 (654,'Lay Nưa',NULL,NULL,NULL,'Xã'),
	 (654,'Na Lay',NULL,NULL,NULL,'Phường'),
	 (654,'Sông Đà',NULL,NULL,NULL,'Xã'),
	 (655,'Chung Chải',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (655,'Huổi Lếch',NULL,NULL,NULL,'Xã'),
	 (655,'Leng Su Sìn',NULL,NULL,NULL,'Xã'),
	 (655,'Mường Nhé',NULL,NULL,NULL,'Xã'),
	 (655,'Mường Toong',NULL,NULL,NULL,'Xã'),
	 (655,'Nậm Kè',NULL,NULL,NULL,'Xã'),
	 (655,'Nậm Vì',NULL,NULL,NULL,'Xã'),
	 (655,'Pá Mỳ',NULL,NULL,NULL,'Xã'),
	 (655,'Quảng Lâm',NULL,NULL,NULL,'Xã'),
	 (655,'Sen Thượng',NULL,NULL,NULL,'Xã'),
	 (655,'Sín Thầu',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (656,'Chà Cang',NULL,NULL,NULL,'Xã'),
	 (656,'Chà Nưa',NULL,NULL,NULL,'Xã'),
	 (656,'Chà Tở',NULL,NULL,NULL,'Xã'),
	 (656,'Nà Bủng',NULL,NULL,NULL,'Xã'),
	 (656,'Na Cô Sa',NULL,NULL,NULL,'Xã'),
	 (656,'Nà Hỳ',NULL,NULL,NULL,'Xã'),
	 (656,'Nà Khoa',NULL,NULL,NULL,'Xã'),
	 (656,'Nậm Chua',NULL,NULL,NULL,'Xã'),
	 (656,'Nậm Khăn',NULL,NULL,NULL,'Xã'),
	 (656,'Nậm Nhừ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (656,'Nậm Tin',NULL,NULL,NULL,'Xã'),
	 (656,'Pa Tần',NULL,NULL,NULL,'Xã'),
	 (656,'Phìn Hồ',NULL,NULL,NULL,'Xã'),
	 (656,'Vàng Đán',NULL,NULL,NULL,'Xã'),
	 (657,'Huổi Só',NULL,NULL,NULL,'Xã'),
	 (657,'Lao Xả Phình',NULL,NULL,NULL,'Xã'),
	 (657,'Mường Báng',NULL,NULL,NULL,'Xã'),
	 (657,'Mường Đun',NULL,NULL,NULL,'Xã'),
	 (657,'Sáng Nhè',NULL,NULL,NULL,'Xã'),
	 (657,'Sín Chải',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (657,'Sính Phình',NULL,NULL,NULL,'Xã'),
	 (657,'Tả Phìn',NULL,NULL,NULL,'Xã'),
	 (657,'Tả Sìn Thàng',NULL,NULL,NULL,'Xã'),
	 (657,'Trung Thu',NULL,NULL,NULL,'Xã'),
	 (657,'Tủa Chùa',NULL,NULL,NULL,'Xã'),
	 (657,'Tủa Thàng',NULL,NULL,NULL,'Xã'),
	 (658,'Chiềng Đông',NULL,NULL,NULL,'Xã'),
	 (658,'Chiềng Sinh',NULL,NULL,NULL,'Xã'),
	 (658,'Mùn Chung',NULL,NULL,NULL,'Xã'),
	 (658,'Mường Khong',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (658,'Mường Mùn',NULL,NULL,NULL,'Xã'),
	 (658,'Mường Thín',NULL,NULL,NULL,'Xã'),
	 (658,'Nà Sáy',NULL,NULL,NULL,'Xã'),
	 (658,'Nà Tòng',NULL,NULL,NULL,'Xã'),
	 (658,'Phình Sáng',NULL,NULL,NULL,'Xã'),
	 (658,'Pú Nhung',NULL,NULL,NULL,'Xã'),
	 (658,'Pú Xi',NULL,NULL,NULL,'Xã'),
	 (658,'Quài Cang',NULL,NULL,NULL,'Xã'),
	 (658,'Quài Nưa',NULL,NULL,NULL,'Xã'),
	 (658,'Quài Tở',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (658,'Rạng Đông',NULL,NULL,NULL,'Xã'),
	 (658,'Ta Ma',NULL,NULL,NULL,'Xã'),
	 (658,'Tênh Phông',NULL,NULL,NULL,'Xã'),
	 (658,'Tỏa Tình',NULL,NULL,NULL,'Xã'),
	 (658,'Tuần Giáo',NULL,NULL,NULL,'Thị trấn'),
	 (659,'Đoàn Kết',NULL,NULL,NULL,'Phường'),
	 (659,'Đông Phong',NULL,NULL,NULL,'Phường'),
	 (659,'Nậm Loỏng',NULL,NULL,NULL,'Xã'),
	 (659,'Quyết Thắng',NULL,NULL,NULL,'Phường'),
	 (659,'Quyết Tiến',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (659,'San Thàng',NULL,NULL,NULL,'Xã'),
	 (659,'Tân Phong',NULL,NULL,NULL,'Phường'),
	 (660,'Bum Nưa',NULL,NULL,NULL,'Xã'),
	 (660,'Bum Tở',NULL,NULL,NULL,'Xã'),
	 (660,'Ka Lăng',NULL,NULL,NULL,'Xã'),
	 (660,'Kan Hồ',NULL,NULL,NULL,'Xã'),
	 (660,'Mù Cả',NULL,NULL,NULL,'Xã'),
	 (660,'Mường Tè',NULL,NULL,NULL,'Thị trấn'),
	 (660,'Nậm Khao',NULL,NULL,NULL,'Xã'),
	 (660,'Pa Ủ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (660,'Pa Vệ Sử',NULL,NULL,NULL,'Xã'),
	 (660,'Tá Bạ',NULL,NULL,NULL,'Xã'),
	 (660,'Tà Tổng',NULL,NULL,NULL,'Xã'),
	 (660,'Thu Lũm',NULL,NULL,NULL,'Xã'),
	 (660,'Vàng San',NULL,NULL,NULL,'Xã'),
	 (660,'Xã Mường Tè',NULL,NULL,NULL,'Xã'),
	 (661,'Hua Bum',NULL,NULL,NULL,'Xã'),
	 (661,'Lê Lợi',NULL,NULL,NULL,'Xã'),
	 (661,'Mường Mô',NULL,NULL,NULL,'Xã'),
	 (661,'Nậm Ban',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (661,'Nậm Chà',NULL,NULL,NULL,'Xã'),
	 (661,'Nậm Hàng',NULL,NULL,NULL,'Xã'),
	 (661,'Nậm Manh',NULL,NULL,NULL,'Xã'),
	 (661,'Nậm Nhùn',NULL,NULL,NULL,'Thị trấn'),
	 (661,'Nậm Pì',NULL,NULL,NULL,'Xã'),
	 (661,'Pú Đao',NULL,NULL,NULL,'Xã'),
	 (661,'Trung Chải',NULL,NULL,NULL,'Xã'),
	 (662,'Bản Lang',NULL,NULL,NULL,'Xã'),
	 (662,'Dào San',NULL,NULL,NULL,'Xã'),
	 (662,'Hoang Thèn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (662,'Huổi Luông',NULL,NULL,NULL,'Xã'),
	 (662,'Khổng Lào',NULL,NULL,NULL,'Xã'),
	 (662,'Lản Nhì Thàng',NULL,NULL,NULL,'Xã'),
	 (662,'Ma Ly Chải',NULL,NULL,NULL,'Xã'),
	 (662,'Ma Ly Pho',NULL,NULL,NULL,'Xã'),
	 (662,'Mồ Sì San',NULL,NULL,NULL,'Xã'),
	 (662,'Mù Sang',NULL,NULL,NULL,'Xã'),
	 (662,'Mường So',NULL,NULL,NULL,'Xã'),
	 (662,'Nậm Xe',NULL,NULL,NULL,'Xã'),
	 (662,'Pa Vây Sử',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (662,'Phong Thổ',NULL,NULL,NULL,'Thị trấn'),
	 (662,'Sì Lở Lầu',NULL,NULL,NULL,'Xã'),
	 (662,'Sin Súi Hồ',NULL,NULL,NULL,'Xã'),
	 (662,'Tung Qua Lìn',NULL,NULL,NULL,'Xã'),
	 (662,'Vàng Ma Chải',NULL,NULL,NULL,'Xã'),
	 (663,'Căn Co',NULL,NULL,NULL,'Xã'),
	 (663,'Chăn Nưa',NULL,NULL,NULL,'Xã'),
	 (663,'Hồng Thu',NULL,NULL,NULL,'Xã'),
	 (663,'Làng Mô',NULL,NULL,NULL,'Xã'),
	 (663,'Lùng Thàng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (663,'Ma Quai',NULL,NULL,NULL,'Xã'),
	 (663,'Ma Quai,',NULL,NULL,NULL,'Xã'),
	 (663,'Nậm Cha',NULL,NULL,NULL,'Xã'),
	 (663,'Nậm Cuổi',NULL,NULL,NULL,'Xã'),
	 (663,'Nậm Hăn',NULL,NULL,NULL,'Xã'),
	 (663,'Nậm Mạ',NULL,NULL,NULL,'Xã'),
	 (663,'Nậm Tăm',NULL,NULL,NULL,'Xã'),
	 (663,'Noong Hẻo',NULL,NULL,NULL,'Thị trấn'),
	 (663,'Pa Khóa',NULL,NULL,NULL,'Xã'),
	 (663,'Pa Tần',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (663,'Phăng Sô Lin',NULL,NULL,NULL,'Xã'),
	 (663,'Phìn Hồ',NULL,NULL,NULL,'Xã'),
	 (663,'Pu Sam Cáp',NULL,NULL,NULL,'Xã'),
	 (663,'Sà Dề Phìn',NULL,NULL,NULL,'Xã'),
	 (663,'Sìn Hồ',NULL,NULL,NULL,'Thị trấn'),
	 (663,'Tả Ngảo',NULL,NULL,NULL,'Xã'),
	 (663,'Tả Phìn',NULL,NULL,NULL,'Xã'),
	 (663,'Tủa Sín Chải',NULL,NULL,NULL,'Xã'),
	 (664,'Bản Bo',NULL,NULL,NULL,'Xã'),
	 (664,'Bản Giang',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (664,'Bản Hon',NULL,NULL,NULL,'Xã'),
	 (664,'Bình Lư',NULL,NULL,NULL,'Xã'),
	 (664,'Giang Ma',NULL,NULL,NULL,'Xã'),
	 (664,'Hồ Thầu',NULL,NULL,NULL,'Xã'),
	 (664,'Khun Há',NULL,NULL,NULL,'Xã'),
	 (664,'Nà Tăm',NULL,NULL,NULL,'Xã'),
	 (664,'Nùng Nàng',NULL,NULL,NULL,'Xã'),
	 (664,'Sơn Bình',NULL,NULL,NULL,'Xã'),
	 (664,'Sùng Phài',NULL,NULL,NULL,'Xã'),
	 (664,'Tả Lèng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (664,'Tam Đường',NULL,NULL,NULL,'Thị trấn'),
	 (664,'Thèn Xin',NULL,NULL,NULL,'Xã'),
	 (665,'Hố Mít',NULL,NULL,NULL,'Xã'),
	 (665,'Mường Khoa',NULL,NULL,NULL,'Xã'),
	 (665,'Nậm Cần',NULL,NULL,NULL,'Xã'),
	 (665,'Nậm Sỏ',NULL,NULL,NULL,'Xã'),
	 (665,'Pắc Ta',NULL,NULL,NULL,'Xã'),
	 (665,'Phúc Khoa',NULL,NULL,NULL,'Xã'),
	 (665,'Tà Mít',NULL,NULL,NULL,'Xã'),
	 (665,'Tân Uyên',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (665,'Thân Thuộc',NULL,NULL,NULL,'Xã'),
	 (665,'Trung Đồng',NULL,NULL,NULL,'Xã'),
	 (666,'Hua Nà',NULL,NULL,NULL,'Xã'),
	 (666,'Khoen On',NULL,NULL,NULL,'Xã'),
	 (666,'Mường Cang',NULL,NULL,NULL,'Xã'),
	 (666,'Mường Kim',NULL,NULL,NULL,'Xã'),
	 (666,'Mường Mít',NULL,NULL,NULL,'Xã'),
	 (666,'Mường Than',NULL,NULL,NULL,'Xã'),
	 (666,'Pha Mu',NULL,NULL,NULL,'Xã'),
	 (666,'Phúc Than',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (666,'Ta Gia',NULL,NULL,NULL,'Xã'),
	 (666,'Tà Hừa',NULL,NULL,NULL,'Xã'),
	 (666,'Tà Mung',NULL,NULL,NULL,'Xã'),
	 (666,'Than Uyên',NULL,NULL,NULL,'Thị trấn'),
	 (667,'Bắc Sơn',NULL,NULL,NULL,'Thị trấn'),
	 (667,'Bắc Sơn',NULL,NULL,NULL,'Xã'),
	 (667,'Chiến Thắng',NULL,NULL,NULL,'Xã'),
	 (667,'Chiêu Vũ',NULL,NULL,NULL,'Xã'),
	 (667,'Đồng Ý',NULL,NULL,NULL,'Xã'),
	 (667,'Hưng Vũ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (667,'Hữu Vĩnh',NULL,NULL,NULL,'Xã'),
	 (667,'Long Đống',NULL,NULL,NULL,'Xã'),
	 (667,'Nhất Hòa',NULL,NULL,NULL,'Xã'),
	 (667,'Nhất Tiến',NULL,NULL,NULL,'Xã'),
	 (667,'Quỳnh Sơn',NULL,NULL,NULL,'Xã'),
	 (667,'Tân Hương',NULL,NULL,NULL,'Xã'),
	 (667,'Tân Lập',NULL,NULL,NULL,'Xã'),
	 (667,'Tân Thành',NULL,NULL,NULL,'Xã'),
	 (667,'Tân Tri',NULL,NULL,NULL,'Xã'),
	 (667,'Trấn Yên',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (667,'Vạn Thủy',NULL,NULL,NULL,'Xã'),
	 (667,'Vũ Lăng',NULL,NULL,NULL,'Xã'),
	 (667,'Vũ Lễ',NULL,NULL,NULL,'Xã'),
	 (667,'Vũ Sơn',NULL,NULL,NULL,'Xã'),
	 (668,'Bình Gia',NULL,NULL,NULL,'Thị trấn'),
	 (668,'Bình La',NULL,NULL,NULL,'Xã'),
	 (668,'Hòa Bình',NULL,NULL,NULL,'Xã'),
	 (668,'Hoa Thám',NULL,NULL,NULL,'Xã'),
	 (668,'Hoàng Văn Thụ',NULL,NULL,NULL,'Xã'),
	 (668,'Hồng Phong',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (668,'Hồng Thái',NULL,NULL,NULL,'Xã'),
	 (668,'Hưng Đạo',NULL,NULL,NULL,'Xã'),
	 (668,'Minh Khai',NULL,NULL,NULL,'Xã'),
	 (668,'Mông Ân',NULL,NULL,NULL,'Xã'),
	 (668,'Quang Trung',NULL,NULL,NULL,'Xã'),
	 (668,'Quý Hòa',NULL,NULL,NULL,'Xã'),
	 (668,'Tân Hòa',NULL,NULL,NULL,'Xã'),
	 (668,'Tân Văn',NULL,NULL,NULL,'Xã'),
	 (668,'Thiện Hòa',NULL,NULL,NULL,'Xã'),
	 (668,'Thiện Long',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (668,'Thiện Thuật',NULL,NULL,NULL,'Xã'),
	 (668,'Tô Hiệu',NULL,NULL,NULL,'Xã'),
	 (668,'Vĩnh Yên',NULL,NULL,NULL,'Xã'),
	 (668,'Yên Lỗ',NULL,NULL,NULL,'Xã'),
	 (669,'Bảo Lâm',NULL,NULL,NULL,'Xã'),
	 (669,'Bình Trung',NULL,NULL,NULL,'Xã'),
	 (669,'Cao Lâu',NULL,NULL,NULL,'Xã'),
	 (669,'Cao Lộc',NULL,NULL,NULL,'Thị trấn'),
	 (669,'Cống Sơn',NULL,NULL,NULL,'Xã'),
	 (669,'Đồng Đăng',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (669,'Gia Cát',NULL,NULL,NULL,'Xã'),
	 (669,'Hải Yến',NULL,NULL,NULL,'Xã'),
	 (669,'Hòa Cư',NULL,NULL,NULL,'Xã'),
	 (669,'Hồng Phong',NULL,NULL,NULL,'Xã'),
	 (669,'Hợp Thành',NULL,NULL,NULL,'Xã'),
	 (669,'Lộc Yên',NULL,NULL,NULL,'Xã'),
	 (669,'Mẫu Sơn',NULL,NULL,NULL,'Xã'),
	 (669,'Phú Xá',NULL,NULL,NULL,'Xã'),
	 (669,'Song Giáp',NULL,NULL,NULL,'Xã'),
	 (669,'Tân Liên',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (669,'Tân Thành',NULL,NULL,NULL,'Xã'),
	 (669,'Thạch Đạn',NULL,NULL,NULL,'Xã'),
	 (669,'Thanh Lòa',NULL,NULL,NULL,'Xã'),
	 (669,'Thụy Hùng',NULL,NULL,NULL,'Xã'),
	 (669,'Xuân Long',NULL,NULL,NULL,'Xã'),
	 (669,'Xuất Lễ',NULL,NULL,NULL,'Xã'),
	 (669,'Yên Trạch',NULL,NULL,NULL,'Xã'),
	 (670,'Bắc Thủy',NULL,NULL,NULL,'Xã'),
	 (670,'Bằng Hữu',NULL,NULL,NULL,'Xã'),
	 (670,'Bằng Mạc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (670,'Chi Lăng',NULL,NULL,NULL,'Thị trấn'),
	 (670,'Chi Lăng',NULL,NULL,NULL,'Xã'),
	 (670,'Chiến Thắng',NULL,NULL,NULL,'Xã'),
	 (670,'Đồng Mỏ',NULL,NULL,NULL,'Thị trấn'),
	 (670,'Gia Lộc',NULL,NULL,NULL,'Xã'),
	 (670,'Hòa Bình',NULL,NULL,NULL,'Xã'),
	 (670,'Hồng Phong',NULL,NULL,NULL,'Xã'),
	 (670,'Hữu Kiên',NULL,NULL,NULL,'Xã'),
	 (670,'Lâm Sơn',NULL,NULL,NULL,'Xã'),
	 (670,'Liên Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (670,'Mai Sao',NULL,NULL,NULL,'Xã'),
	 (670,'Nhân Lý',NULL,NULL,NULL,'Xã'),
	 (670,'Quan Sơn',NULL,NULL,NULL,'Xã'),
	 (670,'Quang Lang',NULL,NULL,NULL,'Xã'),
	 (670,'Thượng Cường',NULL,NULL,NULL,'Xã'),
	 (670,'Vân An',NULL,NULL,NULL,'Xã'),
	 (670,'Vạn Linh',NULL,NULL,NULL,'Xã'),
	 (670,'Vân Thủy',NULL,NULL,NULL,'Xã'),
	 (670,'Y Tịch',NULL,NULL,NULL,'Xã'),
	 (671,'Bắc Lãng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (671,'Bắc Xa',NULL,NULL,NULL,'Xã'),
	 (671,'Bính Xá',NULL,NULL,NULL,'Xã'),
	 (671,'Châu Sơn',NULL,NULL,NULL,'Xã'),
	 (671,'Cường Lợi',NULL,NULL,NULL,'Xã'),
	 (671,'Đình Lập',NULL,NULL,NULL,'Xã'),
	 (671,'Đình Lập',NULL,NULL,NULL,'Thị trấn'),
	 (671,'Đồng Thắng',NULL,NULL,NULL,'Xã'),
	 (671,'Kiên Mộc',NULL,NULL,NULL,'Xã'),
	 (671,'Lâm Ca',NULL,NULL,NULL,'Xã'),
	 (671,'Nông trường Thái Bình',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (671,'Thái Bình',NULL,NULL,NULL,'Xã'),
	 (672,'Cai Kinh',NULL,NULL,NULL,'Xã'),
	 (672,'Đô Lương',NULL,NULL,NULL,'Xã'),
	 (672,'Đồng Tân',NULL,NULL,NULL,'Xã'),
	 (672,'Đồng Tiến',NULL,NULL,NULL,'Xã'),
	 (672,'Hồ Sơn',NULL,NULL,NULL,'Xã'),
	 (672,'Hòa Bình',NULL,NULL,NULL,'Xã'),
	 (672,'Hòa Lạc',NULL,NULL,NULL,'Xã'),
	 (672,'Hòa Sơn',NULL,NULL,NULL,'Xã'),
	 (672,'Hòa Thắng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (672,'Hữu Liên',NULL,NULL,NULL,'Xã'),
	 (672,'Hữu Lũng',NULL,NULL,NULL,'Thị trấn'),
	 (672,'Minh Hòa',NULL,NULL,NULL,'Xã'),
	 (672,'Minh Sơn',NULL,NULL,NULL,'Xã'),
	 (672,'Minh Tiến',NULL,NULL,NULL,'Xã'),
	 (672,'Nhật Tiến',NULL,NULL,NULL,'Xã'),
	 (672,'Quyết Thắng',NULL,NULL,NULL,'Xã'),
	 (672,'Sơn Hà',NULL,NULL,NULL,'Xã'),
	 (672,'Tân Lập',NULL,NULL,NULL,'Xã'),
	 (672,'Tân Thành',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (672,'Thanh Sơn',NULL,NULL,NULL,'Xã'),
	 (672,'Thiện Ky',NULL,NULL,NULL,'Xã'),
	 (672,'Vân Nham',NULL,NULL,NULL,'Xã'),
	 (672,'Yên Bình',NULL,NULL,NULL,'Xã'),
	 (672,'Yên Sơn',NULL,NULL,NULL,'Xã'),
	 (672,'Yên Thịnh',NULL,NULL,NULL,'Thị trấn'),
	 (672,'Yên Vượng',NULL,NULL,NULL,'Xã'),
	 (673,'Chi Lăng',NULL,NULL,NULL,'Phường'),
	 (673,'Đông Kinh',NULL,NULL,NULL,'Phường'),
	 (673,'Hoàng Đồng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (673,'Hoàng Văn Thụ',NULL,NULL,NULL,'Phường'),
	 (673,'Mai Pha',NULL,NULL,NULL,'Xã'),
	 (673,'Nà Poong',NULL,NULL,NULL,'Xã'),
	 (673,'Nà Thó',NULL,NULL,NULL,'Xã'),
	 (673,'Pò Đứa',NULL,NULL,NULL,'Xã'),
	 (673,'Quảng Lạc',NULL,NULL,NULL,'Xã'),
	 (673,'Tam Thanh',NULL,NULL,NULL,'Phường'),
	 (673,'Vĩnh Trại',NULL,NULL,NULL,'Phường'),
	 (674,'Ái Quốc',NULL,NULL,NULL,'Xã'),
	 (674,'Bằng Khánh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (674,'Đồng Bục',NULL,NULL,NULL,'Xã'),
	 (674,'Đông Quan',NULL,NULL,NULL,'Xã'),
	 (674,'Hiệp Hạ',NULL,NULL,NULL,'Xã'),
	 (674,'Hữu Khánh',NULL,NULL,NULL,'Xã'),
	 (674,'Hữu Lân',NULL,NULL,NULL,'Xã'),
	 (674,'Khuất Xá',NULL,NULL,NULL,'Xã'),
	 (674,'Lộc Bình',NULL,NULL,NULL,'Thị trấn'),
	 (674,'Lợi Bác',NULL,NULL,NULL,'Xã'),
	 (674,'Lục Thôn',NULL,NULL,NULL,'Xã'),
	 (674,'Mẫu Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (674,'Minh Phát',NULL,NULL,NULL,'Xã'),
	 (674,'Na Dương',NULL,NULL,NULL,'Thị trấn'),
	 (674,'Nam Quan',NULL,NULL,NULL,'Xã'),
	 (674,'Như Khuê',NULL,NULL,NULL,'Xã'),
	 (674,'Nhượng Bạn',NULL,NULL,NULL,'Xã'),
	 (674,'Quan Bản',NULL,NULL,NULL,'Xã'),
	 (674,'Sàn Viên',NULL,NULL,NULL,'Xã'),
	 (674,'Tam Gia',NULL,NULL,NULL,'Xã'),
	 (674,'Tĩnh Bắc',NULL,NULL,NULL,'Xã'),
	 (674,'Tú Đoạn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (674,'Tú Mịch',NULL,NULL,NULL,'Xã'),
	 (674,'Vân Mộng',NULL,NULL,NULL,'Xã'),
	 (674,'Xuân Dương',NULL,NULL,NULL,'Xã'),
	 (674,'Xuân Lễ',NULL,NULL,NULL,'Xã'),
	 (674,'Xuân Mãn',NULL,NULL,NULL,'Xã'),
	 (674,'Xuân Tình',NULL,NULL,NULL,'Xã'),
	 (674,'Yên Khoái',NULL,NULL,NULL,'Xã'),
	 (675,'Bắc Ái',NULL,NULL,NULL,'Xã'),
	 (675,'Cao Minh',NULL,NULL,NULL,'Xã'),
	 (675,'Chi Lăng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (675,'Chí Minh',NULL,NULL,NULL,'Xã'),
	 (675,'Đại Đồng',NULL,NULL,NULL,'Xã'),
	 (675,'Đào Viên',NULL,NULL,NULL,'Xã'),
	 (675,'Đề Thám',NULL,NULL,NULL,'Xã'),
	 (675,'Đoàn Kết',NULL,NULL,NULL,'Xã'),
	 (675,'Đội Cấn',NULL,NULL,NULL,'Xã'),
	 (675,'Hùng Sơn',NULL,NULL,NULL,'Xã'),
	 (675,'Hùng Việt',NULL,NULL,NULL,'Xã'),
	 (675,'Kháng Chiến',NULL,NULL,NULL,'Xã'),
	 (675,'Khánh Long',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (675,'Kim Đồng',NULL,NULL,NULL,'Xã'),
	 (675,'Quốc Khánh',NULL,NULL,NULL,'Xã'),
	 (675,'Quốc Việt',NULL,NULL,NULL,'Xã'),
	 (675,'Tân Minh',NULL,NULL,NULL,'Xã'),
	 (675,'Tân Tiến',NULL,NULL,NULL,'Xã'),
	 (675,'Tân Yên',NULL,NULL,NULL,'Xã'),
	 (675,'Thất Khê',NULL,NULL,NULL,'Thị trấn'),
	 (675,'Tri Phương',NULL,NULL,NULL,'Xã'),
	 (675,'Trung Thành',NULL,NULL,NULL,'Xã'),
	 (675,'Vĩnh Tiến',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (676,'An Hùng',NULL,NULL,NULL,'Xã'),
	 (676,'Bắc La',NULL,NULL,NULL,'Xã'),
	 (676,'Gia Miễn',NULL,NULL,NULL,'Xã'),
	 (676,'Hoàng Văn Thụ',NULL,NULL,NULL,'Xã'),
	 (676,'Hoàng Việt',NULL,NULL,NULL,'Xã'),
	 (676,'Hội Hoan',NULL,NULL,NULL,'Xã'),
	 (676,'Hồng Thái',NULL,NULL,NULL,'Xã'),
	 (676,'Na Sầm',NULL,NULL,NULL,'Thị trấn'),
	 (676,'Nam La',NULL,NULL,NULL,'Xã'),
	 (676,'Nhạc Kỳ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (676,'Tân Lang',NULL,NULL,NULL,'Xã'),
	 (676,'Tân Mỹ',NULL,NULL,NULL,'Xã'),
	 (676,'Tân Tác',NULL,NULL,NULL,'Xã'),
	 (676,'Tân Thanh',NULL,NULL,NULL,'Xã'),
	 (676,'Tân Việt',NULL,NULL,NULL,'Xã'),
	 (676,'Thành Hoà',NULL,NULL,NULL,'Xã'),
	 (676,'Thanh Long',NULL,NULL,NULL,'Xã'),
	 (676,'Thuỵ Hùng',NULL,NULL,NULL,'Xã'),
	 (676,'Trùng Khánh',NULL,NULL,NULL,'Xã'),
	 (676,'Trùng Quán',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (677,'Bình Phúc',NULL,NULL,NULL,'Xã'),
	 (677,'Chu Túc',NULL,NULL,NULL,'Xã'),
	 (677,'Đại An',NULL,NULL,NULL,'Xã'),
	 (677,'Đồng Giáp',NULL,NULL,NULL,'Xã'),
	 (677,'Gia Miễn',NULL,NULL,NULL,'Xã'),
	 (677,'Hòa Bình',NULL,NULL,NULL,'Xã'),
	 (677,'Hoàng Văn Thụ',NULL,NULL,NULL,'Xã'),
	 (677,'Hữu Lễ',NULL,NULL,NULL,'Xã'),
	 (677,'Khánh Khê',NULL,NULL,NULL,'Xã'),
	 (677,'Lương Năng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (677,'Phú Mỹ',NULL,NULL,NULL,'Xã'),
	 (677,'Song Giang',NULL,NULL,NULL,'Xã'),
	 (677,'Tân Đoàn',NULL,NULL,NULL,'Xã'),
	 (677,'Tân Tác',NULL,NULL,NULL,'Xã'),
	 (677,'Trấn Ninh',NULL,NULL,NULL,'Xã'),
	 (677,'Tràng Các',NULL,NULL,NULL,'Xã'),
	 (677,'Tràng Phái',NULL,NULL,NULL,'Xã'),
	 (677,'Tràng Sơn',NULL,NULL,NULL,'Xã'),
	 (677,'Tri Lễ',NULL,NULL,NULL,'Xã'),
	 (677,'Tú Xuyên',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (677,'Văn An',NULL,NULL,NULL,'Xã'),
	 (677,'Vân Mộng',NULL,NULL,NULL,'Xã'),
	 (677,'Văn Quan',NULL,NULL,NULL,'Thị trấn'),
	 (677,'Việt Yên',NULL,NULL,NULL,'Xã'),
	 (677,'Vĩnh Lai',NULL,NULL,NULL,'Xã'),
	 (677,'Xuân Mai',NULL,NULL,NULL,'Xã'),
	 (677,'Yên Phúc',NULL,NULL,NULL,'Xã'),
	 (678,'Đường Âm',NULL,NULL,NULL,'Xã'),
	 (678,'Đường Hồng',NULL,NULL,NULL,'Xã'),
	 (678,'Giáp Trung',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (678,'Lạc Nông',NULL,NULL,NULL,'Xã'),
	 (678,'Minh Ngọc',NULL,NULL,NULL,'Xã'),
	 (678,'Minh Sơn',NULL,NULL,NULL,'Xã'),
	 (678,'Phiêng Luông',NULL,NULL,NULL,'Xã'),
	 (678,'Phú Nam',NULL,NULL,NULL,'Xã'),
	 (678,'Thượng Tân',NULL,NULL,NULL,'Xã'),
	 (678,'Yên Cường',NULL,NULL,NULL,'Xã'),
	 (678,'Yên Định',NULL,NULL,NULL,'Xã'),
	 (678,'Yên Phong',NULL,NULL,NULL,'Xã'),
	 (678,'Yên Phú',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (679,'Bằng Hành',NULL,NULL,NULL,'Xã'),
	 (679,'Đồng Tâm',NULL,NULL,NULL,'Xã'),
	 (679,'Đông Thành',NULL,NULL,NULL,'Xã'),
	 (679,'Đồng Tiến',NULL,NULL,NULL,'Xã'),
	 (679,'Đồng Yên',NULL,NULL,NULL,'Xã'),
	 (679,'Đức Xuân',NULL,NULL,NULL,'Xã'),
	 (679,'Hùng An',NULL,NULL,NULL,'Xã'),
	 (679,'Hữu Sản',NULL,NULL,NULL,'Xã'),
	 (679,'Kim Ngọc',NULL,NULL,NULL,'Xã'),
	 (679,'Liên Hiệp',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (679,'Quang Minh',NULL,NULL,NULL,'Xã'),
	 (679,'Tân Lập',NULL,NULL,NULL,'Xã'),
	 (679,'Tân Quang',NULL,NULL,NULL,'Xã'),
	 (679,'Tân Thành',NULL,NULL,NULL,'Xã'),
	 (679,'Thượng Bình',NULL,NULL,NULL,'Xã'),
	 (679,'Tiên Kiều',NULL,NULL,NULL,'Xã'),
	 (679,'Việt Hồng',NULL,NULL,NULL,'Xã'),
	 (679,'Việt Quang',NULL,NULL,NULL,'Thị trấn'),
	 (679,'Việt Vinh',NULL,NULL,NULL,'Xã'),
	 (679,'Vĩnh Hảo',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (679,'Vĩnh Phúc',NULL,NULL,NULL,'Xã'),
	 (679,'Vĩnh Tuy',NULL,NULL,NULL,'Thị trấn'),
	 (679,'Vô Điếm',NULL,NULL,NULL,'Xã'),
	 (680,'Đồng Văn',NULL,NULL,NULL,'Thị trấn'),
	 (680,'Hố Quáng Phìn',NULL,NULL,NULL,'Xã'),
	 (680,'Lũng Cú',NULL,NULL,NULL,'Xã'),
	 (680,'Lũng Phìn',NULL,NULL,NULL,'Xã'),
	 (680,'Lũng Táo',NULL,NULL,NULL,'Xã'),
	 (680,'Lũng Thầu',NULL,NULL,NULL,'Xã'),
	 (680,'Má Lé',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (680,'Phó Bảng',NULL,NULL,NULL,'Thị trấn'),
	 (680,'Phố Cáo',NULL,NULL,NULL,'Xã'),
	 (680,'Phố Là',NULL,NULL,NULL,'Xã'),
	 (680,'Sà Phìn',NULL,NULL,NULL,'Xã'),
	 (680,'Sảng Tủng',NULL,NULL,NULL,'Xã'),
	 (680,'Sính Lủng',NULL,NULL,NULL,'Xã'),
	 (680,'Sủng Là',NULL,NULL,NULL,'Xã'),
	 (680,'Sủng Trái',NULL,NULL,NULL,'Xã'),
	 (680,'Tả Lủng',NULL,NULL,NULL,'Xã'),
	 (680,'Tả Phìn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (680,'Thài Phìn Tủng',NULL,NULL,NULL,'Xã'),
	 (680,'Vần Chải',NULL,NULL,NULL,'Xã'),
	 (681,'Minh Khai',NULL,NULL,NULL,'Phường'),
	 (681,'Ngọc Đường',NULL,NULL,NULL,'Xã'),
	 (681,'Ngọc Hà',NULL,NULL,NULL,'Phường'),
	 (681,'Nguyễn Trãi',NULL,NULL,NULL,'Phường'),
	 (681,'Phương Độ',NULL,NULL,NULL,'Xã'),
	 (681,'Phương Thiện',NULL,NULL,NULL,'Xã'),
	 (681,'Quang Trung',NULL,NULL,NULL,'Phường'),
	 (681,'Trần Phú',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (682,'Bản Luốc',NULL,NULL,NULL,'Xã'),
	 (682,'Bản Máy',NULL,NULL,NULL,'Xã'),
	 (682,'Bản Nhùng',NULL,NULL,NULL,'Xã'),
	 (682,'Bản Péo',NULL,NULL,NULL,'Xã'),
	 (682,'Bản Phùng',NULL,NULL,NULL,'Xã'),
	 (682,'Chiến Phố',NULL,NULL,NULL,'Xã'),
	 (682,'Đản Ván',NULL,NULL,NULL,'Xã'),
	 (682,'Hồ Thầu',NULL,NULL,NULL,'Xã'),
	 (682,'Nậm Dịch',NULL,NULL,NULL,'Xã'),
	 (682,'Nậm Khòa',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (682,'Nam Sơn',NULL,NULL,NULL,'Xã'),
	 (682,'Nậm Ty',NULL,NULL,NULL,'Xã'),
	 (682,'Nàng Đôn',NULL,NULL,NULL,'Xã'),
	 (682,'Ngàm Đăng Vài',NULL,NULL,NULL,'Xã'),
	 (682,'Pố Lồ',NULL,NULL,NULL,'Xã'),
	 (682,'Pờ Ly Ngài',NULL,NULL,NULL,'Xã'),
	 (682,'Sán Xả Hồ',NULL,NULL,NULL,'Xã'),
	 (682,'Tả Sử Choóng',NULL,NULL,NULL,'Xã'),
	 (682,'Tân Tiến',NULL,NULL,NULL,'Xã'),
	 (682,'Thàng Tín',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (682,'Thèn Chu Phìn',NULL,NULL,NULL,'Xã'),
	 (682,'Thông Nguyên',NULL,NULL,NULL,'Xã'),
	 (682,'Tụ Nhân',NULL,NULL,NULL,'Xã'),
	 (682,'Túng Sán',NULL,NULL,NULL,'Xã'),
	 (682,'Vinh Quang',NULL,NULL,NULL,'Thị trấn'),
	 (683,'Cán Chu Phìn',NULL,NULL,NULL,'Xã'),
	 (683,'Giàng Chu Phìn',NULL,NULL,NULL,'Xã'),
	 (683,'Khâu Vai',NULL,NULL,NULL,'Xã'),
	 (683,'Lũng Chinh',NULL,NULL,NULL,'Xã'),
	 (683,'Lũng Pù',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (683,'Mèo Vạc',NULL,NULL,NULL,'Thị trấn'),
	 (683,'Nậm Ban',NULL,NULL,NULL,'Xã'),
	 (683,'Niêm Sơn',NULL,NULL,NULL,'Xã'),
	 (683,'Niêm Tòng',NULL,NULL,NULL,'Xã'),
	 (683,'Pả Vi',NULL,NULL,NULL,'Xã'),
	 (683,'Pải Lủng',NULL,NULL,NULL,'Xã'),
	 (683,'Sơn Vĩ',NULL,NULL,NULL,'Xã'),
	 (683,'Sủng Máng',NULL,NULL,NULL,'Xã'),
	 (683,'Sủng Trà',NULL,NULL,NULL,'Xã'),
	 (683,'Tả Lủng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (683,'Tát Ngà',NULL,NULL,NULL,'Xã'),
	 (683,'Thượng Phùng',NULL,NULL,NULL,'Xã'),
	 (683,'Xín Cái',NULL,NULL,NULL,'Xã'),
	 (684,'Bát Đại Sơn',NULL,NULL,NULL,'Xã'),
	 (684,'Cán Tỷ',NULL,NULL,NULL,'Xã'),
	 (684,'Cao Mã Pờ',NULL,NULL,NULL,'Xã'),
	 (684,'Đông Hà',NULL,NULL,NULL,'Xã'),
	 (684,'Lùng Tám',NULL,NULL,NULL,'Xã'),
	 (684,'Nghĩa Thuận',NULL,NULL,NULL,'Xã'),
	 (684,'Quản Bạ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (684,'Quyết Tiến',NULL,NULL,NULL,'Xã'),
	 (684,'Tả Ván',NULL,NULL,NULL,'Xã'),
	 (684,'Tam Sơn',NULL,NULL,NULL,'Thị trấn'),
	 (684,'Thái An',NULL,NULL,NULL,'Xã'),
	 (684,'Thanh Vân',NULL,NULL,NULL,'Xã'),
	 (684,'Tùng Vài',NULL,NULL,NULL,'Xã'),
	 (685,'Bản Rịa',NULL,NULL,NULL,'Xã'),
	 (685,'Bằng Lang',NULL,NULL,NULL,'Xã'),
	 (685,'Hương Sơn',NULL,NULL,NULL,'Xã'),
	 (685,'Nà Khương',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (685,'Tân Bắc',NULL,NULL,NULL,'Xã'),
	 (685,'Tân Nam',NULL,NULL,NULL,'Xã'),
	 (685,'Tân Trịnh',NULL,NULL,NULL,'Xã'),
	 (685,'Tiên Nguyên',NULL,NULL,NULL,'Xã'),
	 (685,'Tiên Yên',NULL,NULL,NULL,'Xã'),
	 (685,'Vĩ Thượng',NULL,NULL,NULL,'Xã'),
	 (685,'Xuân Giang',NULL,NULL,NULL,'Xã'),
	 (685,'Xuân Minh',NULL,NULL,NULL,'Xã'),
	 (685,'Yên Bình',NULL,NULL,NULL,'Thị trấn'),
	 (685,'Yên Hà',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (685,'Yên Thành',NULL,NULL,NULL,'Xã'),
	 (686,'Bạch Ngọc',NULL,NULL,NULL,'Xã'),
	 (686,'Cao Bồ',NULL,NULL,NULL,'Xã'),
	 (686,'Đạo Đức',NULL,NULL,NULL,'Xã'),
	 (686,'Kim Linh',NULL,NULL,NULL,'Xã'),
	 (686,'Kim Thạch',NULL,NULL,NULL,'Xã'),
	 (686,'Lao Chải',NULL,NULL,NULL,'Xã'),
	 (686,'Linh Hồ',NULL,NULL,NULL,'Xã'),
	 (686,'Minh Tân',NULL,NULL,NULL,'Xã'),
	 (686,'Ngọc Linh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (686,'Ngọc Minh',NULL,NULL,NULL,'Xã'),
	 (686,'Nông trường Việt Lâm',NULL,NULL,NULL,'Thị trấn'),
	 (686,'Phong Quang',NULL,NULL,NULL,'Xã'),
	 (686,'Phú Linh',NULL,NULL,NULL,'Xã'),
	 (686,'Phương Tiến',NULL,NULL,NULL,'Xã'),
	 (686,'Quảng Ngần',NULL,NULL,NULL,'Xã'),
	 (686,'Thanh Đức',NULL,NULL,NULL,'Xã'),
	 (686,'Thanh Thủy',NULL,NULL,NULL,'Xã'),
	 (686,'Thuận Hòa',NULL,NULL,NULL,'Xã'),
	 (686,'Thượng Sơn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (686,'Trung Thành',NULL,NULL,NULL,'Xã'),
	 (686,'Tùng Bá',NULL,NULL,NULL,'Xã'),
	 (686,'Vị Xuyên',NULL,NULL,NULL,'Thị trấn'),
	 (686,'Việt Lâm',NULL,NULL,NULL,'Xã'),
	 (686,'Xín Chải',NULL,NULL,NULL,'Xã'),
	 (687,'Bản Díu',NULL,NULL,NULL,'Xã'),
	 (687,'Bản Ngò',NULL,NULL,NULL,'Xã'),
	 (687,'Chế Là',NULL,NULL,NULL,'Xã'),
	 (687,'Chí Cà',NULL,NULL,NULL,'Xã'),
	 (687,'Cốc Pài',NULL,NULL,NULL,'Thị trấn');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (687,'Cốc Rế',NULL,NULL,NULL,'Xã'),
	 (687,'Khuôn Lùng',NULL,NULL,NULL,'Xã'),
	 (687,'Nà Chì',NULL,NULL,NULL,'Xã'),
	 (687,'Nấm Dẩn',NULL,NULL,NULL,'Xã'),
	 (687,'Nàn Ma',NULL,NULL,NULL,'Xã'),
	 (687,'Nàn Xỉn',NULL,NULL,NULL,'Xã'),
	 (687,'Ngán Chiên',NULL,NULL,NULL,'Xã'),
	 (687,'Pà Vầy Sủ',NULL,NULL,NULL,'Xã'),
	 (687,'Quảng Nguyên',NULL,NULL,NULL,'Xã'),
	 (687,'Tả Nhìu',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (687,'Thèn Phàng',NULL,NULL,NULL,'Xã'),
	 (687,'Thu Tà',NULL,NULL,NULL,'Xã'),
	 (687,'Trung Thịnh',NULL,NULL,NULL,'Xã'),
	 (687,'Xín Mần',NULL,NULL,NULL,'Xã'),
	 (688,'Bạch Đích',NULL,NULL,NULL,'Xã'),
	 (688,'Đông Minh',NULL,NULL,NULL,'Xã'),
	 (688,'Du Già',NULL,NULL,NULL,'Xã'),
	 (688,'Du Tiến',NULL,NULL,NULL,'Xã'),
	 (688,'Đường Thượng',NULL,NULL,NULL,'Xã'),
	 (688,'Hữu Vinh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (688,'Lao Và Chải',NULL,NULL,NULL,'Xã'),
	 (688,'Lũng Hồ',NULL,NULL,NULL,'Xã'),
	 (688,'Mậu Duệ',NULL,NULL,NULL,'Xã'),
	 (688,'Mậu Long',NULL,NULL,NULL,'Xã'),
	 (688,'Na Khê',NULL,NULL,NULL,'Xã'),
	 (688,'Ngam La',NULL,NULL,NULL,'Xã'),
	 (688,'Ngọc Long',NULL,NULL,NULL,'Xã'),
	 (688,'Phú Lũng',NULL,NULL,NULL,'Xã'),
	 (688,'Sủng Thài',NULL,NULL,NULL,'Xã'),
	 (688,'Sủng Tráng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (688,'Thắng Mố',NULL,NULL,NULL,'Xã'),
	 (688,'Yên Minh',NULL,NULL,NULL,'Xã'),
	 (689,'Bành Trạch',NULL,NULL,NULL,'Xã'),
	 (689,'Cao Thượng',NULL,NULL,NULL,'Xã'),
	 (689,'Cao Trĩ',NULL,NULL,NULL,'Xã'),
	 (689,'Chợ Rã',NULL,NULL,NULL,'Thị trấn'),
	 (689,'Chu Hương',NULL,NULL,NULL,'Xã'),
	 (689,'Địa Linh',NULL,NULL,NULL,'Xã'),
	 (689,'Đồng Phúc',NULL,NULL,NULL,'Xã'),
	 (689,'Hà Hiệu',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (689,'Hoàng Trĩ',NULL,NULL,NULL,'Xã'),
	 (689,'Khang Ninh',NULL,NULL,NULL,'Xã'),
	 (689,'Mỹ Phương',NULL,NULL,NULL,'Xã'),
	 (689,'Nam Mẫu',NULL,NULL,NULL,'Xã'),
	 (689,'Phúc Lộc',NULL,NULL,NULL,'Xã'),
	 (689,'Quảng Khê',NULL,NULL,NULL,'Xã'),
	 (689,'Thượng Giáo',NULL,NULL,NULL,'Xã'),
	 (689,'Yến Dương',NULL,NULL,NULL,'Xã'),
	 (690,'Dư¬ơng Quang',NULL,NULL,NULL,'Xã'),
	 (690,'Đức Xuân',NULL,NULL,NULL,'Phường');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (690,'Huyền Tụng',NULL,NULL,NULL,'Xã'),
	 (690,'Nguyễn Thị Minh Khai',NULL,NULL,NULL,'Phường'),
	 (690,'Nông Thượng',NULL,NULL,NULL,'Xã'),
	 (690,'Phùng Chí Kiên',NULL,NULL,NULL,'Phường'),
	 (690,'Sông Cầu',NULL,NULL,NULL,'Phường'),
	 (690,'Xuất Hóa',NULL,NULL,NULL,'Xã'),
	 (691,'Cẩm Giàng',NULL,NULL,NULL,'Xã'),
	 (691,'Cao Sơn',NULL,NULL,NULL,'Xã'),
	 (691,'Đôn Phong',NULL,NULL,NULL,'Xã'),
	 (691,'Dương Phong',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (691,'Hà Vị',NULL,NULL,NULL,'Xã'),
	 (691,'Lục Bình',NULL,NULL,NULL,'Xã'),
	 (691,'Mỹ Thanh',NULL,NULL,NULL,'Xã'),
	 (691,'Nguyên Phúc',NULL,NULL,NULL,'Xã'),
	 (691,'Phủ Thông',NULL,NULL,NULL,'Thị trấn'),
	 (691,'Phương Linh',NULL,NULL,NULL,'Xã'),
	 (691,'Quân Bình',NULL,NULL,NULL,'Xã'),
	 (691,'Quang Thuận',NULL,NULL,NULL,'Xã'),
	 (691,'Sĩ Bình',NULL,NULL,NULL,'Xã'),
	 (691,'Tân Tiến',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (691,'Tú Trĩ',NULL,NULL,NULL,'Xã'),
	 (691,'Vi Hương',NULL,NULL,NULL,'Xã'),
	 (691,'Vũ Muộn',NULL,NULL,NULL,'Xã'),
	 (692,'Bản Thi',NULL,NULL,NULL,'Xã'),
	 (692,'Bằng Lãng',NULL,NULL,NULL,'Xã'),
	 (692,'Bằng Lũng',NULL,NULL,NULL,'Thị trấn'),
	 (692,'Bằng Phúc',NULL,NULL,NULL,'Xã'),
	 (692,'Bình Trung',NULL,NULL,NULL,'Xã'),
	 (692,'Đại Sảo',NULL,NULL,NULL,'Xã'),
	 (692,'Đồng Lạc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (692,'Đông Viên',NULL,NULL,NULL,'Xã'),
	 (692,'Lương Bằng',NULL,NULL,NULL,'Xã'),
	 (692,'Nam Cường',NULL,NULL,NULL,'Xã'),
	 (692,'Nghĩa Tá',NULL,NULL,NULL,'Xã'),
	 (692,'Ngọc Phái',NULL,NULL,NULL,'Xã'),
	 (692,'Phong Huân',NULL,NULL,NULL,'Xã'),
	 (692,'Phương Viên',NULL,NULL,NULL,'Xã'),
	 (692,'Quảng Bạch',NULL,NULL,NULL,'Xã'),
	 (692,'Rã Bản',NULL,NULL,NULL,'Xã'),
	 (692,'Tân Lập',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (692,'Xuân Lạc',NULL,NULL,NULL,'Xã'),
	 (692,'Yên Mỹ',NULL,NULL,NULL,'Xã'),
	 (692,'Yên Nhuận',NULL,NULL,NULL,'Xã'),
	 (692,'Yên Thịnh',NULL,NULL,NULL,'Xã'),
	 (692,'Yên Thượng',NULL,NULL,NULL,'Xã'),
	 (693,'Bình Văn',NULL,NULL,NULL,'Xã'),
	 (693,'Cao Kỳ',NULL,NULL,NULL,'Xã'),
	 (693,'Chợ Mới',NULL,NULL,NULL,'Thị trấn'),
	 (693,'Hòa Mục',NULL,NULL,NULL,'Xã'),
	 (693,'Mai Lạp',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (693,'Như Cố',NULL,NULL,NULL,'Xã'),
	 (693,'Nông Hạ',NULL,NULL,NULL,'Xã'),
	 (693,'Nông Thịnh',NULL,NULL,NULL,'Xã'),
	 (693,'Quảng Chu',NULL,NULL,NULL,'Xã'),
	 (693,'Tân Sơn',NULL,NULL,NULL,'Xã'),
	 (693,'Thanh Bình',NULL,NULL,NULL,'Xã'),
	 (693,'Thanh Mai',NULL,NULL,NULL,'Xã'),
	 (693,'Thanh Vận',NULL,NULL,NULL,'Xã'),
	 (693,'Yên Cư',NULL,NULL,NULL,'Xã'),
	 (693,'Yên Đĩnh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (693,'Yên Hân',NULL,NULL,NULL,'Xã'),
	 (694,'Ân Tình',NULL,NULL,NULL,'Xã'),
	 (694,'Côn Minh',NULL,NULL,NULL,'Xã'),
	 (694,'Cư Lễ',NULL,NULL,NULL,'Xã'),
	 (694,'Cường Lợi',NULL,NULL,NULL,'Xã'),
	 (694,'Đổng Xá',NULL,NULL,NULL,'Xã'),
	 (694,'Dương Sơn',NULL,NULL,NULL,'Xã'),
	 (694,'Hảo Nghĩa',NULL,NULL,NULL,'Xã'),
	 (694,'Hữu Thác',NULL,NULL,NULL,'Xã'),
	 (694,'Kim Hỷ',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (694,'Kim Lư',NULL,NULL,NULL,'Xã'),
	 (694,'Lam Sơn',NULL,NULL,NULL,'Xã'),
	 (694,'Lạng San',NULL,NULL,NULL,'Thị trấn'),
	 (694,'Liêm Thủy',NULL,NULL,NULL,'Xã'),
	 (694,'Lương Hạ',NULL,NULL,NULL,'Xã'),
	 (694,'Lương Thành',NULL,NULL,NULL,'Xã'),
	 (694,'Lương Thượng',NULL,NULL,NULL,'Xã'),
	 (694,'Quang Phong',NULL,NULL,NULL,'Xã'),
	 (694,'Văn Học',NULL,NULL,NULL,'Xã'),
	 (694,'Văn Minh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (694,'Vũ Loan',NULL,NULL,NULL,'Xã'),
	 (694,'Xuân Dương',NULL,NULL,NULL,'Xã'),
	 (694,'Yến Lạc',NULL,NULL,NULL,'Thị trấn'),
	 (695,'Bằng Vân',NULL,NULL,NULL,'Xã'),
	 (695,'Cốc Đán',NULL,NULL,NULL,'Xã'),
	 (695,'Đức Vân',NULL,NULL,NULL,'Xã'),
	 (695,'Hương Nê',NULL,NULL,NULL,'Xã'),
	 (695,'Lãng Ngâm',NULL,NULL,NULL,'Xã'),
	 (695,'Nà Phặc',NULL,NULL,NULL,'Thị trấn'),
	 (695,'Thuần Mang',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (695,'Thượng Ân',NULL,NULL,NULL,'Xã'),
	 (695,'Thượng Quan',NULL,NULL,NULL,'Xã'),
	 (695,'Trung Hòa',NULL,NULL,NULL,'Xã'),
	 (695,'Vân Tùng',NULL,NULL,NULL,'Xã'),
	 (696,'An Thắng',NULL,NULL,NULL,'Xã'),
	 (696,'Bằng Thành',NULL,NULL,NULL,'Xã'),
	 (696,'Bộc Bố',NULL,NULL,NULL,'Xã'),
	 (696,'Cao Tân',NULL,NULL,NULL,'Xã'),
	 (696,'Cổ Linh',NULL,NULL,NULL,'Xã'),
	 (696,'Công Bằng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (696,'Giáo Hiệu',NULL,NULL,NULL,'Xã'),
	 (696,'Nghiên Loan',NULL,NULL,NULL,'Xã'),
	 (696,'Nhạn Môn',NULL,NULL,NULL,'Xã'),
	 (696,'Xuân La',NULL,NULL,NULL,'Xã'),
	 (697,'Bảo Lạc',NULL,NULL,NULL,'Thị trấn'),
	 (697,'Bảo Toàn',NULL,NULL,NULL,'Xã'),
	 (697,'Cô Ba',NULL,NULL,NULL,'Xã'),
	 (697,'Cốc Pàng',NULL,NULL,NULL,'Xã'),
	 (697,'Đình Phùng',NULL,NULL,NULL,'Xã'),
	 (697,'Hồng An',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (697,'Hồng Trị',NULL,NULL,NULL,'Xã'),
	 (697,'Hưng Đạo',NULL,NULL,NULL,'Xã'),
	 (697,'Hưng Thịnh',NULL,NULL,NULL,'Xã'),
	 (697,'Huy Giáp',NULL,NULL,NULL,'Xã'),
	 (697,'Khánh Xuân',NULL,NULL,NULL,'Xã'),
	 (697,'Kim Cúc',NULL,NULL,NULL,'Xã'),
	 (697,'Phan Thanh',NULL,NULL,NULL,'Xã'),
	 (697,'Sơn Lập',NULL,NULL,NULL,'Xã'),
	 (697,'Sơn Lộ',NULL,NULL,NULL,'Xã'),
	 (697,'Thượng Hà',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (697,'Xuân Trường',NULL,NULL,NULL,'Xã'),
	 (698,'Đức Hạnh',NULL,NULL,NULL,'Xã'),
	 (698,'Lý Bôn',NULL,NULL,NULL,'Xã'),
	 (698,'Mông Ân',NULL,NULL,NULL,'Xã'),
	 (698,'Nam Cao',NULL,NULL,NULL,'Xã'),
	 (698,'Nam Quang',NULL,NULL,NULL,'Xã'),
	 (698,'Pác Miầu',NULL,NULL,NULL,'Thị trấn'),
	 (698,'Quảng Lâm',NULL,NULL,NULL,'Xã'),
	 (698,'Thạch Lâm',NULL,NULL,NULL,'Xã'),
	 (698,'Thái Học',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (698,'Thái Sơn',NULL,NULL,NULL,'Xã'),
	 (698,'Vĩnh Phong',NULL,NULL,NULL,'Xã'),
	 (698,'Vĩnh Quang',NULL,NULL,NULL,'Xã'),
	 (698,'Yên Thổ',NULL,NULL,NULL,'Xã'),
	 (699,'Chu Trinh',NULL,NULL,NULL,'Xã'),
	 (699,'Đề Thám',NULL,NULL,NULL,'Phường'),
	 (699,'Duyệt Trung',NULL,NULL,NULL,'Phường'),
	 (699,'Hòa Chung',NULL,NULL,NULL,'Phường'),
	 (699,'Hợp Giang',NULL,NULL,NULL,'Phường'),
	 (699,'Hưng Đạo',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (699,'Ngọc Xuân',NULL,NULL,NULL,'Phường'),
	 (699,'Sông Bằng',NULL,NULL,NULL,'Phường'),
	 (699,'Sông Hiến',NULL,NULL,NULL,'Phường'),
	 (699,'Tân Giang',NULL,NULL,NULL,'Phường'),
	 (699,'Vĩnh Quang',NULL,NULL,NULL,'Xã'),
	 (700,'An Lạc',NULL,NULL,NULL,'Xã'),
	 (700,'Cô Ngân',NULL,NULL,NULL,'Xã'),
	 (700,'Đồng Loan',NULL,NULL,NULL,'Xã'),
	 (700,'Đức Quang',NULL,NULL,NULL,'Xã'),
	 (700,'Kim Loan',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (700,'Lý Quốc',NULL,NULL,NULL,'Xã'),
	 (700,'Minh Long',NULL,NULL,NULL,'Xã'),
	 (700,'Quang Long',NULL,NULL,NULL,'Xã'),
	 (700,'Tân Việt',NULL,NULL,NULL,'Xã'),
	 (700,'Thái Đức',NULL,NULL,NULL,'Xã'),
	 (700,'Thắng Lợi',NULL,NULL,NULL,'Xã'),
	 (700,'Thanh Nhật',NULL,NULL,NULL,'Thị trấn'),
	 (700,'Thị Hoa',NULL,NULL,NULL,'Xã'),
	 (700,'Việt Chu',NULL,NULL,NULL,'Xã'),
	 (700,'Vinh Quý',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (701,'Cải Viên',NULL,NULL,NULL,'Xã'),
	 (701,'Đào Ngạn',NULL,NULL,NULL,'Xã'),
	 (701,'Hạ Thôn',NULL,NULL,NULL,'Xã'),
	 (701,'Hồng Sĩ',NULL,NULL,NULL,'Xã'),
	 (701,'Kéo Yên',NULL,NULL,NULL,'Xã'),
	 (701,'Lũng Nặm',NULL,NULL,NULL,'Xã'),
	 (701,'Mã Ba',NULL,NULL,NULL,'Xã'),
	 (701,'Nà Sác',NULL,NULL,NULL,'Xã'),
	 (701,'Nội Thôn',NULL,NULL,NULL,'Xã'),
	 (701,'Phù Ngọc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (701,'Quý Quân',NULL,NULL,NULL,'Xã'),
	 (701,'Sĩ Hai',NULL,NULL,NULL,'Xã'),
	 (701,'Sóc Hà',NULL,NULL,NULL,'Xã'),
	 (701,'Thượng Thôn',NULL,NULL,NULL,'Xã'),
	 (701,'Tổng Cọt',NULL,NULL,NULL,'Xã'),
	 (701,'Trường Hà',NULL,NULL,NULL,'Xã'),
	 (701,'Vân An',NULL,NULL,NULL,'Xã'),
	 (701,'Vần Dính',NULL,NULL,NULL,'Xã'),
	 (701,'Xuân Hoà',NULL,NULL,NULL,'Xã'),
	 (702,'Bạch Đằng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (702,'Bế Triều',NULL,NULL,NULL,'Xã'),
	 (702,'Bình Dương',NULL,NULL,NULL,'Xã'),
	 (702,'Bình Long',NULL,NULL,NULL,'Xã'),
	 (702,'Công Trừng',NULL,NULL,NULL,'Xã'),
	 (702,'Đại Tiến',NULL,NULL,NULL,'Xã'),
	 (702,'Dân Chủ',NULL,NULL,NULL,'Xã'),
	 (702,'Đức Long',NULL,NULL,NULL,'Xã'),
	 (702,'Đức Xuân',NULL,NULL,NULL,'Xã'),
	 (702,'Hà Trì',NULL,NULL,NULL,'Xã'),
	 (702,'Hoàng Tung',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (702,'Hồng Nam',NULL,NULL,NULL,'Xã'),
	 (702,'Hồng Việt',NULL,NULL,NULL,'Xã'),
	 (702,'Lê Chung',NULL,NULL,NULL,'Xã'),
	 (702,'Nam Tuấn',NULL,NULL,NULL,'Xã'),
	 (702,'Ngũ Lão',NULL,NULL,NULL,'Xã'),
	 (702,'Nguyễn Huệ',NULL,NULL,NULL,'Xã'),
	 (702,'Nước Hai',NULL,NULL,NULL,'Thị trấn'),
	 (702,'Quang Trung',NULL,NULL,NULL,'Xã'),
	 (702,'Trưng Vương',NULL,NULL,NULL,'Xã'),
	 (702,'Trương Lương',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (703,'Bắc Hợp',NULL,NULL,NULL,'Xã'),
	 (703,'Ca Thành',NULL,NULL,NULL,'Xã'),
	 (703,'Hoa Thám',NULL,NULL,NULL,'Xã'),
	 (703,'Hưng Đạo',NULL,NULL,NULL,'Xã'),
	 (703,'Lang Môn',NULL,NULL,NULL,'Xã'),
	 (703,'Mai Long',NULL,NULL,NULL,'Xã'),
	 (703,'Minh Tâm',NULL,NULL,NULL,'Xã'),
	 (703,'Minh Thanh',NULL,NULL,NULL,'Xã'),
	 (703,'Nguyên Bình',NULL,NULL,NULL,'Thị trấn'),
	 (703,'Phan Thanh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (703,'Quang Thành',NULL,NULL,NULL,'Xã'),
	 (703,'Tam Kim',NULL,NULL,NULL,'Xã'),
	 (703,'Thái Học',NULL,NULL,NULL,'Xã'),
	 (703,'Thành Công',NULL,NULL,NULL,'Xã'),
	 (703,'Thể Dục',NULL,NULL,NULL,'Xã'),
	 (703,'Thịnh Vượng',NULL,NULL,NULL,'Xã'),
	 (703,'Tĩnh Túc',NULL,NULL,NULL,'Thị trấn'),
	 (703,'Triệu Nguyên',NULL,NULL,NULL,'Xã'),
	 (703,'Vũ Nông',NULL,NULL,NULL,'Xã'),
	 (703,'Yên Lạc',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (704,'Cách Linh',NULL,NULL,NULL,'Xã'),
	 (704,'Đại Sơn',NULL,NULL,NULL,'Xã'),
	 (704,'Hòa Thuận',NULL,NULL,NULL,'Thị trấn'),
	 (704,'Hồng Đại',NULL,NULL,NULL,'Xã'),
	 (704,'Lương Thiện',NULL,NULL,NULL,'Xã'),
	 (704,'Mỹ Hưng',NULL,NULL,NULL,'Xã'),
	 (704,'Tà Lùng',NULL,NULL,NULL,'Thị trấn'),
	 (704,'Tiên Thành',NULL,NULL,NULL,'Xã'),
	 (704,'Triệu Ẩu',NULL,NULL,NULL,'Xã'),
	 (705,'Bình Lăng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (705,'Cai Bộ',NULL,NULL,NULL,'Xã'),
	 (705,'Chí Thảo',NULL,NULL,NULL,'Xã'),
	 (705,'Đoài Khôn',NULL,NULL,NULL,'Xã'),
	 (705,'Độc Lập',NULL,NULL,NULL,'Xã'),
	 (705,'Hạnh Phúc',NULL,NULL,NULL,'Xã'),
	 (705,'Hoàng Hải',NULL,NULL,NULL,'Xã'),
	 (705,'Hồng Định',NULL,NULL,NULL,'Xã'),
	 (705,'Hồng Quang',NULL,NULL,NULL,'Xã'),
	 (705,'Ngọc Động',NULL,NULL,NULL,'Xã'),
	 (705,'Phi Hải',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (705,'Phúc Sen',NULL,NULL,NULL,'Xã'),
	 (705,'Quảng Hưng',NULL,NULL,NULL,'Xã'),
	 (705,'Quảng Uyên',NULL,NULL,NULL,'Thị trấn'),
	 (705,'Quốc Dân',NULL,NULL,NULL,'Xã'),
	 (705,'Quốc Phong',NULL,NULL,NULL,'Xã'),
	 (705,'Tự Do',NULL,NULL,NULL,'Xã'),
	 (706,'Canh Tân',NULL,NULL,NULL,'Xã'),
	 (706,'Danh Sỹ',NULL,NULL,NULL,'Xã'),
	 (706,'Đông Khê',NULL,NULL,NULL,'Thị trấn'),
	 (706,'Đức Long',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (706,'Đức Thông',NULL,NULL,NULL,'Xã'),
	 (706,'Đức Xuân',NULL,NULL,NULL,'Xã'),
	 (706,'Kim Đồng',NULL,NULL,NULL,'Xã'),
	 (706,'Lê Lai',NULL,NULL,NULL,'Xã'),
	 (706,'Lê Lợi',NULL,NULL,NULL,'Xã'),
	 (706,'Minh Khai',NULL,NULL,NULL,'Xã'),
	 (706,'Quang Trọng',NULL,NULL,NULL,'Xã'),
	 (706,'Thái Cường',NULL,NULL,NULL,'Xã'),
	 (706,'Thị Ngân',NULL,NULL,NULL,'Xã'),
	 (706,'Thụy Hùng',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (706,'Trọng Con',NULL,NULL,NULL,'Xã'),
	 (706,'Vân Trình',NULL,NULL,NULL,'Xã'),
	 (707,'Bình Lãng',NULL,NULL,NULL,'Xã'),
	 (707,'Cần Nông',NULL,NULL,NULL,'Xã'),
	 (707,'Cần Yên',NULL,NULL,NULL,'Xã'),
	 (707,'Đa Thông',NULL,NULL,NULL,'Xã'),
	 (707,'Lương Can',NULL,NULL,NULL,'Xã'),
	 (707,'Lương Thông',NULL,NULL,NULL,'Xã'),
	 (707,'Ngọc Động',NULL,NULL,NULL,'Xã'),
	 (707,'Thanh Long',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (707,'Thông Nông',NULL,NULL,NULL,'Thị trấn'),
	 (707,'Vị Quang',NULL,NULL,NULL,'Xã'),
	 (707,'Yên Sơn',NULL,NULL,NULL,'Xã'),
	 (708,'Cao Chương',NULL,NULL,NULL,'Xã'),
	 (708,'Cô Mười',NULL,NULL,NULL,'Xã'),
	 (708,'Hùng Quốc',NULL,NULL,NULL,'Thị trấn'),
	 (708,'Lưu Ngọc',NULL,NULL,NULL,'Xã'),
	 (708,'Quang Hán',NULL,NULL,NULL,'Xã'),
	 (708,'Quang Trung',NULL,NULL,NULL,'Xã'),
	 (708,'Quang Vinh',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (708,'Quốc Toản',NULL,NULL,NULL,'Xã'),
	 (708,'Tri Phương',NULL,NULL,NULL,'Xã'),
	 (708,'Xuân Nội',NULL,NULL,NULL,'Xã'),
	 (709,'Cảnh Tiên',NULL,NULL,NULL,'Xã'),
	 (709,'Cao Thăng',NULL,NULL,NULL,'Xã'),
	 (709,'Chí Viễn',NULL,NULL,NULL,'Xã'),
	 (709,'Đàm Thủy',NULL,NULL,NULL,'Xã'),
	 (709,'Đình Minh',NULL,NULL,NULL,'Xã'),
	 (709,'Đình Phong',NULL,NULL,NULL,'Xã'),
	 (709,'Đoài Côn',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (709,'Đức Hồng',NULL,NULL,NULL,'Xã'),
	 (709,'Khâm Thành',NULL,NULL,NULL,'Xã'),
	 (709,'Lăng Hiếu',NULL,NULL,NULL,'Xã'),
	 (709,'Lăng Yên',NULL,NULL,NULL,'Xã'),
	 (709,'Ngọc Chung',NULL,NULL,NULL,'Xã'),
	 (709,'Ngọc Côn',NULL,NULL,NULL,'Xã'),
	 (709,'Ngọc Khê',NULL,NULL,NULL,'Xã'),
	 (709,'Phong Châu',NULL,NULL,NULL,'Xã'),
	 (709,'Phong Nậm',NULL,NULL,NULL,'Xã'),
	 (709,'Thân Giáp',NULL,NULL,NULL,'Xã');
INSERT INTO public.wards ("districtId","name","createdAt","updatedAt","deletedAt",prefix) VALUES
	 (709,'Thông Huề',NULL,NULL,NULL,'Xã'),
	 (709,'Trùng Khánh',NULL,NULL,NULL,'Thị trấn'),
	 (709,'Trung Phúc',NULL,NULL,NULL,'Xã');
