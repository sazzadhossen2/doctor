

import 'package:doctor/params/ui/mail_button_nav%20bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
                children: [
          const SizedBox(
            height: 150,
          ),
          Image.asset(
            "assets/images/doctors.png",
            height: 300,
            width: 400,
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter User Name',
                prefixIcon: const Icon(Icons.account_box_rounded),
                border: OutlineInputBorder(
          
                  borderRadius: BorderRadius.circular(25),
          
                )
              ),
          
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Enter Password',
                  prefixIcon: const Icon(Icons.password),
                  border: OutlineInputBorder(
          
                    borderRadius: BorderRadius.circular(25),
          
                  )
              ),
          
            ),
          ),
          const SizedBox(height: 20,),
          SizedBox(
              width: 350,
              height: 60,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent.withOpacity(0.8)),
          
                  onPressed: () {
                    Get.to(const MainButtonNavScreen());
                  },
                  child: const Text(
                    "Sign up",
                    style: TextStyle(color: Colors.white),
                  ))),
                ],
              ),
        ));
  }
}
