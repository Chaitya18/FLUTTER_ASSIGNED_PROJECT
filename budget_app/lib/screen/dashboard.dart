// ignore_for_file: must_be_immutable, annotate_overrides

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyDashboard extends StatefulWidget {
  MyDashboard({super.key, this.user});
  User? user;
  @override
  State<MyDashboard> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  List<Widget> textfields = [];
  int text = 0;
  String? name;
  void initState() {
    super.initState();
    getData();
  }

  void addTextField() {
    setState(() {
      text++; // Increment the count
      textfields.add(
        TextField(
          decoration: InputDecoration(labelText: 'Text ${text}'),
        ),
      );
    });
  }

  Future<void> getData() async {
    var document = await FirebaseFirestore.instance
        .collection("Users")
        .doc(widget.user!.uid)
        .get();
    print(document["name"]);
    setState(() {
      name = document["name"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        title: Text("Hi, ${name ?? 'User'}"),
      ),
      body: ListView.builder(
        itemCount: textfields.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(10),
            child: textfields[index],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => addTextField(),
        child: Text("d"),
      ),
    );
  }
}
