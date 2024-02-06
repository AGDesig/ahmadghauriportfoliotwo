
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';
import 'package:ahmad_ghauri_portfolio2/res/app_url.dart';
import 'package:ahmad_ghauri_portfolio2/res/keys/headers.dart';
import 'package:ahmad_ghauri_portfolio2/res/keys/pref_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppDioInterceptor extends Interceptor {
  String token = "";
  final Logger _logger = Logger();

  AppDioInterceptor() {
    gettokenSharedPreferences();
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    Map<String, dynamic> er = {
      "type": err.type,
      "message": err.message,
      "status_code": err.response?.statusCode,
      "status_message": err.response?.statusMessage,
      "headers": err.response?.headers,
      "data": err.response?.data,
      "response": err.response,
    };
    _logger.e(er);

    if (err.response != null) {
      handler.resolve(err.response!);
    } else {
      handler.next(err);
    }
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    Map<String, dynamic> er = {
      "base_url": response.requestOptions.baseUrl,
      "end_point": response.requestOptions.path,
      "method": response.requestOptions.method,
      "status_code": response.statusCode,
      "status_message": response.statusMessage,
      "headers": response.headers,
      "data": response.data,
      "extra": response.extra,
      "response": response,
    };
    _logger.i(er);

    handler.next(response);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (AppUrl.baseUrl.isEmpty) {
      throw Exception("Base URL is not set");
    }

    options..baseUrl = AppUrl.baseUrl;
    if (token.isNotEmpty) {
      options..headers.addAll({RequestHeader.authorization: "Bearer $token"});
    }

    Map<String, dynamic> er = {
      "base_url": options.baseUrl,
      "end_point": options.path,
      "method": options.method,
      "headers": options.headers,
      "params": options.queryParameters,
      "data": options.data,
      "extra": options.extra,
    };
    _logger.d(er);

    handler.next(options);
  }

  void gettokenSharedPreferences() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    token = prefs.getString(PrefKey.authorization) ?? "";
  }
}