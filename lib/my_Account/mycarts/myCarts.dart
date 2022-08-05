import 'package:flutter/material.dart';
import 'package:flutter_app/shopping cart/shopping_cart.dart';

class Mycarts extends StatefulWidget {
  const Mycarts({Key? key}) : super(key: key);

  @override
  State<Mycarts> createState() => _MycartsState();
}

class _MycartsState extends State<Mycarts> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 20,
              color: Colors.white,
            )),
        backgroundColor: Color.fromRGBO(105, 160, 58, 1),
        title: Text(
          "My Cart",
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Row(
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
