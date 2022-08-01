import 'package:flutter/material.dart';
import 'package:flutter_app/fruitmk/categories.dart';
import 'package:flutter_app/fruitmk/Product_fruit.dart';
class StonefuirtItems extends StatefulWidget {
  StonefuirtItems({Key? key, required this.stonef, required this.press})
      : super(key: key);
  StoneFruits stonef;
  var press;

  @override
  State<StonefuirtItems> createState() => _StonefuirtItemsState();
}

class _StonefuirtItemsState extends State<StonefuirtItems> {
  bool checkfavorrite1 = true;

  @override
  Widget build(BuildContext context) {
    Size size =  MediaQuery.of(context).size;
    return GestureDetector(
      onTap:widget.press ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Stack(
              children: [
                SizedBox(
                width: size.width*0.325,
                height: size.height*0.185,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    widget.stonef.image,
                    fit: BoxFit.cover,
                  ),
                ),

              ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 08,top: 08),

                    child: Container(
                      height:size.width*0.065 ,
                      width: size.width*0.065,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,

                      ),
                      //alignment: Alignment.center,
                      child: InkWell(

                          onTap: () {
                            setState((){
                              print("click");
                              checkfavorrite1=!checkfavorrite1;
                            });
                          },
                          child: Align(
                              alignment: Alignment.center,
                              child: Container(child:  Image.asset(checkfavorrite1? "assets/images/ic_notfavorite.png" :"assets/images/ic_favorites1.png",fit:BoxFit.contain,width:100,height: 100,))
                          )),

                    ),
                  ),
                ),

              ]
            ),
          ),

          Container(
            width: 120,
            padding: EdgeInsets.symmetric(vertical: 4),
            //color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //SizedBox(height: 15,),
                Icon(
                  Icons.star,
                  size: 17,
                ),
                Icon(
                  Icons.star,
                  size: 17,
                ),
                Icon(
                  Icons.star,
                  size: 17,
                ),
                Icon(
                  Icons.star,
                  size: 17,
                ),
                Icon(
                  Icons.star,
                  size: 17,
                ),
                //SizedBox(width: 150,)
              ],
            ),
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                widget.stonef.title,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              children: [
                Image.asset("assets/images/ic_giaca.png"),
                Text(
                  "${widget.stonef.price} Per/kg",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
