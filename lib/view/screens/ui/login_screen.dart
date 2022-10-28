import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ksnc/controller/login_screen_controller/login_screen_controller.dart';
import 'package:ksnc/view/core/size/sizes.dart';
import 'package:ksnc/view/screens/form%20validation/form_validation.dart';
import 'package:ksnc/view/screens/routs/routs.dart';

import '../../core/colors/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formkey = GlobalKey<FormState>();
    final loginScreenController = Get.put(LoginScreenController());
    FormValidation formValidation = FormValidation();
    // String email = '';
    // String password = '';
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/Group 10.svg'),
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  'KSNC',
                  style: TextStyle(
                      fontSize: 50.sp,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w900,
                      color: headColor),
                ),
              ],
            ),
            h50,
            Form(
                key: formkey,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: TextFormField(
                        // obscureText: true,
                        // inputFormatters: [
                        //   // LengthLimitingTextInputFormatter(10),
                        // ],
                        onChanged: (value) {
                          loginScreenController.email = value;
                        },
                        style: TextStyle(
                            color: black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),

                        keyboardType: TextInputType.emailAddress,
                        validator: (val) => formValidation.emailValidation(val),
                        decoration: InputDecoration(
                            errorStyle: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w400),
                            // border: OutlineInputBorder(),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                  color: Colors.black, width: .1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                  color: Colors.black, width: .1),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                  color: Colors.black, width: .1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                  color: Colors.black, width: .1),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(225, 235, 235, 235),
                              ),
                            ),
                            hintText: "Email",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 18.sp,
                              fontFamily: "Nunito",
                            ),
                            filled: true,
                            fillColor: const Color.fromARGB(225, 235, 235, 235),
                            contentPadding: const EdgeInsets.only(left: 20.0)),
                        // decoration: InputDecoration.collapsed(
                        //   border: BorderRadius.circular(radius),
                        //     hintStyle: TextStyle(color: Colors.grey),
                        //     hintText: "Mobile Number"),
                      ),
                    ),
                    h20,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Obx(() => SizedBox(
                            // height: 100.h,
                            child: TextFormField(
                              controller:
                                  loginScreenController.passwordTextController,
                              // inputFormatters: [
                              //   // LengthLimitingTextInputFormatter(10),
                              // // ],
                              // onChanged: (value) {
                              //   password = value;
                              // },
                              obscureText:
                                  loginScreenController.obscureText.value,
                              style: TextStyle(
                                  color: black,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400),

                              keyboardType: TextInputType.emailAddress,
                              validator: (val) =>
                                  formValidation.passwordValidation(val),
                              decoration: InputDecoration(
                                  errorStyle: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400),
                                  suffixIconConstraints: BoxConstraints(
                                    minWidth: 2,
                                    minHeight: 2,
                                  ),
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.only(bottom: 0),
                                    child: Container(
                                      // transform:
                                      //     Matrix4.translationValues(-10, 8, 0),
                                      child: IconButton(
                                          // iconSize: 15.0,
                                          color: Colors.grey,
                                          onPressed: () {
                                            loginScreenController
                                                    .obscureText.value =
                                                !loginScreenController
                                                    .obscureText.value;
                                          },
                                          icon: Icon(
                                            loginScreenController
                                                    .obscureText.value
                                                ? Icons.visibility_off
                                                : Icons.visibility,
                                          )),
                                    ),
                                  ),

                                  // border: OutlineInputBorder(),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                        color: Colors.black, width: .1),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                        color: Colors.black, width: .1),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                        color: Colors.black, width: .1),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                        color: Colors.black, width: .1),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.r),
                                    borderSide: const BorderSide(
                                      color: Color.fromARGB(225, 235, 235, 235),
                                    ),
                                  ),
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18.sp,
                                    fontFamily: "Nunito",
                                  ),
                                  filled: true,
                                  fillColor:
                                      const Color.fromARGB(225, 235, 235, 235),
                                  contentPadding:
                                      const EdgeInsets.only(left: 20.0)),
                              // decoration: InputDecoration.collapsed(
                              //   border: BorderRadius.circular(radius),
                              //     hintStyle: TextStyle(color: Colors.grey),
                              //
                              //   hintText: "Mobile Number"),
                            ),
                          )),
                    ),
                  ],
                )),
            h20,
            h10,
            ElevatedButton(
              onPressed: () {
                if (formkey.currentState!.validate()) {
                  loginScreenController.sessionLogIn();
                  Get.toNamed(RoutsClass.getDashBoardRout());
                } else {
                  print('Not Valid');
                }
                ;
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r)),
                  backgroundColor: const Color.fromARGB(225, 168, 69, 69)),
              child: Padding(
                padding: EdgeInsets.all(5.0.sp),
                child: Text(
                  'LOGIN',
                  style: TextStyle(fontSize: 16.sp),
                ),
              ),
            ),
            h10,
            InkWell(
              onTap: () => Get.toNamed(RoutsClass.getForgottPasswordRout()),
              child: Text(
                'Forgot Password ?',
                style: TextStyle(fontSize: 12.sp),
              ),
            ),
            h20,
            h10,
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RoutsClass.getSignUpRout());
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r)),
                  backgroundColor: const Color.fromARGB(225, 69, 82, 168)),
              child: Padding(
                padding: EdgeInsets.all(8.sp),
                child: Text(
                  'Register',
                  style: TextStyle(fontSize: 24.sp),
                ),
              ),
            ),
          ],
        ),
      ))),
    );
  }
}
