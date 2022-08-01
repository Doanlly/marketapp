import 'package:flutter/material.dart';
import 'package:flutter_app/fruitmk/productview.dart';
import 'package:flutter_app/fruitmk/productview_vegetables.dart';
import 'package:flutter_app/fruitmk/productview_drufruits.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> with TickerProviderStateMixin {
  //List<String> categori = [" Vegetable ", " Fruits ", " Dry Fruits "];
  //int select = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TabController _tabcontroller = TabController(length: 3, vsync: this);
    return Container(
      height: size.height * 0.735,
      //color: Colors.red,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox( height: size.height*0.02),
          Container(
            //color: Colors.amber,
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 30,//size.height*0.0375,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: TabBar(
                  controller: _tabcontroller,
                  //labelPadding:EdgeInsets.only() ,
                  // hinh dang cua thanh cator  CircleTabindicator(colore, radfius:indicator: ,
                  indicatorColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                    color: Color.fromRGBO(204, 125, 0, 1),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black45,
                  tabs: [
                    Tab(
                      child: Container(
                        //color: Colors.amber,
                        child: Text(
                          " Vegetables ",
                          style: TextStyle(fontSize: 14.5),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: size.height * 0.03,
                        width: size.width * 0.25,
                        //color: Colors.amber,
                        alignment: Alignment.center,
                        child: Text(
                          "Fruits",
                          style: TextStyle(
                            fontSize: 15.5,
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        //color: Colors.amber,
                        child: Text(
                          "Dry Fruits",
                          style: TextStyle(
                            fontSize: 15.5,
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
          Container(
            width: double.infinity,
            height: size.height * 0.645,
            //color: Colors.green,
            child: TabBarView(controller: _tabcontroller, children: [
              Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        ProductscreenVegetables(),
                      ],
                    ),
                  ),
                ],
              ),
              // SingleChildScrollView(
              //
              //Productscreen(),
              // ),
              Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Productscreen(),
                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        ProductscreenDryFruits(),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
