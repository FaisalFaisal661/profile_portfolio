  

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



import 'coolers.dart';  
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity, colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.teal).copyWith(secondary: Coolers.accentColor),
      ),
      home: const HomeScreen(),
    );
  }
}
