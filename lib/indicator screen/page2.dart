import 'package:flutter/material.dart';
import 'package:flutter_app/indicator screen/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

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
                  onPressed: () {},
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                        color: Color.fromRGBO(137, 137, 137, 0.8),
                        fontSize: 14,
                        fontFamily: "Poppins"),
                  ),
                ),
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
                        image: ExactAssetImage('assets/images/page2_2.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ), //Image.asset("assets/images/page1_1.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: Center(
                child: Column(
                  children: const [
                    Text(
                      "Delivery on the way",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(47, 46, 65, 1),
                        fontFamily: "Poppins",
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Text(
                      "Get your order by speed delivery",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(120, 120, 124, 0.4),
                          fontFamily: "Poppins"),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(top: 150),
                    //   child: SizedBox(
                    //       height: 45,
                    //       width: 130,
                    //       child: ElevatedButton(
                    //         onPressed: () {
                    //           Navigator.push(
                    //               context,
                    //               MaterialPageRoute(
                    //                   builder: (context) => const Page3()));
                    //         },
                    //         style: ElevatedButton.styleFrom(
                    //             primary: const Color.fromRGBO(105, 160, 58, 1)),
                    //         child: const Text(
                    //           "Next",
                    //           style: TextStyle(
                    //               fontSize: 14, fontWeight: FontWeight.bold),
                    //         ),
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
