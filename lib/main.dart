import 'package:flutter/material.dart';
import 'package:susctestapp/auth/authform.dart';
import 'package:susctestapp/auth/authscreen.dart';
import 'package:susctestapp/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const AuthScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light, primaryColor: Colors.blue),
    );
  }
}
