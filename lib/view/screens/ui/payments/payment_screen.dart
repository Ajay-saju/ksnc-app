import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ksnc/controller/payment_controller.dart/payment_controller.dart';

import '../../../core/colors/colors.dart';
import '../../../core/size/sizes.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    PaymentController paymentController = Get.put(PaymentController());

    return GetBuilder<PaymentController>(builder: (_) {
      return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          body: SafeArea(
              child: Column(
            children: [
              customAppBarWidget('Payments'),
              h20,
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.w),
                    child: Row(
                      children: [
                        Text(
                          'Payment for',
                          style: TextStyle(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey),
                        ),
                        w20,
                        Container(
                          height: 35.h,
                          width: context.width > 410
                              ? context.width * 0.45
                              : context.width * 0.42,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(
                                  225, 101, 194, 255), // Colors.orange,//E0C152
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7.r))),
                          child: Padding(
                            padding: EdgeInsets.all(8.w),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                value: paymentController.accredation,
                                hint: Text(
                                  "Accredation",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Nunito",
                                      fontSize:
                                          context.width > 410 ? 16.sp : 16.sp),
                                ),
                                icon: Padding(
                                  padding: const EdgeInsets.only(left: 0.0),
                                  child: Image.asset(
                                    'assets/images/gg.png',
                                    height: 10,
                                  ),
                                ),
                                items: paymentController.dropItem
                                    .map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items,
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600,
                                            color: const Color(
                                                0xff2D2D2D)) //Color(0xff4169e1)),#
                                        ),
                                  );
                                }).toList(),
                                onChanged: (String? value) {
                                  paymentController.accredation = value;
                                  // print( paymentController.accredation);
                                  paymentController.update();
                                },
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  h20,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.w),
                    child: Row(
                      children: [
                        Text(
                          'Amount',
                          style: TextStyle(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          width: context.width * 0.18,
                        ),
                        SizedBox(
                            width: context.width * 0.42,
                            child: textFormFieldOne('00000'))
                      ],
                    ),
                  ),
                  h20,
                  h10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      customeElevatedButton('Submit', Colors.green, () {}),
                      customeElevatedButton(
                          'Cancel', Colors.red, () => Get.back())
                    ],
                  )
                ],
              )
            ],
          )),
        ),
      );
    });
  }

  ElevatedButton customeElevatedButton(
      String title, Color color, VoidCallback onTap) {
    return ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.only(left: 15.w, right: 15.w, top: 5.h, bottom: 5.h),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.sp),
          )),
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        onPressed: onTap,
        child: Text(
          title,
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
        ));
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
                    fontSize: 20.sp,
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

  TextFormField textFormFieldOne(String hintText) {
    return TextFormField(
      readOnly: true,
      // textInputAction: TextInputAction.none,
      style:
          TextStyle(color: black, fontSize: 16.sp, fontWeight: FontWeight.w400),
      keyboardType: TextInputType.name,
      // keyboardAppearance: Brightness.light,
      // validator: ()=>null,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 13.sp,
          fontFamily: "Nunito",
        ),
        filled: true,
        fillColor: const Color.fromARGB(225, 235, 235, 235),
        contentPadding: const EdgeInsets.only(left: 20.0),
        disabledBorder: InputBorder.none,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.black, width: .1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.black, width: .1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.black, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.black, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(
            color: Color.fromARGB(225, 235, 235, 235),
          ),
        ),
      ),
    );
  }
}
