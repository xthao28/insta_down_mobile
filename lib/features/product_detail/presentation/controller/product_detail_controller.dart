import 'package:mobile_base_clean/core/presentation/controllers/base_getx_controller.dart';
import 'package:mobile_base_clean/routes/app_routes.dart';

class ProductDetailController extends BaseGetxController {
  final int productId;

  ProductDetailController({
    required this.productId,
  });

  void goToAnotherProductDetail() {
    nav.toNamedFactory(
      AppRoutes.productDetail.path,
      arguments: productId + 1,
    );
  }
}
