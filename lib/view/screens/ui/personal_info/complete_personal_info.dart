import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ksnc/view/screens/ui/dashboard/dashboard_screen.dart';
import 'package:ksnc/view/screens/ui/home_screen/home_screen.dart';

import '../../../core/colors/colors.dart';
import '../../../core/size/sizes.dart';

class CompletePersonalInfo extends StatelessWidget {
  const CompletePersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    // Get.offAll(const DashBoardScreen());
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            customAppBarWidget('Personal Information'),
            h20,
            Text(
              'Added from Aadhar',
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold),
            ),
            h20,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  textFormFieldOne('Shali Davis'),
                  h10,
                  textFormFieldOne('24/09/2017'),
                  h10,
                  textFormFieldOne('Indian'),
                  h10,
                  textFormFieldOne('Female'),
                  h10,
                  textFormFieldOne('9899333123'),
                  h10,
                ],
              ),
            )
          ],
        )),
      ),
    );
  }

  TextFormField textFormFieldOne(String hintText) {
    return TextFormField(
      readOnly: true,
      style:
          TextStyle(color: black, fontSize: 16.sp, fontWeight: FontWeight.w400),
      keyboardType: TextInputType.name,
      // keyboardAppearance: Brightness.light,
      // validator: ()=>null,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: black,
          fontSize: 16.sp,
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

  SizedBox customAppBarWidget(String title) {
    return SizedBox(
      child: Column(children: [
        h20,
        Padding(
          padding: EdgeInsets.only(bottom: 20.h, left: 20.w),
          child: Row(
            children: [
              InkWell(
                onTap: () => Get.offAll(const DashBoardScreen()),
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
}
