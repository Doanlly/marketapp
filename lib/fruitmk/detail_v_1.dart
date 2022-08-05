import 'package:flutter/material.dart';
import 'package:flutter_app/fruitmk/itemcard_mixed.dart';
import 'package:flutter_app/fruitmk/Product_fruit.dart';
import 'package:flutter_app/shopping cart/shopping_cart.dart';

class DetailscreenV1 extends StatefulWidget {
  const DetailscreenV1({Key? key, required this.organicz}) : super(key: key);

  final Organicvegetables organicz;
  @override
  State<DetailscreenV1> createState() => _DetailscreenStatez();
}

class _DetailscreenStatez extends State<DetailscreenV1> {
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
                      widget.organicz.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 13),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "${widget.organicz.title}",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "${widget.organicz.detail}",
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
                    itemCount: widget.organicz.nutrition.length,
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
                            "${widget.organicz.nutrition[i]}",
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
                          "${widget.organicz.price} Per/ kg",
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

                            setid1.add("${widget.organicz.id}");
                            //print("${Listitemproduc}");
                            print("setid1: ${setid1}");
                            for (int i = 0; i < setid1.length; i++) {
                              for (int j = 0; j < organicvgt.length; j++) {
                                if (setid1[i] == "${organicvgt[j].id}") {
                                  savedatavegatables.add(organicvgt[j].title);
                                  savedatavegatables.add(organicvgt[j].price);
                                  savedatavegatables.add(organicvgt[j].image);
                                  savedatavegatables
                                      .add(organicvgt[j].phanloai);
                                }
                              }
                            }
                            print("Tat cac san pham: $savedatavegatables");
                            //xet truong id cua no
                            var idliste1 = {...setid1};
                            List id1 = idliste1.toList();
                            print("id1 có trong shopping cart là : $id1");
                            for (int i = 0; i < id1.length; i++) {
                              for (int j = 0; j < setid1.length; j++) {
                                if (id1[i] == setid1[j]) {
                                  check1 = check1 + 1;
                                  moveid1[id1[i]] = check1;
                                }
                              }
                              check1 = 0;
                            }
                            print("$moveid1");
                            var idd1 = moveid1.keys;
                            for (var i in idd1) {
                              var bb1 = moveid1[i];
                              sumid1 = sumid1 + bb1;
                            }
                            print("Tong s id ${moveid1.length}");
                            print("Tổng sản phâm: ${sumid1}");
                            List tensanphamvuaadd1 = [];
                            var liste = {...savedatavegatables};
                            List c1 = liste.toList();

                            for (int i = 0; i < dulieumoi1.length; i += 3) {
                              tensanphamvuaadd1.add(dulieumoi1[i]);
                            }
                            var tensanphamshppingcart1 = {...tensanphamvuaadd1};
                            //List listspcart1 = tensanphamshppingcart1.toList();
                            //print("Ten cua san pham $listspcart");
                            print(
                                "Thong so cac san pham trong Shoppingcart: $c1");
                            var details1 = new Map();
                            for (int i = 0; i < c1.length; i++) {
                              for (int j = 0;
                                  j < savedatavegatables.length;
                                  j++) {
                                if (c1[i] == savedatavegatables[j]) {
                                  check2 = check2 + 1;
                                  details1[c1[i]] = check2;
                                }
                              }
                              check2 = 0;
                            }
                            print("detai: $details1");
                            shoppingcartodervegetablees = [c1, sumid1];
                            print(
                                "shoppingcaroder: ${shoppingcartodervegetablees}}");
                            print(shoppingcartodervegetablees[0][1]);
                            for (int i = 2;
                                i < savedatavegatables.length;
                                i += 4) {
                              listimage1.add(savedatavegatables[i]);
                            }
                            for (int i = 0;
                                i < savedatavegatables.length;
                                i += 4) {
                              listtitlefr1.add(savedatavegatables[i]);
                            }
                            for (int i = 1;
                                i < savedatavegatables.length;
                                i += 4) {
                              listpricefr1.add(savedatavegatables[i]);
                            }
                            print(" Danh sach anh: $listimage1");
                            print(" Danh sach ten san  pham : $listtitlefr1");
                            print("Danh sach gia ca: $listpricefr1");
                            var move12 = {...listimage1};
                            List litimage1 = move12.toList();
                            listimages1 = litimage1;
                            print("List image: $listimages1");
                            //==================
                            var move22 = {...listtitlefr1};
                            List littitle1 = move22.toList();
                            titlefruit1 = littitle1;
                            print("List image: $titlefruit1");
                            //===============
                            var move32 = {...listpricefr1};
                            List litprice1 = move32.toList();
                            listprice1 = litprice1;
                            print("List image: $listprice1");
                            //print("$check");
                            savedatavegatables.clear();
                            sumid1 = 0;
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
