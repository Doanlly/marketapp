import 'package:flutter/material.dart';
import 'package:flutter_app/fruitmk/Product_fruit.dart';
import 'package:flutter_app/fruitmk/detail.dart';
import 'package:flutter_app/fruitmk/detail1.dart';
import 'package:flutter_app/fruitmk/itemcard.dart';
import 'package:flutter_app/fruitmk/detail2.dart';
import 'package:flutter_app/fruitmk/mixed-itemcard.dart';
import 'package:flutter_app/fruitmk/itemcard_stonefuirt.dart';
import 'package:flutter_app/fruitmk/itemcard_melons.dart';
import 'package:flutter_app/fruitmk/detail3.dart';
class Productscreen extends StatefulWidget {
  const Productscreen({Key? key}) : super(key: key);

  @override
  State<Productscreen> createState() => _ProductscreenState();
}

class _ProductscreenState extends State<Productscreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: Align(
            alignment: Alignment.bottomLeft,

            child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Organic Fruits",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        )),
                    TextSpan(
                        text: " (20% Off)",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(76, 160, 0, 1),
                            )),
                  ],
                )),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Align(
              alignment: Alignment.bottomLeft,
              child: Text("Pick up from organic forms")),
        ),
        Row(
          children: [
            //Itemcard(),
            Expanded(
                child: Container(
                  height: 250,
                  child: GridView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: listproduct.length,
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 15,
                        crossAxisCount: 1,
                        childAspectRatio: 2,
                        //crossAxisSpacing: 2,
                      ),
                      itemBuilder: (context, index) => Itemcard(
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Detailscreen(
                                        produc:
                                        listproduct[index],
                                       // listshoppongcart: [],
                                      )));
                        },
                        produc: listproduct[index],
                      )),
                ))
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Mixed Fruits Pack",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        )),
                    TextSpan(
                        text: " (10% Off)",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(76, 160, 0, 1),
                           )),
                  ],
                )),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Align(
              alignment: Alignment.bottomLeft,
              child: Text("Fruit mix fresh pack")),
        ),
        Row(
          children: [
            //Itemcard(),
            Expanded(
                child: Container(
                  height: 250,
                  //width:20,
                  //color: Colors.lightGreen,
                  child: GridView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: mfruits.length,
                    gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 15,
                      crossAxisCount: 1,
                      childAspectRatio: 2,
                      //crossAxisSpacing: 2,
                    ),
                    itemBuilder: (context, index) => Mixedtemcard(
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Detailscreenz(

                                      mixed: mfruits[index],
                                    )
                            ));
                      },
                      mixed: mfruits[index],
                    ),
                  ),
                ))
          ],
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "Stone Fruits",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                  TextSpan(
                      text: " (20% Off)",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(76, 160, 0, 1),
                         )),
                ],
              )),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Align(
              alignment: Alignment.bottomLeft,
              child: Text("Fresh Stone Fruits")),
        ),
        Row(
          children: [
            //Itemcard(),
            Expanded(
                child: Container(
                  height: 250,
                  //width:20,
                  //color: Colors.lightGreen,
                  child: GridView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: stonefruits.length,
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 15,
                        crossAxisCount: 1,
                        childAspectRatio: 2,
                        //crossAxisSpacing: 2,
                      ),
                      itemBuilder: (context, index) => StonefuirtItems(
                        press: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)
                          => Detailscreen2(stonef: stonefruits[index])
                          ));

                        },
                        stonef: stonefruits[index],

                      )
                  ),
                ))
          ],
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "Melons",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                  TextSpan(
                      text: " (5% Off)",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(76, 160, 0, 1),
                         )),
                ],
              )),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Align(
              alignment: Alignment.bottomLeft,
              child: Text("Fresh Melons Fruits")),
        ),
        Row(
          children: [
            //Itemcard(),
            Expanded(
                child: Container(
                  height: 250,
                  //width:20,
                  //color: Colors.lightGreen,
                  child: GridView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: melonss.length,
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing:15,
                        crossAxisCount: 1,
                        childAspectRatio: 2,
                        //crossAxisSpacing: 2,
                      ),
                      itemBuilder: (context, index) => MelonsItem(
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Detailscreen3(
                                        melonz:
                                        melonss[index],
                                      )));
                        },
                        melonz: melonss[index],
                      )),
                ))
          ],
        ),
      ],
    );
  }
}
