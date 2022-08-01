import 'package:flutter/material.dart';
class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categori = [" Vegetable ", " Fruits ", " Dry Fruits "];
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categori.length,
        itemBuilder: (context, index) => buildCategory(index),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          select = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Container(
          width: 80,
          color:
          select == index ? Color.fromRGBO(204, 125, 0, 1) : Colors.white,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              categori[index],
              style: TextStyle(
                  fontSize: 15,
                  color: select == index ? Colors.white : Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}