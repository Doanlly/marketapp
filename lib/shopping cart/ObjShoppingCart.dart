import 'package:flutter/material.dart';
import 'package:flutter_app/fruitmk/Product_fruit.dart';
class Shoppingcartobj {
  late final String title,phanloai,images;

  late final int soluongnhan,price;
  Shoppingcartobj({
    required this.title,
    required this.images,
    //required this.sale,
    required this.phanloai,
    required this.soluongnhan,
    required this.price,

});
  //Shoppingcartobj.clone(Shoppingcartobj spcobj ) : this(spcobj.title,spcobj.images,spcobj.phanloai,spcobj.price,spcobj.soluongnhan);
  // Shoppingcartobj copyWith(Shoppingcartobj spc)
  // {
  //   return Shoppingcartobj(
  //       title: spc.title ?? this.title,
  //       images: spc.images?? this.images,
  //       phanloai: spc.phanloai?? this.phanloai,
  //       soluongnhan: spc.soluongnhan?? this.soluongnhan,
  //       price: spc.price?? this.price);
  // }

}
var listshc;
