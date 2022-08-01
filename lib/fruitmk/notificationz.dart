import 'package:flutter/material.dart';
class Notificationz extends StatefulWidget {
  const Notificationz({Key? key}) : super(key: key);

  @override
  State<Notificationz> createState() => _NotificationState();
}

class _NotificationState extends State<Notificationz> {
  String _selectedMenu = '';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: Icon(Icons.arrow_back_ios_new,size: 20,color: Colors.white,)) ,
        backgroundColor:  Color.fromRGBO(105, 160, 58, 1),
        title: Text("Notification",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w600),),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Text("Today",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
            Column(children: [
              Container(
                height: size.height*0.13,
                color: Colors.white,
                width: size.width*0.9,
                child: Column(
                  children: [
                    Container(height: size.height*0.015,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: SizedBox(
                            width: size.height*0.1,
                            height: size.height*0.1,
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
                          height: size.height*0.1,
                          width: size.width*0.9 - size.height*0.1-15,
                          //color: Colors.amber,
                          padding: EdgeInsets.only(left: 5,top: 3),
                          child: Row
                            (children: [
                              Container(
                                height: size.height*0.1,
                                width: size.width*0.47,
                               // color: Colors.red,
                                child: Column(
                                  children: [
                                    Text("Buy 1kg Get 200gm Free",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                                    Text("Buy 1 Get 1 Free fot small sizes",style: TextStyle(fontSize: 11.5,color: Colors.black26),),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text("Until Feb 27,2022.",style: TextStyle(fontSize: 11.5,color: Colors.black26),)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Text("Few minutes ago",style: TextStyle(fontSize: 11.5,color: Colors.black),),
                                    ),


                                  ],
                                ),
                              ),
                            Container(
                              height: size.height*0.1,
                              //color: Colors.green,
                              width: size.width*0.13,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: size.height*0.04,
                                  //color: Colors.green,
                                  width: size.width*0.04,
                                  alignment: Alignment.topRight,
                                  child: PopupMenuButton<Menu>(
                                    // Callback that sets the selected popup menu item.
                                      onSelected: (Menu item) {
                                        setState(() {
                                          _selectedMenu = item.name;
                                        });
                                      },
                                      itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
                                        const PopupMenuItem<Menu>(
                                          value: Menu.itemOne,
                                          child: Text('my favorite'),
                                        ),
                                        const PopupMenuItem<Menu>(
                                          value: Menu.itemTwo,
                                          child: Text('delete'),
                                        ),
                                        const PopupMenuItem<Menu>(
                                          value: Menu.itemThree,
                                          child: Text('store'),
                                        ),

                                      ]),
                                ),
                              ],
                            )
                          ],),
                        ),


                        // Column(
                        //   children: [
                        //     Padding(
                        //       padding: const EdgeInsets.only(top: 14,left: 10,bottom: 40),
                        //       child: Icon(
                        //         Icons.delete_rounded,
                        //         color: Colors.black45,
                        //       ),
                        //     ),
                        //     Row(children: [
                        //
                        //
                        //
                        //     ],),
                        //
                        //
                        //   ],
                        // ),

                      ],
                    ),

                  ],
                ),
              ),
              Container(height: 2,width: double.infinity,color: Color.fromRGBO(230, 230, 230, 1),),
            ],),
            Text("Yesterday",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
            Column(children: [
              Container(
                height: size.height*0.13,
                color: Colors.white,
                width: size.width*0.9,
                child: Column(
                  children: [
                    Container(height: size.height*0.015,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: SizedBox(
                            width: size.height*0.1,
                            height: size.height*0.1,
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
                          height: size.height*0.1,
                          width: size.width*0.9 - size.height*0.1-15,
                          //color: Colors.amber,
                          padding: EdgeInsets.only(left: 5,top: 3),
                          child: Row
                            (children: [
                            Container(
                              height: size.height*0.1,
                              width: size.width*0.47,
                              // color: Colors.red,
                              child: Column(
                                children: [
                                  Text("Buy 1kg Get 200gm Free",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                                  Text("Buy 1 Get 1 Free fot small sizes",style: TextStyle(fontSize: 11.5,color: Colors.black26),),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text("Until Feb 27,2022.",style: TextStyle(fontSize: 11.5,color: Colors.black26),)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Text("Few minutes ago",style: TextStyle(fontSize: 11.5,color: Colors.black),),
                                  ),


                                ],
                              ),
                            ),
                            Container(
                              height: size.height*0.1,
                              //color: Colors.green,
                              width: size.width*0.13,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: size.height*0.04,
                                  //color: Colors.green,
                                  width: size.width*0.04,
                                  alignment: Alignment.topRight,
                                  child: PopupMenuButton<Menu>(
                                    // Callback that sets the selected popup menu item.
                                      onSelected: (Menu item) {
                                        setState(() {
                                          _selectedMenu = item.name;
                                        });
                                      },
                                      itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
                                        const PopupMenuItem<Menu>(
                                          value: Menu.itemOne,
                                          child: Text('my favorite'),
                                        ),
                                        const PopupMenuItem<Menu>(
                                          value: Menu.itemTwo,
                                          child: Text('delete'),
                                        ),
                                        const PopupMenuItem<Menu>(
                                          value: Menu.itemThree,
                                          child: Text('store'),
                                        ),

                                      ]),
                                ),
                              ],
                            )
                          ],),
                        ),


                        // Column(
                        //   children: [
                        //     Padding(
                        //       padding: const EdgeInsets.only(top: 14,left: 10,bottom: 40),
                        //       child: Icon(
                        //         Icons.delete_rounded,
                        //         color: Colors.black45,
                        //       ),
                        //     ),
                        //     Row(children: [
                        //
                        //
                        //
                        //     ],),
                        //
                        //
                        //   ],
                        // ),

                      ],
                    ),

                  ],
                ),
              ),
              Container(height: 2,width: double.infinity,color: Color.fromRGBO(230, 230, 230, 1),),
            ],

            ),
          ],
        ),
      ),
    );
  }
}
enum Menu { itemOne, itemTwo, itemThree, itemFour }