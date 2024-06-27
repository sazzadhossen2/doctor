// import 'package:get/get.dart';
//
// class MainButtonController extends GetxController {
//   int _selectedIndex = 0;
//   int get currentIndex => _selectedIndex;
//
//   void changeIndex(int index) {
//     if (_selectedIndex == index) {
//       return;
//     }
//     _selectedIndex = index;
//     update();
//   }
//
//   void backToHome() {
//     changeIndex(0);
//   }
// }

import 'package:get/get.dart';

class MainButtonController extends GetxController {
  int _selectedindex = 0;

  int get currentindex => _selectedindex;

  void changeIndex(int index) {
    if (_selectedindex == index) {
      return;
    }
    _selectedindex = index;
    update();
  }

  void backtohome() {
    changeIndex(0);
  }
}
