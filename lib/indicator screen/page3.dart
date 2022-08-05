import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

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
            const Padding(
              padding: EdgeInsets.only(left: 330),
              child: SizedBox(
                height: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: SizedBox(
                height: 195,
                width: 340,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  //width: 300,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage('assets/images/page3_3.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ), //Image.asset("assets/images/page1_1.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 88),
              child: Center(
                child: Column(
                  children: [
                    const Text(
                      "Delivery Arrived",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(47, 46, 65, 1),
                        fontFamily: "Poppins",
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 20)),
                    const Text(
                      "Order is arrived at your Place",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(120, 120, 124, 0.4),
                          fontFamily: "Poppins"),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(top :155),  //135
                    //   child: SizedBox(
                    //       height: 45,
                    //       width: 130,
                    //
                    //       child: ElevatedButton(onPressed: (){
                    //         Navigator.push(context, MaterialPageRoute(builder: (context)=> chepter()));
                    //       },
                    //
                    //         style: ElevatedButton.styleFrom(
                    //             primary: const Color.fromRGBO(105, 160, 58, 1)
                    //         ),
                    //         child:const Text("Get stated",style: TextStyle(fontSize:14,fontWeight: FontWeight.bold )
                    //           ,),
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
