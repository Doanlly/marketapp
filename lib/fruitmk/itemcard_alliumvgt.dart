import 'package:flutter/material.dart';
import 'package:flutter_app/fruitmk/Product_fruit.dart';
import 'dart:math';
import 'package:flutter_app/favorites/favorites_screen.dart';

Random random = new Random();

class ItemAlliumvgt extends StatefulWidget {
  var press;

  ItemAlliumvgt({Key? key, required this.alliumVgt, required this.press})
      : super(key: key);
  final AlliumVegetables alliumVgt;

  //get press => null;
  //Function press;

  @override
  State<ItemAlliumvgt> createState() => _ItemAlliumvgtState();
}

class _ItemAlliumvgtState extends State<ItemAlliumvgt> {
  bool checkfavorrite = true;
  int randomNumber = random.nextInt(3) + 2;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: widget.press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Stack(children: [
              SizedBox(
                width: size.width * 0.325,
                height: size.height * 0.185,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    widget.alliumVgt.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 08, top: 08),
                  child: Container(
                    height: size.width * 0.065,
                    width: size.width * 0.065,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    //alignment: Alignment.center,
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            checkfavorrite = !checkfavorrite;
                          });
                          if (checkfavorrite == false) {
                            setidf.add("${widget.alliumVgt.id}");
                            //print("${Listitemproduc}");
                            print("setid: ${setidf}");
                            for (int i = 0; i < setidf.length; i++) {
                              for (int j = 0; j < alliumvgt.length; j++) {
                                if (setidf[i] == "${alliumvgt[j].id}") {
                                  savedataproductf.add(alliumvgt[j].title);
                                  savedataproductf.add(alliumvgt[j].price);
                                  savedataproductf.add(alliumvgt[j].image);
                                  savedataproductf.add(alliumvgt[j].phanloai);
                                }
                              }
                            }
                            print("Tat cac san pham: $savedataproduct");
                            //xet truong id cua no
                            var idlistef = {...setidf};
                            List idf = idlistef.toList();
                            print("id có trong shopping cart là : $idf");
                            for (int i = 0; i < idf.length; i++) {
                              for (int j = 0; j < setidf.length; j++) {
                                if (idf[i] == setidf[j]) {
                                  check0f = check0f + 1;
                                  moveid[idf[i]] = check0f;
                                }
                              }
                              check0f = 0;
                            }
                            print("$moveidf");
                            var iddf = moveidf.keys;
                            for (var i in iddf) {
                              var bbf = moveidf[i];
                              sumidf = sumidf + bbf;
                            }
                            print("Tong s id ${moveidf.length}");
                            print("Tổng sản phâm: ${sumidf}");
                            List tensanphamvuaaddf = [];
                            var listef = {...savedataproductf};
                            List cf = listef.toList();

                            for (int i = 0; i < dulieumoif.length; i += 3) {
                              tensanphamvuaaddf.add(dulieumoif[i]);
                            }
                            var tensanphamshppingcartf = {...tensanphamvuaaddf};
                            List listspcart = tensanphamshppingcartf.toList();
                            //print("Ten cua san pham $listspcart");
                            print(
                                "Thong so cac san pham trong Shoppingcart: $cf");
                            var detailsf = new Map();
                            for (int i = 0; i < cf.length; i++) {
                              for (int j = 0;
                                  j < savedataproductf.length;
                                  j++) {
                                if (cf[i] == savedataproductf[j]) {
                                  checkf = checkf + 1;
                                  detailsf[cf[i]] = checkf;
                                }
                              }
                              checkf = 0;
                            }
                            print("detai: $detailsf");
                            shoppingcartoderf = [cf, sumidf];
                            print("shoppingcaroder: ${shoppingcartoderf}}");
                            print(shoppingcartoderf[0][1]);
                            for (int i = 2;
                                i < savedataproductf.length;
                                i += 4) {
                              listimagef.add(savedataproductf[i]);
                            }
                            for (int i = 0;
                                i < savedataproductf.length;
                                i += 4) {
                              listtitlefrf.add(savedataproductf[i]);
                            }
                            for (int i = 1;
                                i < savedataproductf.length;
                                i += 4) {
                              listpricefrf.add(savedataproductf[i]);
                            }

                            print(" Danh sach anh: $listimagef");
                            print(" Danh sach ten san  pham : $listtitlefrf");
                            print(savedataproductf);
                            print("Danh sach gia ca: $listpricefrf");
                            var move1f = {...listimagef};
                            List litimagef = move1f.toList();
                            listimagesf = litimagef;
                            print("List image: $listimagesf");
                            //==================
                            var move2f = {...listtitlefrf};
                            List littitlef = move2f.toList();
                            titlefruitf = littitlef;
                            print("List title: $titlefruitf");
                            //===============
                            var move3f = {...listpricefrf};
                            List litpricef = move3f.toList();
                            listpricef = litpricef;
                            print("List price: $listpricef");
                            //print("$check");
                            // listpricefr.clear();
                            // listtitlefr.clear();
                            // listimage.clear();
                            savedataproductf.clear();
                            sumidf = 0;
                          }
                        },
                        child: Align(
                            alignment: Alignment.center,
                            child: Container(
                                child: Image.asset(
                              checkfavorrite
                                  ? "assets/images/ic_notfavorite.png"
                                  : "assets/images/ic_favorites1.png",
                              fit: BoxFit.contain,
                              width: 100,
                              height: 100,
                            )))),
                  ),
                ),
              ),
            ]),
          ),
          Container(
            width: 120,
            padding: EdgeInsets.symmetric(vertical: 4),
            //color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //SizedBox(height: 15,),
                for (int i = 1; i <= randomNumber; i++)
                  Icon(
                    Icons.star,
                    size: 17,
                    color: Colors.amber,
                  ),
                for (int j = 1; j <= (5 - randomNumber); j++)
                  Icon(
                    Icons.star,
                    size: 17,
                    color: Colors.black38,
                  ),

                //SizedBox(width: 150,)
              ],
            ),
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                widget.alliumVgt.title,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(children: [
              Image.asset("assets/images/ic_giaca.png"),
              Text(
                "${widget.alliumVgt.price} Per/ kg",
                style: TextStyle(fontSize: 12),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
