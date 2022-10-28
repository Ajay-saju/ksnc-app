import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../../core/colors/colors.dart';
// import 'package:pdf/widgets.dart';
// import 'package:pdf/widgets.dart%20';

class Reciept {
  static Future<File> genaratePdf(String text) async {
    final pdf = pw.Document();
    pdf.addPage(pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) => pw.Center(
              child: pw.Padding(
                padding: const pw.EdgeInsets.all(15),
                child: pw.Table(
                  columnWidths: const {0: pw.FractionColumnWidth(0.45)},
                  border: pw.TableBorder.all(width: 2, color: PdfColors.grey),
                  children: [
                    buildCol(['Type', ' RR GNM & PBBSC']),

                    buildCol(['Transaction No', ' WUR2020222189']),
                    // buildCol(['Transaction No', 'UR2']),
                    buildCol(['Bank', ' UR2']),
                    buildCol(['Certifies Issued', ' YES']),
                    buildCol(['Certifies No', '  ']),
                    buildCol(['Mode', ' Online']),
                    buildCol(['Transaction Date', ' 17 Aug 21']),
                    buildCol(['Amount', ' 2000']),
                    buildCol(['Certification not\nIssued reason', '   '])
                  ],
                ),
              ),
            )));
    return saveDocument(name: 'eg.pdf', pdf: pdf);
  }

  static Future<File> saveDocument(
      {required String name, required pw.Document pdf}) async {
    final bytes = await pdf.save();
    final dir = await getApplicationDocumentsDirectory();

    final file = File('${dir.path}/$name');
    await file.writeAsBytes(bytes);

    final String file_path = '${dir.path}/$name';

    Get.to(PdfViewScreen(
      filePath: file_path,
    ));

    return file;
  }

  // static Future openPdf(String file) async {
  //   PDFView(
  //     filePath: file,
  //   );
  // }

  // static Future openFile(File file) async {
  //   final url = file.path;
  //   await OpenFile.open(url);
  // }

  static buildCol(List<String> list) {
    return pw.TableRow(
        children: list
            .map((row) => pw.Padding(
                padding: const pw.EdgeInsets.all(10),
                child: pw.Text(
                  row,
                  style: row[0] == 'C' ||
                          row[0] == 'B' ||
                          row[0] == 'T' ||
                          row[0] == 'M' ||
                          row[0] == 'A'
                      ? pw.TextStyle(
                          fontSize: 20.sp, fontWeight: pw.FontWeight.bold)
                      : pw.TextStyle(
                          fontSize: 18.sp,
                        ),
                )))
            .toList());
  }
}

class PdfViewScreen extends StatelessWidget {
  final String filePath;
  const PdfViewScreen({super.key, required this.filePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Reciept',
          style: TextStyle(
              color: black, fontWeight: FontWeight.bold, fontSize: 20.sp),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: PDFView(
          filePath: filePath,
        ),
      ),
    );
  }
}
