
import 'package:budget_app/screen/dashboard.dart';
import 'package:budget_app/screen/user_data_enter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController uname = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  String current = "";

  Future<void> signup() async {
    final UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: uname.text.toString(), password: password.text.toString());
    User? user = userCredential.user;
    await FirebaseFirestore.instance
        .collection("Users")
        .doc(user!.uid)
        .set({'name': '${name.text.toString()}'});

    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MyDashboard(
            user: user,
          ),
        ));
  }

  Future<void> login() async {
    final UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: uname.text.toString(), password: password.text.toString());
    User? user = userCredential.user;

    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MyDashboard(
            user: user,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("Hello There!"),
            SizedBox(height: 30),
            TextField(
                controller: uname,
                decoration: InputDecoration(
                  labelText: 'Login Id',
                )),
            TextField(
                controller: password,
                decoration: InputDecoration(
                  labelText: 'Password',
                )),
            TextField(
                controller: name,
                decoration: InputDecoration(
                  labelText: 'Name 1',
                )),
            ElevatedButton(
                onPressed: () {
                  login();
                },
                child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
