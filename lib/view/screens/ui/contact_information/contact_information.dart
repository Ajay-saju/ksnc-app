import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/colors/colors.dart';
import '../../../core/size/sizes.dart';

class ContactInformation extends StatelessWidget {
  const ContactInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            customAppBarWidget('Contact Information'),
            h10,
            Text(
              'Added from Aadhar',
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold),
            ),
            h10,
            informationHeading('Residential Information'),
            h10,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  textFormFieldOne('#2'),
                  h10,
                  textFormFieldOne('3rd main 2nd cross'),
                  h10,
                  textFormFieldOne('Basaweswara Nagar'),
                  h10,
                  textFormFieldOne('560079'),
                  h10,
                ],
              ),
            ),
            h20,
            informationHeading('Person Information'),

             h10,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  textFormFieldOne('#2'),
                  h10,
                  textFormFieldOne('3rd main 2nd cross'),
                  h10,
                  textFormFieldOne('Basaweswara Nagar'),
                  h10,
                  textFormFieldOne('560079'),
                  h10,
                ],
              ),
            ),
            h20,

          ],
        ),
      )),
    );
  }

  Container informationHeading(String title) {
    return Container(
      height: 35.h,
      width: double.infinity,
      color: Colors.grey,
      child: Padding(
        padding: EdgeInsets.only(left: 30.w, top: 10.h),
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white,
              letterSpacing: 0.5,
              fontSize: 13.sp,
              fontWeight: FontWeight.bold),
        ),
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
