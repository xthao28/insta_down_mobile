import 'package:mobile_base_clean/core/presentation/bindings/base_bindings.dart';
import 'package:mobile_base_clean/features/home/presentation/controller/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends BaseBindings {
  @override
  void bindingsController() {
    Get.lazyPut(() => HomeController());
  }

  @override
  void bindingsRepository() {
    // TODO: implement bindingsRepository
  }

  @override
  void bindingsUseCase() {
    // TODO: implement bindingsUseCase
  }
}
