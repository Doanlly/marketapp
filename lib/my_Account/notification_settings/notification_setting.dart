import 'package:flutter/material.dart';
//import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
class NotificationSetting extends StatefulWidget {
  const NotificationSetting({Key? key}) : super(key: key);

  @override
  State<NotificationSetting> createState() => _NotificationSettingState();
}

class _NotificationSettingState extends State<NotificationSetting> {
  bool status = false;
  bool positive = false;
  bool istogg = false;
  bool positive1 = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: Icon(Icons.arrow_back_ios_new,size: 20,color: Colors.white,)) ,
        backgroundColor: Color.fromRGBO(105, 160, 58, 1),
        title: Text("Notification Setting",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white),),
      ),
      body: Column(
        children: [
          Container(
            height: size.height*0.08,
            width: double.infinity,
            //color: Colors.red,
            child: TextButton(onPressed: (){},
                child: Row(
                  children: <Widget>[
                    ImageIcon(
                      AssetImage("assets/images/ic_alarmsetting.png",),size: 35,color:Color.fromRGBO(105, 160, 58, 1) ,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Container(
                        width: size.width*0.6,
                        height: size.height*0.1,
                        //color: Colors.amber,
                        alignment: Alignment.centerLeft,
                        child: Column(

                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Container(

                                  width: size.width*0.5,
                                  child: Text("My Account",
                                    style: TextStyle(fontSize: 14.5,
                                        fontWeight: FontWeight.w600,color: Colors.black),)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Container(
                                  width: size.width*0.5,
                                  child: Text("You will receive daily updates",style: TextStyle(fontSize: 13,color: Color.fromRGBO(123, 123, 123, 1)),)),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: SizedBox(
                        width: 50,
                        height: 20,
                        child: AnimatedToggleSwitch<bool>.dual(

                          current: positive1,
                          first: false,
                          second: true,
                          dif: 50.0,
                          borderColor: Colors.transparent,
                          borderWidth: 2.0,
                          height: 20,
                          //indicatorColor: Colors.red,
                          boxShadow: const [
                            BoxShadow(
                              //color: Colors.green,
                              spreadRadius: 0.5,
                              blurRadius: 2,
                              offset: Offset(0, 1.5),
                            ),
                          ],
                          onChanged: (a) => setState(() => positive1 = a),
                          colorBuilder: (a) => a ? Colors.white  : Color.fromRGBO(112, 112, 112, 1),
                          innerColor: positive1? Colors.green: Colors.white,
                          // iconBuilder: (value) => value
                          //     ? Icon(Icons.coronavirus_rounded)
                          //     : Icon(Icons.tag_faces_rounded),
                          // textBuilder: (value) => value
                          //     ? Center(child: Text('Oh no...'))
                          //     : Center(child: Text('Nice :)')),
                        ),
                      ),
                    ),

                    // FlutterSwitch(
                    //   height: 20.0,
                    //   width: 40.0,
                    //   padding: 4.0,
                    //   toggleSize: 15.0,
                    //   borderRadius: 10.0,
                    //   //activeColor: lets_cyan,
                    //   value: istogg,
                    //   onToggle: (value) {
                    //     setState(() {
                    //       istogg = value;
                    //     });
                    //   },
                    // ),

                  ],
                )),
          ),
          Container(
            height: size.height*0.08,
            width: double.infinity,
            //color: Colors.red,
            child: TextButton(onPressed: (){},
                child: Row(
                  children: <Widget>[
                    ImageIcon(
                      AssetImage("assets/images/ic_alarmsetting.png",),size: 35,color:Color.fromRGBO(105, 160, 58, 1) ,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Container(
                        width: size.width*0.6,
                        height: size.height*0.1,
                        //color: Colors.amber,
                        alignment: Alignment.centerLeft,
                        child: Column(

                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Container(

                                  width: size.width*0.5,
                                  child: Text("Pramotio Notifications",
                                    style: TextStyle(fontSize: 14.5,
                                        fontWeight: FontWeight.w600,color: Colors.black),)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Container(
                                  width: size.width*0.5,
                                  child: Text("You will receive daily updates",style: TextStyle(fontSize: 13,color: Color.fromRGBO(123, 123, 123, 1)),)),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: SizedBox(
                        width: 50,
                        height: 20,
                        child: AnimatedToggleSwitch<bool>.dual(

                          current: positive,
                          first: false,
                          second: true,
                          dif: 50.0,
                          borderColor: Colors.transparent,
                          borderWidth: 2.0,
                          height: 20,
                          //indicatorColor: Colors.red,
                          boxShadow:  [
                            BoxShadow(
                              //color: Colors.green,
                              spreadRadius: 0.5,

                              blurRadius: 2,
                              offset: Offset(0, 1.5),
                            ),
                          ],
                          onChanged: (b) => setState(() => positive = b),
                          colorBuilder: (b) => b ? Colors.white  : Color.fromRGBO(112, 112, 112, 1),
                          innerColor: positive? Colors.green: Colors.white,
                          // iconBuilder: (value) => value
                          //     ? Icon(Icons.coronavirus_rounded)
                          //     : Icon(Icons.tag_faces_rounded),
                          // textBuilder: (value) => value
                          //     ? Center(child: Text('Oh no...'))
                          //     : Center(child: Text('Nice :)')),
                        ),
                      ),
                    ),
                    // Switch(value: val, onChanged:(newVal){
                    //
                    // }
                    //)
                    // FlutterSwitch(
                    //   height: 20.0,
                    //   width: 40.0,
                    //   padding: 4.0,
                    //   toggleSize: 15.0,
                    //   borderRadius: 10.0,
                    //   //activeColor: lets_cyan,
                    //   value: istogg,
                    //   onToggle: (value) {
                    //     setState(() {
                    //       istogg = value;
                    //     });
                    //   },
                    // ),

                  ],
                )),
          ),
        ],
      ),
    );
  }
}
