import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:math';

void main() => runApp(RandomFilePickerApp());

class RandomFilePickerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RandomFilePicker(),
    );
  }
}

class RandomFilePicker extends StatefulWidget {
  @override
  _RandomFilePickerState createState() => _RandomFilePickerState();
}

class _RandomFilePickerState extends State<RandomFilePicker> {
  String? _randomImageUrl;

  void _pickRandomImage() async {
    final random = Random();
    final randomNumber = random.nextInt(10); // Generate a random number.

    final serverUrl = 'http://127.0.0.1:5000/$randomNumber.jpg';

    try {
      final response = await http.get(Uri.parse(serverUrl));
      if (response.statusCode == 200) {
        setState(() {
          _randomImageUrl = serverUrl; // Store the image URL.
        });
      } else {
        print('Failed to fetch image. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      appBar: AppBar(
        title: Text(
          'Dashcam',
          style: TextStyle(
            fontWeight: FontWeight.bold, // Make the text bold
            fontSize: 24, // Set the font size
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_randomImageUrl != null)
              Image.network(
                _randomImageUrl!,
                width: 300,
                height: 300,
              ),
            ElevatedButton(
              onPressed: _pickRandomImage,
              child: Text('Generate Random Dashcam Visual'),
            ),
          ],
        ),
      ),
    );
  }
}
