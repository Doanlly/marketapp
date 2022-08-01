import 'package:flutter/material.dart';
import 'package:flutter_app/fruitmk/categories.dart';
import 'package:flutter_app/fruitmk/notificationz.dart';
import 'package:flutter_app/fruitmk/productview.dart';
import 'package:flutter_app/fruitmk/Product_fruit.dart';
import 'package:flutter_app/test.dart';
class Fruitmarket extends StatefulWidget {
  const Fruitmarket({Key? key}) : super(key: key);

  @override
  State<Fruitmarket> createState() => _FruitmarketState();
}

class _FruitmarketState extends State<Fruitmarket> {
  double rating = 0;
  //int currentindex = 0;
  // static List<Widget> _widgetOptions = <Widget>[
  //   Text("man chinh",),
  //   Text("mua ban",),
  //   Text("mua ban",),
  //   Text("mua ban",),
  // ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(105, 160, 58, 1),
        title: RichText(
            text: TextSpan(
          children: [
            TextSpan(
                text: "F",
                style: TextStyle(
                    fontSize: 26.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "Poppins")),
            TextSpan(
                text: "ruit Market",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "Poppins")),
          ],
        )),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                print("tong sanpham: ${tongsanpham}");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Notificationz()));
              },
              icon: Icon(
                Icons.add_alert_sharp,
                color: Colors.white,
              )),
        ],
      ),
      body: Container(
        //color: Colors.amber,
        child: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height*0.05,
                      ),
                      Categories(),

                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 30,
            width: double.infinity,
            color: Color.fromRGBO(105, 160, 58, 1),
          ),
         Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Card(
              child: TextField(

                textAlignVertical: TextAlignVertical.center,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 13,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search",
                  hintStyle: TextStyle(fontSize: 14.5,fontWeight: FontWeight.w500,color: Colors.black38),
                  // label: Text("Search",style: TextStyle(color: Colors.black12,fontSize: 14,),),
                  prefixIcon: IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.black54,
                        size: 30,
                      ),
                      onPressed: () {}),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

