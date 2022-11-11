import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ksnc/main.dart';
import 'package:ksnc/view/screens/ui/appoiments/appoiments_screen.dart';
import 'package:ksnc/view/screens/ui/dashboard/dashboard_controller.dart';
import 'package:ksnc/view/screens/ui/educational_information/educatonal_information.dart';
import 'package:ksnc/view/screens/ui/login_screen.dart';
import 'package:ksnc/view/screens/ui/personal_info/personal_info_screen.dart';
import '../../../core/size/sizes.dart';
import '../contact_information/contact_information.dart';
import '../edit_details/edit_details_screen.dart';
import '../payments/payment_screen.dart';
import '../receipt/receipt_screen.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final DashBoardController dashBoardContoller = Get.find();
    // var screenSize = MediaQuery.maybeOf(context)!.size;
    return SizedBox(
      width: context.width * 0.9,
      child: Drawer(
          child: GestureDetector(
        onTap: () {
          dashBoardContoller.visibledrop = false;
          dashBoardContoller.update();
        },
        child: Scaffold(
          backgroundColor: Color.fromARGB(225, 72, 184, 176),
          body: SafeArea(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 18.0, top: 25.0, right: 18.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: const AssetImage(
                          'assets/images/man.png',

                          //  fit: BoxFit.cover,
                        ),
                        radius: 25.r,
                        backgroundColor: Colors.white,
                        // child: FittedBox(
                        //   child: Image.asset('assets/images/man.png'),
                        //   fit: BoxFit.cover,
                        // ),
                        //                       child:Image.asset('assets/images/man.png',
                        // ),
                      ),
                      SizedBox(
                        width: context.width * 0.05,
                      ),
                      // Spacer(),
                      const Text(
                        "Swetha (DOMS)",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Nunito",
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                h10,
                Divider(
                  thickness: 1.5.h,
                  color: Colors.white,
                ),
                Container(
                  // height: context.width > 410
                  //     ? context.height * 0.6
                  //     : context.height * 0.55,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 12),
                        child: InkWell(
                          onTap: () => Get.back(),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/Dashboard logo@2x.png',
                                width: 45.h,
                                height: 45.h,
                              ),
                              w10,
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                  "Dashboard",
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                    fontFamily: "Nunito",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // h10,
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 20),
                      //   child: InkWell(
                      //     onTap: () => Get.to(const EditDetailsScreen()),
                      //     child: Row(
                      //       children: [
                      //         Image.asset(
                      //           'assets/images/Profile logo.png',
                      //         ),
                      //         w10,
                      //         Padding(
                      //           padding: const EdgeInsets.only(top: 5.0),
                      //           child: Text(
                      //             "Profile",
                      //             style: TextStyle(
                      //               fontSize: 17.sp,
                      //               fontFamily: "Nunito",
                      //               fontWeight: FontWeight.bold,
                      //               color: Colors.white,
                      //             ),
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      // drawerContent('Dashboard', () => Get.back(),
                      //     'assets/icons/Dashboard logo.svg'),
                      // h10,
                      // drawerContent('Profile', () {
                      //   Get.to(const EditDetailsScreen());
                      // }, 'assets/icons/Profile logo.svg'),
                      // h10,
                      // drawerContent('Personal Information', () {
                      //   Get.to(const PersonalinformationScreen());
                      // }, 'assets/icons/Personal Info logo.svg'),
                      // h10,
                      // drawerContent('Contact Information', () {
                      //   Get.to(const ContactInformation());
                      // }, 'assets/icons/Contacts logo.svg'),
                      // h10,
                      // drawerContent(
                      //     'Educational Info...',
                      //     () => Get.to(const EducationalInformation()),
                      //     'assets/icons/Education logo.svg'),
                      // h10,
                      // drawerContent(
                      //     'Payments',
                      //     () => Get.to(const PaymentScreen()),
                      //     'assets/icons/Payments logo.svg'),
                      // h10,
                      // drawerContent(
                      //     'Recept',
                      //     () => Get.to(const ReceiptScreen()),
                      //     'assets/icons/Reception logo.svg'),
                      // h10,
                      // drawerContent(
                      //     'Appointments',
                      //     () => Get.to(const AppointmentScreen()),
                      //     'assets/icons/APPointm logo.svg'),
                      // drawerContent('Dashboard', () => Get.back(),
                      //     'assets/images/Dashboard logo@2x.png'),
                      // h10,
                      // drawerContent('Profile', () {
                      //   Get.to(const EditDetailsScreen());
                      // }, 'assets/images/Profile logo@2x.png'),
                      // h10,
                      // drawerContent('Personal Information', () {
                      //   Get.to(const PersonalinformationScreen());
                      // }, 'assets/images/Personal Info logo@2x.png'),
                      // h10,
                      // drawerContent('Contact Information', () {
                      //   Get.to(const ContactInformation());
                      // }, 'assets/images/Contacts logo@2x.png'),
                      // h10,
                      // drawerContent(
                      //     'Educational Info...',
                      //     () => Get.to(const EducationalInformation()),
                      //     'assets/images/Education logo@2x.png'),
                      // h10,
                      // drawerContent(
                      //     'Payments',
                      //     () => Get.to(const PaymentScreen()),
                      //     'assets/images/Payments logo@2x.png'),
                      // h10,
                      // drawerContent(
                      //     'Recept',
                      //     () => Get.to(const ReceiptScreen()),
                      //     'assets/images/Reception logo@2x.png'),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: InkWell(
                          onTap: () => Get.to(const EditDetailsScreen()),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/Profile logo@2x.png',
                                width: 30.h,
                                height: 30.h,
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                  "Profile",
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                    fontFamily: "Nunito",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 20),
                        child: InkWell(
                          onTap: () =>
                              Get.to(const PersonalinformationScreen()),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/Personal Info logo@2x.png',
                                width: 27.h,
                                height: 27.h,
                              ),
                              SizedBox(
                                width: 23.w,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                  "Personal Information",
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                    fontFamily: "Nunito",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 20),
                        child: InkWell(
                          onTap: () => Get.to(const ContactInformation()),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/Contacts logo@2x.png',
                                width: 35.h,
                                height: 35.h,
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                  "Contact Information",
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                    fontFamily: "Nunito",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 20),
                        child: InkWell(
                          onTap: () => Get.to(EducationalInformation()),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/Education logo@2x.png',
                                width: 30.h,
                                height: 30.h,
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                  "Educational Information",
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                    fontFamily: "Nunito",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 20),
                        child: InkWell(
                          onTap: () => Get.to(const PaymentScreen()),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/Payments logo@2x.png',
                                width: 40.h,
                                height: 40.h,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                  "Peyments",
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                    fontFamily: "Nunito",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 20),
                        child: InkWell(
                          onTap: () => Get.to(const ReceiptScreen()),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/Reception logo@2x.png',
                                width: 40.h,
                                height: 40.h,
                              ),
                              w10,
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                  "Recept",
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                    fontFamily: "Nunito",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 10),
                        child: InkWell(
                          onTap: () => Get.to(const AppointmentScreen()),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/APPointm logo@2x.png',
                                width: 45.h,
                                height: 45.h,
                              ),
                              w10,
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                  "Appointments",
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                    fontFamily: "Nunito",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // drawerContent(
                      //     'Appointments',
                      //     () => Get.to(const AppointmentScreen()),
                      //     'assets/images/APPointm logo@2x.png'),
                      h20,
                      h10,
                      const Divider(
                        thickness: 2,
                        color: Colors.white,
                      ),
                      h10,
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: InkWell(
                          onTap: () {
                            preferences.remove('login');
                            Get.offAll(const LoginScreen());
                          },
                          child: Row(
                            children: [
                              SizedBox(
                                height: 30.h,
                                width: 30.h,
                                // padding: const EdgeInsets.all(0.0),
                                child: Image.asset(
                                  'assets/images/lgot.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              w20,
                              const Text(
                                "Logout",
                                style: TextStyle(
                                    fontFamily: "Nunito",
                                    fontSize: 40,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      h10,
                      const Divider(
                        thickness: 2,
                        color: Colors.white,
                      ),
                      h20,
                      Padding(
                        padding: EdgeInsets.only(right: 75.sp),
                        child: Text(
                          "Copyright @ 2022",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.white,
                              fontFamily: "Nunito",
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      h10,
                      Padding(
                        padding: EdgeInsets.only(right: 110.sp),
                        child: Text(
                          "All Rights Reserved",
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.white,
                              fontFamily: "Nunito",
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
        ),
      )),
    );
  }

  Padding drawerContent(
      String title, VoidCallback goToScreen, String iconPath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        onTap: goToScreen,
        child: Row(
          children: [
            SizedBox(
              height: 30.h,
              width: 30.h,
              child: Image.asset(
                iconPath,
                // color: Colors.white,
              ),
            ),
            w20,
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
