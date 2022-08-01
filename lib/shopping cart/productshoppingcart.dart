import 'package:flutter/material.dart';
import 'package:flutter_app/fruitmk/Product_fruit.dart';
import 'package:flutter_app/shopping cart/shopping_cart.dart';
class ProductItemshoppong extends StatefulWidget {
   ProductItemshoppong({Key? key, required this.produc}) : super(key: key);
  List b = [];
   final Product produc;
  @override
  State<ProductItemshoppong> createState() => _ProductItemshoppongState();
}

class _ProductItemshoppongState extends State<ProductItemshoppong> {
  Shoppingcart listarr  = new Shoppingcart();
  int couter = 0;
  void countup(){
    setState((){
      couter++;
    });
    print("pushed couter up $couter");
  }
  void couterdown(){
    if(couter > 0) {
      setState((){
        couter--;
      });
      print("popped counter down $couter");
    }
    else couter = 0;
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Container(
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
                      "${listarr.a}",
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

                            onPressed: couterdown,
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

                            onPressed:countup,
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
    );
  }
}
