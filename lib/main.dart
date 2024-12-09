import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/login.dart';
import 'screens/signup.dart';

void main() {
  runApp(RecettiApp());
}

class RecettiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recetti',
      theme: ThemeData(
        primaryColor: Color(0xFF042628),
        fontFamily: 'Poppins',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),      // Page d'accueil
        '/login': (context) => LoginPage(), // Page Login
        '/signup': (context) => SignupPage(), // Page Signup
      },
    );
  }
}
