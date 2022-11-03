import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ksnc/view/screens/ui/dashboard/dashboard_screen.dart';

import '../../../core/colors/colors.dart';
import '../../../core/size/sizes.dart';

class CompleteEduInfoScreen extends StatelessWidget {
  const CompleteEduInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              customAppBarWidget('Educational Info'),
              h10,
              Text(
                'Fetchng Degree information\nusing Digi Locker......',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold),
              ),
              h20,
              Container(
                height: 190.h,
                width: 250.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: const Color.fromARGB(225, 145, 152, 249)),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.w,
                        top: 7.h,
                      ),
                      child: Text(
                        'DEGREE',
                        style: TextStyle(
                            fontSize: 10.sp,
                            letterSpacing: 0.4,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: textFormFieldOne('PBBSC Nursing'),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.w,
                        top: 7.h,
                      ),
                      child: Text(
                        'COLLEGE',
                        style: TextStyle(
                            fontSize: 10.sp,
                            letterSpacing: 0.4,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: textFormFieldOne('VARADARAJA COLLEGE OF NURSING'),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.w,
                        top: 7.h,
                      ),
                      child: Text(
                        'YEAR OF PASSING',
                        style: TextStyle(
                            fontSize: 10.sp,
                            letterSpacing: 0.4,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: textFormFieldOne('September 2019'),
                    ),
                  ],
                ),
                // color: black,
              ),
              h20,
              Container(
                height: 190.h,
                width: 250.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: const Color.fromARGB(225, 249, 148, 145)),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.w,
                        top: 7.h,
                      ),
                      child: Text(
                        'DEGREE',
                        style: TextStyle(
                            fontSize: 10.sp,
                            letterSpacing: 0.4,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: textFormFieldOne('PBBSC Nursing'),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.w,
                        top: 7.h,
                      ),
                      child: Text(
                        'COLLEGE',
                        style: TextStyle(
                            fontSize: 10.sp,
                            letterSpacing: 0.4,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: textFormFieldOne('VARADARAJA COLLEGE OF NURSING'),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.w,
                        top: 7.h,
                      ),
                      child: Text(
                        'YEAR OF PASSING',
                        style: TextStyle(
                            fontSize: 10.sp,
                            letterSpacing: 0.4,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: textFormFieldOne('September 2019'),
                    ),
                  ],
                ),
                // color: black,
              )
            ],
          ),
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
