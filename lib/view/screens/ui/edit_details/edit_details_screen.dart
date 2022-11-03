import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/colors/colors.dart';
import '../../../core/size/sizes.dart';

class EditDetailsScreen extends StatelessWidget {
  const EditDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            customAppBarWidget('Edit Details'),
            h20,
            h10,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              child: Column(
                children: [
                  textFormFieldOne('OLD PASSWORD'),
                  h20,
                  textFormFieldOne('NEW PASSWORD'),
                  h20,
                  textFormFieldOne('RE-ENTER NEW PASSWORD'),
                  h20,
                  ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.only(
                              left: 20.w, right: 20.w, top: 5.h, bottom: 5.h),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9.r),
                        )),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(225, 50, 125, 191)),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Update',
                        style: TextStyle(
                            // letterSpacing: 1,
                            fontSize: 21.sp,
                            fontWeight: FontWeight.w800),
                      )),
                  h50,
                  textFormFieldOne('ajaysaju987@gmail.com'),
                  h20,
                  textFormFieldOne('9946059063'),
                  h20,
                  ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.only(
                              left: 20.w, right: 20.w, top: 5.h, bottom: 5.h),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9.r),
                        )),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(225, 50, 125, 191)),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Update',
                        style: TextStyle(
                            // letterSpacing: 1,
                            fontSize: 21.sp,
                            fontWeight: FontWeight.w800),
                      )),
                ],
              ),
            )
          ],
        ),
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
                  height: 18.h,
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
}
