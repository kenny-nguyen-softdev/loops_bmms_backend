import BaseRepository from '../../core/repositories/base/BaseRepository';
import { Image } from '../../../models/Image';
import { ImageInterface } from './image-interface.repository';

class ImageRepository extends BaseRepository<Image> implements ImageInterface {
  constructor() {
    super(Image);
  }
  async findByProductId(productId: number): Promise<Image[] | []> {
    return await this.find({
      where: {
        productId: productId,
      },
    });
  }
  async deleteByProductId(productId: number): Promise<boolean> {
    return await this.delete({
      where: {
        productId: productId,
      },
    });
  }
  async findByServiceId(serviceId: number): Promise<Image[] | []> {
    return await this.find({
      where: {
        serviceId: serviceId,
      },
    });
  }
  async deleteByServiceId(serviceId: number): Promise<boolean> {
    return await this.delete({
      where: {
        serviceId: serviceId,
      },
    });
  }
  async findByComboId(comboId: number): Promise<Image[] | []> {
    return await this.find({
      where: {
        comboId: comboId,
      },
    });
  }
  async deleteByComboId(comboId: number): Promise<boolean> {
    return await this.delete({
      where: {
        comboId: comboId,
      },
    });
  }
}
export default ImageRepository;
