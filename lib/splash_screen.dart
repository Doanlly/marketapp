import 'package:flutter/material.dart';
import 'package:flutter_app/nextsr1.dart';
import 'dart:async';
class Splashsreen extends StatefulWidget {
  //const Splashsreen({Key? key}) : super(key: key);
  
  @override
  State<Splashsreen> createState() => _SplashsreenState();
}

class _SplashsreenState extends State<Splashsreen> {
  @override
  
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context,
           MaterialPageRoute(builder:(context) => Nextsr1()
                                                         ))
         );
  }
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(105, 160, 58, 1),
      //child:FlutterLogo(size:MediaQuery.of(context).size.height)
      child: Column(
        
        children: [
          Stack(
            children: <Widget>[
              Container(
                height: 400,
                width: double.infinity,
                color: Color.fromRGBO(105, 160, 58, 1),
                child: Container(
                  margin: EdgeInsets.only(top : 300),
                  child: Center(
                    //child: Text("Fruit Market", style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold,color: Colors.white,fontFamily: "Poppins")
                    child: RichText(text: TextSpan(children: [
                    TextSpan(text:"F",style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold,color: Colors.white,fontFamily: "Poppins")),
                     TextSpan(text:"ruit Market",style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold,color: Colors.white,fontFamily: "Poppins")),

                    ],)
                    ),
                    ),
                ),
              
              ),
             
            ]
          ),
          
            Expanded(
              child: Stack(
                children: [
                Container(
                  //height: 100,
                  margin: EdgeInsets.only(top: 200),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                       decoration: new BoxDecoration(
                      image: new DecorationImage(
                        image: new ExactAssetImage('assets/images/mix_fruit_png_11.png'),
                        fit: BoxFit.cover,
                      ),
        ), //Image.asset("assets/images/mix_fruit_png_11.png"),
                  ),
                ),),
                ],
              ),
            ),

          //  Stack(
          //    children: <Widget>[  Container(
              
          //     child: Image.asset("assets/images/mix_fruit_png_11.png")
          //     )
               
          //           ]
          //       ),
           
        ],
      
      ),
    );
  }
  }

