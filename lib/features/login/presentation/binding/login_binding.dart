import 'package:mobile_base_clean/core/presentation/bindings/base_bindings.dart';
import 'package:mobile_base_clean/features/login/data/repository/login_repository_impl.dart';
import 'package:mobile_base_clean/features/login/domain/repository/login_repository.dart';
import 'package:mobile_base_clean/features/login/domain/usecase/login_use_case.dart';
import 'package:mobile_base_clean/features/login/domain/usecase/save_auth_info_use_case.dart';
import 'package:mobile_base_clean/features/login/presentation/controller/login_controller.dart';
import 'package:mobile_base_clean/shared/utils/get_finder.dart';
import 'package:get/get.dart';

class LoginBinding extends BaseBindings {
  @override
  void bindingsController() {
    Get.lazyPut(
      () => LoginController(
        sl(),
        sl(),
      ),
    );
  }

  @override
  void bindingsRepository() {
    Get.lazyPut<LoginRepository>(() => LoginRepositoryImpl(sl(), sl()));
  }

  @override
  void bindingsUseCase() {
    Get.lazyPut(() => LoginUseCase(sl()));
    Get.lazyPut(() => SaveAuthInfoUseCase(sl()));
  }
}
