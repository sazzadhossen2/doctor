import 'package:doctor/params/ui/Authentication/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'controller_bainder.dart';

void main() {
  runApp(const Doctors());
}

class Doctors extends StatelessWidget {
  const Doctors({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      initialBinding: ControllerBinder(),
    );
  }
}
