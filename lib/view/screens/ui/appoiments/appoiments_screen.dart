import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ksnc/view/screens/ui/appoiments/appoiment_controller.dart';
import 'package:time_range/time_range.dart';

import '../../../core/colors/colors.dart';
import '../../../core/size/sizes.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    //    bool one =false;
    // bool two = false;
    // bool three = false;
    // bool four = false;
    // bool five = false;
    // bool six = false;
    AppoimentController appoimentController = Get.put(AppoimentController());
    return GetBuilder<AppoimentController>(builder: (_) {
      return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          body: SafeArea(
              child: SingleChildScrollView(
            child: Column(
              children: [
                customAppBarWidget('Appointments'),
                h10,
                Text(
                  'Select Date',
                  style: TextStyle(
                      fontFamily: "Nunito",
                      color: Colors.black,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold),
                ),
                h10,
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: black)),
                    child: CalendarDatePicker2(
                      config: CalendarDatePicker2Config(
                          disabledDayTextStyle: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.w700),
                          calendarType: CalendarDatePicker2Type.single,
                          dayTextStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w700),
                          weekdayLabels: [
                            'SUN',
                            'MON',
                            'TUE',
                            'WRD',
                            'THU',
                            'FRI',
                            'SAT'
                          ],
                          weekdayLabelTextStyle: TextStyle(
                              fontSize: 11.sp, fontWeight: FontWeight.w700),
                          yearTextStyle: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.bold)),
                      initialValue: [],
                    ),
                  ),
                ),
                h10,
                Text(
                  'Select Timing',
                  style: TextStyle(
                      fontFamily: "Nunito",
                      color: Colors.black,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold),
                ),
                h10,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          appoimentController.one = !appoimentController.one;
                          appoimentController.two = false;
                          appoimentController.three = false;
                          appoimentController.four = false;
                          appoimentController.five = false;
                          appoimentController.six = false;

                          appoimentController.update();
                          print('Ok');
                        },
                        child: appoimentController.one
                            ? Container(
                                height: 40.w,
                                width: 60.w,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(15.r)),
                                child: Center(
                                  child: Text(
                                    '9:00',
                                    style: TextStyle(
                                        fontSize: 21.sp,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white),
                                  ),
                                ),
                              )
                            : Text(
                                '9:00',
                                style: TextStyle(
                                    fontSize: 21.sp,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.green),
                              ),
                      ),
                      InkWell(
                        onTap: () {
                          appoimentController.two = !appoimentController.two;
                          appoimentController.one = false;
                          appoimentController.three = false;
                          appoimentController.four = false;
                          appoimentController.five = false;
                          appoimentController.six = false;

                          appoimentController.update();
                        },
                        child: appoimentController.two
                            ? Container(
                                height: 40.w,
                                width: 60.w,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(15.r)),
                                child: Center(
                                  child: Text(
                                    '10:00',
                                    style: TextStyle(
                                        fontSize: 21.sp,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white),
                                  ),
                                ),
                              )
                            : Text(
                                '10:00',
                                style: TextStyle(
                                    fontSize: 21.sp,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.green),
                              ),
                      ),
                      InkWell(
                        onTap: () {
                          appoimentController.three =
                              !appoimentController.three;
                          appoimentController.two = false;
                          appoimentController.one = false;
                          appoimentController.four = false;
                          appoimentController.five = false;
                          appoimentController.six = false;

                          appoimentController.update();
                        },
                        child: appoimentController.three
                            ? Container(
                                height: 40.w,
                                width: 60.w,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(15.r)),
                                child: Center(
                                  child: Text(
                                    '11:00',
                                    style: TextStyle(
                                        fontSize: 21.sp,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white),
                                  ),
                                ),
                              )
                            : Text(
                                '11:00',
                                style: TextStyle(
                                    fontSize: 21.sp,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.green),
                              ),
                      ),
                      InkWell(
                        onTap: () {
                          appoimentController.four = !appoimentController.four;
                          appoimentController.two = false;
                          appoimentController.three = false;
                          appoimentController.one = false;
                          appoimentController.five = false;
                          appoimentController.six = false;

                          appoimentController.update();
                        },
                        child: appoimentController.four
                            ? Container(
                                height: 40.w,
                                width: 60.w,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(15.r)),
                                child: Center(
                                  child: Text(
                                    '12:00',
                                    style: TextStyle(
                                        fontSize: 21.sp,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white),
                                  ),
                                ),
                              )
                            : Text(
                                '12:00',
                                style: TextStyle(
                                    fontSize: 21.sp,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.green),
                              ),
                      ),
                    ],
                  ),
                ),
                h20,
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          appoimentController.five = !appoimentController.five;
                          appoimentController.two = false;
                          appoimentController.three = false;
                          appoimentController.four = false;
                          appoimentController.one = false;
                          appoimentController.six = false;

                          appoimentController.update();
                        },
                        child: appoimentController.five
                            ? Container(
                                height: 40.w,
                                width: 60.w,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(15.r)),
                                child: Center(
                                  child: Text(
                                    '1:00',
                                    style: TextStyle(
                                        fontSize: 21.sp,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white),
                                  ),
                                ),
                              )
                            : Text(
                                '1:00',
                                style: TextStyle(
                                    fontSize: 21.sp,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.green),
                              ),
                      ),
                      Text(
                        '2:00',
                        style: TextStyle(
                            fontSize: 21.sp,
                            fontWeight: FontWeight.w900,
                            color: Colors.red),
                      ),
                      InkWell(
                        onTap: () {
                          appoimentController.six = !appoimentController.six;
                          appoimentController.two = false;
                          appoimentController.three = false;
                          appoimentController.four = false;
                          appoimentController.five = false;
                          appoimentController.one = false;

                          appoimentController.update();
                          print('Ok');
                        },
                        child: appoimentController.six
                            ? Container(
                                height: 40.w,
                                width: 60.w,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(15.r)),
                                child: Center(
                                  child: Text(
                                    '3:00',
                                    style: TextStyle(
                                        fontSize: 21.sp,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white),
                                  ),
                                ),
                              )
                            : Text(
                                '3:00',
                                style: TextStyle(
                                    fontSize: 21.sp,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.green),
                              ),
                      ),
                      Text(
                        '4:00',
                        style: TextStyle(
                            fontSize: 21.sp,
                            fontWeight: FontWeight.w900,
                            color: Colors.red),
                      ),
                    ]),
                h20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    customeElevatedButton('Submit', Colors.green, () {}),
                    customeElevatedButton('Cancel', Colors.red, () { 
                      Get.back();
                      // Navigator.pushReplacement(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (BuildContext context) => super.widget));
                    })
                  ],
                )
              ],
            ),
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
            EdgeInsets.only(left: 15.w, right: 15.w, top: 2.5.h, bottom: 2.5.h),
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
}
