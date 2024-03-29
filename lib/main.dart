import 'package:ASEAN_MRC_2024/const/constant.dart';
import 'package:ASEAN_MRC_2024/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'ASEAN-MRC 2024',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        brightness: Brightness.dark,
      ),
      title: 'ASEAN-MRC',
      home: const MainScreen(), 
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Change the value of the title property below
        title: Text('New AppBar Title'),
      ),
      body: Center(
        child: Text('Hello, World!'),
      ),
    );
  }
}