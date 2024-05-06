// import 'package:app_courses/screen/screen_student/student_signup/auth.dart';
// import 'package:app_courses/screen/screen_teacher/leacter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'screen/screen_student/home.dart';`
import 'option.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Option(),
    );
  }
}
