import 'package:flutter/material.dart';
import 'package:flutter_app/fruitmk/fruit_market.dart';
import "package:flutter_app/fruitmk/controller_option.dart";
class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 50,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 330),
              child: SizedBox(
                child: TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Controller_option()));
                      },
                      child: const Text("Skip",style: TextStyle(color: Color.fromRGBO(137, 137, 137, 0.8),fontSize: 14,fontFamily: "Poppins"),),

                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top:50),
                child: SizedBox(
                  height: 255,
                  width: 330,
                  child: SizedBox(

                      height: MediaQuery.of(context).size.height,
                      //width: 300,
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: ExactAssetImage('assets/images/page1_1.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      ),
                    ),//Image.asset("assets/images/page1_1.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Center(
                child: Column(
                  children: const [

                    Text("E shopping",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Color.fromRGBO(47, 46, 65, 1),
                      fontFamily: "Poppins",
                      ),),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Text("Explore  top organic fruits & grab them",
                      style: TextStyle(fontSize: 15,
                        //color: Color.fromRGBO(120, 120, 124, 0.4),
                      fontFamily: "Poppins"),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(top :150),
                    //   child: SizedBox(
                    //       height: 45,
                    //       width: 130,
                    //
                    //       child: ElevatedButton(onPressed: (){
                    //         Navigator.push(context, MaterialPageRoute(builder: (context)=> const Page2() ));
                    //       },
                    //
                    //           style: ElevatedButton.styleFrom(
                    //             primary:const Color.fromRGBO(105, 160, 58, 1)
                    //           ),
                    //           child: const Text("Next",style: TextStyle(fontSize:14,fontWeight: FontWeight.bold )
                    //             ,),
                    //       )
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
