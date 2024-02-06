import 'package:flutter/material.dart';
import 'package:ahmad_ghauri_portfolio2/data/network/base_api_services.dart';
import 'package:ahmad_ghauri_portfolio2/data/network/network_api_services.dart';
import 'package:ahmad_ghauri_portfolio2/model/ECommerceModel.dart';
import 'dart:io';

import 'package:ahmad_ghauri_portfolio2/res/app_url.dart';


class ECommereceRepo {
  BaseApiServices _apiServices = NetworkApiServices();

  Future<ECommerceModel> EcommerceRepoApi() async {

    try {
      dynamic response = await _apiServices.getGetApiResponse(AppUrl.ecommerceURl);
      return response =  ECommerceModel.fromJson(response);
    }catch(e){
      throw e;
    }
  }
}
