import 'package:flutter/material.dart';

class AddUcard extends StatefulWidget {
  const AddUcard({Key? key}) : super(key: key);

  @override
  State<AddUcard> createState() => _AddUcardState();
}

class _AddUcardState extends State<AddUcard> {
  bool rememberMe = false;

  bool value = false;
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              "Add your Card",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            )),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height * 0.2,
                width: size.width * 1,
                //color: Colors.red,
                child: Image.asset("assets/images/ic_atmcard.png"),
              ),
              Container(
                height: size.height * 0.7,
                //color: Colors.amber,
                width: size.width * 1,
                //color: Colors.red,
                child: Column(
                  children: [
                    Container(
                      height: size.height * 0.035,
                      width: size.width * 0.9,
                      //color: Colors.amber,
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Cardholder Name",
                            style:
                                TextStyle(fontSize: 13, color: Colors.black38),
                          )),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 2.0, left: 20, right: 20),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Manish Chutake',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Container(
                      height: size.height * 0.035,
                      width: size.width * 0.9,
                      //color: Colors.amber,
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Card Number",
                            style:
                                TextStyle(fontSize: 13, color: Colors.black38),
                          )),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 5),
                          child: Container(
                            height: size.height * 0.06,
                            width: size.width * 0.205,

                            //color: Colors.greenAccent,
                            child: Align(
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: '1234',
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black38, width: 2.5),
                                        borderRadius:
                                            BorderRadius.circular(5))),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Container(
                            height: size.height * 0.06,
                            width: size.width * 0.205,
                            //color: Colors.greenAccent,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: '5678',
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black12, width: 2.5),
                                      borderRadius: BorderRadius.circular(5))),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Container(
                            height: size.height * 0.06,
                            width: size.width * 0.205,
                            //color: Colors.greenAccent,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: '9012',
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black12, width: 2.5),
                                      borderRadius: BorderRadius.circular(5))),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Container(
                            height: size.height * 0.06,
                            width: size.width * 0.205,
                            //color: Colors.greenAccent,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: '3456',
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black12, width: 2.5),
                                      borderRadius: BorderRadius.circular(5))),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Container(
                      height: size.height * 0.035,
                      width: size.width * 0.9,
                      //color: Colors.amber,
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Valid Thru",
                            style:
                                TextStyle(fontSize: 13, color: Colors.black38),
                          )),
                    ),
                    Row(
                      children: [
                        Container(
                          height: size.height * 0.06,
                          width: size.width * 0.7,
                          padding: EdgeInsets.only(left: 20, right: 5),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Augast',
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black26, width: 2),
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        Container(
                          height: size.height * 0.06,
                          width: size.width * 0.25,
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: '2034',
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black26, width: 2),
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Container(
                      height: size.height * 0.035,
                      width: size.width * 0.9,
                      //color: Colors.amber,
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "CVV/CVC",
                            style:
                                TextStyle(fontSize: 13, color: Colors.black26),
                          )),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Container(
                            height: size.height * 0.055,
                            width: size.width * 0.4,
                            padding: EdgeInsets.only(left: 20, right: 5),
                            child: Center(
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: '980',
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black26, width: 2),
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "3 or 4 digit code",
                              style: TextStyle(
                                  fontSize: 14.5,
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, bottom: 10, right: 20, top: 30),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(105, 160, 58, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: size.height * 0.06,
                          width: size.height * 0.06,
                          //color: Colors.amber,
                          //padding: EdgeInsets.only(left: 15,top: 20),
                          child: StatefulBuilder(
                            builder:
                                (BuildContext context, StateSetter setState) {
                              return new Transform.scale(
                                scale: 2.0,
                                child: new Checkbox(
                                  splashRadius: 0.5,
                                  activeColor: Color.fromRGBO(105, 160, 58, 1),
                                  value: checked,
                                  onChanged: (value) {
                                    setState(() {
                                      checked = value!;
                                    });
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 10, right: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(105, 160, 58, 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        height: size.height * 0.065,
                        width: size.width * 1,
                        child: TextButton(
                          onPressed: () {
                            print("ban vua them the thanh toan");
                          },
                          child: Text(
                            "ADD CARD NUMBER",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
