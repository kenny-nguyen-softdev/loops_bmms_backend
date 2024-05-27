import BaseRepository from '../../core/repositories/base/BaseRepository';
import { Product } from '../../../models/Product';
import { ProductInterface } from './product-interface.repository';
import { Brand, Category, Unit, Image, Tax, ProductUnit, Specification } from '../../../models';
import { Op } from 'sequelize';

export interface GetAllProductsFilters {
  keyword: string;
}

class ProductRepository extends BaseRepository<Product> implements ProductInterface {
  constructor() {
    super(Product);
  }
  async get(filters: GetAllProductsFilters): Promise<Product[] | null> {
    return await this.model.findAll({
      where: {
        name: {
          [Op.like]: `%${filters?.keyword ?? ''}%`,
        },
      },
      order: [['createdAt', 'DESC']],
      include: [
        {
          model: Category,
          as: 'category',
        },
        {
          model: Brand,
          as: 'brand',
        },
        {
          model: Unit,
          as: 'weightUnit',
        },
        {
          model: Unit,
          as: 'sizeUnit',
        },
        {
          model: Image,
          as: 'images',
        },
        {
          model: Tax,
          as: 'inputTax',
        },
        {
          model: Tax,
          as: 'outputTax',
        },
        {
          model: ProductUnit,
          as: 'productUnits',
        },
        {
          model: Specification,
          as: 'specifications',
        },
      ],
    });
  }
  async getOne(productId: number): Promise<Product | null> {
    return await this.model.findOne({
      where: {
        id: productId,
      },
      include: [
        {
          model: Category,
          as: 'category',
        },
        {
          model: Brand,
          as: 'brand',
        },
        {
          model: Unit,
          as: 'weightUnit',
        },
        {
          model: Unit,
          as: 'sizeUnit',
        },
        {
          model: Image,
          as: 'images',
        },
        {
          model: Tax,
          as: 'inputTax',
        },
        {
          model: Tax,
          as: 'outputTax',
        },
        {
          model: ProductUnit,
          as: 'productUnits',
        },
        {
          model: Specification,
          as: 'specifications',
        },
      ],
    });
  }
}
export default ProductRepository;
