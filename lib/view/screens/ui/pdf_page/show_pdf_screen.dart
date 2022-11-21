import 'package:flutter/material.dart';

import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfScreen extends StatelessWidget {
  final byteCode;
  const PdfScreen({Key? key, required this.byteCode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pdf View"),
      ),
      body: Center(
        child: PDFView(
          filePath: byteCode,
        ),
      ),
    );
  }
}
