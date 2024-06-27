
import 'package:doctor/params/state%20holder/main_button_controller.dart';
import 'package:get/get.dart';


class ControllerBinder extends Bindings{
  @override
  void dependencies() {
    Get.put(MainButtonController());
  }

}