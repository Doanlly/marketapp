import 'package:flutter/material.dart';
import 'package:flutter_app/fruitmk/itemcard_mixed_vegetables.dart';
import 'package:flutter_app/fruitmk/Product_fruit.dart';

class DetailscreenD4 extends StatefulWidget {
  const DetailscreenD4({ Key? key, required this.dehiscentdf}) : super(key: key);

  final DehiscentDryFruits dehiscentdf;
  @override
  State<DetailscreenD4> createState() => _DetailscreenStatez();
}

class _DetailscreenStatez extends State<DetailscreenD4> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
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
        title: Transform(
            transform: Matrix4.translationValues(-22, 0, 0),
            child: Text(
              "DETAIL",
              style: TextStyle(fontSize: 15, color: Colors.white,fontWeight: FontWeight.w600),
            )),
      ),
      body: Stack(
          children : [Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 25,bottom: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: size.height*0.25,
                    width: size.width*1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        widget.dehiscentdf.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20,bottom: 13),child:
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text("${widget.dehiscentdf.title}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),))
                    ,),
                  Padding(padding: EdgeInsets.only(left: 25),child:
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("${widget.dehiscentdf.detail}",style: TextStyle(fontSize: 14,color: Colors.black54),),
                  )
                    ,),
                  Padding(padding: EdgeInsets.only(top:5  ,bottom: 10),child:
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text("Nutrition",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),))
                    ,),
                  Container(
                    height: size.height*0.35,
                    width: size.height*1,

                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: widget.dehiscentdf.nutrition.length,
                      itemBuilder: (context,i){
                        return
                          //Text("${widget.produc.nutrition[i]}");
                          Row(children: [
                            Container(height: 8,width: 8,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black38,
                              )
                              ,),
                            SizedBox(width: 15,height: 25.5,),
                            Text("${widget.dehiscentdf.nutrition[i]}",style: TextStyle(fontSize: 14,color: Colors.black45),)
                          ],);
                      },),
                  ),


                ],
              ),
            ),
          ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: size.height*0.075,width: double.infinity,
                //color: Colors.amber,

                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20),
                  child: Row(
                    children: [
                      //Image.asset("assets/images/ic_giaca.png",width: 10,height: 50,),
                      Container(
                        height: size.height*0.06,
                        width: size.width*0.3,
                        //color: Colors.red,
                        child: Row(
                          children: [
                            Image.asset("assets/images/ic_giaca1.png",fit: BoxFit.cover,),
                            SizedBox(width: 10,),
                            Text(
                              "${widget.dehiscentdf.price} Per/ kg",
                              style: TextStyle(fontSize: 16.5,fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        //color: Colors.greenAccent,
                        height: size.height*0.059,
                        width: size.width*1- 20-21-size.width*0.3,
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: size.height*0.05,
                            width: size.width*0.425,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4)
                              ,color: Color.fromRGBO(105, 160, 58, 1),

                            ),child: TextButton(onPressed: () {  },
                            child:Text("Buy Now",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Colors.white),),

                          ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ]
      ),
    );
  }
}
