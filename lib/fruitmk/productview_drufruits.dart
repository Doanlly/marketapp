import 'package:flutter/material.dart';
import 'package:flutter_app/fruitmk/Product_fruit.dart';
import 'package:flutter_app/fruitmk/detail_d_1.dart';
import 'package:flutter_app/fruitmk/itemcard_dryfruits_indehiscen.dart';
import 'package:flutter_app/fruitmk/detail_d_2.dart';
import 'package:flutter_app/fruitmk/itemcard_mutildryfruits.dart';
import 'package:flutter_app/fruitmk/detail_d_3.dart';
import 'package:flutter_app/fruitmk/detail_d_4.dart';
import 'package:flutter_app/fruitmk/itemcard_kashmiridry.dart';
import 'package:flutter_app/fruitmk/itemcard_dehiscentdryfruits.dart';

class ProductscreenDryFruits extends StatefulWidget {
  const ProductscreenDryFruits({Key? key}) : super(key: key);

  @override
  State<ProductscreenDryFruits> createState() => _ProductscreenDryFruitsState();
}

class _ProductscreenDryFruitsState extends State<ProductscreenDryFruits> {
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
                    text: "Indehiscent Dry Fruits",
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
                  itemCount: indehisdf.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 15,
                    crossAxisCount: 1,
                    childAspectRatio: 2,
                    //crossAxisSpacing: 2,
                  ),
                  itemBuilder: (context, index) => ItemcardIndehiscentDryF(
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailscreenD2(
                                        indef: indehisdf[index],
                                      )));
                        },
                        indehis: indehisdf[index],
                      )),
            ))
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 0),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: RichText(
                text: TextSpan(
              children: [
                TextSpan(
                    text: "Mixed Dry Fruits Pack",
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
              child: Text("Dry Fruit mix fresh pack")),
        ),
        Row(
          children: [
            //Itemcard(),
            Expanded(
                child: Container(
              height: 240,
              //width:20,
              //color: Colors.lightGreen,
              child: GridView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: mixerdryfruit.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 15,
                  crossAxisCount: 1,
                  childAspectRatio: 2,
                  //crossAxisSpacing: 2,
                ),
                itemBuilder: (context, index) => ItemcardmutilDryF(
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailscreenD3(
                                  mixedf: mixerdryfruit[index],
                                )));
                  },
                  mixededryf: mixerdryfruit[index],
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
                  text: "Dehiscent Dry fruits",
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
              child: Text("Fresh Dehiscent Dry Fruits")),
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
                  itemCount: dehiscentdf.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 15,
                    crossAxisCount: 1,
                    childAspectRatio: 2,
                    //crossAxisSpacing: 2,
                  ),
                  itemBuilder: (context, index) => ItemcarddehiscentDF(
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailscreenD4(
                                      dehiscentdf: dehiscentdf[index])));
                        },
                        dehiscentdfz: dehiscentdf[index],
                      )),
            ))
          ],
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: RichText(
              text: TextSpan(
            children: [
              TextSpan(
                  text: "Kashmiri Dry Fruits",
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
              child: Text("Fresh Kashmiri Dry Fruits")),
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
                  itemCount: kashmiridf.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 15,
                    crossAxisCount: 1,
                    childAspectRatio: 2,
                    //crossAxisSpacing: 2,
                  ),
                  itemBuilder: (context, index) => ItemcardKashDfF(
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailscreenD5(
                                        kashmiri: kashmiridf[index],
                                      )));
                        },
                        kashmiridfs: kashmiridf[index],
                      )),
            ))
          ],
        ),
      ],
    );
  }
}
