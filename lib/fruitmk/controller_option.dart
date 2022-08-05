import 'package:flutter/material.dart';
import 'package:flutter_app/fruitmk/fruit_market.dart';
import 'package:flutter_app/assets/db_icons.dart';
import 'package:flutter_app/my_Account/my_AccountScreen.dart';
import 'package:flutter_app/favorites/favorites_screen.dart';
import 'package:flutter_app/shopping cart/shopping_cart.dart';

class Controller_option extends StatefulWidget {
  const Controller_option({Key? key}) : super(key: key);

  @override
  State<Controller_option> createState() => _Controller_optionState();
}

int currentindex = 0;

class _Controller_optionState extends State<Controller_option> {
  static List<Widget> _widgetOptions = <Widget>[
    Fruitmarket(),
    Container(),
    FavoriteScreen(
      check: false,
    ),
    MyAccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(children: [
      Scaffold(
        resizeToAvoidBottomInset: false,
        body: _widgetOptions[currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          //selectedFontSize: , font chu cua options
          // un selec thi se tahy doi neu khong  chon
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icon_home.logo,
                size: 28,
                //color: Color.fromRGBO(118, 158, 73, 1),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/ic_shopping.png"),
                size: 28,
                //color: Color.fromRGBO(118, 158, 73, 1),
              ),
              label: "Shopping cart",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/ic_favorite.png"),
                size: 28,
                //color:states? Color.fromRGBO(118, 158, 73, 1):Color.fromRGBO(131, 129, 129, 1),
              ),
              label: "Favorites",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/ic_user.png"),
                size: 28,
                //color: Color.fromRGBO(131, 129, 129, 1),
              ),
              label: "My Account",
            )
          ],
          currentIndex: currentindex,
          selectedItemColor: Color.fromRGBO(118, 158, 73, 1),
          unselectedItemColor: Color.fromRGBO(131, 129, 129, 1),
          onTap: (int index) {
            setState(() {
              index != 1
                  ? currentindex = index
                  : Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Shoppingcart()));
              print(currentindex);
            });
          }, //tra ve mot so nguyen bien doi
        ),
      ),
    ]);
  }
}
