import 'package:flutter/material.dart';
import 'package:guardababy/notifscreen.dart';
import 'dashcam.dart';
import 'notifscreen.dart';

void main() {
  runApp(RandomFilePickerApp());
}

class RandomFilePickerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://s3.amazonaws.com/3ge.shared.assets/things-to-know/toyota/v1/ttk-image-electrical_lights_04_05-2.png',
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              child: Icon(
                Icons.camera,
                color: Colors.white,
              ),
            ),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              child: Icon(
                Icons.house,
                color: Colors.white,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              child: Icon(
                Icons.notification_add_outlined,
                color: Colors.white,
              ),
            ),
            label: 'Notifications',
          ),
        ],
        onTap: (int index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RandomFilePicker(),
              ),
            );
          } else if (index == 1) {
            // You can add logic for the Home screen or navigate elsewhere.
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NotificationApp(),
              ),
            );
          }
        },
      ),
    );
  }
}



class TextBoxWidget extends StatelessWidget {
  final String text;

  TextBoxWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: text,
        ),
      ),
    );
  }
}
