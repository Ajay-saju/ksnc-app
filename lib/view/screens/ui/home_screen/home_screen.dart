import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ksnc/view/core/colors/colors.dart';
import 'package:ksnc/view/core/size/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            h20,
            Padding(
              padding: EdgeInsets.only(left: 18.w),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/Group 10.svg',
                    width: 40.h,
                    height: 40.h,
                  ),
                  w10,
                  Text(
                    'KSNC',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 28.sp,
                        color: headColor,
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ),
            h10,
            const Divider(
              thickness: 3.5,
              color: Colors.grey,
            ),
            h10,
            Padding(
              padding: EdgeInsets.only(left: 25.w),
              child: Text(
                'Dashboard',
                style: TextStyle(
                    fontSize: 28.sp,
                    // fontFamily: 'Montserrat',
                    color: const Color.fromARGB(225, 61, 142, 136),
                    fontWeight: FontWeight.w700),
              ),
            ),
            h20,
            Padding(
              padding: EdgeInsets.only(left: 25.w),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 25.h,
                    width: 25.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.r)),
                      color: Colors.green,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: SvgPicture.asset(
                        'assets/icons/check-mark-svgrepo-com.svg',
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  w10,
                  Text('Aadhar Authentication Done',
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w800,
                      ))
                ],
              ),
            ),
            h10,
            Padding(
              padding: EdgeInsets.only(left: 25.w),
              child: Row(
                children: [
                  Container(
                    height: 25.h,
                    width: 25.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.r)),
                      color: Colors.red,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(1),
                      child: SvgPicture.asset(
                        'assets/icons/cancel-svgrepo-com.svg',
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  w10,
                  Text('Digilocker Authentication Done',
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w800,
                      ))
                ],
              ),
            ),
            h20,
            h10,
            Padding(
              padding: EdgeInsets.only(left: 25.w),
              child: Container(
                height: 85.h,
                width: 200.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  color: const Color.fromARGB(225, 82, 82, 220),
                ),
                child: Padding(
                  padding: EdgeInsets.all(2.r),
                  child: Column(children: [
                    h10,
                    Text(
                      'Appointments Booked',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      '2',
                      style: TextStyle(
                        fontSize: 40.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    )
                  ]),
                ),
              ),
            ),
            Spacer(),
            Divider(
              thickness: 3.5,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
