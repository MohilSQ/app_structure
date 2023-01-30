// import 'package:app_structure/data/api_repository/api_class.dart';
// import 'package:app_structure/utils/app_snackbar.dart';
// import 'package:app_structure/utils/color_print.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
//
// class APIFunction {
//   /// ------ To Check Internet Aviblity -------------------->>>
//   ConnectivityResult? connectivityResult;
//   final Connectivity connectivity = Connectivity();
//   Future<bool> getConnectivityResult() async {
//     try {
//       connectivityResult = await connectivity.checkConnectivity();
//       printOkStatus(connectivityResult.toString());
//       if (connectivityResult == ConnectivityResult.wifi || connectivityResult == ConnectivityResult.mobile) {
//         return true;
//       } else {
//         showSnackBar( message: Strings.noInternetAvailable);
//         return false;
//       }
//     } on PlatformException catch (e) {
//       printError(e.toString());
//       showSnackBar( message: Strings.noInternetAvailable);
//       return false;
//     }
//   }
//
//   /// ------ To Call Post Api -------------------->>>
//   Future<dynamic> postApiCall({
//     required String apiName,
//     required BuildContext context,
//     dynamic params,
//     bool isLoading = true,
//     bool isFormData = false,
//   }) async {
//     if (await getConnectivityResult()) {
//       printAction("params -------->>> ${isFormData ? params!.fields : params}");
//       var response = await HttpUtil(isLoading, context).post(
//         apiName,
//         data: params,
//         isFromData: isFormData,
//       );
//       return response;
//     }
//   }
//
//   /// ------ To Call Get Api -------------------->>>
//   Future<dynamic> getApiCall({
//     required String apiName,
//     required BuildContext context,
//     dynamic queryParameters,
//     bool isLoading = true,
//   }) async {
//     if (await getConnectivityResult()) {
//       printAction("params -------->>> $queryParameters");
//       var response = await HttpUtil(isLoading, context).get(
//         apiName,
//         queryParameters: queryParameters,
//       );
//       return response;
//     }
//   }
// }
