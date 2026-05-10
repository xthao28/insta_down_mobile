import 'package:dio/dio.dart';
import 'package:mobile_base_clean/core/data/data_source/network/dio_builder.dart';
import 'package:mobile_base_clean/core/data/data_source/network/middleware/access_token_intercepter.dart';
import 'package:mobile_base_clean/core/data/data_source/network/middleware/header_intercepter.dart';
import 'package:mobile_base_clean/core/data/data_source/network/rest_api_client.dart';
import 'package:mobile_base_clean/shared/constants/const_src.dart';

class AuthAppServerApiClient extends RestApiClient {
  AuthAppServerApiClient(
    HeaderInterceptor headerInterceptor,
    AccessTokenInterceptor accessTokenInterceptor,
  ) : super(
          dio: DioBuilder.createDio(
            options: BaseOptions(baseUrl: ApiUrl.baseUrl),
            interceptors: [
              headerInterceptor,
              accessTokenInterceptor,
            ],
          ),
        );
}
