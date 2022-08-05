import 'package:flutter/material.dart';
import 'package:flutter_app/shopping cart/addcard.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({Key? key}) : super(key: key);

  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 20,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        title: Text(
          "Total Bill: Rs 570",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
        ),
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 25),
                      height: size.height * 0.18,
                      // color: Colors.green

                      width: size.width * 0.9,
                      //color: Colors.greenAccent,
                      child: Stack(children: [
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                children: [
                                  ImageIcon(
                                    AssetImage("assets/images/ic_market.png"),
                                    size: 25,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: size.height * 0.025,
                                          width: size.width * 0.5,
                                          //color: Colors.greenAccent,
                                          child: Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                "Organic Fruit Shop",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              )),
                                        ),
                                        Container(
                                          height: size.height * 0.025,
                                          width: size.width * 0.5,
                                          //color: Colors.greenAccent,
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                                "2 Items: Delivery Time 30 Min",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black45)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.042,
                            ),
                            Row(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: FittedBox(
                                    fit: BoxFit.fill,
                                    child: ImageIcon(
                                      AssetImage("assets/images/ic_gps1.png"),
                                      size: 25,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: size.height * 0.025,
                                        width: size.width * 0.7,
                                        //color: Colors.greenAccent,
                                        child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Home Adress",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w600),
                                            )),
                                      ),
                                      Container(
                                        height: size.height * 0.025,
                                        width: size.width * 0.7,
                                        //color: Colors.greenAccent,
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                              "D Block Ram Nagar, Near Sai Petrol",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black45)),
                                        ),
                                      ),
                                      Container(
                                        height: size.height * 0.025,
                                        width: size.width * 0.7,
                                        //color: Colors.greenAccent,
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                              "Pump Ring Road Nagpur-440001",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black45)),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Container(
                          height: size.height * 0.4,
                          width: size.width * 0.06,
                          //color: Colors.amber,
                          alignment: Alignment.topLeft,
                          child: FittedBox(
                              fit: BoxFit.fill,
                              child: Image.asset(
                                "assets/images/ic_line.png",
                                width: size.width * 0.06,
                                height: size.height * 0.15,
                              )),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: Colors.black12,
              ),
              Container(
                height: size.height * 0.117,
                width: size.width * 1,
                //color: Colors.green,
                padding: EdgeInsets.only(top: 10, left: 15),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Credit/Debit Cards",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20),
                          ),
                          Container(
                              height: size.height * 0.05,
                              width: size.width * 0.52,
                              //color: Colors.red,
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => AddUcard()));
                                  },
                                  child: Text(
                                    "ADD NEW CARD",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(105, 160, 58, 1),
                                    ),
                                  ))),
                        ],
                      ),
                      Container(
                        height: size.height * 0.004,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/ic_card.png",
                            height: 40,
                            width: 40,
                          ),
                          Container(
                            height: size.width * 0.09,
                            width: size.width * 0.8,
                            //color: Colors.lightGreen,

                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3.0),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "************4356",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              color: Colors.black45),
                                        )),
                                  ),
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Manish Chutake",
                                        style: TextStyle(
                                            fontSize: 13.5,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black38),
                                      ))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: Colors.black12,
              ),
              Container(
                width: size.width * 1,
                height: size.height * 0.42,
                //color: Colors.greenAccent,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Save and Pay via cards",
                            style:
                                TextStyle(fontSize: 12, color: Colors.black26),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: size.height * 0.085,
                          width: size.width * 0.5,
                          //color: Colors.red,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset("assets/images/ic_matercard.png"),
                              Image.asset("assets/images/ic_master2.png"),
                              Image.asset("assets/images/ic_visa.png"),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Wallet Method",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            )),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Image.asset("assets/images/ic_phonepay.png"),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  "Phone pay",
                                  style: TextStyle(
                                      fontSize: 14.5, color: Colors.black),
                                ),
                              ),
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Container(
                          width: double.infinity,
                          height: 2,
                          color: Colors.black12,
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Image.asset("assets/images/ic_ggpay.png"),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  "Google pay",
                                  style: TextStyle(
                                      fontSize: 14.5, color: Colors.black),
                                ),
                              ),
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Container(
                          width: double.infinity,
                          height: 2,
                          color: Colors.black12,
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Image.asset("assets/images/ic_paypal.png"),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  "Pay pal",
                                  style: TextStyle(
                                      fontSize: 14.5, color: Colors.black),
                                ),
                              ),
                            ],
                          )),
                      // Padding(
                      //   padding: const EdgeInsets.only(right: 15.0),
                      //   child: Container(width: double.infinity, height: 2,color: Colors.black12,),
                      // ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Container(
                    height: size.height * 0.07,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(105, 160, 58, 1),
                    ),
                    width: size.width * 1,
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "PAY NOW",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
