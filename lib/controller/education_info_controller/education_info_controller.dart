import 'dart:developer';

import 'package:get/get.dart';
import 'package:ksnc/service/digi_locker_auth/digi_locker_auth_service.dart';

import '../../view/screens/ui/inapp_browser_screen.dart/digi_locker_screen.dart';

class EducationalInformationController extends GetxController {
  final digiLockerAuthService = DigiLockerAuthService();

  var rediRectedUrl;
  Uri? uri;

  getRedirectUrl() async {
    String practitionId = '259';

    Map<String, Object> credentials = {
      "url":
          "http://164.100.133.78:8090/DLGateway/API/CeGLockerAPI.svc/DigiLockerSignIn",
      "PractitionerID": practitionId,
    };

    var response =
        await digiLockerAuthService.getRedirectUrlApiCall(credentials);
    log(response.data);
    rediRectedUrl = response.data;
    uri = Uri.parse(rediRectedUrl);
    print(uri);

    if (response.statusCode == 200) {
      Get.to( DigilockerAuthScreen(uri: uri,));
      // await openBrowserUrl(url: uri!);
    }
  }

  // Future openBrowserUrl({required Uri url}) async {
  //   var digilockerUri = await launchUrl(url,
  //       mode: LaunchMode.inAppWebView,
  //       webViewConfiguration:
  //           const WebViewConfiguration(enableDomStorage: true));
  //   print(digilockerUri);
  //   // if (await canLaunchUrl(
  //   //   url,
  //   // )) {

  //   // } else {
  //   //   print('This action is not allowed');
  //   // }
  // }
}
