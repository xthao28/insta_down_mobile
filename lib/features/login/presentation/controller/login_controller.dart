import 'package:mobile_base_clean/core/presentation/controllers/base_getx_controller.dart';
import 'package:mobile_base_clean/features/login/domain/entity/login_request.dart';
import 'package:mobile_base_clean/features/login/domain/exception/login_exception.dart';
import 'package:mobile_base_clean/features/login/domain/usecase/login_use_case.dart';
import 'package:mobile_base_clean/features/login/domain/usecase/save_auth_info_use_case.dart';
import 'package:mobile_base_clean/routes/app_routes.dart';
import 'package:mobile_base_clean/shared/utils/utils_src.dart';

class LoginController extends BaseGetxController {
  final LoginUseCase _loginUseCase;
  final SaveAuthInfoUseCase _saveAuthInfoUseCase;

  LoginController(
    this._loginUseCase,
    this._saveAuthInfoUseCase,
  );

  Future<void> login() async {
    await buildState(
      showLoadingOverlay: true,
      action: () async {
        // Example usage of the login use case
        final loginRequest = LoginRequest(
          username: 'sd8888k17',
          password: 'Viettel@789',
        );
        final accessToken = await _loginUseCase.execute(loginRequest);
        logger.d('Login result: $accessToken');

        await _saveAuthInfoUseCase.execute(
          SaveAuthInfoUseCaseInput(
            username: loginRequest.username,
            accessToken: accessToken,
          ),
        );

        nav.toNamed(AppRoutes.home.path);
      },
      onError: (error) {
        // Tự xử lý lỗi lấy, nếu xử lý được thì trả về null để hệ thống không xử lý nữa
        if (error is LoginException &&
            error.kind == LoginExceptionKind.invalidUsernameOrPassword) {
          nav.showSnackBar("Tài khoản hoặc mật khẩu không đúng");
          return null;
        }

        // Không xử lý được lỗi, trả lại error để core xử lý
        return error;
      },
      // handleError: false, // Không xử lý lỗi, gọi và quên
    );
  }
}
