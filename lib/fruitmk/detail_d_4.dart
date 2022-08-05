import 'package:flutter/material.dart';
import 'package:flutter_app/fruitmk/itemcard_mixed_vegetables.dart';
import 'package:flutter_app/fruitmk/Product_fruit.dart';
import 'package:flutter_app/shopping cart/shopping_cart.dart';

class DetailscreenD5 extends StatefulWidget {
  const DetailscreenD5({Key? key, required this.kashmiri}) : super(key: key);

  final KashmiriDryFruits kashmiri;
  @override
  State<DetailscreenD5> createState() => _DetailscreenStatez();
}

class _DetailscreenStatez extends State<DetailscreenD5> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 22,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromRGBO(105, 160, 58, 1),
        title: Transform(
            transform: Matrix4.translationValues(-22, 0, 0),
            child: Text(
              "DETAIL",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            )),
      ),
      body: Stack(children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 25, bottom: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: size.height * 0.25,
                  width: size.width * 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      widget.kashmiri.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 13),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "${widget.kashmiri.title}",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "${widget.kashmiri.detail}",
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Nutrition",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      )),
                ),
                Container(
                  height: size.height * 0.35,
                  width: size.height * 1,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: widget.kashmiri.nutrition.length,
                    itemBuilder: (context, i) {
                      return
                          //Text("${widget.produc.nutrition[i]}");
                          Row(
                        children: [
                          Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black38,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                            height: 25.5,
                          ),
                          Text(
                            "${widget.kashmiri.nutrition[i]}",
                            style:
                                TextStyle(fontSize: 14, color: Colors.black45),
                          )
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: size.height * 0.075, width: double.infinity,
            //color: Colors.amber,

            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Row(
                children: [
                  //Image.asset("assets/images/ic_giaca.png",width: 10,height: 50,),
                  Container(
                    height: size.height * 0.06,
                    width: size.width * 0.3,
                    //color: Colors.red,
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/ic_giaca1.png",
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "${widget.kashmiri.price} Per/ kg",
                          style: TextStyle(
                              fontSize: 16.5, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    //color: Colors.greenAccent,
                    height: size.height * 0.059,
                    width: size.width * 1 - 20 - 21 - size.width * 0.3,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: size.height * 0.05,
                        width: size.width * 0.425,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color.fromRGBO(105, 160, 58, 1),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Shoppingcart()));

                            setid2.add("${widget.kashmiri.id}");
                            //print("${Listitemproduc}");
                            print("setid2: ${setid2}");
                            for (int i = 0; i < setid2.length; i++) {
                              for (int j = 0; j < kashmiridf.length; j++) {
                                if (setid2[i] == "${kashmiridf[j].id}") {
                                  savedatadryfruit.add(kashmiridf[j].title);
                                  savedatadryfruit.add(kashmiridf[j].price);
                                  savedatadryfruit.add(kashmiridf[j].image);
                                  savedatadryfruit.add(kashmiridf[j].phanloai);
                                }
                              }
                            }
                            print("Tat cac san pham: $savedatadryfruit");
                            //xet truong id cua no
                            var idliste2 = {...setid2};
                            List id2 = idliste2.toList();
                            print("id có trong shopping cart là : $id2");
                            for (int i = 0; i < id2.length; i++) {
                              for (int j = 0; j < setid2.length; j++) {
                                if (id2[i] == setid2[j]) {
                                  checkdryf = checkdryf + 1;
                                  moveid2[id2[i]] = checkdryf;
                                }
                              }
                              checkdryf = 0;
                            }
                            print("$moveid2");
                            var idd2 = moveid2.keys;
                            for (var i in idd2) {
                              var bb2 = moveid2[i];
                              sumid2 = sumid2 + bb2;
                            }
                            print("Tong s id ${moveid2.length}");
                            print("Tổng sản phâm: ${sumid2}");
                            List tensanphamvuaadd2 = [];
                            var liste2 = {...savedatadryfruit};
                            List c2 = liste2.toList();

                            for (int i = 0; i < dulieumoi2.length; i += 3) {
                              tensanphamvuaadd2.add(dulieumoi2[i]);
                            }
                            var tensanphamshppingcart2 = {...tensanphamvuaadd2};
                            List listspcart2 = tensanphamshppingcart2.toList();
                            //print("Ten cua san pham $listspcart");
                            print(
                                "Thong so cac san pham trong Shoppingcart: $c2");
                            var details2 = new Map();
                            for (int i = 0; i < c2.length; i++) {
                              for (int j = 0;
                                  j < savedatadryfruit.length;
                                  j++) {
                                if (c2[i] == savedatadryfruit[j]) {
                                  checkdryf1 = checkdryf1 + 1;
                                  details2[c2[i]] = checkdryf1;
                                }
                              }
                              checkdryf1 = 0;
                            }
                            print("detai: $details2");
                            shoppingdryfruits = [c2, sumid2];
                            print("shoppingcaroder: ${shoppingdryfruits}}");
                            print(shoppingdryfruits[0][1]);
                            for (int i = 2;
                                i < savedatadryfruit.length;
                                i += 4) {
                              listimage2.add(savedatadryfruit[i]);
                            }
                            for (int i = 0;
                                i < savedatadryfruit.length;
                                i += 4) {
                              listtitlefr2.add(savedatadryfruit[i]);
                            }
                            for (int i = 1;
                                i < savedatadryfruit.length;
                                i += 4) {
                              listpricefr2.add(savedatadryfruit[i]);
                            }
                            print(" Danh sach anh: $listimage2");
                            print(" Danh sach ten san  pham : $listtitlefr2");
                            print("Danh sach gia ca: $listpricefr2");
                            var move13 = {...listimage2};
                            List litimage2 = move13.toList();
                            listimages2 = litimage2;
                            print("List image: $listimages2");
                            //==================
                            var move23 = {...listtitlefr2};
                            List littitle2 = move23.toList();
                            titlefruit2 = littitle2;
                            print("List image: $titlefruit2");
                            //===============
                            var move33 = {...listpricefr2};
                            List litprice2 = move33.toList();
                            listprice2 = litprice2;
                            print("List image: $listprice2");
                            //print("$check");
                            savedatadryfruit.clear();
                            sumid2 = 0;
                          },
                          child: Text(
                            "Buy Now",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
