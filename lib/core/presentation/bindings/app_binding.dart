import 'package:event_bus/event_bus.dart';
import 'package:mobile_base_clean/core/data/data_source/local/local_src.dart';
import 'package:mobile_base_clean/core/data/data_source/network/network_src.dart';
import 'package:mobile_base_clean/core/domain/entity/app_data.dart';
import 'package:mobile_base_clean/core/domain/entity/app_data_impl.dart';
import 'package:mobile_base_clean/core/presentation/controllers/app_controller.dart';
import 'package:mobile_base_clean/core/presentation/navigation/navigation_src.dart';
import 'package:mobile_base_clean/shared/exceptions/exception_handler.dart';
import 'package:mobile_base_clean/shared/mappers/mappers_src.dart';
import 'package:mobile_base_clean/shared/utils/utils_src.dart';
import 'package:get/get.dart';

import 'base_bindings.dart';

class AppBinding extends BaseBindings {
  Future<void> bind() async {
    await bindingsCore();
    _bindingMappers();
    dependencies();
  }

  void _bindingMappers() {
    Get.lazyPut(() => ProvinceDataMapper(), fenix: true);
    Get.lazyPut(() => LoginRequestDataMapper(), fenix: true);
  }

  Future<void> bindingsCore() async {
    Get.put<AppData>(AppDataImpl(), permanent: true);
    Get.put<EventBus>(EventBus(), permanent: true);
    await [
      Get.putAsync<AppHive>(
        AppHiveImpl().init,
        permanent: true,
      ),
      Get.putAsync(AppInfo().init, permanent: true)
    ].wait;
    Get.put<AppNavigator>(AppNavigatorImpl(), permanent: true);
    Get.put(ExceptionHandler(nav: sl()), permanent: true);
    Get.put(HeaderInterceptor(sl()), permanent: true);
    Get.put(AccessTokenInterceptor(sl()), permanent: true);
    Get.put(
      AuthAppServerApiClient(sl(), sl()),
      permanent: true,
    );
    Get.put(NonAuthAppServerApiClient(sl()), permanent: true);
  }

  @override
  void bindingsController() {
    Get.put(AppController(), permanent: true);
  }

  @override
  void bindingsRepository() {}

  @override
  void bindingsUseCase() {}
}
