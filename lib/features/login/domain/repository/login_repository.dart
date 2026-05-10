import 'package:mobile_base_clean/core/data/model/model_src.dart';
import 'package:mobile_base_clean/core/domain/repository/base_repository.dart';
import 'package:mobile_base_clean/features/login/domain/entity/login_request.dart';

abstract class LoginRepository extends BaseRepository {
  Future<BaseResponse<String>> login({
    required LoginRequest request,
  });
}
