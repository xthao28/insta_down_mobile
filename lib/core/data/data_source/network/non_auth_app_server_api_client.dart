import 'package:dio/dio.dart';
import 'package:mobile_base_clean/core/data/data_source/network/dio_builder.dart';
import 'package:mobile_base_clean/core/data/data_source/network/middleware/header_intercepter.dart';
import 'package:mobile_base_clean/core/data/data_source/network/rest_api_client.dart';
import 'package:mobile_base_clean/shared/constants/api_url.dart';

class NonAuthAppServerApiClient extends RestApiClient {
  NonAuthAppServerApiClient(
    HeaderInterceptor headerInterceptor,
  ) : super(
          dio: DioBuilder.createDio(
            options: BaseOptions(baseUrl: ApiUrl.baseUrl),
            interceptors: [
              headerInterceptor,
            ],
          ),
        );
}
