/*
 * *
 *  * Created by duongnh, TRUONG MINH THINH TECHNOLOGY JOINT STOCK COMPANY on 14/08/2024
 *  * Copyright (c) 2024 Mobile Team, TMT Solution . All rights reserved.
 * *
 */

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_sample/common/logging/logging_wrapper.dart';
import 'package:flutter_sample/services/config_service/config_service.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class DioProvider {
  final Logger _logger = getLogger('FcmService');

  @singleton
  Dio dio(ConfigService config) {
    _logger.d('DioProvider init');
    final Dio dio = Dio(
      BaseOptions(
        baseUrl: 'https://flutter.dev',
        headers: {
          'accept-language': 'vi',
        },
        connectTimeout: const Duration(seconds: 3),
        receiveTimeout: const Duration(seconds: 3),
      ),
    );

    dio.interceptors.add(
      QueuedInterceptorsWrapper(
        onRequest: (options, handler) async {
          return handler.next(options);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onError: (DioException e, handler) async {
          return handler.next(e);
        },
      ),
    );

    if (!kReleaseMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90,
        ),
      );
    }
    return dio;
  }
}
