import 'package:flutter/material.dart';
import "package:flutter_app/fruitmk/Product_fruit.dart";
class Product {
  final String image, title; //,description;
  final int price, size, id;
  final Color color;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    //required this.description,
    required this.size,
    required this.color,
  });
}
List<Product> listproduct = [
  Product(
    id: 1,
    title: "Strawberry",
    price:300,
    size: 14,
    image: "assets/images/ic_dautay.jpg",
    //description:dummyText ,
    color: Colors.black,
  ),
  Product(
    id: 1,
    title: "Grapes",
    price:160,
    size: 14,
    image: "assets/images/ic_dautay.jpg",
    //description:dummyText ,
    color: Colors.black,
  ),
  Product(
    id: 1,
    title: "Oranges",
    price:120,
    size: 14,
    image: "assets/images/ic_dautay.jpg",
    //description:dummyText ,
    color: Colors.black,
  ),
  Product(
    id: 1,
    title: "Multi Fruits Pack",
    price: 350,
    size: 14,
    image: "assets/images/ic_dautay.jpg",
    //description:dummyText ,
    color: Colors.black,
  ),
  Product(
    id: 1,
    title: "Paper Fruits Pack",
    price: 230,
    size: 14,
    image: "assets/images/ic_dautay.jpg",
    //description:dummyText ,
    color: Colors.black,
  ),
  Product(
    id: 1,
    title: "Tropicano",
    price:140,
    size: 14,
    image: "assets/images/ic_dautay.jpg",
    //description:dummyText ,
    color: Colors.black,
  ),
];