import 'package:billing_system_v1/constants.dart';
import 'package:billing_system_v1/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Core());
}

class Core extends StatelessWidget {
  const Core({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Auth Screen 1",
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        primaryColor: primaryColor,
        scaffoldBackgroundColor: lightBgColor,
        textTheme: const TextTheme(
          displaySmall: TextStyle(
            color: primaryColor,
            fontWeight: FontWeight.bold,
          ),
          labelLarge: TextStyle(
            color: primaryDark,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const WelcomeScreen(),
    );
  }
}
