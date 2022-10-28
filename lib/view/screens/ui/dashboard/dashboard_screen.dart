import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ksnc/view/core/colors/colors.dart';
import 'package:ksnc/view/screens/ui/dashboard/dashboard_controller.dart';
import 'package:ksnc/view/screens/ui/drawer/drawer.dart';
import 'package:ksnc/view/screens/ui/home_screen/home_screen.dart';

import '../../../core/size/sizes.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dashBoardController = Get.put(DashBoardController());
    return Scaffold(
      key: dashBoardController.drawerKey,
      drawer: const DrawerScreen(),
      body: SafeArea(
        child: IndexedStack(
          index: dashBoardController.tabIndex,
          children: const [HomeScreen()],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 60.h,
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            unselectedItemColor:
                const Color(0xffC8C8C8), //Colors.blue.shade200,
            // selectedItemColor:
            //     Colors.black87, //Color(0xffC8C8C8), //Colors.blue.shade700,00000
            onTap: dashBoardController.changeTabIndex,
            currentIndex: dashBoardController.tabIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/Group 8.svg',
                  width: 35.h,
                  height: 35.h,
                ),
                label: "",
              ),
              // BottomNavigationBarItem(
              //   icon: ImageIcon(AssetImage("assets/V.png")),
              //   label: "",
              // ),
              // BottomNavigationBarItem(
              //   icon: ImageIcon(AssetImage("assets/p.png")),
              //   label: "",
              // ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/Sibe bar More Nav.svg',
                  // width: 30.h,
                  // height: 30.h,
                ),
                label: "",
              ),
            ]),
      ),
    );
  }
}
