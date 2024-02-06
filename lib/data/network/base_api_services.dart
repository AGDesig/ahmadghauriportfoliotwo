
import 'package:ahmad_ghauri_portfolio2/res/dio/app_dio.dart';

abstract class BaseApiServices {
  AppDio dio = AppDio();
  Future<dynamic> getGetApiResponse(String url);

  Future<dynamic> getPostApiResponse(String url,dynamic data,String xMasterKey);
}
