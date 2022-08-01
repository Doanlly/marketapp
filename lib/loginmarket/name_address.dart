import 'package:flutter/material.dart';
import "package:flutter_app/fruitmk/fruit_market.dart";
import "package:flutter_app/fruitmk/controller_option.dart";

class NameandAds extends StatefulWidget {
  const NameandAds({Key? key}) : super(key: key);

  @override
  State<NameandAds> createState() => _NameandAdsState();
}

class _NameandAdsState extends State<NameandAds> {
  @override
  Widget build(BuildContext context) {
    Size size =  MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(top: 50, left: 15, right: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 1),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Enter Your Name",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                //textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(
                  label: Text(
                    "Manish Chutake",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(57, 57, 57, 1),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 1),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Add Address",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    )),
              ),
              SizedBox(height: 20),
              TextField(
                minLines: 6,
                maxLines: 8,
                decoration: InputDecoration(
                  //contentPadding: EdgeInsets.symmetric(vertical: 70.0),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(
                height: size.height*0.05,
              ),
              Container(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(105, 160, 58, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15), // <-- Radius
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Controller_option()));
                  },
                  child: Text(
                    "VERIFY",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// TextField(
//    textAlignVertical: TextAlignVertical.center,
//    textAlign: TextAlign.left,
//    maxLines: 1,
//    style: TextStyle(
//      fontSize: 13,
//    ),
//    decoration: InputDecoration(
//        suffixIcon: IconButton(icon: Icon(Icons.search, color: Colors.black,), onPressed: (){}),
//        border: OutlineInputBorder(
//          borderSide: BorderSide(
//            color: Colors.black,
//          ),
//          borderRadius: BorderRadius.all(Radius.circular(15)),
//        )
//    ),
//   ),
