import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ahmad_ghauri_portfolio2/data/app_exceptions.dart';
import 'package:ahmad_ghauri_portfolio2/data/network/base_api_services.dart';

class NetworkApiServices extends BaseApiServices {
  @override
  Future getGetApiResponse(String url) async {
    dynamic responseGetJson;
    try {
      dynamic response = await dio
          .get(
            path: url,
           // options: Options(headers: {"X-MASTER-KEY": xMasterKey}),
          )
          .timeout(Duration(seconds: 10));
      responseGetJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException(message: "No Internet Connection");
    }
    return responseGetJson;
  }

  @override
  Future getPostApiResponse(String url, dynamic data, String xMasterKey) async {
    dynamic responseJson;
    try {
      dynamic response = await dio
          .post(
              path: url,
              data: data,
              options: Options(headers: {"X-MASTER-KEY": xMasterKey}))
          .timeout(Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException(message: "No Internet Connection");
    }
    return responseJson;
  }

  dynamic returnResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = response.data;
        return responseJson;
      case 400:
        throw BadRequestException(message: response.statusMessage.toString());
      case 404:
        throw UnauthorisedException(message: response.statusMessage.toString());
      case 500:
      default:
        throw FetchDataException(
            message: "error occured while communication with server" +
                "with status code" +
                response.statusCode.toString());
    }
  }
}
