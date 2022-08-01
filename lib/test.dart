import 'package:flutter/material.dart';
import 'package:flutter_app/fruitmk/fruit_market.dart';
import 'package:flutter_app/fruitmk/productview.dart';
class Testt extends StatefulWidget {
  const Testt({Key? key}) : super(key: key);

  @override
  State<Testt> createState() => _TesttState();
}

class _TesttState extends State<Testt>  with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TabController _tabcontroller = TabController(length: 3, vsync: this);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Test"),

      ),body: ListView(
      children: [
        Container(
          padding: EdgeInsets.only(left: 20,right: 20),
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
              Tab(child: Container(
                //color: Colors.amber,
                child: Text(" Vegetables "),

              ),),
              Tab(child: Container(
                height: size.height*0.03,
                width: size.width*0.25,
                //color: Colors.amber,
                alignment: Alignment.center,
                child: Text("Fruits"),

              ),),
              Tab(child: Container(
                //color: Colors.amber,
                child: Text("Dry Fruits"),

              ),),
            ]),
          ),
        ),
        Container(
          width: double.infinity,
          height: size.height*0.8,
          child: TabBarView(
              controller: _tabcontroller,
              children: [
                Stack(children: [
                  // SingleChildScrollView(
                  //   child: Column(
                  //     children: [
                  //      // Productscreen(),
                  //     ],
                  //   ),
                  // ),
                ],),
              // SingleChildScrollView(
              //
              //Productscreen(),
              // ),
            Text("2"),
            Text("Pho"),
          ]),
        ),
      ],
    ),
    );
  }
}
