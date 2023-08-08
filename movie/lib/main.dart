// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:movie/screens/home_screen.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MovieApp(),
    );
  }
}
