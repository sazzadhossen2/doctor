import 'package:flutter/material.dart';

import '../widget/schedule.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  final List<bool> _isSelected = [true, false, false];
  final List<Appointment> _appointments = [
    Appointment('Dr. Doctor Name', 'Therapist', '12/01/2023', '10:30 AM',
        'Confirmed', 'Upcoming'),
    Appointment('Dr. Doctor Name', 'Therapist', '12/01/2023', '10:30 AM',
        'Confirmed', 'Upcoming'),
    Appointment('Dr. Doctor Name', 'Therapist', '12/01/2023', '10:30 AM',
        'Confirmed', 'Upcoming'),
    Appointment('Dr. Jane Doe', 'Cardiologist', '12/02/2023', '11:00 AM',
        'Completed', 'Completed'),
    Appointment('Dr. Jane Doe', 'Cardiologist', '12/02/2023', '11:00 AM',
        'Completed', 'Completed'),

    Appointment('Dr. John Smith', 'Dermatologist', '12/03/2023', '12:00 PM',
        'Canceled', 'Canceled'),

    // Add more appointments as needed
  ];

  String get selectedCategory {
    if (_isSelected[0]) return 'Upcoming';
    if (_isSelected[1]) return 'Completed';
    if (_isSelected[2]) return 'Canceled';
    return 'Upcoming';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Schedule'),
      //   backgroundColor: Colors.deepPurpleAccent,
      //   automaticallyImplyLeading: false,
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text('Schedule',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          ),
          const SizedBox(height: 10,),
          Center(
            child: ToggleButtons(
              isSelected: _isSelected,
              selectedColor: Colors.white,
              fillColor: Colors.purple,
              borderRadius: BorderRadius.circular(10),
              onPressed: (index) {
                setState(() {
                  for (int i = 0; i < _isSelected.length; i++) {
                    _isSelected[i] = i == index;
                  }
                });
              },
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Upcoming'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Completed'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Canceled'),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                if (_appointments[index].category == selectedCategory) {
                  return AppointmentCard(appointment: _appointments[index]);
                }
                return const SizedBox.shrink();
              },
              itemCount: _appointments.length,
            ),
          )
        ],
      ),
    );
  }
}


