import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class DigilockerAuthScreen extends StatefulWidget {
  final uri;
  const DigilockerAuthScreen({super.key, required this.uri});

  @override
  State<DigilockerAuthScreen> createState() => _DigilockerAuthScreenState();
}

class _DigilockerAuthScreenState extends State<DigilockerAuthScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //  onRefresh: () async {
    //     if (defaultTargetPlatform == TargetPlatform.android) {
    //       webview.reload();
    //     } else if (defaultTargetPlatform == TargetPlatform.iOS) {
    //       webview.loadUrl(
    //           urlRequest: URLRequest(url: await webview.getUrl()));
    //     }
    //   };
  }

  String uri = " ";
  double _progress = 0;
  late InAppWebViewController webview;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Stack(
        children: [
          const SizedBox(
            height: 100,
          ),
          InAppWebView(
            initialUrlRequest: URLRequest(url: widget.uri),
            onWebViewCreated: (InAppWebViewController controller) {
              webview = controller;
            },
            // onProgressChanged:
            //     (InAppWebViewController controller, int progress) {
            //   setState(() {
            //     _progress = progress / 100;
            //   });
            // },
            onLoadStart: (webview, newUri) async {
              setState(() async {
                uri = newUri.toString();
                await callSecondApi(uri);

                print(uri);
              });
            },
          ),
          _progress < 1
              ? SizedBox(
                  height: 3,
                  child: LinearProgressIndicator(
                    value: _progress,
                    color: Colors.black,
                  ),
                )
              : const SizedBox()
        ],
      ),
    );
  }

  callSecondApi(String uri) async {
    String txnId = '';
    const start = 'appparam=';
    const end = '&status';
    final startIndex = uri.indexOf(start);
    final endIndex = uri.indexOf(end, startIndex + start.length);
    var digiLockId = '';

    var appparam = uri.substring(startIndex + start.length, endIndex);
    txnId = uri.split('txnid=')[1];

    Map<String, Object> params = {
      'TxnID': txnId,
      'PractitionerID': appparam,
      'url':
          'http://164.100.133.78:8090/DLGateway/API/CeGLockerAPI.svc/GetDigilockerIDFromTxnID',
    };

    final dio = Dio();
    try {
      Response  response = await dio.post(
          'https://digiapi.smartschoolsystem.co/api/Digi/TxnId',
          queryParameters: params);
      if (response.statusCode == 200) {
        digiLockId = response.data;
        print(digiLockId);
        await getDigiLockAccess(digiLockId, appparam);
      }

      log(response.data);
      print(response);
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }

  getDigiLockAccess(String digiLockId, String practitionId) async {
    final dio = Dio();

    Map<String, Object> params = {
      'url':
          'http://164.100.133.78:8090/DLGateway/API/CeGLockerAPI.svc/GetIssuedDocList',
      'Digi': digiLockId,
      'PractitionerID': practitionId
    };

    try {
      Response response = await dio.post(
          'https://digiapi.smartschoolsystem.co/api/Digi/DocList',
          queryParameters: params);

      log(response.data);
      
      // print(response);
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }


}
