import 'dart:math';
// import './subject.dart'; // Assuming this is not needed for this code
import 'package:app_courses/screen/screen_teacher/home.dart';
import 'package:flutter/material.dart';

class Leacuter extends StatefulWidget {
  const Leacuter({super.key});

  @override
  State<Leacuter> createState() => _LeacuterState();
}

class _LeacuterState extends State<Leacuter> {
  String subjectName = '';
  String subjectCoe = ''; // Initialize to an empty string for clarity
  List<String> subjects = [];

  void generateCode() {
    if (subjectName.isEmpty) {
      // Display an error message if subject name is empty
      _showErrorDialog(context, "Please enter a subject name.");
      return;
    }

    var random = Random();
    const String chars = 'qwertyuioplkjhgfdsazxcvbnm0123456789';
    subjectCoe = '';
    for (int i = 0; i < 6; i++) {
      subjectCoe += chars[random.nextInt(chars.length)];
    }

    setState(() {
      subjects.add(subjectName);
    });

    _showSuccessDialog(context, subjectName, subjectCoe);
  }

  void _showErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Error'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _showSuccessDialog(
      BuildContext context, String subjectName, String subjectCoe) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Subject Code'),
          content: Text('The subject is $subjectName & code is $subjectCoe'),
          actions: [
            FloatingActionButton(
              onPressed: () {
                Navigator.of(context).pop();
                var route = MaterialPageRoute(builder: (context) => Homepage());
                Navigator.push(context, route);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("اضافة المادة (Add Subject)")),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              " (Enter the subject name and the code will be generated for you. Copy and send it to the students)",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Subject Name",
              ),
              onChanged: (value) {
                setState(() {
                  subjectName = value;
                });
              },
            ),
            SizedBox(height: 20),
            FloatingActionButton(
              onPressed: generateCode,
              child: Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
