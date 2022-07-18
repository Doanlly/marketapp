import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/loginmarket/codesent.dart';
class Loadtotation_number extends StatefulWidget {
  const Loadtotation_number({Key? key}) : super(key: key);

  @override
  State<Loadtotation_number> createState() => _Loadtotation_numberState();
}

class _Loadtotation_numberState extends State<Loadtotation_number> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  void initState(){
    super.initState();
    controller  = AnimationController(vsync: this,duration: Duration(seconds:2));
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    curve: Curves.easeIn;
    controller.repeat(); // hieeuj ung animation lap lai
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:(context) => Codesent()
            ))
    );
  }
  void dispose () {
    //sap dat
    controller.dispose();
    super.dispose();
  }

    // @override
    // void initState1() {
    //   super.initState();
    //   Timer(Duration(seconds: 3),
    //           ()=>Navigator.pushReplacement(context,
    //           MaterialPageRoute(builder:(context) => Codesent()
    //           ))
    //   );
    // }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: RotationTransition(
              
              turns: animation,
              child: SizedBox(
                height: 200,
                width: 250,
                child: Image.asset("assets/images/ic_loading.png"),
              ),
            ),
          ),
          Center(
            child: Text("Verifying Your Mobile Number",style: TextStyle(fontSize: 14, color: Colors.black,fontFamily: "Poppins"),),
          ),
          SizedBox(
            height: 250,
          ),
        ],
      ),
    );
  }
}
