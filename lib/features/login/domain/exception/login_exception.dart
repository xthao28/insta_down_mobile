import 'package:mobile_base_clean/shared/exceptions/base/app_exception.dart';

class LoginException extends AppException {
  LoginException({
    required this.kind,
    this.rootException,
  }) : super(AppExceptionType.custom);

  final LoginExceptionKind kind;
  final Object? rootException;

  @override
  String toString() =>
      "LoginException(kind: $kind, rootException: $rootException";
}

enum LoginExceptionKind {
  invalidUsernameOrPassword,
  userNotFound,
  accountLocked,
  unknownError,
}
