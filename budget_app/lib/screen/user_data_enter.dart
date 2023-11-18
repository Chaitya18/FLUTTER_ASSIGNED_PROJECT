import 'package:flutter/material.dart';

class User_Data_Entry extends StatefulWidget {
  const User_Data_Entry({super.key});

  @override
  State<User_Data_Entry> createState() => _User_Data_EntryState();
}

class _User_Data_EntryState extends State<User_Data_Entry> {
  TextEditingController salary = TextEditingController(); //Monthly Salary
  TextEditingController rent = TextEditingController(); //House Rent
  TextEditingController foodexp = TextEditingController(); //Food Expense
  TextEditingController transport = TextEditingController(); //Transport Expense
  TextEditingController ipremium = TextEditingController(); //Insurance  Premium
  TextEditingController pexpense = TextEditingController(); //Personal Expense
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Budget Recorder",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SizedBox(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Salary:",
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: TextField(
                  controller: salary,
                  onChanged: (s) => salary.text = s,
                  decoration: InputDecoration(
                    labelText: 'Enter Salary',
                  )),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Rent:",
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: TextField(
                  controller: rent,
                  onChanged: (r) => rent.text = r,
                  decoration: InputDecoration(
                    labelText: 'Enter Rent',
                  )),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Food Expenditure:",
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: TextField(
                  controller: foodexp,
                  onChanged: (fe) => foodexp.text = fe,
                  decoration: InputDecoration(
                    labelText: 'Enter Food Expenditure',
                  )),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Transportation Cost:",
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: TextField(
                  controller: transport,
                  onChanged: (t) => transport.text = t,
                  decoration: InputDecoration(
                    labelText: 'Enter Transport Cost',
                  )),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Insurance Premium:",
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: TextField(
                  controller: ipremium,
                  onChanged: (ip) => ipremium.text = ip,
                  decoration: InputDecoration(
                    labelText: 'Enter Insurance Premium',
                  )),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Personal expenditure:",
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: TextField(
                  controller: pexpense,
                  onChanged: (pe) => pexpense.text = pe,
                  decoration: InputDecoration(
                    labelText: 'Enter Personal Expenditure',
                  )),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Column(children: [
                                  Text("Salary : " + salary.text),
                                  Text("Rent : " + rent.text),
                                  Text("Food Expense : " + foodexp.text),
                                  Text("Transport Expense : " + transport.text),
                                  Text("Insurance Premium : " + ipremium.text),
                                  Text("Personal Expense : " + pexpense.text),
                                ]),
                              );
                            },
                          );
                        },
                        child: Text(
                          "Calculate",
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
