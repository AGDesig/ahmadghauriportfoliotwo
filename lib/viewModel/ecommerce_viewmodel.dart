// import 'package:flutter/material.dart';
// import 'package:ahmad_ghauri_portfolio2/data/response/api_response.dart';
// import 'package:ahmad_ghauri_portfolio2/model/ECommerceModel.dart';
// import 'package:ahmad_ghauri_portfolio2/repository/ecommerce_repo.dart';
//
// class EcommerceViewModel with ChangeNotifier {
//   final _eCommereceRepo = ECommereceRepo();
//   ApiResponse<ECommerceModel> ecommerceList = ApiResponse.loading();
//
//   setEcommerceList(ApiResponse<ECommerceModel> response) {
//     ecommerceList = response;
//     notifyListeners();
//   }
//
//   Future<void> fetcheCommereceRepoData() async {
//   //  setEcommerceList(ApiResponse.loading());
//       _eCommereceRepo.EcommerceRepoApi().then((value) {
//       setEcommerceList(ApiResponse.completed(value));
//
//     }).onError((error, stackTrace) {
//       setEcommerceList(ApiResponse.error(error.toString()));
//        throw "Error: $error\n StackTrace: $stackTrace";
//     });
//
//   }
// }
