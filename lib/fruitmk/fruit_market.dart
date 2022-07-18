import 'package:flutter/material.dart';
import 'package:flutter_app/fruitmk/Product_fruit.dart';
import 'package:flutter_app/fruitmk/detail.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_app/assets/db_icons.dart';
import 'package:flutter_app/fruitmk/notificationz.dart';
class Fruitmarket extends StatefulWidget {
  const Fruitmarket({Key? key}) : super(key: key);

  @override
  State<Fruitmarket> createState() => _FruitmarketState();
}

class _FruitmarketState extends State<Fruitmarket> {
  double  rating = 0;
  //int currentindex = 0;
  // static List<Widget> _widgetOptions = <Widget>[
  //   Text("man chinh",),
  //   Text("mua ban",),
  //   Text("mua ban",),
  //   Text("mua ban",),
  // ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return
        Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            elevation: 0,
            automaticallyImplyLeading: false,
            backgroundColor: Color.fromRGBO(105, 160, 58, 1),
            title:RichText(text: TextSpan(children: [
              TextSpan(text:"F",style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold,color: Colors.white,fontFamily: "Poppins")),
              TextSpan(text:"ruit Market",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white,fontFamily: "Poppins")),

            ],)
            ),
            actions: <Widget>[
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Notificationz()));
              },
                  icon: Icon(Icons.add_alert_sharp,color: Colors.white,)),
            ],
          ),
        body:Stack(
          children: [SingleChildScrollView(
            child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: SingleChildScrollView(
                    child: Column(
                        children: [
                          SizedBox(height: 70,),
                          Categories(),
                          Padding(padding: EdgeInsets.only(top: 30),

                            child:
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: RichText(text: TextSpan(children: [
                                  TextSpan(text:"Organic Vegetables",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black,)),
                                  TextSpan(text:" 20% Off",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Color.fromRGBO(76, 160, 0, 1),fontFamily: "Poppins")),

                                ],)
                                ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 10),

                          child:
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Text("Pick up from organic forms")),
                          ),
                          Row(
                            children: [
                              //Itemcard(),
                              Expanded(
                                  child: Container(
                                    height:250,
                                    //width:20,
                                    //color: Colors.lightGreen,
                                    child: GridView.builder(
                                      shrinkWrap: true,
                                      scrollDirection:Axis.horizontal,
                                      itemCount: listproduct.length,
                                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                        mainAxisSpacing: 20,
                                        crossAxisCount: 1,
                                    childAspectRatio: 2,
                                    //crossAxisSpacing: 2,

                                    ),
                                    itemBuilder:(context,index)
                                      =>Itemcard(press:
                                      (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)
                                        => Detailscreen(produc: listproduct[index],)
                                        ));
                                      }
                                        , produc: listproduct[index],)),
                                  )
                              )
                            ],
                          ),


                          Padding(padding: EdgeInsets.only(top: 10),

                            child:
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: RichText(text: TextSpan(children: [
                                TextSpan(text:"Mixed Vegetables Pack",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black,)),
                                TextSpan(text:" 10% Off",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Color.fromRGBO(76, 160, 0, 1),fontFamily: "Poppins")),

                              ],)
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 10),

                            child:
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Text("Pick up from organic forms")),
                          ),
                          Row(
                            children: [
                              //Itemcard(),
                              Expanded(
                                  child: Container(
                                    height:250,
                                    //width:20,
                                    //color: Colors.lightGreen,
                                    child: GridView.builder(
                                        shrinkWrap: true,
                                        scrollDirection:Axis.horizontal,
                                        itemCount: listproduct.length,
                                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                          mainAxisSpacing: 20,
                                          crossAxisCount: 1,
                                          childAspectRatio: 2,
                                          //crossAxisSpacing: 2,

                                        ),
                                        itemBuilder:(context,index)
                                        =>Itemcard(press:
                                            (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context)
                                          => Detailscreen(produc: listproduct[index],)
                                          ));
                                        }
                                          , produc: listproduct[index],)),
                                  )
                              )
                            ],
                          ),

                          Align(
                            alignment: Alignment.bottomLeft,
                            child: RichText(text: TextSpan(children: [
                              TextSpan(text:"Allium Vegetables",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black,)),
                              TextSpan(text:" 20% Off",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Color.fromRGBO(76, 160, 0, 1),fontFamily: "Poppins")),

                            ],)
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 10),

                            child:
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Text("Pick up from organic forms")),
                          ),
                          Row(
                            children: [
                              //Itemcard(),
                              Expanded(
                                  child: Container(
                                    height:250,
                                    //width:20,
                                    //color: Colors.lightGreen,
                                    child: GridView.builder(
                                        shrinkWrap: true,
                                        scrollDirection:Axis.horizontal,
                                        itemCount: listproduct.length,
                                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                          mainAxisSpacing: 20,
                                          crossAxisCount: 1,
                                          childAspectRatio: 2,
                                          //crossAxisSpacing: 2,

                                        ),
                                        itemBuilder:(context,index)
                                        =>Itemcard(press:
                                            (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context)
                                          => Detailscreen(produc: listproduct[index],)
                                          ));
                                        }
                                          , produc: listproduct[index],)),
                                  )
                              )
                            ],
                          ),

                          Align(
                            alignment: Alignment.bottomLeft,
                            child: RichText(text: TextSpan(children: [
                              TextSpan(text:"Root Vegetables",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black,)),
                              TextSpan(text:" (5% Off)",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Color.fromRGBO(76, 160, 0, 1),fontFamily: "Poppins")),

                            ],)
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 10),

                            child:
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Text("Pick up from organic forms")),
                          ),
                          Row(
                            children: [
                              //Itemcard(),
                              Expanded(
                                  child: Container(
                                    height:250,
                                    //width:20,
                                    //color: Colors.lightGreen,
                                    child: GridView.builder(
                                        shrinkWrap: true,
                                        scrollDirection:Axis.horizontal,
                                        itemCount: listproduct.length,
                                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                          mainAxisSpacing: 20,
                                          crossAxisCount: 1,
                                          childAspectRatio: 2,
                                          //crossAxisSpacing: 2,

                                        ),
                                        itemBuilder:(context,index)
                                        =>Itemcard(press:
                                            (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context)
                                          => Detailscreen(produc: listproduct[index],)
                                          ));
                                        }
                                          , produc: listproduct[index],)),
                                  )
                              )
                            ],
                          ),

                        ],
                    ),
                  ),
                ),


              ],
            ),
          ),
            Container(
              height: 30,
              width: double.infinity,
              color:Color.fromRGBO(105, 160, 58, 1),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0),
              child: Card(
                child:  TextField(
                  textAlignVertical: TextAlignVertical.center,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 13,
                  ),
                  decoration: InputDecoration(
                    // label: Text("Search",style: TextStyle(color: Colors.black12,fontSize: 14,),),
                    prefixIcon: IconButton(icon: Icon(Icons.search, color: Colors.black54,size: 30,), onPressed: (){}),

                  ),

                ),
              ),
            ),
          ]
        ),
          // bottomNavigationBar:
          // BottomAppBar(
          //   child: new Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //         IconButton(onPressed: (){},
          //             icon:Icon(Icon_home.logo))
          //     ],
          //   ),
          // ),
          // bottomNavigationBar: BottomNavigationBar(
          //   type: BottomNavigationBarType.fixed,
          //   //selectedFontSize: , font chu cua options
          //   // un selec thi se tahy doi neu khong  chon
          //   items:  [
          //
          //     BottomNavigationBarItem(
          //       icon: Icon(
          //         Icon_home.logo,
          //         size: 28,
          //         //color: Color.fromRGBO(118, 158, 73, 1),
          //       ),
          //       label: "Home",
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Icon(
          //         Icon_home.logo,
          //         size: 28,
          //         //color: Color.fromRGBO(118, 158, 73, 1),
          //       ),
          //       label: "Shopping cart",
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Icon(
          //         Icon_home.logo,
          //         size: 28,
          //         //color:states? Color.fromRGBO(118, 158, 73, 1):Color.fromRGBO(131, 129, 129, 1),
          //       ),
          //       label: "Favorites",
          //     ),
          //     BottomNavigationBarItem(
          //
          //       icon: Icon(
          //         Icon_home.logo,
          //         size: 28,
          //         //color: Color.fromRGBO(131, 129, 129, 1),
          //       ),
          //       label: "My Account",
          //
          //     )
          //   ],
          //   currentIndex: currentindex,
          //   selectedItemColor: Color.fromRGBO(118, 158, 73, 1),
          //   unselectedItemColor: Color.fromRGBO(131, 129, 129, 1),
          //   onTap: (int index) {
          //
          //     setState(() {
          //
          //       currentindex = index;
          //     });
          //   }, //tra ve mot so nguyen bien doi
          // ),

        );



  }
}

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List <String> categori  = [" Vegetable "," Fruits ", " Dry Fruits "];
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal ,
          itemCount: categori.length,
          itemBuilder:(context,index) => buildCategory(index),


    ),
    );
  }
  Widget buildCategory(int index){
    return GestureDetector(
      onTap: (){
        setState((){
          select = index;
        });
      },
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20,),
        child: Container(

          width: 80,
          color: select == index ? Color.fromRGBO(204, 125, 0, 1): Colors.white,

          child: Align(
            alignment: Alignment.center,
            child: Text(
              categori[index],
              style: TextStyle(fontSize: 15,
                  color: select == index ? Colors.white: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

class Itemcard extends StatelessWidget {
   Itemcard({Key? key, required this.produc, required this.press}) : super(key: key);
  Product produc;
   Function press;

  @override
  Widget build(BuildContext context) {
    return Container(

      //color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(padding: EdgeInsets.only(top: 10),
            child: SizedBox(
              width: 118,
              height: 143,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(produc.image,fit: BoxFit.cover,),
              ),
            ),
          ),
          // Padding(
          //   // height: 10,
          //   // width: 40,
          //   padding: EdgeInsets.only(left: -10),
          //   child: RatingBar.builder(
          //     itemSize:15 ,
          //     minRating: 1,
          //
          //     direction: Axis.horizontal,
          //     itemBuilder:(context,_)=> Icon(Icons.star,color: Colors.amber,size:1),
          //     onRatingUpdate: (rating)=>
          //         setState((){
          //           this.rating  = rating;
          //         }
          //         ),
          //   ),
          // ),
          Container(
            width: 120,
            padding: EdgeInsets.symmetric(vertical: 4),
            //color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //SizedBox(height: 15,),
                Icon(Icons.star,size: 17,),
                Icon(Icons.star,size: 17,),
                Icon(Icons.star,size: 17,),
                Icon(Icons.star,size: 17,),
                Icon(Icons.star,size: 17,),
                //SizedBox(width: 150,)
              ],
            ),
          ),
                       Align(
              alignment:Alignment.bottomLeft ,
              child: Text(produc.title,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),)),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(children: [
              Image.asset("assets/images/ic_giaca.png"),
              Text("${produc.price} Per/kg",style: TextStyle(fontSize: 12),)
            ],),
          ),
        
        ],),
    );
  }
}
