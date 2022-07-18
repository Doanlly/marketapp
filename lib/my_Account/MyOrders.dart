import 'package:flutter/material.dart';
import 'package:flutter_app/my_Account/my_AccountScreen.dart';
class MyOrder extends StatefulWidget {
  const MyOrder({Key? key}) : super(key: key);

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  DateTime dateToday = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day) ;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(105, 160, 58, 1),

        title: Text("My Orders",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600 ),),
        leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,),
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context)=>MyAccountScreen()));
        // Do something.
        }),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Column(
              children: [
                Row(
                  children: [
                    Container(

                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,top: 5),
                        child: SizedBox(
                          width:size.width*0.2575,
                          height: size.width*0.2575,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              "assets/images/ic_dautay.jpg",
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
                            width:size.width*0.66 ,
                            //color: Colors.green,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 15,left: 18),
                                  child: Container(

                                    child: Text("Broccoli",style: TextStyle(fontSize: 16,
                                        fontWeight: FontWeight.w600),),
                                  ),
                                ),
                                SizedBox(

                                  width:size.width*0.3 ,
                                ),
                                Padding(
                                    padding: EdgeInsets.only(top: 15,left: 5),
                                    child:Icon(Icons.navigate_next,size: 35,),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            height: 35,
                            width: size.width*0.57,
                            //color: Colors.amber,
                            padding: EdgeInsets.symmetric(vertical: 1),
                            //rating
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                //SizedBox(height: 15,),
                                Icon(Icons.star,size: 25,color: Colors.black38,),
                                Icon(Icons.star,size: 25,color: Colors.black38,),
                                Icon(Icons.star,size: 25,color: Colors.black38,),
                                Icon(Icons.star,size: 25,color: Colors.black38,),
                                Icon(Icons.star,size: 25,color: Colors.black38,),


                                //SizedBox(width: 150,)
                                // SizedBox(width:size.width*0.35 ,
                                // ),

                              ],
                            ),
                          ),
                          Container(
                            height: 25,
                            width: size.width*0.55,
                            //color: Colors.amber,
                            child: Text("Rate this Product",
                              style: new TextStyle(fontSize: 13,
                                color: Colors.black54,
                                //decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ),
                          Container(
                            //color: Colors.lightGreen,
                            height: 25,
                            width: size.width*0.55,
                            child: Text("${dateToday.day} - ${dateToday.month} - ${dateToday.year} " /*time: ${dateToday.hour}"*/ ,style: TextStyle(fontSize: 13,color: Colors.black),),
                          ),
                        ],

                      ),
                    ),
                  ],
                ),
                Container(height: 1,width:double.infinity ,color: Color.fromRGBO(209, 209, 209, 1)),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
