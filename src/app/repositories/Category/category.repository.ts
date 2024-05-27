import BaseRepository from '../../core/repositories/base/BaseRepository';
import { Category } from '../../../models/Category';
import { CategoryInterface } from './category-interface.repository';
import { Op } from 'sequelize';

class CategoryRepository extends BaseRepository<Category> implements CategoryInterface {
  constructor() {
    super(Category);
  }
  async get(): Promise<Category[] | null> {
    return await this.model.findAll({
      where: {
        categoryId: {
          [Op.is]: null,
        },
      },
      order: [['createdAt', 'DESC']],
      include: [
        {
          model: Category,
          as: '_children',
          include: [
            {
              model: Category,
              as: '_children',
            },
          ],
        },
      ],
    });
  }
}
export default CategoryRepository;
