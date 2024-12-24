import 'dart:convert';

import 'package:dio/dio.dart';

extension HttpRespExtension on Response {
  bool get isSuccessful => (statusCode ?? 404) >= 200 && (statusCode ?? 404) < 300;

  dynamic get decoded => data.toString();

  // Future<ApiResource<T, String>> whenError<T>() async {
  //   switch (statusCode) {
  //     case 400:
  //       return ApiResource.error(decoded['StatusMessage'] ?? decoded['title']);
  //     case 401:
  //       return const ApiResource.loading();
  //     case 428:
  //       return const ApiResource.loading();
  //     case 429:
  //       return const ApiResource.error('You have reached your limit! maximum admitted 9 per 5m.');
  //     case 404:
  //       return ApiResource.error(decoded['StatusMessage']);
  //     case 422:
  //       return ApiResource.error(decoded['StatusMessage'] ?? body);
  //     case 500:
  //       return const ApiResource.error('Server error');
  //     default:
  //       final String e = 'Request failed with $statusCode, $body';
  //       return ApiResource.error(decoded['StatusMessage'] ?? e.toString());
  //   }
  // }
}


