import 'package:flutter/material.dart';
import 'package:flutter_app/loginmarket/verify_number.dart';

class Enter_number extends StatefulWidget {
  const Enter_number({Key? key}) : super(key: key);

  @override
  State<Enter_number> createState() => _Enter_numberState();
}

class _Enter_numberState extends State<Enter_number> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: size.height*0.125,),
            Stack(
              children: [
                Container(
                  height: 60,
                  width: size.width*0.90,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 2, color: Colors.black54),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 2, color: Colors.black54),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      label: Text("                  0123456"),
                    ),
                  ),
                ),
                Container(
                  height: 59,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),

                      //color: Colors.grey, mau nen
                      border: Border.all(width: 2, color: Colors.grey)),
                  child: Center(
                    child: Text("+91"),
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 50)),
            Container(
              height: 45,
              width: size.width*0.750,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(105, 160, 58, 1), spreadRadius: 3),
                ],
                // style: ButtonStyle(
                //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                //         RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(18.0),
                //             side: BorderSide(color: Colors.red)
                //         )
                //     )
                // )
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Loadtotation_number()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(105, 160, 58, 1),
                  onPrimary: Colors.white,
                ),
                child: Text(
                  "VERIFY",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
            SizedBox(height: size.height*0.125,),
            Container(
              width: size.width*0.95,
              height: size.height*0.50,
              //color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      KeyboardNumber(
                        n: 1,
                        onPressed: () {},
                      ),
                      KeyboardNumber(
                        n: 2,
                        onPressed: () {},
                      ),
                      KeyboardNumber(
                        n: 3,
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      KeyboardNumber(
                        n: 4,
                        onPressed: () {},
                      ),
                      KeyboardNumber(
                        n: 5,
                        onPressed: () {},
                      ),
                      KeyboardNumber(
                        n: 6,
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      KeyboardNumber(
                        n: 7,
                        onPressed: () {},
                      ),
                      KeyboardNumber(
                        n: 8,
                        onPressed: () {},
                      ),
                      KeyboardNumber(
                        n: 9,
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        width: 60.0,
                        child: MaterialButton(
                          onPressed: null,
                          child: Image.asset("assets/images/ic_delete.png"),
                          // shape: RoundedRectangleBorder(
                          //   borderRadius: BorderRadius.circular(60.0)
                        ),
                      ),
                      KeyboardNumber(
                        n: 0,
                        onPressed: () {},
                      ),
                      Container(
                        width: 80.0,
                        child: MaterialButton(
                          onPressed: null,
                          child: Text(
                            "OK",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Poppins",
                                color: Colors.black87),
                          ),
                          // shape: RoundedRectangleBorder(
                          //   borderRadius: BorderRadius.circular(60.0)
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class KeyboardNumber extends StatelessWidget {
  final int n;
  final Function() onPressed;
  KeyboardNumber({required this.n, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromRGBO(239, 239, 239, 1),
      ),
      alignment: Alignment.center,
      child: MaterialButton(
        padding: EdgeInsets.all(8.0),
        onPressed: onPressed,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(60.0)),
        height: 90.0,
        child: Text(
          "$n",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30 * MediaQuery.of(context).textScaleFactor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
