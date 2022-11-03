import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/colors/colors.dart';
import '../../../core/size/sizes.dart';
import 'complete_personal_info.dart';

class PersonalinformationScreen extends StatelessWidget {
  const PersonalinformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          customAppBarWidget('Personal Information'),
          h20,
          Text(
            'Aadhar Authentication',
            style: TextStyle(
                color: Colors.red,
                fontSize: 22.sp,
                fontWeight: FontWeight.bold),
          ),
          h20,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.sp),
            child: textFormFieldOne('Enter your aadhar number'),
          ),
          h20,
          h10,
          ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.only(
                      left: 24.w, right: 24.w, top: 6.5.h, bottom: 6.5.h),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.r),
                )),
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(225, 123, 168, 255)),
              ),
              onPressed: () {
                Get.to(const CompletePersonalInfo());
              },
              child: Text(
                'Submit',
                style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w800),
              )),
        ],
      )),
    );
  }

  TextFormField textFormFieldOne(String hintText) {
    return TextFormField(
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
}
