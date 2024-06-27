import 'package:flutter/material.dart';
import 'package:prashant_moxey_assignment/home_screen.dart';

void main() {
  runApp(const MyMoxeyApp());
}

class MyMoxeyApp extends StatelessWidget {
  const MyMoxeyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Moxey Assignment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
