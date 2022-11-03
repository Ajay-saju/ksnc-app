import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ksnc/view/screens/ui/receipt/reciept_pdf_create.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../../core/colors/colors.dart';
import '../../../core/size/sizes.dart';

class ReceiptScreen extends StatelessWidget {
  const ReceiptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customAppBarWidget('Receipt'),
          h20,
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Text(
              'Payment Information',
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold),
            ),
          ),
          h20,
          Padding(
            padding: const EdgeInsets.all(15),
            child: Table(
              columnWidths: const {0: FractionColumnWidth(0.45)},
              border: TableBorder.all(width: 2, color: Colors.grey),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 30.sp),
                child: InkWell(
                  onTap: () async {
                    final pdfFile =
                        await Reciept.genaratePdf('Sample Text one');
                    // Reciept.openFile(pdfFile);
                  },
                  child: Text(
                    'Print Receipt',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              //  Text(
              //   '',
              //   style: TextStyle(
              //       color: Colors.red,
              //       fontSize: 13.sp,
              //       fontWeight: FontWeight.bold),
              // ),
            ],
          ),
          // DataTable(columns: columns, rows: rows)
        ],
      )),
    );
  }

  SizedBox customAppBarWidget(String title) {
    return SizedBox(
      child: Column(children: [
        h20,
        Padding(
          padding: EdgeInsets.only(bottom: 20.h, left: 20.w),
          child: Row(
            children: [
              InkWell(
                onTap: () => Get.back(),
                child: Image.asset(
                  'assets/images/R.png',
                  width: 18.w,
                  height: 20.h,
                ),
              ),
              w20,
              Text(
                title,
                style: TextStyle(
                    fontFamily: "Nunito",
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 3,
          color: black,
        ),
      ]),
    );
  }

  buildCol(List<String> list) {
    return TableRow(
        children: list
            .map((row) => Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    row,
                    style: row[0] == 'C' ||
                            row[0] == 'B' ||
                            row[0] == 'T' ||
                            row[0] == 'M' ||
                            row[0] == 'A'
                        ? TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.w800)
                        : TextStyle(
                            fontSize: 11.sp,
                          ),
                  ),
                ))
            .toList());
  }
}
