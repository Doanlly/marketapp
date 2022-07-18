import 'package:flutter/material.dart';
import "package:flutter_app/my_Account/MyOrders.dart";
import "package:flutter_app/favorites/favorites_screen.dart";
import "package:flutter_app/my_Account/Help.dart";
import "package:flutter_app/my_Account/LogOut.dart";
import "package:flutter_app/my_Account/MyCarts.dart";
import "package:flutter_app/my_Account/Rateus.dart";
import "package:flutter_app/my_Account/ReferaFreind.dart";
import "package:flutter_app/my_Account/Settings.dart";
class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({Key? key}) : super(key: key);

  @override
  State<MyAccountScreen> createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Color.fromRGBO(105, 160, 58, 1),
            width: double.infinity,
            height: size.height * 0.3,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(width: 35,),
                    Padding(
                      padding: EdgeInsets.only(top: size.height*0.07,),
                      child: Container(
                        height: size.width * 0.28,
                        width: size.width * 0.28,
                            child: Center(child: Image.asset("assets/images/ic_us.png",fit: BoxFit.fill,)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0,top: 20),
                      child: Container(
                        child: ImageIcon(
                            AssetImage("assets/images/ic_edit.png"),color: Colors.white,),
                      ),
                    ),
                  ],
                ),
                Text("Manish Chutake",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w600),),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text("manushuxuld@gmail.com",style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w600),),
                )
              ],
            ),
          ),

          Container(
            height: size.height*0.7,
            width: double.infinity,
            color: Colors.white,
            child: ListView(
              children: [
                Container(
                  height: size.height*0.07,
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> MyOrder()),);
                      },
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 20,),
                                  ImageIcon(AssetImage("assets/images/ic_my_oder.png"),color: Color.fromRGBO(105, 160, 58, 1),),
                                  SizedBox(width: 10,),
                                  Text("My Orders",style: TextStyle(color: Colors.black,fontSize:15 ),),

                                ],
                              ),

                            ],
                          )),
                    ],
                  ),

                ),
                Container(height: 1,width: double.infinity,color: Color.fromRGBO(209, 209, 209, 1)),
                Container(
                  color: Colors.white,
                  height: size.height*0.07,
                  width: double.infinity,
                  child: TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> FavoriteScreen()));
                  },
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          ImageIcon(AssetImage("assets/images/ic_favorite2.png"),color: Color.fromRGBO(105, 160, 58, 1),),
                          SizedBox(width: 10,),
                          Text("Favorites",style: TextStyle(color: Colors.black,fontSize:15 ),),
                        ],
                      )),

                ),
                Container(height: 1,width: double.infinity,color: Color.fromRGBO(209, 209, 209, 1)),
                Container(
                  color: Colors.white,
                  height: size.height*0.07,
                  width: double.infinity,
                  child: TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Settings()));
                  },
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          ImageIcon(AssetImage("assets/images/ic_setting.png"),color: Color.fromRGBO(105, 160, 58, 1),),
                          SizedBox(width: 10,),
                          Text("Settings",style: TextStyle(color: Colors.black,fontSize:15 ),),
                        ],
                      )),

                ),
                Container(height: 1,width: double.infinity,color: Color.fromRGBO(209, 209, 209, 1)),
                Container(
                  color: Colors.white,
                  height: size.height*0.07,
                  width: double.infinity,
                  child: TextButton(onPressed: (){},
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          ImageIcon(AssetImage("assets/images/ic_mycart.png"),color: Color.fromRGBO(105, 160, 58, 1),),
                          SizedBox(width: 10,),
                          Text("My Carts",style: TextStyle(color: Colors.black,fontSize:15 ),),
                        ],
                      )),

                ),
                Container(height: 1,width: double.infinity,color: Color.fromRGBO(209, 209, 209, 1)),
                Container(
                  color: Colors.white,
                  height: size.height*0.07,
                  width: double.infinity,
                  child: TextButton(onPressed: (){},
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          ImageIcon(AssetImage("assets/images/ic_rateus.png"),color: Color.fromRGBO(105, 160, 58, 1),),
                          SizedBox(width: 10,),
                          Text("Rate us",style: TextStyle(color: Colors.black,fontSize:15 ),),
                        ],
                      )),

                ),
                Container(height: 1,width: double.infinity,color: Color.fromRGBO(209, 209, 209, 1)),
                Container(
                  height: size.height*0.07,
                  width: double.infinity,
                  color: Colors.white,
                  child: TextButton(onPressed: (){},
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          ImageIcon(AssetImage("assets/images/ic_share.png"),color: Color.fromRGBO(105, 160, 58, 1),),
                          SizedBox(width: 10,),
                          Text("Refer a Friend",style: TextStyle(color: Colors.black,fontSize:15 ),),
                        ],
                      )),

                ),
                Container(height: 1,width: double.infinity,color: Color.fromRGBO(209, 209, 209, 1)),

                Container(
                  color: Colors.white,
                  height: size.height*0.07,
                  width: double.infinity,
                  child: TextButton(onPressed: (){},
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          ImageIcon(AssetImage("assets/images/ic_help.png"),color: Color.fromRGBO(105, 160, 58, 1),),
                          SizedBox(width: 10,),
                          Text("Help",style: TextStyle(color: Colors.black,fontSize:15 ),),
                        ],
                      )),

                ),
                Container(height: 1,width: double.infinity,color: Color.fromRGBO(209, 209, 209, 1)),
                Container(
                  color: Colors.white,
                  height: size.height*0.07,
                  width: double.infinity,
                  child: TextButton(onPressed: (){},
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          ImageIcon(AssetImage("assets/images/ic_logout.png"),color: Color.fromRGBO(105, 160, 58, 1),),
                          SizedBox(width: 10,),
                          Text("Log Out",style: TextStyle(color: Colors.black,fontSize:15 ),),
                        ],
                      )),

                ),


              ],
            ),
          ),



         // Container(
         //   color: Colors.red,
         //   child: Expanded(
         //     child: ListView(
         //        children: [
         //          Row(
         //            children: [
         //              Container(
         //                // height: size.height*0.12,
         //                // width: double.infinity,
         //                // color: Colors.black,
         //                child: ElevatedButton(onPressed: (){}, child:
         //                  Row(
         //                    children: <Widget>[
         //                      ImageIcon(AssetImage("assets/images/ic_my_oder.png"),color: Color.fromRGBO(105, 160, 58, 1),),
         //                      Text("My Orders",style: TextStyle(color: Colors.black,fontSize:15 ),)
         //
         //                    ],
         //
         //                  ),
         //                ),
         //              ),
         //              //SizedBox(height: 1,width: double.infinity,),
         //            ],
         //          ),
         //
         //        ],
         //
         //      ),
         //   ),
         // ),
        ],
      ),
    );
  }
}
