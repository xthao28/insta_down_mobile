import 'package:flutter/material.dart';
import 'package:mobile_base_clean/core/presentation/widgets/base_get_page.dart';
import 'package:mobile_base_clean/features/home/presentation/controller/home_controller.dart';
import 'package:mobile_base_clean/routes/app_routes.dart';

class HomePage extends BaseGetPage<HomeController> {
  HomePage({super.key});

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            nav.toNamedFactory(
              AppRoutes.productDetail.path,
              arguments: 1,
            );
          },
          child: const Text('Go to Product Detail'),
        ),
      ),
    );
  }
}
