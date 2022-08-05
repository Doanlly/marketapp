import 'package:flutter/material.dart';
import 'package:flutter_app/fruitmk/controller_option.dart';
import 'package:flutter_app/fruitmk/itemcard.dart';
import 'package:flutter_app/shopping cart/shopping_cart.dart';

import '../fruitmk/Product_fruit.dart';

var checkf = 0;
var check0f = 0;

class FavoriteScreen extends StatefulWidget {
  final bool check;
  FavoriteScreen({Key? key, required this.check}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
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
    return Scaffold(
      appBar: widget.check
          ? AppBar(
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
              title: Text(
                "Favorites",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            )
          : AppBar(
              backgroundColor: Color.fromRGBO(105, 160, 58, 1),
              title: Text(
                "Favorites",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              automaticallyImplyLeading: false,
            ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            //physics: NeverScrollableScrollPhysics(),
            itemCount: listpricef.length,
            //itemCount:3,
            itemBuilder: (BuildContext context, int index) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, top: 5),
                            child: SizedBox(
                              width: size.width * 0.2575,
                              height: size.width * 0.2575,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  "${listimagesf[index]}",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          //color: Colors.red,
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: size.width * 0.66,
                                //color: Colors.green,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15, left: 16),
                                      child: Container(
                                        child: Text(
                                          "${titlefruitf[index]}",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: size.width * 0.1,
                                    ),
                                    Padding(
                                        padding:
                                            EdgeInsets.only(top: 15, left: 5),
                                        child: Text(
                                          "${listpricef[index]} Per/kg",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black),
                                        ))
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, top: 5, bottom: 5),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Pick up from organic farms",
                                        style: new TextStyle(
                                          fontSize: 14,
                                          color: Colors.black54,
                                          //decoration: TextDecoration.lineThrough,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.18,
                                  )
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 1),
                                //color: Colors.green,
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    //SizedBox(height: 15,),
                                    Icon(
                                      Icons.star,
                                      size: 17,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 17,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 17,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 17,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 17,
                                      color: Colors.amber,
                                    ),
                                    //SizedBox(width: 150,)
                                    SizedBox(
                                      width: size.width * 0.35,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            border: Border.all(width: 1),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        //alignment: Alignment.center,
                                        child: TextButton(
                                            onPressed: couterdown,
                                            child: Row(
                                              children: [
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Icon(
                                                      Icons.remove,
                                                      size: 12,
                                                      color: Colors.black,
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
                                      padding: const EdgeInsets.all(8),
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            border: Border.all(width: 1),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        //alignment: Alignment.center,
                                        child: TextButton(
                                            onPressed: countup,
                                            child: Row(
                                              children: [
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Icon(
                                                      Icons.add,
                                                      size: 12,
                                                      color: Colors.black,
                                                    )),
                                              ],
                                            )),
                                      ),
                                    ),
                                    SizedBox(
                                      width: size.width * 0.18,
                                    ),
                                    Container(
                                        height: size.width * 0.08,
                                        width: size.width * 0.15,
                                        decoration: BoxDecoration(
                                            color:
                                                Color.fromRGBO(204, 125, 0, 1),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Add",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                        height: 1,
                        width: double.infinity,
                        color: Color.fromRGBO(209, 209, 209, 1)),
                  ],
                ),
              );
            }
            // children: <Widget>[
            //
            //
            //
            //
            // ],
            ),
      ),
    );
  }
}
// Column(
//   children: [
//     Row(
//       children: [
//         Container(
//
//           child: Padding(
//             padding: const EdgeInsets.only(left: 10,top: 5),
//             child: SizedBox(
//               width:size.width*0.2575,
//               height: size.width*0.2575,
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(10.0),
//                 child: Image.asset(
//                   "assets/images/ic_dautay.jpg",
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ),
//         ),
//         Container(
//           //color: Colors.red,
//           child: Column(
//
//             //mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Container(
//                 width:size.width*0.66 ,
//                 //color: Colors.green,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 15,left: 16),
//                       child: Container(
//
//                         child: Text("Grapes",style: TextStyle(fontSize: 16,
//                             fontWeight: FontWeight.w600),),
//                       ),
//                     ),
//                     SizedBox(
//
//                       width:size.width*0.3 ,
//                     ),
//                     Padding(
//                         padding: EdgeInsets.only(top: 15,left: 5),
//                         child: Text("160 Per/kg",style: TextStyle(fontSize: 14,color: Colors.black),))
//                   ],
//                 ),
//               ),
//               Row(
//                 children:  [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 15,top: 5,bottom: 5),
//                     child: Align(
//                       alignment: Alignment.topLeft,
//                       child: Text("Pick up from organic farms",
//                         style: new TextStyle(fontSize: 14,
//                           color: Colors.black54,
//                           //decoration: TextDecoration.lineThrough,
//                         ),
//                       ),),
//                   ),SizedBox(width: size.width*0.18,)
//                 ],
//
//               ),
//               Container(
//
//                 padding: EdgeInsets.symmetric(vertical: 1),
//                 //color: Colors.green,
//                 child: Row(
//                   //mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     //SizedBox(height: 15,),
//                     Icon(Icons.star,size: 17,color: Colors.amber,),
//                     Icon(Icons.star,size: 17,color: Colors.amber,),
//                     Icon(Icons.star,size: 17,color: Colors.amber,),
//                     Icon(Icons.star,size: 17,color: Colors.amber,),
//                     Icon(Icons.star,size: 17,color: Colors.amber,),
//                     //SizedBox(width: 150,)
//                     SizedBox(width:size.width*0.35 ,
//                     ),
//
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 4),
//                 child: Row(children: [
//
//                   Padding(
//                     padding: const EdgeInsets.all(8),
//                     child: Container(
//                       height: 30,
//                       width: 30,
//                       decoration: BoxDecoration(
//                           border: Border.all(width: 1),
//                           borderRadius: BorderRadius.circular(10)
//                       ),
//                       //alignment: Alignment.center,
//                       child: TextButton(
//
//                           onPressed: () {},
//                           child: Row(
//                             children: [
//                               Align(
//                                   alignment: Alignment.center,
//                                   child: Icon(Icons.remove,size: 12,color: Colors.black,)
//                               ),
//
//                             ],
//                           )),
//
//                     ),
//                   ),
//                   Text("  2  ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
//                   Padding(
//                     padding: const EdgeInsets.all(8),
//                     child: Container(
//                       height: 30,
//                       width: 30,
//                       decoration: BoxDecoration(
//                           border: Border.all(width: 1),
//                           borderRadius: BorderRadius.circular(10)
//                       ),
//                       //alignment: Alignment.center,
//                       child: TextButton(
//
//                           onPressed: () {},
//                           child: Row(
//                             children: [
//                               Align(
//                                   alignment: Alignment.center,
//                                   child: Icon(Icons.add,size: 12,color: Colors.black,)
//                               ),
//
//                             ],
//                           )),
//
//                     ),
//                   ),
//                   SizedBox(width: size.width*0.18,),
//                   Container(
//                       height: size.width*0.08,
//                       width: size.width*0.15,
//                       decoration: BoxDecoration(
//                           color: Color.fromRGBO(204, 125, 0,1),
//                           borderRadius: BorderRadius.circular(10)
//                       ),
//                       child:TextButton(onPressed: (){}, child: Text("Add",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w600),),)),
//                 ],),
//               ),
//             ],
//
//           ),
//         ),
//       ],
//     ),
//     Container(height: 1,width:double.infinity ,color: Color.fromRGBO(209, 209, 209, 1)),
//   ],
// ),
// Row(
// children: [
// Container(
// child: Padding(
// padding: const EdgeInsets.only(left: 10,top: 5),
// child: SizedBox(
// width:size.width*0.2575,
// height: size.width*0.2575,
// child: ClipRRect(
// borderRadius: BorderRadius.circular(10.0),
// child: Image.asset(
// "assets/images/ic_dautay.jpg",
// fit: BoxFit.cover,
// ),
// ),
// ),
// ),
// ),
// Container(
// //color: Colors.red,
// child: Column(
//
// //mainAxisAlignment: MainAxisAlignment.start,
// children: [
// Container(
// width:size.width*0.66 ,
// //color: Colors.green,
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [
// Padding(
// padding: const EdgeInsets.only(top: 15,left: 16),
// child: Container(
//
// child: Text("dsdsd",style: TextStyle(fontSize: 16,
// fontWeight: FontWeight.w600),),
// ),
// ),
// SizedBox(
//
// width:size.width*0.3 ,
// ),
// Padding(
// padding: EdgeInsets.only(top: 15,left: 5),
// child: Text("160 Per/kg",style: TextStyle(fontSize: 14,color: Colors.black),))
// ],
// ),
// ),
// Row(
// children:  [
// Padding(
// padding: const EdgeInsets.only(left: 15,top: 5,bottom: 5),
// child: Align(
// alignment: Alignment.topLeft,
// child: Text("dsdssd Per/kg",
// style: new TextStyle(fontSize: 14,
// color: Colors.black54,
// //decoration: TextDecoration.lineThrough,
// ),
// ),),
// ),SizedBox(width: size.width*0.18,)
// ],
//
// ),
// Container(
//
// padding: EdgeInsets.symmetric(vertical: 1),
// //color: Colors.green,
// child: Row(
// //mainAxisAlignment: MainAxisAlignment.start,
// children: [
// //SizedBox(height: 15,),
// Icon(Icons.star,size: 17,color: Colors.amber,),
// Icon(Icons.star,size: 17,color: Colors.amber,),
// Icon(Icons.star,size: 17,color: Colors.amber,),
// Icon(Icons.star,size: 17,color: Colors.amber,),
// Icon(Icons.star,size: 17,color: Colors.amber,),
// //SizedBox(width: 150,)
// SizedBox(width:size.width*0.35 ,
// ),
//
// ],
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(top: 4),
// child: Row(children: [
//
// Padding(
// padding: const EdgeInsets.all(8),
// child: Container(
// height: 30,
// width: 30,
// decoration: BoxDecoration(
// border: Border.all(width: 1),
// borderRadius: BorderRadius.circular(10)
// ),
// //alignment: Alignment.center,
// child: TextButton(
//
// onPressed: () {},
// child: Row(
// children: [
// Align(
// alignment: Alignment.center,
// child: Icon(Icons.remove,size: 12,color: Colors.black,)
// ),
//
// ],
// )),
//
// ),
// ),
// Text("  2  ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
// Padding(
// padding: const EdgeInsets.all(8),
// child: Container(
// height: 30,
// width: 30,
// decoration: BoxDecoration(
// border: Border.all(width: 1),
// borderRadius: BorderRadius.circular(10)
// ),
// //alignment: Alignment.center,
// child: TextButton(
//
// onPressed: () {},
// child: Row(
// children: [
// Align(
// alignment: Alignment.center,
// child: Icon(Icons.add,size: 12,color: Colors.black,)
// ),
//
// ],
// )),
//
// ),
// ),
// SizedBox(width: size.width*0.18,),
// Container(
// height: size.width*0.08,
// width: size.width*0.15,
// decoration: BoxDecoration(
// color: Color.fromRGBO(204, 125, 0,1),
// borderRadius: BorderRadius.circular(10)
// ),
// child:TextButton(onPressed: (){}, child: Text("Add",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w600),),)),
// ],),
// ),
// ],
//
// ),
// ),
// ],
// ),
// Container(height: 1,width:double.infinity ,color: Color.fromRGBO(209, 209, 209, 1)),
