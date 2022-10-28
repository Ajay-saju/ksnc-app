import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class DashBoardController extends GetxController{
  GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  var tabIndex=0;
  bool visibledrop = false;

  changeTabIndex(int index) {
if(index==1){
  drawerKey.currentState!.openDrawer();
}else {
      tabIndex = index;
      update();
    }
  }
}