import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';

import '../orginal_api/orginal_api.dart';

class DigiLockerAuthService {
  static KsncOrginalApis ksncOrginalApis = KsncOrginalApis();
  // final dio = Dio(BaseOptions(baseUrl:ksncOrginalApis.digiLockerBaseUrl ));
  final dio = Dio();

  Future<Response> getRedirectUrlApiCall(Map<String, Object> params) async {
//
    try {
      Response response = await dio.post(
          'https://digiapi.smartschoolsystem.co/api/Digi/authReq',
          queryParameters: params);

      print(response);

      return response;
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}
