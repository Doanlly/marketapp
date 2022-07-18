// import 'package:flutter/material.dart';
import 'package:flutter_app/splash_screen.dart';
import 'package:flutter_app/nextsr1.dart';
// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   //const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // title: 'Flutter Demo',
//       // theme: ThemeData(
//       //   primarySwatch: Colors.blue,
//       // ),
//       // home: const MyHomePage(title: 'Flutter Demo Home Page'),
//       home:Splashsreen() ,
//     );
//   }
// }

import 'dart:async';
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
  
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(Duration(seconds: 3),
//           ()=>Navigator.pushReplacement(context,
//                                         MaterialPageRoute(builder:
//                                                           (context) => 
//                                                           SecondScreen()
//                                                          )
//                                        )
//          );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child:FlutterLogo(size:MediaQuery.of(context).size.height)
//     );
//   }
// }
