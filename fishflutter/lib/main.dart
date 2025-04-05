import 'package:flutter/material.dart';
import 'package:fishflutter/screen/sign_in_screen_dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInScreen(), // Pastikan widget SignInScreen sudah benar
    );
  }
}
