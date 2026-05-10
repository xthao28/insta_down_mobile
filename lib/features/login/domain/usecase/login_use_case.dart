import 'dart:async';
import 'package:mobile_base_clean/core/domain/usecase/base_use_case.dart';
import 'package:mobile_base_clean/features/login/domain/entity/login_request.dart';
import 'package:mobile_base_clean/features/login/domain/exception/login_exception.dart';
import 'package:mobile_base_clean/features/login/domain/repository/login_repository.dart';

class LoginUseCase extends UseCase<LoginRequest, String> {
  final LoginRepository _loginRepository;

  LoginUseCase(this._loginRepository);

  @override
  Future<String> execute(LoginRequest input) async {
    if (input.username.trim().isEmpty || input.password.trim().isEmpty) {
      throw LoginException(
        kind: LoginExceptionKind.invalidUsernameOrPassword,
      );
    }

    final response = await _loginRepository.login(
      request: input,
    );

    return response.data ?? '';
  }
}
