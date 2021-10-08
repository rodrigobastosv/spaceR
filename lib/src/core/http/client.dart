import 'package:dio/dio.dart';

import 'http.dart';

final _options = BaseOptions(
  baseUrl: API_BASE_URL,
  queryParameters: {
    FORMAT: JSON,
  },
  validateStatus: (code) => code != HTTP_INTERNAL_ERROR,
);

Dio getDefaultClient() => Dio(_options);
