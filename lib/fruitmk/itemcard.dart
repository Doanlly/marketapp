import 'package:flutter/material.dart';
import 'package:flutter_app/fruitmk/categories.dart';
import 'package:flutter_app/fruitmk/Product_fruit.dart';
import 'package:flutter_app/constant.dart';
import 'package:flutter_app/fruitmk/detail.dart';
class Itemcard extends StatefulWidget {
  var press;

  Itemcard({Key? key, required this.produc, required this.press})
      : super(key: key);
  final Product produc;

  //get press => null;
  //Function press;

  @override
  State<Itemcard> createState() => _ItemcardState();
}

class _ItemcardState extends State<Itemcard> {
  bool checkfavorrite = true;


  @override
  Widget build(BuildContext context) {
    Size size =  MediaQuery.of(context).size;
    return GestureDetector(
      onTap: widget.press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Stack(
              children: [SizedBox(
                width: size.width*0.325,
                height: size.height*0.185,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    widget.produc.image,
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
                            checkfavorrite=!checkfavorrite;
                          });
                        },
                        child: Align(
                            alignment: Alignment.center,
                            child: Container(child:  Image.asset(checkfavorrite? "assets/images/ic_notfavorite.png" :"assets/images/ic_favorites1.png",fit:BoxFit.contain,width:100,height: 100,))
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
                widget.produc.title,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              children: [
                Image.asset("assets/images/ic_giaca.png"),
                Text(
                  "${widget.produc.price} Per/ kg",
                  style: TextStyle(fontSize: 12),
                )
              ]   ),
          ),
        ],
      ),
    );
  }
}
