import 'package:mobile_base_clean/features/login/data/model/login_request_data.dart';
import 'package:mobile_base_clean/features/login/domain/entity/login_request.dart';
import 'package:mobile_base_clean/shared/mappers/base/base_data_mapper.dart';

class LoginRequestDataMapper
    extends BaseDataMapper<LoginRequestData, LoginRequest>
    with DataMapperMixin {
  @override
  LoginRequest mapToEntity(LoginRequestData? data) {
    return LoginRequest(
      username: data?.username ?? '',
      password: data?.password ?? '',
    );
  }

  @override
  LoginRequestData mapToData(LoginRequest entity) {
    return LoginRequestData(
      username: entity.username,
      password: entity.password,
    );
  }
}
