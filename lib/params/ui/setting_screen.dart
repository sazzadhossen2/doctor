import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Settings'),
      //   backgroundColor: Colors.purple,
      // ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Settings',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          const ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/doctor3.jpg'),
            ),
            title: Text(
              'Dr. Doctor Name',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Profile'),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.person, color: Colors.blue),
            title: const Text('Profile'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to Profile screen
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications, color: Colors.purple),
            title: const Text('Notifications'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to Notifications screen
            },
          ),
          ListTile(
            leading: const Icon(Icons.lock, color: Colors.deepPurple),
            title: const Text('Privacy'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to Privacy screen
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings, color: Colors.green),
            title: const Text('General'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to General screen
            },
          ),
          ListTile(
            leading: const Icon(Icons.info, color: Colors.orange),
            title: const Text('About Us'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to About Us screen
            },
          ),
        ],
      ),
    );
  }
}
