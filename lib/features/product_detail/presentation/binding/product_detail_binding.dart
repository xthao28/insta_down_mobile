import 'package:mobile_base_clean/core/presentation/bindings/base_bindings_factory.dart';
import 'package:mobile_base_clean/features/product_detail/presentation/controller/product_detail_controller.dart';
import 'package:mobile_base_clean/shared/utils/utils_src.dart';
import 'package:get/get.dart';

class ProductDetailBinding extends BaseBindingsFactory {
  @override
  void bindingsFactoryController() {
    Get.lazyPutFactory<ProductDetailController>(
      () => ProductDetailController(
        productId: Get.arguments as int,
      ),
    );
  }

  @override
  void bindingsFactoryRepository() {
    // TODO: implement bindingsFactoryRepository
  }

  @override
  void bindingsFactoryUseCase() {
    // TODO: implement bindingsFactoryUseCase
  }
}
