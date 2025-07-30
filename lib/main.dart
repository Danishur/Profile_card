import 'package:flutter/material.dart';
import 'package:flutter_pertama/screens/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 183, 58, 58)),
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}