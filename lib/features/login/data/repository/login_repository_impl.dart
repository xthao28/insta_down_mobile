import 'package:mobile_base_clean/core/data/data_source/network/network_src.dart';
import 'package:mobile_base_clean/core/data/model/model_src.dart';
import 'package:mobile_base_clean/features/login/domain/entity/login_request.dart';
import 'package:mobile_base_clean/features/login/domain/repository/login_repository.dart';
import 'package:mobile_base_clean/shared/constants/const_src.dart';
import 'package:mobile_base_clean/shared/mappers/login_request_data_mapper.dart';

class LoginRepositoryImpl extends LoginRepository {
  final NonAuthAppServerApiClient _nonAuthAppServerApiClient;
  final LoginRequestDataMapper _loginRequestDataMapper;

  LoginRepositoryImpl(
    this._nonAuthAppServerApiClient,
    this._loginRequestDataMapper,
  );

  @override
  Future<BaseResponse<String>> login({
    required LoginRequest request,
  }) async {
    final response = await _nonAuthAppServerApiClient.request(
      method: RestMethod.post,
      path: ApiUrl.login,
      body: _loginRequestDataMapper.mapToData(request).toJson(),
      cancelToken: cancelToken,
    );

    return BaseResponse<String>.fromJson(
      response as Map<String, dynamic>,
      fromData: (json) => json['result'] as String? ?? '',
    );
  }
}
