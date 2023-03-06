import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:treeis/screens/home_screen/home_screen.dart';
import 'package:treeis/screens/map_screen/map_screen.dart';

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
        primarySwatch: Colors.blue,
      ).copyWith(
          // textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
          ),
      debugShowCheckedModeBanner: false,
      home: MapScreen(),
    );
  }
}
