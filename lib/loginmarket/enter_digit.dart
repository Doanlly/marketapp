
import 'package:flutter/material.dart';

import "package:flutter_app/loginmarket/name_address.dart";
class Enter4digit extends StatefulWidget {
  const Enter4digit({Key? key}) : super(key: key);

  @override
  State<Enter4digit> createState() => _Enter4digitState();
}

class _Enter4digitState extends State<Enter4digit> {
  List<String> currentPin  = ["","","",""];
  TextEditingController pin1Contoler = TextEditingController();
  TextEditingController pin2Contoler = TextEditingController();
  TextEditingController pin3Contoler = TextEditingController();
  TextEditingController pin4Contoler = TextEditingController();
  int currentdeletepin = 4;

  var outlineinputboderz = OutlineInputBorder(
      //borderRadius: BorderRadius.circular(100.0),
    //borderSide:  BorderSide(color: Colors.white),

      );
  int pinIndex = 0 ;
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [SizedBox(height:  50),
           // buildpinButton(),
        Expanded(child: Container(
          //alignment: Alignment(0,0.25),
          //padding: EdgeInsets.symmetric(horizontal: 60.0),
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 20,),
              buildSecurityText(),
              SizedBox(
                height: 30.0,
                //width: 50.0,
                ),
              buildPinRow(),
              SizedBox(height: 30,),
              Container(
                height: 52,
                width: 350,

                child: ElevatedButton(

                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>NameandAds()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary:Color.fromRGBO(105, 160, 58, 1),
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                  child: Text("VERIFY",style: TextStyle(fontSize: 16),),

                ),
              ),
              //SizedBox(height: 2,),
              Container(
                padding: EdgeInsets.only(left: 290),
                child: TextButton(onPressed: (){},
                    child: Text(
                      "Resent Againt?",
                      style: TextStyle(color: Color.fromRGBO(112, 137, 240, 1),fontSize: 11),
                    ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 25),
                child: SizedBox(
                  width: 400,
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          KeyboardNumber(
                            n: 1,
                            onPressed:() {
                              PinIndexsetup("1");
                            },
                          ),
                          KeyboardNumber(
                            n: 2,
                            onPressed:() {
                              PinIndexsetup("2");
                            },
                          ),
                          KeyboardNumber(
                            n: 3,
                            onPressed:() {
                              PinIndexsetup("3");
                            },
                          ),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          KeyboardNumber(
                            n: 4,
                            onPressed:() {
                              PinIndexsetup("4");
                            },
                          ),
                          KeyboardNumber(
                            n: 5,
                            onPressed:() {
                              PinIndexsetup("5");
                            },
                          ),
                          KeyboardNumber(
                            n: 6,
                            onPressed:() {
                              PinIndexsetup("6");
                            },
                          ),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          KeyboardNumber(
                            n: 7,
                            onPressed:() {
                              PinIndexsetup("7");
                            },
                          ),
                          KeyboardNumber(
                            n: 8,
                            onPressed:() {
                              PinIndexsetup("8");
                            },
                          ),
                          KeyboardNumber(
                            n: 9,
                            onPressed:() {
                              PinIndexsetup("9");
                            },
                          ),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            width: 80.0,
                            child: MaterialButton(
                              onPressed:
                                  ()
                              {
                                // pin3Contoler.text = "";
                                currentdeletepin > 1 ? currentdeletepin -= 1: null;
                                switch(currentdeletepin){
                                  case 1:
                                    {
                                      pin1Contoler.text = "";
                                      pin2Contoler.text = "";
                                      pin4Contoler.text = "";
                                      pin3Contoler.text = "";
                                      pinIndex = 1;

                                      print("case 1:$currentdeletepin");
                                    }break;
                                  case 2:
                                    pin2Contoler.text = "";
                                    pin4Contoler.text = "";
                                    pin3Contoler.text = "";
                                    pinIndex = 2;
                                    print("case 2: $currentdeletepin");
                                    break;
                                  case 3:
                                    pin4Contoler.text = "";
                                    pin3Contoler.text = "";
                                    pinIndex = 3;
                                    print("case 3: $currentdeletepin");
                                    break;
                                  case 4:
                                    pin4Contoler.text = "";
                                    pinIndex = 4;
                                    print("case 4 : $currentdeletepin");
                                    break;
                                  // case 5:
                                  //   currentdeletepin = 1;
                                  //   pin1Contoler.text = "";
                                  //   print("case 5 : $currentdeletepin");
                                  //
                                  //   break;
                                }
                              },
                              child:Image.asset("assets/images/ic_delete.png"),
                              // shape: RoundedRectangleBorder(
                              //   borderRadius: BorderRadius.circular(60.0)

                            ),
                          ),

                          KeyboardNumber(
                            n: 0,
                            onPressed:() {
                              PinIndexsetup("0");
                            },
                          ),
                          Container(
                            width: 80.0,
                            child: MaterialButton(
                              onPressed:(){
                                PinIndexsetup("ok");
                              },
                              child:Text("OK",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500,fontFamily: "Poppins",color: Colors.black87),),
                              // shape: RoundedRectangleBorder(
                              //   borderRadius: BorderRadius.circular(60.0)

                            ),
                          ),

                        ],

                      ),
                      SizedBox(
                        height: 40,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),),



          ],
        ),
      ),
    );
  }
  // nhap o tiep theo den het o thu 4
  PinIndexsetup(String text){
    if(pinIndex == 0 )
      pinIndex = 1;
    else if(pinIndex <4 )
      pinIndex++;
    else
      pinIndex= 0;

    setPin(pinIndex,text);
    currentPin[pinIndex-1] = text;
    String strPin  = "";
    currentPin.forEach((e) {
      strPin +=e;
    });
    if(pinIndex == 4)
      print(strPin);
  }
  setPin(int n,String text){
    switch(n){
      case 1:
        pin1Contoler.text = text;
        break;
      case 2:
        pin2Contoler.text = text;
        break;
      case 3:
        pin3Contoler.text = text;
        break;
      case 4:
        pin4Contoler.text = text;
        break;

    }
  }
  buildPinRow(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PINNumber(
          //outlineInputborder: outlineinputboderz,
          textEditingController: pin1Contoler,
        ),
        Padding(padding: EdgeInsets.only(right: 12)),
        PINNumber(
          //outlineInputborder: outlineinputboderz,
          textEditingController: pin2Contoler,
        ),
        Padding(padding: EdgeInsets.only(right: 12)),
        PINNumber(
          //outlineInputborder: outlineinputboderz,
          textEditingController: pin3Contoler,
        )

        ,
        Padding(padding: EdgeInsets.only(right: 12)),PINNumber(
          //outlineInputborder: outlineinputboderz,
          textEditingController: pin4Contoler,
        )

      ],
    );
  }
  buildSecurityText(){
    return Text("Enter The 4 digit code that was \n    to your Mobile Number",
      style: TextStyle(fontSize: 21,color: Colors.black87,
        // fontWeight: FontWeight.bold,

    ),
    );

  }
  clearPin(){
    if(pinIndex ==0)
      pinIndex = 0;
    else if (pinIndex == 4){
      setPin(pinIndex, "");
      currentPin[pinIndex-1] = "";
      pinIndex--;
    } else{
      setPin(pinIndex,"");
      currentPin[pinIndex-1] = "" ;
      pinIndex--;
    }
  }
  // buildpinButton(){
  //   return Row(
  //      mainAxisAlignment: MainAxisAlignment.end,
  //     children: <Widget>[Padding(
  //         padding: EdgeInsets.all(10.0),
  //       child: MaterialButton(
  //         onPressed: (){
  //           clearPin();
  //         },
  //         height: 50.0,
  //         minWidth: 50.0,
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(60),
  //
  //         ),
  //         child: Icon(Icons.clear,color: Colors.blue,),
  //       ),
  //     )],
  //   );
  // }
}
class PINNumber extends StatelessWidget {
  final TextEditingController textEditingController;
  //final OutlineInputBorder outlineInputborder;
  PINNumber({required this.textEditingController,/*required this.outlineInputborder*/});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromRGBO(239, 239, 239, 1),
      ),
      //color: Colors.green,
      child: TextField(

        controller: textEditingController,

        //enabled: false,
        //obscureText: true,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            fillColor:Color.fromRGBO(118, 118, 118, 1) ,
            //contentPadding: EdgeInsets.all(5),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
              ),

            //filled: true,
            //fillColor: Colors.white30),
        ),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize:30,

          //color: Colors.black,

        ),

      ),
    );
  }
}
class KeyboardNumber extends StatelessWidget {
  final int n;
  final Function() onPressed;
  KeyboardNumber({required this.n,required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromRGBO(239, 239, 239, 1),
      ),
      alignment: Alignment.center,
      child: MaterialButton(
        padding: EdgeInsets.all(8.0),
        onPressed:onPressed,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60.0)

        ),
        height: 90.0,
        child: Text("$n",textAlign: TextAlign.center,style: TextStyle(fontSize: 30*MediaQuery.of(context).textScaleFactor
          ,fontWeight: FontWeight.bold,
        ),

        ),
      ),

    );
  }
}
//minline