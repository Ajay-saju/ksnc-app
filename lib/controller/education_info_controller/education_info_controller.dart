import 'dart:developer';

import 'package:get/get.dart';
import 'package:ksnc/service/digi_locker_auth/digi_locker_auth_service.dart';

class EducationalInformationController extends GetxController {
  final digiLockerAuthService = DigiLockerAuthService();

  getRedirectUrl() async {
    String practitionId = 'ksnc';

    Map<String, Object> credentials = {
      "url":
          "http://164.100.133.78:8090/DLGateway/API/CeGLockerAPI.svc/DigiLockerSignIn",
      "method": "POST",
      "AppParam": practitionId,
    };

    var response =
        await digiLockerAuthService.getRedirectUrlApiCall(credentials);
    log(response.data);
  }
}
