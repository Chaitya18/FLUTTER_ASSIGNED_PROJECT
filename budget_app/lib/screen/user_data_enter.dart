import 'package:flutter/material.dart';

class User_Data_Entry extends StatefulWidget {
  const User_Data_Entry({super.key});

  @override
  State<User_Data_Entry> createState() => _User_Data_EntryState();
}

class _User_Data_EntryState extends State<User_Data_Entry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Budget Recorder",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                Text("Enter Your Salary"),
                TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter your username')),
              ],
            ),
          ),
          Container(
            child: Row(),
          ),
          Container(),
          Container(),
          Container(),
        ],
      ),
    );
  }
}
