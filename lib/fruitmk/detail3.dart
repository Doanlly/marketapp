import 'package:flutter/material.dart';
import 'package:flutter_app/fruitmk/itemcard_mixed.dart';
import 'package:flutter_app/fruitmk/Product_fruit.dart';
import 'package:flutter_app/shopping cart/shopping_cart.dart';

class Detailscreen3 extends StatefulWidget {
  const Detailscreen3({Key? key, required this.melonz}) : super(key: key);

  final Melons melonz;
  @override
  State<Detailscreen3> createState() => _DetailscreenStatez();
}

class _DetailscreenStatez extends State<Detailscreen3> {
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
                      widget.melonz.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 13),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "${widget.melonz.title}",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "${widget.melonz.detail}",
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
                    itemCount: widget.melonz.nutrition.length,
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
                            "${widget.melonz.nutrition[i]}",
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
                          "${widget.melonz.price} Per/ kg",
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

                            setid.add("${widget.melonz.id}");
                            print("${Listitemproduc}");
                            print("setid: ${setid}");
                            for (int i = 0; i < setid.length; i++) {
                              for (int j = 0; j < melonss.length; j++) {
                                if (setid[i] == "${melonss[j].id}") {
                                  savedataproduct.add(melonss[j].title);
                                  savedataproduct.add(melonss[j].price);
                                  savedataproduct.add(melonss[j].image);
                                  savedataproduct.add(melonss[j].phanloai);
                                }
                              }
                            }

                            print("Tat cac san pham: $savedataproduct");
                            //xet truong id cua no

                            var idliste = {...setid};
                            List id = idliste.toList();
                            print("id có trong shopping cart là : $id");

                            for (int i = 0; i < id.length; i++) {
                              for (int j = 0; j < setid.length; j++) {
                                if (id[i] == setid[j]) {
                                  check0 = check0 + 1;
                                  moveid[id[i]] = check0;
                                }
                              }
                              check0 = 0;
                            }
                            print("$moveid");

                            var idd = moveid.keys;
                            for (var i in idd) {
                              var bb = moveid[i];

                              //int b = int.parse(bb);

                              sumid = sumid + bb;
                            }

                            print("Tong s id ${moveid.length}");
                            print("Tổng sản phâm: ${sumid}");

                            //=============================================
                            // var dulieumoi =  savedataproduct;
                            // List tensanphamvuaadd = [];
                            List tensanphamvuaadd = [];
                            var liste = {...savedataproduct};
                            List c = liste.toList();

                            for (int i = 0; i < dulieumoi.length; i += 3) {
                              tensanphamvuaadd.add(dulieumoi[i]);
                            }
                            var tensanphamshppingcart = {...tensanphamvuaadd};
                            List listspcart = tensanphamshppingcart.toList();
                            print("Ten cua san pham $listspcart");

                            print(
                                "Thong so cac san pham trong Shoppingcart: $c");
                            var details = new Map();
                            for (int i = 0; i < c.length; i++) {
                              for (int j = 0; j < savedataproduct.length; j++) {
                                if (c[i] == savedataproduct[j]) {
                                  check = check + 1;
                                  details[c[i]] = check;
                                }
                              }
                              check = 0;
                            }
                            print("detai: $details");
                            shoppingcartoder = [c, sumid];
                            print("shoppingcaroder: ${shoppingcartoder}}");
                            print(shoppingcartoder[0][1]);
                            for (int i = 2;
                                i < savedataproduct.length;
                                i += 4) {
                              listimage.add(savedataproduct[i]);
                            }
                            for (int i = 0;
                                i < savedataproduct.length;
                                i += 4) {
                              listtitlefr.add(savedataproduct[i]);
                            }
                            for (int i = 1;
                                i < savedataproduct.length;
                                i += 4) {
                              listpricefr.add(savedataproduct[i]);
                            }

                            print(" Danh sach anh: $listimage");
                            print(" Danh sach ten san  pham : $listtitlefr");
                            print("Danh sach gia ca: $listpricefr");
                            var move1 = {...listimage};
                            List litimage = move1.toList();
                            listimages = litimage;
                            //print("List image: $litimage");
                            print("List image: $listimages");
                            //==================
                            var move2 = {...listtitlefr};
                            List littitle = move2.toList();
                            titlefruit = littitle;
                            //print("List image: $litimage");
                            print("List image: $titlefruit");
                            //===============
                            var move3 = {...listpricefr};
                            List litprice = move3.toList();
                            listprice = litprice;
                            //print("List image: $litimage");
                            print("List image: $listprice");

                            //print("$check");
                            savedataproduct.clear();
                            sumid = 0;
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
