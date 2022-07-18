import 'package:flutter/material.dart';
import 'package:flutter_app/fruitmk/Product_fruit.dart';

class Shoppingcart extends StatefulWidget {
  const Shoppingcart({Key? key}) : super(key: key);

  @override
  State<Shoppingcart> createState() => _ShoppingcartState();
}

class _ShoppingcartState extends State<Shoppingcart> {
  String dropdownValue = ' 440001  Nagpur ,Maharashtra';

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
              size: 25,
              color: Colors.white,
            ),
          ),
          backgroundColor: Color.fromRGBO(105, 160, 58, 1),
          title: Transform(
              transform: Matrix4.translationValues(-22, 0, 0),
              child: Text(
                "Shopping Cart",
                style: TextStyle(fontSize: 18, color: Colors.white),
              )),
        ),
        body: SingleChildScrollView(
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
                        height: size.width*0.06,
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
             Column(
               children: [
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
                               fontSize: 18, color: Color.fromRGBO(57, 57, 57, 1)),
                         )),
                   ),
                 ),
                 Container(
                   height: 130,
                   color: Colors.white,
                   width: double.infinity,
                   child: Column(
                     children: [
                       Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 10),
                             child: SizedBox(
                               width: 100,
                               height: 100,
                               child: ClipRRect(
                                 borderRadius: BorderRadius.circular(10.0),
                                 child: Image.asset(
                                   "assets/images/ic_dautay.jpg",
                                   fit: BoxFit.cover,
                                 ),
                               ),
                             ),
                           ),
                           Container(

                             //color: Colors.red,
                             child: Column(
                               //mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(top: 15,left: 5),
                                   child: Container(

                                     child: Align(
                                       alignment: Alignment.topLeft,
                                       child: Text("Brocoli",style: TextStyle(fontSize: 16,
                                           fontWeight: FontWeight.w600),),
                                     ),
                                   ),
                                 ),


                                 Padding(
                                   padding: const EdgeInsets.only(left: 15,top: 9,bottom: 8),
                                   child: Align(
                                     alignment: Alignment.topLeft,
                                     child: Text("RS 190",
                                       style: new TextStyle(
                                         color: Colors.black54,
                                         decoration: TextDecoration.lineThrough,
                                       ),
                                     ),),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 15),
                                   child: Align(
                                       alignment: Alignment.topLeft,
                                       child: Text("120 Per/kg")),
                                 ),
                                 SizedBox(
                                   height: 45,
                                 )

                               ],

                             ),
                           ),
                           Column(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(left: 5,top: 0,right: 5,),
                                 child: Text(  "RS 40 Saved",style: TextStyle(
                                     color: Color.fromRGBO(118, 158, 73, 1),
                                     fontSize: 12),
                                 ),
                               ),
                               SizedBox(
                                 height: 80,
                               )
                             ],
                           ),

                           Column(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(top: 14,left: 75,bottom: 40),
                                 child: Icon(
                                   Icons.delete_rounded,
                                   color: Colors.black45,
                                 ),
                               ),
                               Row(children: [

                                 Padding(
                                   padding: const EdgeInsets.all(8),
                                   child: Container(
                                     height: 30,
                                     width: 30,
                                     decoration: BoxDecoration(
                                         border: Border.all(width: 1),
                                         borderRadius: BorderRadius.circular(10)
                                     ),
                                     //alignment: Alignment.center,
                                     child: TextButton(

                                         onPressed: () {},
                                         child: Row(
                                           children: [
                                             Align(
                                                 alignment: Alignment.center,
                                                 child: Icon(Icons.remove,size: 12,color: Colors.black,)
                                             ),

                                           ],
                                         )),

                                   ),
                                 ),
                                 Text("  2  ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                                 Padding(
                                   padding: const EdgeInsets.all(8),
                                   child: Container(
                                     height: 30,
                                     width: 30,
                                     decoration: BoxDecoration(
                                         border: Border.all(width: 1),
                                         borderRadius: BorderRadius.circular(10)
                                     ),
                                     //alignment: Alignment.center,
                                     child: TextButton(

                                         onPressed: () {},
                                         child: Row(
                                           children: [
                                             Align(
                                                 alignment: Alignment.center,
                                                 child: Icon(Icons.add,size: 12,color: Colors.black,)
                                             ),

                                           ],
                                         )),

                                   ),
                                 ),
                               ],),


                             ],
                           ),

                         ],
                       ),
                       Container(height: 2,width: double.infinity,color: Color.fromRGBO(230, 230, 230, 1),),
                     ],
                   ),
                 ),
                 Container(
                   height: 130,
                   color: Colors.white,
                   width: double.infinity,
                   child: Column(
                     children: [
                       Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 10),
                             child: SizedBox(
                               width: 100,
                               height: 100,
                               child: ClipRRect(
                                 borderRadius: BorderRadius.circular(10.0),
                                 child: Image.asset(
                                   "assets/images/ic_dautay.jpg",
                                   fit: BoxFit.cover,
                                 ),
                               ),
                             ),
                           ),
                           Container(

                             //color: Colors.red,
                             child: Column(
                               //mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(top: 15,left: 5),
                                   child: Container(

                                     child: Align(
                                       alignment: Alignment.topLeft,
                                       child: Text("Brocoli",style: TextStyle(fontSize: 16,
                                           fontWeight: FontWeight.w600),),
                                     ),
                                   ),
                                 ),


                                 Padding(
                                   padding: const EdgeInsets.only(left: 15,top: 9,bottom: 8),
                                   child: Align(
                                     alignment: Alignment.topLeft,
                                     child: Text("RS 190",
                                       style: new TextStyle(
                                         color: Colors.black54,
                                         decoration: TextDecoration.lineThrough,
                                       ),
                                     ),),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 15),
                                   child: Align(
                                       alignment: Alignment.topLeft,
                                       child: Text("120 Per/kg")),
                                 ),
                                 SizedBox(
                                   height: 45,
                                 )

                               ],

                             ),
                           ),
                           Column(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(left: 5,top: 0,right: 5,),
                                 child: Text(  "RS 40 Saved",style: TextStyle(
                                     color: Color.fromRGBO(118, 158, 73, 1),
                                     fontSize: 12),
                                 ),
                               ),
                               SizedBox(
                                 height: 80,
                               )
                             ],
                           ),

                           Column(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(top: 14,left: 75,bottom: 40),
                                 child: Icon(
                                   Icons.delete_rounded,
                                   color: Colors.black45,
                                 ),
                               ),
                               Row(children: [

                                 Padding(
                                   padding: const EdgeInsets.all(8),
                                   child: Container(
                                     height: 30,
                                     width: 30,
                                     decoration: BoxDecoration(
                                         border: Border.all(width: 1),
                                         borderRadius: BorderRadius.circular(10)
                                     ),
                                     //alignment: Alignment.center,
                                     child: TextButton(

                                         onPressed: () {},
                                         child: Row(
                                           children: [
                                             Align(
                                                 alignment: Alignment.center,
                                                 child: Icon(Icons.remove,size: 12,color: Colors.black,)
                                             ),

                                           ],
                                         )),

                                   ),
                                 ),
                                 Text("  2  ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                                 Padding(
                                   padding: const EdgeInsets.all(8),
                                   child: Container(
                                     height: 30,
                                     width: 30,
                                     decoration: BoxDecoration(
                                         border: Border.all(width: 1),
                                         borderRadius: BorderRadius.circular(10)
                                     ),
                                     //alignment: Alignment.center,
                                     child: TextButton(

                                         onPressed: () {},
                                         child: Row(
                                           children: [
                                             Align(
                                                 alignment: Alignment.center,
                                                 child: Icon(Icons.add,size: 12,color: Colors.black,)
                                             ),

                                           ],
                                         )),

                                   ),
                                 ),
                               ],),


                             ],
                           ),
                           // Container(
                           //   color: Colors.white,
                           //   height: 100,
                           //   width: double.infinity,
                           //
                           //
                           //   // child: Column(
                           //   //   children: [
                           //   //     Padding(
                           //   //       padding: const EdgeInsets.only(left: 10),
                           //   //       child: Row(
                           //   //         //mainAxisAlignment: MainAxisAlignment.spaceAround,
                           //   //         children: [
                           //   //           Padding(
                           //   //             padding: EdgeInsets.only(left: 10),
                           //   //             child: Text(
                           //   //               "Brocoli",
                           //   //               style: TextStyle(
                           //   //                   fontSize: 16,
                           //   //                   fontWeight: FontWeight.w600),
                           //   //             ),
                           //   //           ),
                           //   //           Padding(
                           //   //             padding: const EdgeInsets.only(left: 30),
                           //   //             child: Text(
                           //   //               "RS 40 Saved",
                           //   //               style: TextStyle(
                           //   //                   color: Color.fromRGBO(118, 158, 73, 1),
                           //   //                   fontSize: 13),
                           //   //             ),
                           //   //           ),
                           //   //           Padding(
                           //   //             padding: const EdgeInsets.only(left: 70),
                           //   //             child: Icon(
                           //   //               Icons.delete_rounded,
                           //   //               color: Colors.black45,
                           //   //             ),
                           //   //           ),
                           //   //         ],
                           //   //       ),
                           //   //     ),
                           //   //     Padding(
                           //   //       padding: const EdgeInsets.only(left: 20, top: 4),
                           //   //       child: Align(
                           //   //         alignment: Alignment.topLeft,
                           //   //         child: RichText(
                           //   //           text: TextSpan(
                           //   //             text: '\$8.99',
                           //   //             style: new TextStyle(
                           //   //               color: Colors.grey,
                           //   //               decoration: TextDecoration.lineThrough,
                           //   //             ),
                           //   //           ),
                           //   //         ),
                           //   //       ),
                           //   //     ),
                           //   //     Padding(
                           //   //       padding: EdgeInsets.only(top: 3, left: 20),
                           //   //       child: Align(
                           //   //           alignment: Alignment.topLeft,
                           //   //           child: Text("120 Per/kg")),
                           //   //     ),
                           //   //     Padding(
                           //   //       padding: const EdgeInsets.only(top: 1),
                           //   //       child: Row(
                           //   //         children: [
                           //   //           Container(
                           //   //             height: 25,
                           //   //             width: 30,
                           //   //             decoration: BoxDecoration(
                           //   //               border: Border.all(width: 1),
                           //   //               borderRadius: BorderRadius.circular(10)
                           //   //             ),
                           //   //             //alignment: Alignment.center,
                           //   //             child: TextButton(
                           //   //
                           //   //                   onPressed: () {},
                           //   //                   child: Row(
                           //   //                     children: [
                           //   //                       Align(
                           //   //                           alignment: Alignment.center,
                           //   //                           child: Text("-",style: TextStyle(fontSize: 15),)),
                           //   //
                           //   //                     ],
                           //   //                   )),
                           //   //
                           //   //           ),
                           //   //           Text("1"),
                           //   //           Container(
                           //   //             height: 30,
                           //   //             width: 30,
                           //   //             alignment: Alignment.center,
                           //   //             child: OutlinedButton(
                           //   //                 onPressed: () {}, child: Icon(Icons.add)),
                           //   //           ),
                           //   //         ],
                           //   //       ),
                           //   //     ),
                           //   //   ],
                           //   // ),
                           // )
                         ],
                       ),
                       Container(height: 2,width: double.infinity,color: Color.fromRGBO(230, 230, 230, 1),),
                     ],
                   ),
                 ),


               ],
             ),
              Column(
                children: [
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
                                fontSize: 18, color: Color.fromRGBO(57, 57, 57, 1)),
                          )),
                    ),
                  ),
                  Container(
                    height: 130,
                    color: Colors.white,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: SizedBox(
                                width: 100,
                                height: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                    "assets/images/ic_dautay.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Container(

                              //color: Colors.red,
                              child: Column(
                                //mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15,left: 5),
                                    child: Container(

                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text("Brocoli",style: TextStyle(fontSize: 16,
                                            fontWeight: FontWeight.w600),),
                                      ),
                                    ),
                                  ),


                                  Padding(
                                    padding: const EdgeInsets.only(left: 15,top: 9,bottom: 8),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text("RS 190",
                                        style: new TextStyle(
                                          color: Colors.black54,
                                          decoration: TextDecoration.lineThrough,
                                        ),
                                      ),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text("120 Per/kg")),
                                  ),
                                  SizedBox(
                                    height: 45,
                                  )

                                ],

                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5,top: 0,right: 5,),
                                  child: Text(  "RS 40 Saved",style: TextStyle(
                                      color: Color.fromRGBO(118, 158, 73, 1),
                                      fontSize: 12),
                                  ),
                                ),
                                SizedBox(
                                  height: 80,
                                )
                              ],
                            ),

                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 14,left: 75,bottom: 40),
                                  child: Icon(
                                    Icons.delete_rounded,
                                    color: Colors.black45,
                                  ),
                                ),
                                Row(children: [

                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 1),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      //alignment: Alignment.center,
                                      child: TextButton(

                                          onPressed: () {},
                                          child: Row(
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Icon(Icons.remove,size: 12,color: Colors.black,)
                                              ),

                                            ],
                                          )),

                                    ),
                                  ),
                                  Text("  2  ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 1),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      //alignment: Alignment.center,
                                      child: TextButton(

                                          onPressed: () {},
                                          child: Row(
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Icon(Icons.add,size: 12,color: Colors.black,)
                                              ),

                                            ],
                                          )),

                                    ),
                                  ),
                                ],),


                              ],
                            ),
                            // Container(
                            //   color: Colors.white,
                            //   height: 100,
                            //   width: double.infinity,
                            //
                            //
                            //   // child: Column(
                            //   //   children: [
                            //   //     Padding(
                            //   //       padding: const EdgeInsets.only(left: 10),
                            //   //       child: Row(
                            //   //         //mainAxisAlignment: MainAxisAlignment.spaceAround,
                            //   //         children: [
                            //   //           Padding(
                            //   //             padding: EdgeInsets.only(left: 10),
                            //   //             child: Text(
                            //   //               "Brocoli",
                            //   //               style: TextStyle(
                            //   //                   fontSize: 16,
                            //   //                   fontWeight: FontWeight.w600),
                            //   //             ),
                            //   //           ),
                            //   //           Padding(
                            //   //             padding: const EdgeInsets.only(left: 30),
                            //   //             child: Text(
                            //   //               "RS 40 Saved",
                            //   //               style: TextStyle(
                            //   //                   color: Color.fromRGBO(118, 158, 73, 1),
                            //   //                   fontSize: 13),
                            //   //             ),
                            //   //           ),
                            //   //           Padding(
                            //   //             padding: const EdgeInsets.only(left: 70),
                            //   //             child: Icon(
                            //   //               Icons.delete_rounded,
                            //   //               color: Colors.black45,
                            //   //             ),
                            //   //           ),
                            //   //         ],
                            //   //       ),
                            //   //     ),
                            //   //     Padding(
                            //   //       padding: const EdgeInsets.only(left: 20, top: 4),
                            //   //       child: Align(
                            //   //         alignment: Alignment.topLeft,
                            //   //         child: RichText(
                            //   //           text: TextSpan(
                            //   //             text: '\$8.99',
                            //   //             style: new TextStyle(
                            //   //               color: Colors.grey,
                            //   //               decoration: TextDecoration.lineThrough,
                            //   //             ),
                            //   //           ),
                            //   //         ),
                            //   //       ),
                            //   //     ),
                            //   //     Padding(
                            //   //       padding: EdgeInsets.only(top: 3, left: 20),
                            //   //       child: Align(
                            //   //           alignment: Alignment.topLeft,
                            //   //           child: Text("120 Per/kg")),
                            //   //     ),
                            //   //     Padding(
                            //   //       padding: const EdgeInsets.only(top: 1),
                            //   //       child: Row(
                            //   //         children: [
                            //   //           Container(
                            //   //             height: 25,
                            //   //             width: 30,
                            //   //             decoration: BoxDecoration(
                            //   //               border: Border.all(width: 1),
                            //   //               borderRadius: BorderRadius.circular(10)
                            //   //             ),
                            //   //             //alignment: Alignment.center,
                            //   //             child: TextButton(
                            //   //
                            //   //                   onPressed: () {},
                            //   //                   child: Row(
                            //   //                     children: [
                            //   //                       Align(
                            //   //                           alignment: Alignment.center,
                            //   //                           child: Text("-",style: TextStyle(fontSize: 15),)),
                            //   //
                            //   //                     ],
                            //   //                   )),
                            //   //
                            //   //           ),
                            //   //           Text("1"),
                            //   //           Container(
                            //   //             height: 30,
                            //   //             width: 30,
                            //   //             alignment: Alignment.center,
                            //   //             child: OutlinedButton(
                            //   //                 onPressed: () {}, child: Icon(Icons.add)),
                            //   //           ),
                            //   //         ],
                            //   //       ),
                            //   //     ),
                            //   //   ],
                            //   // ),
                            // )
                          ],
                        ),
                        Container(height: 2,width: double.infinity,color: Color.fromRGBO(230, 230, 230, 1),),
                      ],
                    ),
                  ),
                  Container(
                    height: 130,
                    color: Colors.white,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: SizedBox(
                                width: 100,
                                height: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                    "assets/images/ic_dautay.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Container(

                              //color: Colors.red,
                              child: Column(
                                //mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15,left: 5),
                                    child: Container(

                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text("Brocoli",style: TextStyle(fontSize: 16,
                                            fontWeight: FontWeight.w600),),
                                      ),
                                    ),
                                  ),


                                  Padding(
                                    padding: const EdgeInsets.only(left: 15,top: 9,bottom: 8),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text("RS 190",
                                        style: new TextStyle(
                                          color: Colors.black54,
                                          decoration: TextDecoration.lineThrough,
                                        ),
                                      ),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text("120 Per/kg")),
                                  ),
                                  SizedBox(
                                    height: 45,
                                  )

                                ],

                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5,top: 0,right: 5,),
                                  child: Text(  "RS 40 Saved",style: TextStyle(
                                      color: Color.fromRGBO(118, 158, 73, 1),
                                      fontSize: 12),
                                  ),
                                ),
                                SizedBox(
                                  height: 80,
                                )
                              ],
                            ),

                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 14,left: 75,bottom: 40),
                                  child: Icon(
                                    Icons.delete_rounded,
                                    color: Colors.black45,
                                  ),
                                ),
                                Row(children: [

                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 1),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      //alignment: Alignment.center,
                                      child: TextButton(

                                          onPressed: () {},
                                          child: Row(
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Icon(Icons.remove,size: 12,color: Colors.black,)
                                              ),

                                            ],
                                          )),

                                    ),
                                  ),
                                  Text("  2  ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 1),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      //alignment: Alignment.center,
                                      child: TextButton(

                                          onPressed: () {},
                                          child: Row(
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Icon(Icons.add,size: 12,color: Colors.black,)
                                              ),

                                            ],
                                          )),

                                    ),
                                  ),
                                ],),


                              ],
                            ),
                            // Container(
                            //   color: Colors.white,
                            //   height: 100,
                            //   width: double.infinity,
                            //
                            //
                            //   // child: Column(
                            //   //   children: [
                            //   //     Padding(
                            //   //       padding: const EdgeInsets.only(left: 10),
                            //   //       child: Row(
                            //   //         //mainAxisAlignment: MainAxisAlignment.spaceAround,
                            //   //         children: [
                            //   //           Padding(
                            //   //             padding: EdgeInsets.only(left: 10),
                            //   //             child: Text(
                            //   //               "Brocoli",
                            //   //               style: TextStyle(
                            //   //                   fontSize: 16,
                            //   //                   fontWeight: FontWeight.w600),
                            //   //             ),
                            //   //           ),
                            //   //           Padding(
                            //   //             padding: const EdgeInsets.only(left: 30),
                            //   //             child: Text(
                            //   //               "RS 40 Saved",
                            //   //               style: TextStyle(
                            //   //                   color: Color.fromRGBO(118, 158, 73, 1),
                            //   //                   fontSize: 13),
                            //   //             ),
                            //   //           ),
                            //   //           Padding(
                            //   //             padding: const EdgeInsets.only(left: 70),
                            //   //             child: Icon(
                            //   //               Icons.delete_rounded,
                            //   //               color: Colors.black45,
                            //   //             ),
                            //   //           ),
                            //   //         ],
                            //   //       ),
                            //   //     ),
                            //   //     Padding(
                            //   //       padding: const EdgeInsets.only(left: 20, top: 4),
                            //   //       child: Align(
                            //   //         alignment: Alignment.topLeft,
                            //   //         child: RichText(
                            //   //           text: TextSpan(
                            //   //             text: '\$8.99',
                            //   //             style: new TextStyle(
                            //   //               color: Colors.grey,
                            //   //               decoration: TextDecoration.lineThrough,
                            //   //             ),
                            //   //           ),
                            //   //         ),
                            //   //       ),
                            //   //     ),
                            //   //     Padding(
                            //   //       padding: EdgeInsets.only(top: 3, left: 20),
                            //   //       child: Align(
                            //   //           alignment: Alignment.topLeft,
                            //   //           child: Text("120 Per/kg")),
                            //   //     ),
                            //   //     Padding(
                            //   //       padding: const EdgeInsets.only(top: 1),
                            //   //       child: Row(
                            //   //         children: [
                            //   //           Container(
                            //   //             height: 25,
                            //   //             width: 30,
                            //   //             decoration: BoxDecoration(
                            //   //               border: Border.all(width: 1),
                            //   //               borderRadius: BorderRadius.circular(10)
                            //   //             ),
                            //   //             //alignment: Alignment.center,
                            //   //             child: TextButton(
                            //   //
                            //   //                   onPressed: () {},
                            //   //                   child: Row(
                            //   //                     children: [
                            //   //                       Align(
                            //   //                           alignment: Alignment.center,
                            //   //                           child: Text("-",style: TextStyle(fontSize: 15),)),
                            //   //
                            //   //                     ],
                            //   //                   )),
                            //   //
                            //   //           ),
                            //   //           Text("1"),
                            //   //           Container(
                            //   //             height: 30,
                            //   //             width: 30,
                            //   //             alignment: Alignment.center,
                            //   //             child: OutlinedButton(
                            //   //                 onPressed: () {}, child: Icon(Icons.add)),
                            //   //           ),
                            //   //         ],
                            //   //       ),
                            //   //     ),
                            //   //   ],
                            //   // ),
                            // )
                          ],
                        ),
                        Container(height: 2,width: double.infinity,color: Color.fromRGBO(230, 230, 230, 1),),
                      ],
                    ),
                  ),



                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: size.width*0.4,
                  height: 50,

                  margin: EdgeInsets.only(top:50, bottom: 10,right: 20),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(105, 160, 58, 1),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextButton(
                    onPressed: (){},
                    child: Text("Place Order",style: TextStyle(color: Colors.white,fontSize: 18),),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
}
