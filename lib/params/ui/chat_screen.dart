import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text(
                "Message",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: Card(
                  elevation: 2,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Searching..",
                      suffixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Active now",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 100,
                // Adjust height to fit the content within a scrollable area
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/doctor1.jpg"),
                            radius: 40,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Recent Chat",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const ListTile(
                    title: Text("Dr Sazzad Hossen"),
                    subtitle: Text('Hello Dr are you There'),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/doctor3.jpg"),
                      radius: 30,
                    ),
                    trailing: Text("12.30"),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
