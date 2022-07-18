import 'package:flutter/material.dart';
class Notificationz extends StatefulWidget {
  const Notificationz({Key? key}) : super(key: key);

  @override
  State<Notificationz> createState() => _NotificationState();
}

class _NotificationState extends State<Notificationz> {
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
                height: 120,
                color: Colors.white,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: SizedBox(
                            width: 80,
                            height: 80,
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
                                height: 20,
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
                              height: 50,
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



                            ],),


                          ],
                        ),

                      ],
                    ),
                    Container(height: 2,width: double.infinity,color: Color.fromRGBO(230, 230, 230, 1),),
                  ],
                ),
              ),
            ],),
            Text("Yesterday",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
            Column(children: [
              Container(
                height: 120,
                color: Colors.white,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: SizedBox(
                            width: 80,
                            height: 80,
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
                                height: 20,
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
                              height: 50,
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



                            ],),


                          ],
                        ),

                      ],
                    ),
                    Container(height: 2,width: double.infinity,color: Color.fromRGBO(230, 230, 230, 1),),
                  ],
                ),
              ),
            ],),
          ],
        ),
      ),
    );
  }
}
