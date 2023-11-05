import 'package:flutter/material.dart';

void main() {
  runApp(NotificationApp());
}

class NotificationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NotificationScreen(),
    );
  }
}

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification Screen'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextWidget("ALARM BABY UNATTENDED"),
            SizedBox(height: 30),
            TextWidget("Reminder! Baby is asleep, exercise caution when driving, Lane assist and blind spot monitoring activated"),
            SizedBox(height: 30),
            TextWidget("White noise dampening, audio increased in rear speakers"),
            SizedBox(height: 30),
            TextWidget("Current Temp: 66 Adjusting cabin temperature to optimal conditions for baby: 71"),
          ],
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String text;

  TextWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16), // Add horizontal padding
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 16),
              maxLines: 2, // Set the maximum number of lines to wrap the text
              overflow: TextOverflow.ellipsis, // Handle overflow
            ),
          ),
        ],
      ),
    );
  }
}
