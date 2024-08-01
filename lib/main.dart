import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate_mobile_app/constants/colors.dart';
import 'package:real_estate_mobile_app/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real Estate',
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBgColor,
        canvasColor: kBgColor,
        textTheme: GoogleFonts.poppinsTextTheme()
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodySmall: const TextStyle(color: kBodyTextColor),
              bodyMedium: const TextStyle(color: kBodyTextColor),
            ),
      ),
      home: const HomeScreen(),
    );
  }
}
