import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tdev/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tdev',
      theme: ThemeData(
        primaryColor: Color(0xFF07890B),
        textTheme: GoogleFonts.dmSansTextTheme()
      ),
      debugShowCheckedModeBanner: false,
      home: Home()
    );
  }
}