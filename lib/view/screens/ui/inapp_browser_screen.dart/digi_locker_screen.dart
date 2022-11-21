import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:image/image.dart' as img;
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart' as pt;
// import 'package:pdf/pdf.dart';
import '../../../../controller/inapp_web_view/inapp_web_view.dart';
import '../../../../model/digilocker_data_model.dart';
// import 'package:pdf/widgets.dart' as pw;
import '../pdf_page/show_pdf_screen.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

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

// var digilockerModelData=[];
  // final webViewController = Get.put(InappWebViewController());
  String? documentUrl;
  List<DigiLockerData> digilockerModelData = [];
  List<dynamic>? digiLockerData;
  String? uri;
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
                if (uri != null) {
                  await callSecondApi(uri!);
                }

                print(uri);
              });
              // webViewController.uri.value = newUri.toString();
              // if (webViewController.uri.value.isNotEmpty) {
              //   await callSecondApi(webViewController.uri.value);
              // }
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
    if (txnId.isNotEmpty) {
      try {
        Response response = await dio.post(
            'https://digiapi.smartschoolsystem.co/api/Digi/TxnId',
            queryParameters: params);
        if (response.statusCode == 200) {
          digiLockId = response.data;
          print(digiLockId);
          await getDigiLockAccess(digiLockId, appparam);
        }
      } catch (e) {
        print(e.toString());
        rethrow;
      }
    }
  }

  Future getDigiLockAccess(String digiLockId, String practitionId) async {
    // DigiLockerData digiLockerDataObj = DigiLockerData();
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

      if (response.statusCode == 200) {
        for (int i = 0; i < response.data.length; i++) {
          digilockerModelData.add(DigiLockerData.fromJson(
              response.data[i] as Map<String, dynamic>));

          print(digilockerModelData.toString());
          // digilockerModelData[i].documentName == 'Class XII Passing Certificate' ? documentUrl= digilockerModelData[i].documentURI.toString() : '';
        }

        documentUrl = digilockerModelData.isNotEmpty
            ? digilockerModelData[1].documentURI.toString()
            : '';
        print(documentUrl.toString());
        if (documentUrl != null || documentUrl != '') {
          await getDocument(documentUrl!, digiLockId);
        }

        // print(digilockerModelData);
      }

// digiLockerData=response.data;
// print(digiLockerData);

//       print(response);
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }

  getDocument(String documentUrl, String digilockerId) async {
    final dio = Dio();
    Map<String, Object> param = {
      "url":
          "http://164.100.133.78:8090/DLGateway/API/CeGLockerAPI.svc/GetDocumentFromDigiLocker",
      "uri": documentUrl,
      "Digi": digilockerId
    };

    try {
      var response = await dio.post(
          'https://digiapi.smartschoolsystem.co/api/Digi/GetDoc',
          queryParameters: param);
      log(response.data);
      if (response.statusCode == 200) {
        var base64WithCredentials = createCorrectFile(
          documentUri: documentUrl,
          responce: response.data,
        );
        print(response.data.toString());
        print(base64WithCredentials.toString());
        var decument = base64Decode(response.data);
        print("---------------------------------------------$decument");
        var decodeDocumet = utf8.decode(decument);

        print("=================================$decodeDocumet.toString()");
        createPdf(base64WithCredentials);
        // var result = await _createFileFromString(response.data);
        // var utf8ListData= jsonDecode(utf8.decode(base64Decode(response.data)));
        // print(utf8ListData.toString());

        // Uint8List? byteCode = response.data;
        // final output = ByteUtil.fromReadable(byteCode);

// List<int> pdfDataBytes = base64.decode(response.data)
//   .map((number) => int.parse(number.toString())).toList();

//   print(pdfDataBytes.toString());
// print(pdfDataBytes.runtimeType);

        // final bytes = Base64Decoder().convert(response.data.toString());

        // print(response.runtimeType);

        // final  pdfByte=response.data.toString().split('+')[1];
        // InputStream inp =InputStream();

        // InputStream targetStream = new ByteArrayInputStream(bytes);

        // pw.Document document = pw.Document.load(response.data);
        // document.save("C:/test.pdf");
        // FileUtils.writeByteArrayToFile(new File("C:/test.pdf"), a);

        // print(bytes);

        // Uint8List byte =Base64Codec().decode(bytes);
        // print(bytes);

        // final String dir = (await getApplicationDocumentsDirectory()).path;
        // final String path = '$dir/example.pdf';
        // final File file = File(path);
        // final result = await file.writeAsBytes(bytes);
        // print(result);
        // print(ByteUtil.toReadable(bytes));
        // print(output);

        // final byteCode3 = response.data;
        // final output3 =
        //     ByteUtil.extract(origin: byteCode3, indexStart: 0, length: 100);
        // print(output3);
        // print(byteCode.runtimeType);

        // InputStream targetStream = new ByteArrayInputStream(bytes);
        // pw.Document document = pw.Document.load(targetStream);
        // document.save("C:/test.pdf");
        // FileUtils.writeByteArrayToFile(new File("C:/test.pdf"), a);

        //  img.Image? image =img.decodeImage(pdfDataBytes);
        // print(image != null);

        // final pdf = pw.Document();

        // pdf.addPage(pw.Page(
        //   pageFormat: PdfPageFormat.a4,
        //   build: (context) => pw.Center(

        //       child: pw.Text(decodeDocumet,
        //           style: const pw.TextStyle(fontSize: 10)),
        //       ),
        // ));

        String pdfFile= await _createFileFromString(response.data.toString());

        print(pdfFile.runtimeType);

        Get.to(PdfScreen(
          byteCode: pdfFile,
        ));
      }

      // print(response.data.toString());
      // // Uint8List? a = response.data;
      // var a = response.data;
      // print(a.runtimeType);
      // a = base64.decode(response.data);

      //  InputStream targetStream = new ByteArrayInputStream(a);
      //   pw.Document document = pw.Document.load(targetStream);
      //   document.save("C:/test.pdf");
      //   FileUtils.writeByteArrayToFile(new File("C:/test.pdf"), a);

    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }

  Future<String> _createFileFromString(response) async {
    final encodedStr = response;
    Uint8List bytes = base64.decode(encodedStr);
    String dir = (await pt.getApplicationDocumentsDirectory()).path;
    File file = File(
        "$dir/" + DateTime.now().millisecondsSinceEpoch.toString() + ".pdf");
    await file.writeAsBytes(bytes);
    return file.path;
  }

  createPdf(String response) async {
    var bytes = base64Decode(response.replaceAll('\n', ''));
    final output = await pt.getTemporaryDirectory();
    final file = File("${output.path}/example.pdf");
    await file.writeAsBytes(bytes.buffer.asUint8List());
    print("${output.path}/example.pdf");
    await OpenFile.open("${output.path}/example.pdf");
    setState(() {});
  }

  String createCorrectFile(
      {required String responce, required String documentUri}) {
    var orginalResponce =
        "{\'RespObj\':\'{\\\"DocName\\\":\\\"$documentUrl.\\\",\\\"DocType\\\":\\\"application\\/xml\\\",\\\"DocBytes\\\":\\\"$responce\\\"}\",\"StatusCode\":0,\"StatusStr\":\"SUCCESS\"}";
    return orginalResponce;
  }
}
