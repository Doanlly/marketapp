import 'package:flutter/material.dart';
class Product {
  final String image, title,detail,phanloai; //,description;
  final int price, id,amount;
  final Color color;
  final List nutrition;
  final bool check;
  Product({
    required this.phanloai,
    required this.id,
    required this.amount,
    required this.image,
    required this.title,
    required this.price,
    //required this.description,
    required this.detail,
    required this.color,
    required this.nutrition,
  required this.check,
  });
  Product copyWith({
    required final String image, title,detail,phanloai,
    required final int price, id,amount,
    required final Color color,
    required  final List nutrition,
    required final bool check,
})
  {
    return Product(
        title: title,
        image:image,
        phanloai: phanloai,
        //soluongnhan: spc.soluongnhan?? this.soluongnhan,
        price: price,
        color:color,
        nutrition: [],
        amount: amount,
        check: check,
        id: id,
        detail:'');
  }
  //Product.clone(Product productz ) : this(product.check, product.color,product. title,product.nutrition,product.image,product.price,product.amount, product.detail,product.id,product.phanloai);

}
List<Product> listproduct = [
  Product(
    id: 1,
    phanloai: "Vegetables",
    title: "Strawberry",
    price:300,
    amount: 10,
    detail: """
Grapes will provide natural nutrients. The  Chemical 
in organic grapes which can be healthier hair and 
skin. It can be improve Your heart health. Protect your body from Cancer.
    """,
    image: "assets/images/ic_dautay.jpg",
    //description:dummyText ,
    color: Colors.black,
    nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"],
    check: false,
  ),
  Product(
    id: 2,
    phanloai: "Vegetables",
    title: "Grapes",
    price:160,amount: 10,
    detail: """
Grapes will provide natural nutrients. The  Chemical 
in organic grapes whicdh. Protect your body from Cancer.
    """,
    image: "assets/fruit/nho.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Carbohydrates","Sugars","Dietary fiber","Fat","Protein","Thiamine (B1)","Riboflavin (B2)","Niacin (B3)","Pantothenic acid (B5)","Vitamin B6","Folate (B9)","Choline","Vitamin C: 3.2 mg","Vitamin K: 14.6 μg","other substance"],
    check: false,
  ),
  Product(
    id: 3,phanloai: "Vegetables",
    title: "Oranges",
    price:120,amount: 10,
    detail: """
Grvin be healthier hair and 
skin. It can be improve Your heart health. Protect your
body from Cancer.
    """,
    image: "assets/fruit/orange1.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Fiber","Potasssium","Iron","Magnesium","Vitamin C","Vitamin K","Zinc","Phosphorous"]
    ,check: false,
  ),
  Product(
    id: 4,phanloai: "Vegetables",
    title: "Logan",amount: 10,
    price:120,
    detail: """
Grapes will provide natural nutrients. The  Chemical 
in organic grapes which can be healthier hair and 
skin. It can be improve Your heart health. Protect your
body from Cancer.
    """,
    image: "assets/fruit/nhan.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Fiber","Potasssium","Iron","Magnesium","Vitamin C","Vitamin K","Zinc","Phosphorous"]
    ,check: false,
  ),
  Product(
    id: 5,phanloai: "Vegetables",
    title: "Mango",amount: 10,
    price:120,
    detail: """
Grapes will provide natural nutrients. The  Chemical 
in organic grapes which can be healthier hair and 
skin. It can be improve Your heart health. Protect your
body from Cancer.
    """,
    image: "assets/fruit/xoai.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Fiber","Potasssium","Iron","Magnesium","Vitamin C","Vitamin K","Zinc","Phosphorous"]
    ,check: false,
  ),
//   Product(
//     id: 1,
//     title: "Jackfruit",
//     price:120,
//     detail: """
// Grapes will provide natural nutrients. The  Chemical
// in organic grapes which can be healthier hair and
// skin. It can be improve Your heart health. Protect your
// body from Cancer.
//     """,
//     image: "assets/fruit/mit.jpeg",
//     //description:dummyText ,
//     color: Colors.black,
//       nutrition: ["Fiber","Potasssium","Iron","Magnesium","Vitamin C","Vitamin K","Zinc","Phosphorous"]
//
//   ),
//   Product(
//     id: 1,
//     title: "Banana",
//     price:120,
//     detail: """
// Grapes will provide natural nutrients. The  Chemical
// in organic grapes which can be healthier hair and
// skin. It can be improve Your heart health. Protect your
// body from Cancer.
//     """,
//     image: "assets/fruit/chuoi.jpg",
//     //description:dummyText ,
//     color: Colors.black,
//       nutrition: ["Fiber","Potasssium","Iron","Magnesium","Vitamin C","Vitamin K","Zinc","Phosphorous"]
//   ),
//   Product(
//     id: 1,
//     title: "Litchi fruit",
//     price:120,
//     detail: """
// Grapes will provide natural nutrients. The  Chemical
// in organic grapes which can be healthier hair and
// skin. It can be improve Your heart health. Protect your
// body from Cancer.
//     """,
//     image: "assets/fruit/vai.jpg",
//     //description:dummyText ,
//     color: Colors.black,
//       nutrition: ["Fiber","Potasssium","Iron","Magnesium","Vitamin C","Vitamin K","Zinc","Phosphorous"]
//   ),
//   Product(
//     id: 1,
//     title: "Multi Fruits Pack",
//     price: 350,
//     detail: """
// Grapes will provide natural nutrients. The  Chemical
// in organic grapes which can be healthier hair and
// skin. It can be improve Your heart health. Protect your
// body from Cancer.
//     """,
//     image: "assets/images/ic_dautay.jpg",
//     //description:dummyText ,
//     color: Colors.black,
//       nutrition: ["Fiber","Potasssium","Iron","Magnesium","Vitamin C","Vitamin K","Zinc","Phosphorous"]
//   ),
//   Product(
//     id: 1,
//     price: 230,
//     detail: """
// Grapes will provide natural nutrients. The  Chemical
// in organic grapes which can be healthier hair and
// skin. It can be improve Your heart health. Protect your
// body from Cancer.
//     """,
//     title: "Paper Fruits Pack",
//     image: "assets/images/ic_dautay.jpg",
//     //description:dummyText ,
//     color: Colors.black,
//       nutrition: ["Fiber","Potasssium","Iron","Magnesium","Vitamin C","Vitamin K","Zinc","Phosphorous"]
//   ),
//   Product(
//     id: 1,
//     title: "Tropicano",
//     price:140,
//     detail: """
// Grapes will provide natural nutrients. The  Chemical
// in organic grapes which can be healthier hair and
// skin. It can be improve Your heart health. Protect your
// body from Cancer.
//     """,
//     image: "assets/images/ic_dautay.jpg",
//     //description:dummyText ,
//     color: Colors.black,
//       nutrition: ["Fiber","Potasssium","Iron","Magnesium","Vitamin C","Vitamin K","Zinc","Phosphorous"]
//   ),
];
class MixedFruits{
  final String image, title; //,description;
  final int price, detail, id;
  final Color color;
  final List nutrition;
  MixedFruits({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    //required this.description,
    required this.detail,
    required this.color,
    required this.nutrition,
  });
}

List<MixedFruits> mfruits = [
  MixedFruits(
    id: 1,
    title: "Mutil Fruits Pack",
    price:350,
    detail: 14,
    image: "assets/images/fvd/nhieuqua1.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  MixedFruits(
    id: 1,
    title: "Paper Fruits pack",
    price:230,
    detail: 14,
    image: "assets/fruit/papertraicaygiay.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  MixedFruits(
    id: 1,
    title: "Tropicana",
    price:140,
    detail: 14,
    image: "assets/images/fvd/nhieuqua2.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  MixedFruits(
    id: 1,
    title: "Gift expensive and good",
    price:120,
    detail: 14,
    image: "assets/images/fvd/nhieuqua3.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  MixedFruits(
    id: 1,
    title: "Collection fruits",
    price:120,
    detail: 14,
    image: "assets/fruit/gihangtraicay.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  MixedFruits(
    id: 1,
    title: "Multi Fruits Pack",
    price: 350,
    detail: 14,
    image: "assets/fruit/goiquatraicay2.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  MixedFruits(
    id: 1,
    title: "Paper Fruits Pack",
    price: 230,
    detail: 14,
    image: "assets/fruit/giotraicay.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  MixedFruits(
    id: 1,
    title: "Tropicano",
    price:140,
    detail: 14,
    image: "assets/fruit/papertraicaygiay.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
];

class StoneFruits{
  final String image, title,detail; //,description;
  final int price, id;
  final Color color;
  final List nutrition;
  StoneFruits({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    //required this.description,
    required this.detail,
    required this.color, required this.nutrition,
  });
}

List<StoneFruits> stonefruits = [
  StoneFruits(
    id: 1,
    title: "Nectarines",
    price:250,
    detail: "The unique, cool taste with Nectarines is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
    image: "assets/images/fvd/quadao.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  StoneFruits(
    id: 1,
    title: "Apricots",
    price:230,
      detail: "The unique, cool taste with Aprocots is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
    image: "assets/images/fvd/mo.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  StoneFruits(
    id: 1,
    title: "Peaches",
    price:140,
      detail: "The unique, cool taste with Peaches is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
    image: "assets/fruit/quadao-peaches.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  StoneFruits(
    id: 1,
    title: "Plums",
    price:120,
      detail: "The unique, cool taste with Plums is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
    image: "assets/images/fvd/quamanz.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  StoneFruits(
    id: 1,
    title: "Cherries",
    price:120,
      detail: "The unique, cool taste with Cherries is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
    image: "assets/images/fvd/cherry.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  StoneFruits(
    id: 1,
    title: "Mangoes",
    price: 350,
      detail: "The unique, cool taste with Mango is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
    image: "assets/images/fvd/mango.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),

  StoneFruits (
    id: 1,
    title: "Lychees",
    price:140,
      detail: "The unique, cool taste with Lychees is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
    image: "assets/images/fvd/vai.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  StoneFruits (
    id: 1,
    title: "Raspberries",
    price:140,
      detail: "The unique, cool taste with Raspberries is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
    image: "assets/images/fvd/mamxoi.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  StoneFruits (
    id: 1,
    title: "Blackberries",
    price:140,
    detail: "The unique, cool taste with Blackberries is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
    image: "assets/images/fvd/mamxoiden.jpg",
    //description:dummyText ,
    nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"],
    color: Colors.black,
  ),
  StoneFruits (
    id: 1,
    title: "Mulberries",
    price:140,
      detail: "The unique, cool taste with Mulberries is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
    image: "assets/images/fvd/dautam.webp",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  StoneFruits (
    id: 1,
    title: "Olives",
    price:140,
      detail: "The unique, cool taste with Olives is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
    image: "assets/images/fvd/oliu.webp",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  StoneFruits (
    id: 1,
    title: "Coconuts",
    price:140,
      detail: "The unique, cool taste with Coconuts is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
    image: "assets/images/fvd/dua.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  StoneFruits (
    id: 1,
    title: "red mangos",
    price:140,
      detail: "The unique, cool taste with Coconuts is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
    image: "assets/images/fvd/xoaido.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),

];


class Melons{
  final String image, title,detail; //,description;
  final int price,  id;

  final Color color;
  final List nutrition;
  Melons({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    //required this.description,
    required this.detail,
    required this.color, required this.nutrition,
  });
}

List<Melons> melonss = [
  Melons(
      id: 1,
      title: "Water melons",
      price:250,
      detail:"Quench your thirst with watermelon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/fruit/melon-duahau.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  Melons(
      id: 1,
      title: "Melons yellow",
      price:230,
      detail:"Quench your thirst with melon yellow is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/melonduavang.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  Melons(
      id: 1,
      title: "Pumpkin",
      price:140,
      detail:"Quench your thirst with Pumpkin is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/bingo.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  Melons(
      id: 1,
      title: "Melon",
      price:120,
      detail:"Quench your thirst with melon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/duavang.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  Melons(
      id: 1,
      title: "White melons",
      price:120,
      detail:"Quench your thirst with watermelon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/duale.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  Melons(
      id: 1,
      title: "Frog melons",
      price: 350,
      detail:"Quench your thirst with Frog melons is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/duaech.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),


];

// Vegetables===============================================


class Organicvegetables{
  final String image, title,detail; //,description;
  final int price,  id;

  final Color color;
  final List nutrition;
  Organicvegetables({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    //required this.description,
    required this.detail,
    required this.color, required this.nutrition,
  });
}

List<Organicvegetables> organicvgt = [
  Organicvegetables(
      id: 1,
      title: "Brocoli",
      price:250,
      detail:"Quench your thirst with watermelon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/caibong.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  Organicvegetables(
      id: 1,
      title: "Purpe carrots",
      price:230,
      detail:"Quench your thirst with melon yellow is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/carottim.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  Organicvegetables(
      id: 1,
      title: "Corriander",
      price:140,
      detail:"Quench your thirst with Pumpkin is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/raumui.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  Organicvegetables(
      id: 1,
      title: "Lettuce",
      price:120,
      detail:"Quench your thirst with melon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/duavang.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  Organicvegetables(
      id: 1,
      title: "Vegetables shrinkage",
      price:120,
      detail:"Quench your thirst with watermelon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/raungot.webp",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  Organicvegetables(
      id: 1,
      title: "Pennywort",
      price: 350,
      detail:"Quench your thirst with Frog melons is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/rauma.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  Organicvegetables(
      id: 1,
      title: "Cabbage",
      price: 350,
      detail:"Quench your thirst with Frog melons is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/caibap.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  Organicvegetables(
      id: 1,
      title: "Chinese cabbage",
      price: 350,
      detail:"Quench your thirst with Frog melons is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/caithao.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  Organicvegetables(
      id: 1,
      title: "Tía tô",
      price: 350,
      detail:"Quench your thirst with Frog melons is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/latiato.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),


];
class Mixedvegetables{
  final String image, title,detail; //,description;
  final int price,  id;

  final Color color;
  final List nutrition;
  Mixedvegetables ({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    //required this.description,
    required this.detail,
    required this.color, required this.nutrition,
  });
}

List<Mixedvegetables>mixedvegt = [
  Mixedvegetables(
      id: 1,
      title: "Mutil Vegetables",
      price:250,
      detail:"Quench your thirst with watermelon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/raucu.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  Mixedvegetables(
      id: 1,
      title: "Paper Vegetables",
      price:230,
      detail:"Quench your thirst with melon yellow is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/raucu2.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  Mixedvegetables(
      id: 1,
      title: "Tropicana",
      price:140,
      detail:"Quench your thirst with Pumpkin is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/raucu3.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  Mixedvegetables(
      id: 1,
      title: "Lettuce",
      price:120,
      detail:"Quench your thirst with melon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/goiraucu.jpeg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),



];

class AlliumVegetables{
  final String image, title,detail; //,description;
  final int price, id;
  final Color color;
  final List nutrition;

  AlliumVegetables({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    //required this.description,
    required this.detail,
    required this.color,
    required this.nutrition,
  });
}

List<AlliumVegetables> alliumvgt = [
  AlliumVegetables(
    id: 1,
    title: "Onion",
    price:20,
    detail: "14",
    image: "assets/images/fvd/hanhtay.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  AlliumVegetables(
    id: 1,
    title: "Garlic",
    price:30,
    detail: "14",
    image: "assets/images/fvd/toi.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  AlliumVegetables(
    id: 1,
    title: "Ginger",
    price:80,
    detail: "14",
    image: "assets/images/fvd/gung.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  AlliumVegetables(
    id: 1,
    title: "Black Garlic",
    price:40,
    detail: "14",
    image: "assets/images/fvd/toiden.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  AlliumVegetables(
    id: 1,
    title: "Purse Onion",
    price:20,
    detail: "14",
    image: "assets/images/fvd/hanhtim.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  AlliumVegetables(
    id: 1,
    title: "Turmeric",
    price: 350,
    detail: "14",
    image: "assets/images/fvd/nghe.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  AlliumVegetables(
    id: 1,
    title: "Black gardle",
    price: 230,
    detail: "14",
    image: "assets/images/fvd/toiden.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  AlliumVegetables(
    id: 1,
    title: "Tropicano",
    price:140,
    detail: "14",
    image: "assets/images/ic_dautay.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
];

class Rootvegetables{
  final String image, title; //,description;
  final int price, detail, id;
  final Color color;
  final List nutrition;
  Rootvegetables({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    //required this.description,
    required this.detail,
    required this.color,
    required this.nutrition,
  });
}

List<Rootvegetables> rootvegetables = [
  Rootvegetables(
    id: 1,
    title: "Carrot",
    price:20,
    detail: 14,
    image: "assets/images/fvd/carot.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),

  Rootvegetables(
    id: 1,
    title: "Purple carrot",
    price:80,
    detail: 14,
    image: "assets/images/fvd/carottim.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  Rootvegetables(
    id: 1,
    title: "Purple potato",
    price:40,
    detail: 14,
    image: "assets/fruit/goiquatraicay.jpg",
    //description:dummyText ,

    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  Rootvegetables(
    id: 1,
    title: "Potato",
    price:20,
    detail: 14,
    image: "assets/images/fvd/khoai kang.webp",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  Rootvegetables(
    id: 1,
    title: "Green turmeric",
    price: 350,
    detail: 14,
    image: "assets/images/ic_dautay.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  Rootvegetables(
    id: 1,
    title: "Phite cabbage",
    price:30,
    detail: 14,
    image: "assets/images/fvd/caibap.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  Rootvegetables(
    id: 1,
    title: "Cur Cair TRangz",
    price: 230,
    detail: 14,
    image: "assets/images/fvd/cucaitrang.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  Rootvegetables(
    id: 1,
    title: "Cu dau",
    price:140,
    detail: 14,
    image: "assets/images/fvd/cudau.jpg",
    //description:dummyText ,
    color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
];
//=================dryF  ==================

class IndehiscenDryF{
  final String image, title,detail; //,description;
  final int price,  id;

  final Color color;
  final List nutrition;
  IndehiscenDryF ({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    //required this.description,
    required this.detail,
    required this.color, required this.nutrition,
  });
}

List<IndehiscenDryF>indehisdf = [
  IndehiscenDryF(
      id: 1,
      title: "Cashewnuts",
      price:250,
      detail:"Quench your thirst with Cashewnuts is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/hatdieu.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  IndehiscenDryF(
      id: 1,
      title: "Wainuts",
      price:230,
      detail:"Quench your thirst with melon yellow is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/hatocho.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  IndehiscenDryF(
      id: 1,
      title: "Laungseedz",
      price:140,
      detail:"Quench your thirst with Pumpkin is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/hatde1.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  IndehiscenDryF(
      id: 1,
      title: "Laugh seeds",
      price:120,
      detail:"Quench your thirst with melon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/hatcuoi.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  IndehiscenDryF(
      id: 1,
      title: "Kimkho",
      price:120,
      detail:"Quench your thirst with melon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/mankho.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  IndehiscenDryF(
      id: 1,
      title: "Chestnut",
      price:120,
      detail:"Quench your thirst with melon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/hatde1.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),



];
class MixeddeyFruits{
  final String image, title,detail; //,description;
  final int price,  id;

  final Color color;
  final List nutrition;
  MixeddeyFruits ({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    //required this.description,
    required this.detail,
    required this.color, required this.nutrition,
  });
}

List<MixeddeyFruits> mixerdryfruit = [
  MixeddeyFruits(
      id: 1,
      title: "Mutil Dry Fruits",
      price:250,
      detail:"Quench your thirst with Cashewnuts is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/mixeddry.webp",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  MixeddeyFruits(
      id: 1,
      title: "Paper Dry Fruits",
      price:230,
      detail:"Quench your thirst with melon yellow is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/mixeddry1.webp",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  MixeddeyFruits(
      id: 1,
      title: "Tropicana",
      price:140,
      detail:"Quench your thirst with Pumpkin is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/mixedry.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  MixeddeyFruits(
      id: 1,
      title: "Very Fruits Dry",
      price:120,
      detail:"Quench your thirst with melon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/nhieuhat.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  MixeddeyFruits(
      id: 1,
      title: "Kimkho",
      price:120,
      detail:"Quench your thirst with melon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/dotuong.webp",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
];

class DehiscentDryFruits{
  final String image, title,detail; //,description;
  final int price,  id;
  final Color color;
  final List nutrition;

  DehiscentDryFruits ({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    //required this.description,
    required this.detail,
    required this.color, required this.nutrition,
  });
}

List<DehiscentDryFruits> dehiscentdf = [
  DehiscentDryFruits(
      id: 1,
      title: "Almond",
      price:390,
      detail:"Quench your thirst with Cashewnuts is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/hanhnhan.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  DehiscentDryFruits(
      id: 1,
      title: "Anjeeer",
      price:230,
      detail:"Quench your thirst with melon yellow is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/sungtay.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  DehiscentDryFruits(
      id: 1,
      title: "Aam Papao",
      price:140,
      detail:"Quench your thirst with Pumpkin is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/aanpaper.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  DehiscentDryFruits(
      id: 1,
      title: "Cashwnuts",
      price:120,
      detail:"Quench your thirst with melon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/hatdieu.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  DehiscentDryFruits(
      id: 1,
      title: "Doden",
      price:120,
      detail:"Quench your thirst with melon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/doden.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  DehiscentDryFruits(
      id: 1,
      title: "Do Xannh",
      price:120,
      detail:"Quench your thirst with melon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/doxanh.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
];

class KashmiriDryFruits{
  final String image, title,detail; //,description;
  final int price,  id;
  final Color color;
  final List nutrition;

  KashmiriDryFruits ({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    //required this.description,
    required this.detail,
    required this.color, required this.nutrition,
  });
}

List<KashmiriDryFruits> kashmiridf = [
  KashmiriDryFruits(
      id: 1,
      title: "Dolaz",
      price:390,
      detail:"Quench your thirst with Dolaz is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/dolac.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  KashmiriDryFruits(
      id: 1,
      title: "Raisins",
      price:230,
      detail:"Quench your thirst with melon yellow is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/nhokho.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  KashmiriDryFruits(
      id: 1,
      title: "Taos Taus",
      price:140,
      detail:"Quench your thirst with Pumpkin is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/taotau.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  KashmiriDryFruits(
      id: 1,
      title: "Manja khoo",
      price:120,
      detail:"Quench your thirst with melon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/mankho.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  KashmiriDryFruits(
      id: 1,
      title: "Doden",
      price:120,
      detail:"Quench your thirst with melon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/doden.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
  KashmiriDryFruits(
      id: 1,
      title: "Do Xannh",
      price:120,
      detail:"Quench your thirst with melon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/doxanh.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: ["Calories: 35 g","Total fat: 0.22 g","Protein: 0.64 g","Carbohydrates: 7.63 g","Dietary fiber: 1.8 g","Sugars: 5.34 g","Calcium: 12 milligrams (mg)","Iron: 0.28 mg","Magnesium: 11.8 mg","Potassium: 89 mg","Vitamin A: 1 microgram (mcg)","Vitamin C: 56 mg","Vitamin K: 2.1 mcg"]
  ),
];
List<Product> Listitemproduc = [];
List<MixedFruits> Listitemmixedfruit = [];
List<StoneFruits> Listitemstonefruits = [];
List setid = [];
List savedataproduct = [];
var dulieumoi =  savedataproduct;
List shoppingcartoder = [];
var moveid = new Map();
int sumid = 0;
int tongsanpham = 0;

