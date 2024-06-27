import 'package:doctor/params/state%20holder/main_button_controller.dart';
import 'package:doctor/params/ui/chat_screen.dart';
import 'package:doctor/params/ui/home_screen.dart';
import 'package:doctor/params/ui/schedule_screen.dart';
import 'package:doctor/params/ui/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class MainButtonNavScreen extends StatefulWidget {
  const MainButtonNavScreen({super.key});

  @override
  State<MainButtonNavScreen> createState() => _MainButtonNavScreenState();
}

class _MainButtonNavScreenState extends State<MainButtonNavScreen> {
  final List<Widget> _screens = [
    const HomeScreen(),
    const ChatScreen(),
     const ScheduleScreen(),
     const SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainButtonController>(
      builder: (mainControl) {
        return Scaffold(
          body: _screens[mainControl.currentindex],
          // body:Text('Hi'),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.deepPurpleAccent,
            showUnselectedLabels: true,
            currentIndex: mainControl.currentindex,
            onTap: mainControl.changeIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Message"),
              BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: "Schedule"),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
            ],
          ),
        );
      },
    );
  }
}

