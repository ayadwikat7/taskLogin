// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class app3 extends StatefulWidget {
  @override
  State<app3> createState() => _app3State();
}

class _app3State extends State<app3> {
  String email = "";
  String pass = "";
  @override
  Widget build(BuildContext context) {
    TextEditingController emailText = new TextEditingController();
    TextEditingController passlText = new TextEditingController();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text(
            'pink pro salon',
            style: TextStyle(
                color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: TextField(
                controller: emailText,
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.pink, fontSize: 22),
                  border: OutlineInputBorder(),
                  hintText: "Example : ayaDwikat@gmail.com",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: passlText,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.pink, fontSize: 22),
                border: OutlineInputBorder(),
                hintText: "Example : 123587",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (email != 'tariq@gmail.com' && pass != '112233') {
                    email = 'error';
                  } else {
                    email = emailText.text;
                    pass = passlText.text;
                  }
                });
              },
              child: Text('clik'),
            ),
            Text(
              ' ${email}',
              style: TextStyle(color: Colors.pink, fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
