import 'package:mobile_base_clean/core/domain/entity/entity.dart';

class LoginRequest extends Entity {
  final String username;
  final String password;

  LoginRequest({
    required this.username,
    required this.password,
  });
}
