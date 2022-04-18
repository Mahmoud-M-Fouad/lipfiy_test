import 'package:flutter/material.dart';
import 'package:lipfiy01/screens/home_screen.dart';


void main() {
  // Ensure that plugin services are initialized so that `availableCameras()`
  // can be called before `runApp()`
  WidgetsFlutterBinding.ensureInitialized();
  runApp(TOSApp());
}

class TOSApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TOS',
      theme: ThemeData.light().copyWith(
        accentColor: Colors.teal,
        appBarTheme: const AppBarTheme(color: Color(0xFFC7042C)),
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.teal
        ),
      ),

      home :const HomeScreen());
  }
}
