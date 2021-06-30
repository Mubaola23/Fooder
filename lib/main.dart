import 'package:flutter/material.dart';
import 'package:fooder/core/constants.dart';
import 'package:fooder/views/screens/dashboard_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fooder',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: kSecondaryColor,
        ),
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.nunitoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: DashboardScreen(),
    );
  }
}
