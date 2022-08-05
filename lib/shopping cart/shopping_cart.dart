import 'package:flutter/material.dart';
import 'package:flutter_app/fruitmk/Product_fruit.dart';
import 'package:flutter_app/shopping cart/Placeorder.dart';

var check = 0;
var check0 = 0;
var check1 = 0;
var check2 = 0;
var checkdryf = 0;
var checkdryf1 = 0;

class Shoppingcart extends StatefulWidget {
  Shoppingcart({Key? key}) : super(key: key);
  @override
  State<Shoppingcart> createState() => _ShoppingcartState();
  List a = [];
  List b = [];
}

class _ShoppingcartState extends State<Shoppingcart> {
  String dropdownValue = ' 440001  Nagpur ,Maharashtra';
  int couter = 1;
  void countup() {
    setState(() {
      couter++;
    });
    print("pushed couter up $couter");
  }

  void couterdown() {
    if (couter > 0) {
      setState(() {
        couter--;
      });
      print("popped counter down $couter");
    } else
      couter = 0;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Product product;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 22,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromRGBO(105, 160, 58, 1),
        title: Transform(
            transform: Matrix4.translationValues(-22, 0, 0),
            child: Text(
              "Shopping Cart",
              style: TextStyle(fontSize: 15, color: Colors.white),
            )),
      ),
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: size.height * 0.080,
                width: double.infinity,
                //color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, right: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Image.asset("assets/images/ic_GPS.png"),
                      ),
                      Container(
                        //color: Colors.white,
                        height: size.width * 0.06,
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          icon: const Icon(Icons.keyboard_arrow_down_outlined),
                          //elevation: 16,
                          style: const TextStyle(color: Colors.black),
                          underline: Container(
                            height: 0,
                            color: Colors.white24,
                          ),
                          // gach duoi
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          items: <String>[
                            ' 440001  Nagpur ,Maharashtra',
                            '21/2201 Indo,Magagasca',
                            '23/2201 1C Myanquata,Mariadow',
                            '18 Nam Dinh, VietNam '
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(fontSize: 14),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      Container(
                        //color: Colors.amber,
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Changes Address",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color.fromRGBO(112, 137, 240, 1)),
                            )),
                      )
                    ],
                  ),
                ),
              ),

              SingleChildScrollView(
                child: Column(
                  children: [
                    //Vegetables
                    Container(
                      height: size.height * 0.039,
                      width: double.infinity,
                      color: Color.fromRGBO(230, 230, 230, 1),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Fruits",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromRGBO(57, 57, 57, 1)),
                            )),
                      ),
                    ),

                    ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: listimages.length, //moveid.length =='' ? 0:moveid.length ,//countt,//listshc.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: size.height * 0.18,
                            color: Colors.white,
                            width: double.infinity,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: SizedBox(
                                        width: size.width * 0.25,
                                        height: size.height * 0.15,
                                        child: ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(10.0),
                                          child: Image.asset(
                                            "${listimages[index]}",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: size.height * 0.15,
                                      width: size.width * 0.32,
                                      //color: Colors.red,
                                      child: Column(
                                        //mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 1, left: 10),
                                            child: Container(
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "${titlefruit[index]}",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                      FontWeight.w600),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15, top: 5, bottom: 8),
                                            child: Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                "RS 190",
                                                style: new TextStyle(
                                                  color: Colors.black54,
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(left: 15),
                                            child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                    "${listprice[index]} Per/kg")),
                                          ),

                                        ],
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 0,
                                            top: 0,
                                            right: 1,
                                          ),
                                          child: Text(
                                            "RS 40 Saved",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    118, 158, 73, 1),
                                                fontSize: 12),
                                          ),
                                        ),
                                        SizedBox(
                                          height: size.height * 0.117,
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 0, left: 60, bottom: 50),
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              //color:Colors.amber,
                                                borderRadius:
                                                BorderRadius.circular(30)),
                                            alignment: Alignment.topLeft,
                                            child: Align(
                                              alignment: Alignment.topCenter,
                                              child: IconButton(
                                                color: Colors.black45,
                                                icon: Icon(
                                                  Icons.delete_rounded,
                                                ),
                                                onPressed: () {
                                                  setState(() {
                                                    var b10 = setid[index];
                                                    var b11 = listprice[index];
                                                    var b21 = titlefruit[index];
                                                    var a31 = titlefruit[index];

                                                    for (int i = 0;
                                                    i < setid1.length;
                                                    i++) {
                                                      if (b10 == setid1[i]) {
                                                        setid1.removeAt(index);
                                                        //i = 0;
                                                      }
                                                    }
                                                    for (int i = 0;
                                                    i < listpricefr1.length;
                                                    i++) {
                                                      if (b11 ==
                                                          listpricefr1[i]) {
                                                        listpricefr1
                                                            .removeAt(index);
                                                        //i = 0;
                                                      }
                                                    }
                                                    for (int i = 0;
                                                    i < listtitlefr1.length;
                                                    i++) {
                                                      if (b21 ==
                                                          listtitlefr1[i]) {
                                                        listtitlefr1
                                                            .removeAt(index);
                                                        //i = 0;

                                                      }
                                                    }
                                                    for (int i = 0;
                                                    i < listimage1.length;
                                                    i++) {
                                                      if (b21 == listimage1[i]) {
                                                        listimage1
                                                            .removeAt(index);
                                                        //i = 0;

                                                      }
                                                    }
                                                    print(setid);
                                                    listimages.removeAt(index);
                                                    listprice.removeAt(index);
                                                    titlefruit.removeAt(index);
                                                    //listpricefr.removeAt(index);
                                                    listpricefr.clear();
                                                    listtitlefr.clear();
                                                    listimage.clear();
                                                    // listimage.removeAt(index);
                                                    //  listtitlefr.removeAt(index);
                                                    //  listpricefr.removeAt(index);
                                                    // savedataproduct.removeAt(index);
                                                    // shoppingcartoder.removeAt(index);

                                                    //c.removeAt(index);
                                                    //moveid.remove(index);
                                                  });
                                                }, //Icons.delete_rounded,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 3, bottom: 8, top: 4),
                                              child: Container(
                                                height: 29,
                                                width: 29,
                                                decoration: BoxDecoration(
                                                    border:
                                                    Border.all(width: 1),
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        10)),
                                                //alignment: Alignment.center,
                                                child: TextButton(
                                                    onPressed: couterdown,
                                                    // onPressed: (){
                                                    //
                                                    //
                                                    //   print("${savedataproduct}");
                                                    // },
                                                    child: Row(
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Icon(
                                                              Icons.remove,
                                                              size: 11,
                                                              color:
                                                              Colors.black,
                                                            )),
                                                      ],
                                                    )),
                                              ),
                                            ),
                                            Text(
                                              " $couter ",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 3,
                                                  right: 0,
                                                  bottom: 8,
                                                  top: 4),
                                              child: Container(
                                                height: 29,
                                                width: 29,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 0.8,
                                                        style:
                                                        BorderStyle.solid,
                                                        color: Colors.black),
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        10)),
                                                //alignment: Alignment.center,
                                                child: TextButton(
                                                    onPressed: countup,
                                                    child: Row(
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Icon(
                                                              Icons.add,
                                                              size: 11,
                                                              color:
                                                              Colors.black,
                                                            )),
                                                      ],
                                                    )),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 2,
                                  width: double.infinity,
                                  color: Color.fromRGBO(230, 230, 230, 1),
                                ),
                              ],
                            ),
                          );
                        }),
                  ],
                ),
              ),
              //),
              SingleChildScrollView(
                child: Column(
                  children: [
                    //Vegetables
                    Container(
                      height: size.height * 0.039,
                      width: double.infinity,
                      color: Color.fromRGBO(230, 230, 230, 1),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Vegetables",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromRGBO(57, 57, 57, 1)),
                            )),
                      ),
                    ),

                    ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: listimages1
                            .length, //moveid.length =='' ? 0:moveid.length ,//countt,//listshc.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: size.height * 0.18,
                            color: Colors.white,
                            width: double.infinity,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: SizedBox(
                                        width: size.width * 0.25,
                                        height: size.height * 0.16,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          child: Image.asset(
                                            "${listimages1[index]}",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: size.height * 0.15,
                                      width: size.width * 0.32,
                                      //color: Colors.red,
                                      child: Column(
                                        //mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 1, left: 10),
                                            child: Container(
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "${titlefruit1[index]}",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15, top: 5, bottom: 8),
                                            child: Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                "RS 190",
                                                style: new TextStyle(
                                                  color: Colors.black54,
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                    "${listprice1[index]} Per/kg")),
                                          ),

                                        ],
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 0,
                                            top: 0,
                                            right: 1,
                                          ),
                                          child: Text(
                                            "RS 40 Saved",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    118, 158, 73, 1),
                                                fontSize: 12),
                                          ),
                                        ),
                                        SizedBox(
                                          height: size.height * 0.117,
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 0, left: 60, bottom: 50),
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                //color:Colors.amber,
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            alignment: Alignment.topLeft,
                                            child: Align(
                                              alignment: Alignment.topCenter,
                                              child: IconButton(
                                                color: Colors.black45,
                                                icon: Icon(
                                                  Icons.delete_rounded,
                                                ),
                                                onPressed: () {
                                                  setState(() {
                                                    var b = setid1[index];
                                                    var b1 = listprice1[index];
                                                    var b2 = titlefruit1[index];
                                                    var a3 = titlefruit1[index];

                                                    for (int i = 0;
                                                        i < setid1.length;
                                                        i++) {
                                                      if (b == setid1[i]) {
                                                        setid1.removeAt(index);
                                                        //i = 0;
                                                      }
                                                    }
                                                    for (int i = 0;
                                                        i < listpricefr1.length;
                                                        i++) {
                                                      if (b1 ==
                                                          listpricefr1[i]) {
                                                        listpricefr1
                                                            .removeAt(index);
                                                        //i = 0;
                                                      }
                                                    }
                                                    for (int i = 0;
                                                        i < listtitlefr1.length;
                                                        i++) {
                                                      if (b2 ==
                                                          listtitlefr1[i]) {
                                                        listtitlefr1
                                                            .removeAt(index);
                                                        //i = 0;

                                                      }
                                                    }
                                                    for (int i = 0;
                                                        i < listimage1.length;
                                                        i++) {
                                                      if (b2 == listimage1[i]) {
                                                        listimage1
                                                            .removeAt(index);
                                                        //i = 0;

                                                      }
                                                    }
                                                    print(setid1);
                                                    listimages1.removeAt(index);
                                                    listprice1.removeAt(index);
                                                    titlefruit1.removeAt(index);
                                                    //listpricefr.removeAt(index);
                                                    listpricefr1.clear();
                                                    listtitlefr1.clear();
                                                    listimage1.clear();
                                                    // listimage.removeAt(index);
                                                    //  listtitlefr.removeAt(index);
                                                    //  listpricefr.removeAt(index);
                                                    // savedataproduct.removeAt(index);
                                                    // shoppingcartoder.removeAt(index);

                                                    //c.removeAt(index);
                                                    //moveid.remove(index);
                                                  });
                                                }, //Icons.delete_rounded,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 3, bottom: 8, top: 4),
                                              child: Container(
                                                height: 29,
                                                width: 29,
                                                decoration: BoxDecoration(
                                                    border:
                                                        Border.all(width: 1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                //alignment: Alignment.center,
                                                child: TextButton(
                                                    onPressed: couterdown,
                                                    // onPressed: (){
                                                    //
                                                    //
                                                    //   print("${savedataproduct}");
                                                    // },
                                                    child: Row(
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Icon(
                                                              Icons.remove,
                                                              size: 11,
                                                              color:
                                                                  Colors.black,
                                                            )),
                                                      ],
                                                    )),
                                              ),
                                            ),
                                            Text(
                                              " $couter ",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 3,
                                                  right: 0,
                                                  bottom: 8,
                                                  top: 4),
                                              child: Container(
                                                height: 29,
                                                width: 29,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 0.8,
                                                        style:
                                                            BorderStyle.solid,
                                                        color: Colors.black),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                //alignment: Alignment.center,
                                                child: TextButton(
                                                    onPressed: countup,
                                                    child: Row(
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Icon(
                                                              Icons.add,
                                                              size: 11,
                                                              color:
                                                                  Colors.black,
                                                            )),
                                                      ],
                                                    )),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 2,
                                  width: double.infinity,
                                  color: Color.fromRGBO(230, 230, 230, 1),
                                ),
                              ],
                            ),
                          );
                        }),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    //Vegetables
                    Container(
                      height: size.height * 0.039,
                      width: double.infinity,
                      color: Color.fromRGBO(230, 230, 230, 1),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Dry Fruits",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromRGBO(57, 57, 57, 1)),
                            )),
                      ),
                    ),

                    ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: listimages2
                            .length, //moveid.length =='' ? 0:moveid.length ,//countt,//listshc.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: size.height * 0.18,
                            color: Colors.white,
                            width: double.infinity,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: SizedBox(
                                        width: size.width * 0.25,
                                        height: size.height * 0.16,
                                        child: ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(10.0),
                                          child: Image.asset(
                                            "${listimages2[index]}",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: size.height * 0.15,
                                      width: size.width * 0.32,
                                      //color: Colors.red,
                                      child: Column(
                                        //mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 1, left: 10),
                                            child: Container(
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "${titlefruit2[index]}",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                      FontWeight.w600),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15, top: 5, bottom: 8),
                                            child: Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                "RS 190",
                                                style: new TextStyle(
                                                  color: Colors.black54,
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(left: 15),
                                            child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                    "${listprice2[index]} Per/kg")),
                                          ),

                                        ],
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 0,
                                            top: 0,
                                            right: 1,
                                          ),
                                          child: Text(
                                            "RS 40 Saved",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    118, 158, 73, 1),
                                                fontSize: 12),
                                          ),
                                        ),
                                        SizedBox(
                                          height: size.height * 0.117,
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 0, left: 60, bottom: 50),
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              //color:Colors.amber,
                                                borderRadius:
                                                BorderRadius.circular(30)),
                                            alignment: Alignment.topLeft,
                                            child: Align(
                                              alignment: Alignment.topCenter,
                                              child: IconButton(
                                                color: Colors.black45,
                                                icon: Icon(
                                                  Icons.delete_rounded,
                                                ),
                                                onPressed: () {
                                                  setState(() {
                                                    var c = setid2[index];
                                                    var c1 = listprice2[index];
                                                    var c2 = titlefruit2[index];
                                                    var c3 = titlefruit2[index];

                                                    for (int i = 0;
                                                    i < setid2.length;
                                                    i++) {
                                                      if (c == setid2[i]) {
                                                        setid2.removeAt(index);
                                                        //i = 0;
                                                      }
                                                    }
                                                    for (int i = 0;
                                                    i < listpricefr2.length;
                                                    i++) {
                                                      if (c1 ==
                                                          listpricefr2[i]) {
                                                        listpricefr2
                                                            .removeAt(index);
                                                        //i = 0;
                                                      }
                                                    }
                                                    for (int i = 0;
                                                    i < listtitlefr2.length;
                                                    i++) {
                                                      if (c2 ==
                                                          listtitlefr2[i]) {
                                                        listtitlefr2
                                                            .removeAt(index);
                                                        //i = 0;

                                                      }
                                                    }
                                                    for (int i = 0;
                                                    i < listimage2.length;
                                                    i++) {
                                                      if (c2 == listimage2[i]) {
                                                        listimage2
                                                            .removeAt(index);
                                                        //i = 0;

                                                      }
                                                    }
                                                    print(setid2);
                                                    listimages2.removeAt(index);
                                                    listprice2.removeAt(index);
                                                    titlefruit2.removeAt(index);
                                                    //listpricefr.removeAt(index);
                                                    listpricefr2.clear();
                                                    listtitlefr2.clear();
                                                    listimage2.clear();
                                                    // listimage.removeAt(index);
                                                    //  listtitlefr.removeAt(index);
                                                    //  listpricefr.removeAt(index);
                                                    // savedataproduct.removeAt(index);
                                                    // shoppingcartoder.removeAt(index);

                                                    //c.removeAt(index);
                                                    //moveid.remove(index);
                                                  });
                                                }, //Icons.delete_rounded,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 3, bottom: 8, top: 4),
                                              child: Container(
                                                height: 29,
                                                width: 29,
                                                decoration: BoxDecoration(
                                                    border:
                                                    Border.all(width: 1),
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        10)),
                                                //alignment: Alignment.center,
                                                child: TextButton(
                                                    onPressed: couterdown,
                                                    // onPressed: (){
                                                    //
                                                    //
                                                    //   print("${savedataproduct}");
                                                    // },
                                                    child: Row(
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Icon(
                                                              Icons.remove,
                                                              size: 11,
                                                              color:
                                                              Colors.black,
                                                            )),
                                                      ],
                                                    )),
                                              ),
                                            ),
                                            Text(
                                              " $couter ",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 3,
                                                  right: 0,
                                                  bottom: 8,
                                                  top: 4),
                                              child: Container(
                                                height: 29,
                                                width: 29,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 0.8,
                                                        style:
                                                        BorderStyle.solid,
                                                        color: Colors.black),
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        10)),
                                                //alignment: Alignment.center,
                                                child: TextButton(
                                                    onPressed: countup,
                                                    child: Row(
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Icon(
                                                              Icons.add,
                                                              size: 11,
                                                              color:
                                                              Colors.black,
                                                            )),
                                                      ],
                                                    )),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 2,
                                  width: double.infinity,
                                  color: Color.fromRGBO(230, 230, 230, 1),
                                ),
                              ],
                            ),
                          );
                        }),
                  ],
                ),
              ),

              SizedBox(
                height: 70,
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            height: 70,
            width: size.width,
            color: Colors.white,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            width: size.width * 0.4,
            height: 50,
            margin: EdgeInsets.only(top: 50, bottom: 10, right: 20),
            decoration: BoxDecoration(
                color: Color.fromRGBO(105, 160, 58, 1),
                borderRadius: BorderRadius.circular(10)),
            child: TextButton(
              onPressed: () {
                //print("${spoi?.phanloai}");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PlaceOrder()));
              },
              child: Text(
                "Place Order",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            height: 50,
            width: size.width * 0.35,
            //color: Colors.green,
            margin: EdgeInsets.only(top: 50, bottom: 10, left: 20),
            child: Row(
              children: [
                Text("Total-  ",
                    style:
                        TextStyle(fontSize: 16.5, fontWeight: FontWeight.w500)),
                Text("Rs ",
                    style:
                        TextStyle(fontSize: 16.5, fontWeight: FontWeight.w600)),
                Text("570 ",
                    style:
                        TextStyle(fontSize: 16.5, fontWeight: FontWeight.w500)),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
