import 'package:flutter/material.dart';

class Product {
  final String image, title, detail, phanloai; //,description;
  final int price, id, amount;
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
    required final String image,
    title,
    detail,
    phanloai,
    required final int price,
    id,
    amount,
    required final Color color,
    required final List nutrition,
    required final bool check,
  }) {
    return Product(
        title: title,
        image: image,
        phanloai: phanloai,
        //soluongnhan: spc.soluongnhan?? this.soluongnhan,
        price: price,
        color: color,
        nutrition: [],
        amount: amount,
        check: check,
        id: id,
        detail: '');
  }
  //Product.clone(Product productz ) : this(product.check, product.color,product. title,product.nutrition,product.image,product.price,product.amount, product.detail,product.id,product.phanloai);

}

List<Product> listproduct = [
  Product(
    id: 1,
    phanloai: "Fruits",
    title: "Strawberry xin",
    price: 300,
    amount: 10,
    detail: """
Grapes will provide natural nutrients. The  Chemical 
in organic grapes which can be healthier hair and 
skin. It can be improve Your heart health. Protect your body from Cancer.
    """,
    image: "assets/images/ic_dautay.jpg",
    //description:dummyText ,
    color: Colors.black,
    nutrition: [
      "Calories: 35 g",
      "Total fat: 0.22 g",
      "Protein: 0.64 g",
      "Carbohydrates: 7.63 g",
      "Dietary fiber: 1.8 g",
      "Sugars: 5.34 g",
      "Calcium: 12 milligrams (mg)",
      "Iron: 0.28 mg",
      "Magnesium: 11.8 mg",
      "Potassium: 89 mg",
      "Vitamin A: 1 microgram (mcg)",
      "Vitamin C: 56 mg",
      "Vitamin K: 2.1 mcg"
    ],
    check: true,
  ),
  Product(
    id: 2,
    phanloai: "Fruits",
    title: "Grapes",
    price: 160, amount: 10,
    detail: """
Grapes will provide natural nutrients. The  Chemical 
in organic grapes whicdh. Protect your body from Cancer.
    """,
    image: "assets/fruit/nho.jpg",
    //description:dummyText ,
    color: Colors.black,
    nutrition: [
      "Carbohydrates",
      "Sugars",
      "Dietary fiber",
      "Fat",
      "Protein",
      "Thiamine (B1)",
      "Riboflavin (B2)",
      "Niacin (B3)",
      "Pantothenic acid (B5)",
      "Vitamin B6",
      "Folate (B9)",
      "Choline",
      "Vitamin C: 3.2 mg",
      "Vitamin K: 14.6 μg",
      "other substance"
    ],
    check: false,
  ),
  Product(
    id: 3, phanloai: "Fruits",
    title: "Oranges",
    price: 120, amount: 10,
    detail: """
Grvin be healthier hair and 
skin. It can be improve Your heart health. Protect your
body from Cancer.
    """,
    image: "assets/fruit/orange1.jpg",
    //description:dummyText ,
    color: Colors.black,
    nutrition: [
      "Fiber",
      "Potasssium",
      "Iron",
      "Magnesium",
      "Vitamin C",
      "Vitamin K",
      "Zinc",
      "Phosphorous"
    ],
    check: false,
  ),
  Product(
    id: 4, phanloai: "Fruits",
    title: "Logan", amount: 10,
    price: 130,
    detail: """
Grapes will provide natural nutrients. The  Chemical 
in organic grapes which can be healthier hair and 
skin. It can be improve Your heart health. Protect your
body from Cancer.
    """,
    image: "assets/fruit/nhan.jpg",
    //description:dummyText ,
    color: Colors.black,
    nutrition: [
      "Fiber",
      "Potasssium",
      "Iron",
      "Magnesium",
      "Vitamin C",
      "Vitamin K",
      "Zinc",
      "Phosphorous"
    ],
    check: false,
  ),
  Product(
    id: 5, phanloai: "Fruits",
    title: "Mango", amount: 10,
    price: 140,
    detail: """
Grapes will provide natural nutrients. The  Chemical 
in organic grapes which can be healthier hair and 
skin. It can be improve Your heart health. Protect your
body from Cancer.
    """,
    image: "assets/fruit/xoai.jpg",
    //description:dummyText ,
    color: Colors.black,
    nutrition: [
      "Fiber",
      "Potasssium",
      "Iron",
      "Magnesium",
      "Vitamin C",
      "Vitamin K",
      "Zinc",
      "Phosphorous"
    ],
    check: false,
  ),
  Product(
    id: 6, phanloai: "Fruits",
    title: "Jackfruit", amount: 10,
    price: 150,
    detail: """
Grapes will provide natural nutrients. The  Chemical
in organic grapes which can be healthier hair and
skin. It can be improve Your heart health. Protect your
body from Cancer.
    """,
    image: "assets/fruit/mit.jpeg",
    //description:dummyText ,
    color: Colors.black,
    nutrition: [
      "Fiber",
      "Potasssium",
      "Iron",
      "Magnesium",
      "Vitamin C",
      "Vitamin K",
      "Zinc",
      "Phosphorous"
    ],
    check: false,
  ),
  Product(
    id: 7, phanloai: "Fruits",
    title: "Banana", amount: 10,
    price: 160,
    detail: """
Grapes will provide natural nutrients. The  Chemical
in organic grapes which can be healthier hair and
skin. It can be improve Your heart health. Protect your
body from Cancer.
    """,
    image: "assets/fruit/chuoi.jpg",
    //description:dummyText ,
    color: Colors.black,
    nutrition: [
      "Fiber",
      "Potasssium",
      "Iron",
      "Magnesium",
      "Vitamin C",
      "Vitamin K",
      "Zinc",
      "Phosphorous"
    ],
    check: false,
  ),
  Product(
    id: 8, phanloai: "Fruits",
    title: "Litchi fruit", amount: 10,
    price: 170,
    detail: """
Grapes will provide natural nutrients. The  Chemical
in organic grapes which can be healthier hair and
skin. It can be improve Your heart health. Protect your
body from Cancer.
    """,
    image: "assets/fruit/vai.jpg",
    //description:dummyText ,
    color: Colors.black,
    nutrition: [
      "Fiber",
      "Potasssium",
      "Iron",
      "Magnesium",
      "Vitamin C",
      "Vitamin K",
      "Zinc",
      "Phosphorous"
    ],
    check: false,
  ),
  Product(
    id: 9, phanloai: "Fruits",
    title: "Multi  Pack", amount: 10,
    price: 355,
    detail: """
Grapes will provide natural nutrients. The  Chemical
in organic grapes which can be healthier hair and
skin. It can be improve Your heart health. Protect your
body from Cancer.
    """,
    image: "assets/images/ic_dautay.jpg",
    //description:dummyText ,
    color: Colors.black,
    nutrition: [
      "Fiber",
      "Potasssium",
      "Iron",
      "Magnesium",
      "Vitamin C",
      "Vitamin K",
      "Zinc",
      "Phosphorous"
    ],
    check: false,
  ),
  Product(
    id: 10, phanloai: "Fruits",
    price: 234, amount: 10,
    detail: """
Grapes will provide natural nutrients. The  Chemical
in organic grapes which can be healthier hair and
skin. It can be improve Your heart health. Protect your
body from Cancer.
    """,
    title: "Paper Fruits Pack",
    image: "assets/images/ic_dautay.jpg",
    //description:dummyText ,
    color: Colors.black,
    nutrition: [
      "Fiber",
      "Potasssium",
      "Iron",
      "Magnesium",
      "Vitamin C",
      "Vitamin K",
      "Zinc",
      "Phosphorous"
    ],
    check: false,
  ),
  Product(
    id: 11, phanloai: "Fruits", amount: 10,
    title: "Tropicano",
    price: 142,
    detail: """
Grapes will provide natural nutrients. The  Chemical
in organic grapes which can be healthier hair and
skin. It can be improve Your heart health. Protect your
body from Cancer.
    """,
    image: "assets/images/ic_dautay.jpg",
    //description:dummyText ,
    color: Colors.black,
    nutrition: [
      "Fiber",
      "Potasssium",
      "Iron",
      "Magnesium",
      "Vitamin C",
      "Vitamin K",
      "Zinc",
      "Phosphorous"
    ],
    check: false,
  ),
];

class MixedFruits {
  final String image, title, phanloai, detail; //,description;
  final int price, id;
  final Color color;
  final List nutrition;
  MixedFruits({
    required this.phanloai,
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
      id: 11,
      phanloai: "Fruits",
      title: "Mutil  Pack",
      price: 353,
      detail: "14",
      image: "assets/images/fvd/nhieuqua1.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  MixedFruits(
      id: 12,
      phanloai: "Fruits",
      title: "PaperFrpack",
      price: 230,
      detail: "14",
      image: "assets/fruit/papertraicaygiay.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  MixedFruits(
      id: 13,
      phanloai: "Fruits",
      title: "Tropicana",
      price: 140,
      detail: "14",
      image: "assets/images/fvd/nhieuqua2.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  MixedFruits(
      id: 14,
      phanloai: "Fruits",
      title: "Gift ",
      price: 120,
      detail: "14",
      image: "assets/images/fvd/nhieuqua3.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  MixedFruits(
      id: 15,
      phanloai: "Fruits",
      title: "Collect fruits",
      price: 20,
      detail: "14",
      image: "assets/fruit/gihangtraicay.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  MixedFruits(
      id: 16,
      phanloai: "Fruits",
      title: "Multi  Pack",
      price: 30,
      detail: "14",
      image: "assets/fruit/goiquatraicay2.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  MixedFruits(
      id: 17,
      phanloai: "Fruits",
      title: "Paper Pack",
      price: 23,
      detail: "14",
      image: "assets/fruit/giotraicay.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  MixedFruits(
      id: 18,
      phanloai: "Fruits",
      title: "Tropicano",
      price: 14,
      detail: "14",
      image: "assets/fruit/papertraicaygiay.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
];

class StoneFruits {
  final String image, title, detail, phanloai; //,description;
  final int price, id;
  final Color color;
  final List nutrition;
  StoneFruits({
    required this.phanloai,
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

List<StoneFruits> stonefruits = [
  StoneFruits(
      id: 101,
      phanloai: "Fruits",
      title: "Nectarines",
      price: 250,
      detail:
          "The unique, cool taste with Nectarines is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/quadao.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  StoneFruits(
      id: 102,
      phanloai: "Fruits",
      title: "Apricots",
      price: 23,
      detail:
          "The unique, cool taste with Aprocots is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/mo.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  StoneFruits(
      id: 103,
      phanloai: "Fruits",
      title: "Peaches",
      price: 140,
      detail:
          "The unique, cool taste with Peaches is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/fruit/quadao-peaches.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  StoneFruits(
      id: 104,
      phanloai: "Fruits",
      title: "Plums",
      price: 120,
      detail:
          "The unique, cool taste with Plums is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/quamanz.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  StoneFruits(
      id: 105,
      phanloai: "Fruits",
      title: "Cherries",
      price: 12,
      detail:
          "The unique, cool taste with Cherries is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/cherry.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  StoneFruits(
      id: 106,
      phanloai: "Fruits",
      title: "Mangoes",
      price: 350,
      detail:
          "The unique, cool taste with Mango is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/mango.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  StoneFruits(
      id: 107,
      phanloai: "Fruits",
      title: "Lychees",
      price: 40,
      detail:
          "The unique, cool taste with Lychees is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/vai.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  StoneFruits(
      id: 108,
      phanloai: "Fruits",
      title: "Raspberries",
      price: 10,
      detail:
          "The unique, cool taste with Raspberries is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/mamxoi.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  StoneFruits(
    id: 109, phanloai: "Fruits",

    title: "Blackberries",
    price: 1403,
    detail:
        "The unique, cool taste with Blackberries is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
    image: "assets/images/fvd/mamxoiden.jpg",
    //description:dummyText ,
    nutrition: [
      "Calories: 35 g",
      "Total fat: 0.22 g",
      "Protein: 0.64 g",
      "Carbohydrates: 7.63 g",
      "Dietary fiber: 1.8 g",
      "Sugars: 5.34 g",
      "Calcium: 12 milligrams (mg)",
      "Iron: 0.28 mg",
      "Magnesium: 11.8 mg",
      "Potassium: 89 mg",
      "Vitamin A: 1 microgram (mcg)",
      "Vitamin C: 56 mg",
      "Vitamin K: 2.1 mcg"
    ],
    color: Colors.black,
  ),
  StoneFruits(
      id: 1011,
      phanloai: "Fruits",
      title: "Mulberries",
      price: 1402,
      detail:
          "The unique, cool taste with Mulberries is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/dautam.webp",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  StoneFruits(
      id: 1012,
      phanloai: "Fruits",
      title: "Olives",
      price: 1410,
      detail:
          "The unique, cool taste with Olives is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/oliu.webp",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  StoneFruits(
      id: 1013,
      phanloai: "Fruits",
      title: "Coconuts",
      price: 141,
      detail:
          "The unique, cool taste with Coconuts is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/dua.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  StoneFruits(
      id: 1014,
      phanloai: "Fruits",
      title: "red mangos",
      price: 143,
      detail:
          "The unique, cool taste with Coconuts is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/xoaido.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
];

class Melons {
  final String image, title, detail, phanloai; //,description;
  final int price, id;

  final Color color;
  final List nutrition;
  Melons({
    required this.id,
    required this.phanloai,
    required this.image,
    required this.title,
    required this.price,
    //required this.description,
    required this.detail,
    required this.color,
    required this.nutrition,
  });
}

List<Melons> melonss = [
  Melons(
      id: 112,
      phanloai: "Fruits",
      title: "Water melons",
      price: 132,
      detail:
          "Quench your thirst with watermelon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/fruit/melon-duahau.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  Melons(
      id: 113,
      phanloai: "Fruits",
      title: "Melon yellow",
      price: 230,
      detail:
          "Quench your thirst with melon yellow is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/melonduavang.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  Melons(
      id: 114,
      phanloai: "Fruits",
      title: "Pumpkin",
      price: 140,
      detail:
          "Quench your thirst with Pumpkin is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/bingo.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  Melons(
      id: 115,
      phanloai: "Fruits",
      title: "Melon",
      price: 120,
      detail:
          "Quench your thirst with melon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/duavang.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  Melons(
      id: 116,
      phanloai: "Fruits",
      title: "White melons",
      price: 121,
      detail:
          "Quench your thirst with watermelon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/duale.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  Melons(
      id: 117,
      phanloai: "Fruits",
      title: "Frog melon",
      price: 350,
      detail:
          "Quench your thirst with Frog melons is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/duaech.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
];

// Vegetables===============================================

class Organicvegetables {
  final String image, title, detail, phanloai; //,description;
  final int price, id;
    final bool check;
  final Color color;
  final List nutrition;
  Organicvegetables({
    required this.id,
    required this.phanloai,
    required this.image,
    required this.title,
    required this.price,
    //required this.description,
    required this.detail,
    required this.color,
    required this.nutrition,
    required this.check,
  });
}

List<Organicvegetables> organicvgt = [
  Organicvegetables(
      id: 131,
      phanloai: "Vegetables",
      title: "Brocoli",
      price: 250,
      detail:
          "Quench your thirst with watermelon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/caibong.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ],
      check: true,
  ),
  Organicvegetables(
      id: 132,
      phanloai: "Vegetables",
      title: "Purpe carrot",
      price: 230,
      detail:
          "Quench your thirst with melon yellow is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/carottim.jpg",
      //description:dummyText ,
      color: Colors.black,check: false,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  Organicvegetables(
      id: 133,
      phanloai: "Vegetables",
      title: "Corriander",
      price: 140,
      detail:
          "Quench your thirst with Pumpkin is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/raumui.jpg",
      //description:dummyText ,
      color: Colors.black,check: false,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  Organicvegetables(
      id: 134,
      phanloai: "Vegetables",
      title: "Lettuce",
      price: 120,
      detail:
          "Quench your thirst with melon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/duavang.jpg",
      //description:dummyText ,
      color: Colors.black,check: false,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  Organicvegetables(
      id: 135,
      phanloai: "Vegetables",
      title: "Vgt shrinka",
      price: 1210,
      detail:
          "Quench your thirst with watermelon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/raungot.webp",
      //description:dummyText ,
      color: Colors.black,check: false,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  Organicvegetables(
      id: 136,
      phanloai: "Vegetables",
      title: "Pennywort",
      price: 310,
      detail:
          "Quench your thirst with Frog melons is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/rauma.jpg",
      //description:dummyText ,
      color: Colors.black,check: false,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  Organicvegetables(
      id: 137,
      phanloai: "Vegetables",
      title: "Cabbage",
      price: 150,
      detail:
          "Quench your thirst with Frog melons is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/caibap.jpg",
      //description:dummyText ,
      color: Colors.black,check: false,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  Organicvegetables(
      id: 138,
      phanloai: "Vegetables",
      title: "Chinese cabbage",
      price: 351,
      detail:
          "Quench your thirst with Frog melons is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/caithao.jpg",
      //description:dummyText ,
      color: Colors.black,check: false,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  Organicvegetables(
      id: 139,
      phanloai: "Vegetables",
      title: "Tía tô",
      price: 334,
      detail:
          "Quench your thirst with Frog melons is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/latiato.jpg",
      //description:dummyText ,
      color: Colors.black,check: false,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
];

class Mixedvegetables {
  final String image, title, detail, phanloai; //,description;
  final int price, id;

  final Color color;
  final List nutrition;
  Mixedvegetables({
    required this.id,
    required this.phanloai,
    required this.image,
    required this.title,
    required this.price,
    //required this.description,
    required this.detail,
    required this.color,
    required this.nutrition,
  });
}

List<Mixedvegetables> mixedvegt = [
  Mixedvegetables(
      id: 141,
      phanloai: "Vegetables",
      title: "MutilVgt",
      price: 2770,
      detail:
          "Quench your thirst with watermelon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/raucu.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  Mixedvegetables(
      id: 142,
      phanloai: "Vegetables",
      title: "PaperVgt",
      price: 230,
      detail:
          "Quench your thirst with melon yellow is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/raucu2.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  Mixedvegetables(
      id: 143,
      phanloai: "Vegetables",
      title: "Tropicana",
      price: 140,
      detail:
          "Quench your thirst with Pumpkin is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/raucu3.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  Mixedvegetables(
      id: 144,
      phanloai: "Vegetables",
      title: "Lettuce",
      price: 120,
      detail:
          "Quench your thirst with melon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/goiraucu.jpeg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
];

class AlliumVegetables {
  final String image, title, detail, phanloai; //,description;
  final int price, id;
  final Color color;
  final List nutrition;

  AlliumVegetables({
    required this.id,
    required this.phanloai,
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
      id: 151,
      phanloai: "Vegetables",
      title: "Onion",
      price: 20,
      detail: "14",
      image: "assets/images/fvd/hanhtay.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  AlliumVegetables(
      id: 152,
      phanloai: "Vegetables",
      title: "Garlic",
      price: 30,
      detail: "14",
      image: "assets/images/fvd/toi.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  AlliumVegetables(
      id: 153,
      phanloai: "Vegetables",
      title: "Ginger",
      price: 80,
      detail: "14",
      image: "assets/images/fvd/gung.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  AlliumVegetables(
      id: 154,
      phanloai: "Vegetables",
      title: "Black Garlic",
      price: 40,
      detail: "14",
      image: "assets/images/fvd/toiden.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  AlliumVegetables(
      id: 155,
      phanloai: "Vegetables",
      title: "Purse Onion",
      price: 22,
      detail: "14",
      image: "assets/images/fvd/hanhtim.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  AlliumVegetables(
      id: 156,
      phanloai: "Vegetables",
      title: "Turmeric",
      price: 3512,
      detail: "14",
      image: "assets/images/fvd/nghe.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  AlliumVegetables(
      id: 157,
      phanloai: "Vegetables",
      title: "Black gardle",
      price: 232,
      detail: "14",
      image: "assets/images/fvd/toiden.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  AlliumVegetables(
      id: 158,
      phanloai: "Vegetables",
      title: "Tropicano",
      price: 1230,
      detail: "14",
      image: "assets/images/ic_dautay.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
];

class Rootvegetables {
  final String image, title, detail, phanloai; //,description;
  final int price, id;
  final Color color;
  final List nutrition;
  Rootvegetables({
    required this.phanloai,
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
      id: 311,
      phanloai: "Vegetables",
      title: "Carrot",
      price: 700,
      detail: "14",
      image: "assets/images/fvd/carot.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  Rootvegetables(
      id: 312,
      phanloai: "Vegetables",
      title: "Purple carrot",
      price: 800,
      detail: "14",
      image: "assets/images/fvd/carottim.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  Rootvegetables(
      id: 313,
      phanloai: "Vegetables",
      title: "Purple potato",
      price: 400,
      detail: "14",
      image: "assets/fruit/goiquatraicay.jpg",
      //description:dummyText ,

      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  Rootvegetables(
      id: 314,
      phanloai: "Vegetables",
      title: "Potato",
      price: 200,
      detail: "14",
      image: "assets/images/fvd/khoai kang.webp",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  Rootvegetables(
      id: 315,
      phanloai: "Vegetables",
      title: "Grn turmeric",
      price: 3540,
      detail: "14",
      image: "assets/images/ic_dautay.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  Rootvegetables(
      id: 316,
      phanloai: "Vegetables",
      title: "Phite cabage",
      price: 330,
      detail: "14",
      image: "assets/images/fvd/caibap.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  Rootvegetables(
      id: 317,
      phanloai: "Vegetables",
      title: "Cur Cair ",
      price: 430,
      detail: "14",
      image: "assets/images/fvd/cucaitrang.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  Rootvegetables(
      id: 318,
      phanloai: "Vegetables",
      title: "Cu dau",
      price: 670,
      detail: "14",
      image: "assets/images/fvd/cudau.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
];
//=================dryF  ==================

class IndehiscenDryF {
  final String image, title, detail, phanloai; //,description;
  final int price, id;

  final Color color;
  final List nutrition;
  IndehiscenDryF({
    required this.id,
    required this.phanloai,
    required this.image,
    required this.title,
    required this.price,
    //required this.description,
    required this.detail,
    required this.color,
    required this.nutrition,
  });
}

List<IndehiscenDryF> indehisdf = [
  IndehiscenDryF(
      id: 171,
      phanloai: "Vegetables",
      title: "Cashewnuts",
      price: 2500,
      detail:
          "Quench your thirst with Cashewnuts is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/hatdieu.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  IndehiscenDryF(
      id: 172,
      phanloai: "Vegetables",
      title: "Wainuts",
      price: 230,
      detail:
          "Quench your thirst with melon yellow is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/hatocho.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  IndehiscenDryF(
      id: 173,
      phanloai: "Vegetables",
      price: 140,
      detail:
          "Quench your thirst with Pumpkin is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/hatde1.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ],
      title: 'Hatde'),
  IndehiscenDryF(
      id: 174,
      phanloai: "Vegetables",
      title: "Laugh seeds",
      price: 120,
      detail:
          "Quench your thirst with melon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/hatcuoi.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  IndehiscenDryF(
      id: 175,
      phanloai: "Vegetables",
      title: "Kimkho",
      price: 1200,
      detail:
          "Quench your thirst with melon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/mankho.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  IndehiscenDryF(
      id: 176,
      phanloai: "Vegetables",
      title: "Chestnut",
      price: 10,
      detail:
          "Quench your thirst with melon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/hatde1.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
];

class MixeddeyFruits {
  final String image, title, detail, phanloai; //,description;
  final int price, id;

  final Color color;
  final List nutrition;
  MixeddeyFruits({
    required this.id,
    required this.phanloai,
    required this.image,
    required this.title,
    required this.price,
    //required this.description,
    required this.detail,
    required this.color,
    required this.nutrition,
  });
}

List<MixeddeyFruits> mixerdryfruit = [
  MixeddeyFruits(
      id: 181,
      phanloai: "Vegetables",
      title: "Mutil DF",
      price: 2050,
      detail:
          "Quench your thirst with Cashewnuts is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/mixeddry.webp",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  MixeddeyFruits(
      id: 182,
      phanloai: "Vegetables",
      title: "Paper DFs",
      price: 2300,
      detail:
          "Quench your thirst with melon yellow is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/mixeddry1.webp",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  MixeddeyFruits(
      id: 183,
      phanloai: "Vegetables",
      title: "Tropicana",
      price: 1040,
      detail:
          "Quench your thirst with Pumpkin is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/mixedry.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  MixeddeyFruits(
      id: 184,
      phanloai: "Vegetables",
      title: "Fruits Dry",
      price: 1020,
      detail:
          "Quench your thirst with melon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/nhieuhat.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  MixeddeyFruits(
      id: 185,
      phanloai: "Vegetables",
      title: "Kimkho",
      price: 10,
      detail:
          "Quench your thirst with melon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/dotuong.webp",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
];

class DehiscentDryFruits {
  final String image, title, detail, phanloai; //,description;
  final int price, id;
  final Color color;
  final List nutrition;

  DehiscentDryFruits({
    required this.id,
    required this.phanloai,
    required this.image,
    required this.title,
    required this.price,
    //required this.description,
    required this.detail,
    required this.color,
    required this.nutrition,
  });
}

List<DehiscentDryFruits> dehiscentdf = [
  DehiscentDryFruits(
      id: 191,
      phanloai: "Vegetables",
      title: "Almond",
      price: 3907,
      detail:
          "Quench your thirst with Cashewnuts is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/hanhnhan.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  DehiscentDryFruits(
      id: 192,
      phanloai: "Vegetables",
      title: "Anjeeer",
      price: 2307,
      detail:
          "Quench your thirst with melon yellow is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/sungtay.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  DehiscentDryFruits(
      id: 193,
      phanloai: "Vegetables",
      title: "Aam Papao",
      price: 147,
      detail:
          "Quench your thirst with Pumpkin is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/aanpaper.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  DehiscentDryFruits(
      id: 194,
      phanloai: "Vegetables",
      title: "Cashwnuts",
      price: 127,
      detail:
          "Quench your thirst with melon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/hatdieu.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  DehiscentDryFruits(
      id: 195,
      phanloai: "Vegetables",
      title: "Doden",
      price: 17,
      detail:
          "Quench your thirst with melon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/doden.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  DehiscentDryFruits(
      id: 196,
      phanloai: "Vegetables",
      title: "Do Xannh",
      price: 1280,
      detail:
          "Quench your thirst with melon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/doxanh.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
];

class KashmiriDryFruits {
  final String image, title, detail, phanloai; //,description;
  final int price, id;
  final Color color;
  final List nutrition;

  KashmiriDryFruits({
    required this.id,
    required this.phanloai,
    required this.image,
    required this.title,
    required this.price,
    //required this.description,
    required this.detail,
    required this.color,
    required this.nutrition,
  });
}

List<KashmiriDryFruits> kashmiridf = [
  KashmiriDryFruits(
      id: 201,
      phanloai: "Vegetables",
      title: "Dolaz",
      price: 370,
      detail:
          "Quench your thirst with Dolaz is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/dolac.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  KashmiriDryFruits(
      id: 202,
      phanloai: "Vegetables",
      title: "Raisins",
      price: 260,
      detail:
          "Quench your thirst with melon yellow is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/nhokho.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  KashmiriDryFruits(
      id: 203,
      phanloai: "Vegetables",
      title: "Taos Taus",
      price: 150,
      detail:
          "Quench your thirst with Pumpkin is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/taotau.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  KashmiriDryFruits(
      id: 204,
      phanloai: "Vegetables",
      title: "Manja khoo",
      price: 790,
      detail:
          "Quench your thirst with melon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/mankho.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  KashmiriDryFruits(
      id: 205,
      phanloai: "Vegetables",
      title: "Doden",
      price: 60,
      detail:
          "Quench your thirst with melon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/doden.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
  KashmiriDryFruits(
      id: 206,
      phanloai: "Vegetables",
      title: "Do Xannh",
      price: 50,
      detail:
          "Quench your thirst with melon is a perfect choice! Hurry up and order now to taste the cool feeling of love, my friend!",
      image: "assets/images/fvd/doxanh.jpg",
      //description:dummyText ,
      color: Colors.black,
      nutrition: [
        "Calories: 35 g",
        "Total fat: 0.22 g",
        "Protein: 0.64 g",
        "Carbohydrates: 7.63 g",
        "Dietary fiber: 1.8 g",
        "Sugars: 5.34 g",
        "Calcium: 12 milligrams (mg)",
        "Iron: 0.28 mg",
        "Magnesium: 11.8 mg",
        "Potassium: 89 mg",
        "Vitamin A: 1 microgram (mcg)",
        "Vitamin C: 56 mg",
        "Vitamin K: 2.1 mcg"
      ]),
];
List<Product> Listitemproduc = [];
List<MixedFruits> Listitemmixedfruit = [];
List<StoneFruits> Listitemstonefruits = [];
List setid = [];
List setid1 = [];
List setid2 = [];
List setidf = [];
List savedataproduct = [];
List savedatavegatables = [];
List savedatadryfruit = [];
List savedataproductf = [];
List savedatavegatablesf = [];
List savedatadryfruitf = [];
var dulieumoi = savedataproduct;
var dulieumoi1 = savedatavegatables;
var dulieumoi2 = savedatadryfruit;
var dulieumoif = savedataproductf;
var dulieumoi1f = savedatavegatablesf;
var dulieumoi2f = savedatadryfruitf;
List shoppingcartoder = [];
List shoppingcartodervegetablees = [];
List shoppingdryfruits = [];
List shoppingcartoderf = [];
List shoppingcartodervegetableesf = [];
List shoppingdryfruitsf = [];

var moveid = new Map();
var moveid1 = new Map();
var moveid2 = new Map();
var moveidf = new Map();
var moveid1f = new Map();
var moveid2f = new Map();
num sumid = 0;
num sumid1 = 0;
num sumid2 = 0;
num sumidf = 0;
num sumid1f = 0;
num sumid2f = 0;
List listimage = [];
List listtitlefr = [];
List listpricefr = [];
List listimages = [];
List titlefruit = [];
List listprice = [];

List listimage1 = [];
List listtitlefr1 = [];
List listpricefr1 = [];
List listimages1 = [];
List titlefruit1 = [];
List listprice1 = [];

List listimage2 = [];
List listtitlefr2 = [];
List listpricefr2 = [];
List listimages2 = [];
List titlefruit2 = [];
List listprice2 = [];

List listimagef = [];
List listtitlefrf = [];
List listpricefrf = [];
List listimagesf = [];
List titlefruitf = [];
List listpricef = [];
bool checkfavorrite = true;