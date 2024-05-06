import 'package:app_courses/screen/screen_student/home.dart';
import 'package:app_courses/screen/screen_student/student_signup/signUp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class Auth_screen extends StatelessWidget {
  const Auth_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return Home();
          } else {
            return SignUp();
          }
        }),
      ),
    );
  }
}
