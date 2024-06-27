import 'package:doctor/params/ui/Authentication/Login_screen.dart';
import 'package:doctor/params/ui/Authentication/sign%20up%20screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 150,
          ),
          Image.asset(
            "assets/images/doctors.png",
            height: 300,
            width: 400,
          ),
          const SizedBox(height: 50,),
          const Text(
            "Doctors Appointment",
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent),
          ),
          const SizedBox(height: 20,),
          const Text("Appoint your Doctor"),
          const SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 180,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.deepPurpleAccent.withOpacity(0.8)),
                      onPressed: () {
                        Get.to(()=>const Loginscreen());
                      },
                      child: const Text("Log in",style: TextStyle(color: Colors.white),))),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.deepPurpleAccent.withOpacity(0.8)),
                      onPressed: () {
                        Get.to(()=>const SignupScreen());
                      },
                      child: const Text("Sign up",style: TextStyle(color: Colors.white),))),
            ],
          )
        ],
      ),
    );
  }
}
