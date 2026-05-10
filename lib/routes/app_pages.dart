import 'package:get/get.dart';
import 'package:mobile_base_clean/features/home/presentation/binding/home_binding.dart';
import 'package:mobile_base_clean/features/home/presentation/home_page.dart';
import 'package:mobile_base_clean/features/splash/splash_page.dart';
import 'package:mobile_base_clean/routes/app_routes.dart';

// TODO(step-11): add PreviewPage + PreviewBinding
// TODO(step-13): add HistoryPage + HistoryBinding
// TODO(step-14): add SettingsPage + SettingsBinding

abstract final class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.splash.path,
      page: () => const SplashPage(),
    ),
    GetPage(
      name: AppRoutes.home.path,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
