import 'package:flutter_app/splash_screen.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.grey,
       //fontFamily: 'Poppins',
      ),
      home: Splashsreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
  
