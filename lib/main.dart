import 'package:flutter/material.dart';
import './dark_screen.dart';
import './light_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            colorScheme: ColorScheme(
                background: Colors.grey[300]!,
                error: Colors.red,
                onPrimary: Colors.white,
                onSecondary: Colors.white,
                primaryVariant: Colors.grey[300]!,
                secondaryVariant: Colors.grey[300]!,
                onError: Colors.red,
                onSurface: Colors.white,
                primary: Colors.white,
                secondary: Colors.white,
                surface: Colors.white,
                brightness: Brightness.light,
                onBackground: Colors.white)),
        debugShowCheckedModeBanner: false,
        home: const DarkScreen());
  }
}
