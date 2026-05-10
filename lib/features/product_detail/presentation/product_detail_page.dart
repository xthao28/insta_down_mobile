import 'package:flutter/material.dart';
import 'package:mobile_base_clean/core/presentation/widgets/base_get_page_factory.dart';
import 'package:mobile_base_clean/features/product_detail/presentation/controller/product_detail_controller.dart';

class ProductDetailPage extends BaseGetPageFactory<ProductDetailController> {
  ProductDetailPage({super.key});

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductDetail'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Product ID: ${controller.productId}',
              style: const TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: controller.goToAnotherProductDetail,
              child: const Text('Go to Another Product Detail'),
            ),
          ],
        ),
      ),
    );
  }
}
