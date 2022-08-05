import 'package:flutter/material.dart';
import 'package:flutter_app/loginmarket/keyboard_number.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _chepterState();
}

class _chepterState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 100),
                child: SizedBox(
                  height: 250,
                  width: 300,
                  child: SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image:
                              ExactAssetImage('assets/images/fruit_home.png'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Container(
                  // margin: EdgeInsets.only(top : 5),
                  child: Center(
                    //child: Text("Fruit Market", style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold,color: Colors.white,fontFamily: "Poppins")
                    child: RichText(
                        text: TextSpan(
                      children: [
                        TextSpan(
                            text: "F",
                            style: TextStyle(
                                fontSize: 51,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(105, 160, 58, 1),
                                fontFamily: "Poppins")),
                        TextSpan(
                            text: "ruit Market",
                            style: TextStyle(
                                fontSize: 42,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(105, 160, 58, 1),
                                fontFamily: "Poppins")),
                      ],
                    )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 45, left: 15, right: 15),
                child: Container(
                  height: 50,
                  width: 350,
                  child: OutlinedButton(
                    style: TextButton.styleFrom(
                      side: BorderSide(
                        style: BorderStyle.solid,
                        color: Colors.black54,
                      ),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Enter_number()),
                      );
                    },
                    child: Text(
                        "Enter Your Mobile Number                                  "),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Center(
                  child: Text(
                    "OR",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 150,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                  color: Color.fromRGBO(112, 112, 112, 0.7),
                                  width: 1.5),
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Container(
                                  child: Image.asset(
                                    "assets/images/google_icon.png",
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                                Text(
                                  "  Log in with",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 50,
                          width: 150,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                  color: Color.fromRGBO(112, 112, 112, 0.7),
                                  width: 1.5),
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Container(
                                  child: Image.asset(
                                    "assets/images/icon_facebook.png",
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                                Text(
                                  "  Log in with",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
