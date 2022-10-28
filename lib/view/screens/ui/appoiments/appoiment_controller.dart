import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class AppoimentController extends GetxController {
  bool one =false;
  bool two = false;
  bool three = false;
  bool four = false;
  bool five = false;
  bool six = false;

  List<String> times = [
    '9:00',
    '10:00',
    '11:00',
    '12:00',
    '1:00',
    '2:00',
    '3:00',
    '4:00'
  ];
  List<String> selectedTime = ['2:00', '4:00'];
}
