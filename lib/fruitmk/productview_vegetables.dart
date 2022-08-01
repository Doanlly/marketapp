import 'package:flutter/material.dart';
import 'package:flutter_app/fruitmk/Product_fruit.dart';
import 'package:flutter_app/fruitmk/detail2.dart';
import 'package:flutter_app/fruitmk/itemcard_stonefuirt.dart';
import 'package:flutter_app/fruitmk/itemcard_melons.dart';
import 'package:flutter_app/fruitmk/detail3.dart';
import 'package:flutter_app/fruitmk/detail_v_1.dart';
import 'package:flutter_app/fruitmk/itemcard_vegetables.dart';
import 'package:flutter_app/fruitmk/detail_v_2.dart';
import 'package:flutter_app/fruitmk/itemcard_mixed_vegetables.dart';
import 'package:flutter_app/fruitmk/detail_v_3.dart';
import 'package:flutter_app/fruitmk/detail_v_4.dart';
import 'package:flutter_app/fruitmk/itemcard_alliumvgt.dart';

import 'package:flutter_app/fruitmk/itemcard_rootvgt.dart';
class ProductscreenVegetables extends StatefulWidget {
  const ProductscreenVegetables({Key? key}) : super(key: key);

  @override
  State<ProductscreenVegetables> createState() => _ProductscreenVegetablesState();
}

class _ProductscreenVegetablesState extends State<ProductscreenVegetables> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 30),
          child: Align(
            alignment: Alignment.bottomLeft,

            child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Organic Vegetables",
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
                      itemCount: organicvgt.length,
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 15,
                        crossAxisCount: 1,
                        childAspectRatio: 2,
                        //crossAxisSpacing: 2,
                      ),
                      itemBuilder: (context, index) => ItemcardVegetables(
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailscreenV1(
                                        organicz:
                                        organicvgt[index],
                                      )));
                        },
                        organic: organicvgt[index],
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
                        text: "Mixed Vegetables Pack",
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
              child: Text("Vegetables mix fresh pack")),
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
                    itemCount: mixedvegt.length,
                    gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 15,
                      crossAxisCount: 1,
                      childAspectRatio: 2,
                      //crossAxisSpacing: 2,
                    ),
                    itemBuilder: (context, index) => ItemcardMixedVegetables(
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailscreenV2(

                                      mixedvgt: mixedvegt[index],
                                    )
                            ));
                      },
                      mixedvegt: mixedvegt[index],
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
                      text: "Allium Vegetables",
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
              child: Text("Fresh Allium Vegatables")),
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
                      itemCount: alliumvgt.length,
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 15,
                        crossAxisCount: 1,
                        childAspectRatio: 2,
                        //crossAxisSpacing: 2,
                      ),
                      itemBuilder: (context, index) => ItemAlliumvgt(
                        press: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)
                          => DetailscreenV3(alliumvgtt: alliumvgt[index])
                          ));

                        },
                        alliumVgt: alliumvgt[index],

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
                      text: "Root Vegetables",
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
              child: Text("Fresh Root Vegatables")),
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
                      itemCount: rootvegetables.length,
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing:15,
                        crossAxisCount: 1,
                        childAspectRatio: 2,
                        //crossAxisSpacing: 2,
                      ),
                      itemBuilder: (context, index) => ItemcardRootvgt(
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailscreenV4(
                                        rootvegetablesz:
                                        rootvegetables[index],
                                      )));
                        },
                        rootvgt:rootvegetables[index],
                      )),
                ))
          ],
        ),
      ],
    );
  }
}
