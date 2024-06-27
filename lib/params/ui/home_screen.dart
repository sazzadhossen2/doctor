import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello Alex'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/doctor1.jpg'),
            ),
          )
        ],
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const SizedBox(
                      height: 100,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add, size: 30, color: Colors.purple),
                            Text('Clinic Visit', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            Text('Make an appointment', style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const SizedBox(
                      height: 100,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.home, size: 30, color: Colors.purple),
                            Text('Home Visit', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            Text('Call the doctor home', style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text('What are your symptoms?', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip(
                  label: const Text('Temperature'),
                  backgroundColor: Colors.grey[200],
                ),
                Chip(
                  label: const Text('Snuffle'),
                  backgroundColor: Colors.grey[200],
                ),
                Chip(
                  label: const Text('Fever'),
                  backgroundColor: Colors.grey[200],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text('Popular Doctors', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.8,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // Navigate to a new screen or perform an action
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => DoctorDetailsScreen()),
                    // );
                    Get.to(()=>const DoctorDetailsScreen());
                  },
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/doctor1.jpg'),
                          radius: 30,
                        ),
                        SizedBox(height: 10),
                        Text('Dr. Doctor Name', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                        Text('Therapist', style: TextStyle(color: Colors.grey)),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 20),
                            SizedBox(width: 5),
                            Text('4.9', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}






