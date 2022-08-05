import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_app/loginmarket/codesent.dart';
import 'package:flutter_app/loginmarket/enter_digit.dart';

class Codesent extends StatefulWidget {
  const Codesent({Key? key}) : super(key: key);

  @override
  State<Codesent> createState() => _CodesentState();
}

class _CodesentState extends State<Codesent> {
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Enter4digit())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 250,
              child: Image.asset("assets/images/ic_sentcode.png"),
            ),
            Text(
                "    Verification Code Send on \n your Registered Mobile Number "),
            SizedBox(
              height: 220,
            ),
          ],
        ),
      ),
    );
  }
}
