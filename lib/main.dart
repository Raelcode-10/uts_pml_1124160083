import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Raka',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.red, useMaterial3: true),
      darkTheme: ThemeData(colorSchemeSeed: Colors.red, brightness: Brightness.dark),
      themeMode: ThemeMode.system,
      home: const ProfilePage(), 
    );
  }
}