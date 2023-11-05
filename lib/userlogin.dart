/*

import 'package:flutter/material.dart';
import 'homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserLoginScreen(),
    );
  }
}

class UserLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Please Enter Your Information Below',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'GuardaBaby',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.red[200],
              ),
            ),
            SizedBox(height: 60),
            Container(
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  hintText: 'Enter your full name',
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Age',
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Car Model',
                ),
              ),
            ),
            SizedBox(height: 70),
            ElevatedButton(
              onPressed: () {
                // Navigate to the homepage
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              child: Text('SAVE'),
            ),
          ],
        ),
      ),
    );
  }
}


*/