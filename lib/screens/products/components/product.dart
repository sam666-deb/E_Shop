import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product(
      {required this.id,
      required this.title,
      required this.price,
      required this.size,
      required this.description,
      required this.image,
      required this.color});
}

List<Product> product = [
  Product(
      id: 1,
      title: "Travel bag for men",
      price: 350,
      size: 15,
      description:
          "Each one vintage branded large mens toiletry bag logo canvas leather travel toiletry bag for men in one poly bag, then put vintage branded large mens toiletry bag logo canvas leather travel toiletry bag for men in one carton.",
      image: "assets/deals/product 1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Laptop bags for men",
      price: 1620,
      size: 30,
      description:
          "laptop bags travel hiking bags for men with your own logo bagpack sports custom backpack back pack waterproof school backpack",
      image: "assets/deals/product 2.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Printer scanner Cable",
      price: 120,
      size: 3,
      description:
          "Hot Selling Black 1m USB 2.0 Type A to Standard USB B Type Printer scanner Cable",
      image: "assets/deals/product 3.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Sport Jersey T Shirt",
      price: 1250,
      size: 15,
      description:
          "Wholesale hot Custom Fit Dry Sublimated 100%Polyester SportBaseball Jersey T Shirt Cool Pattern Baseball Jersey Design",
      image: "assets/deals/product 4.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 5,
      title: "Big golf umbrella",
      price: 1000,
      size: 6,
      description:
          "Innovative 190T pongee fabric strong never flip over big golf umbrella",
      image: "assets/deals/product 5.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 6,
      title: "LED Bottle",
      price: 120,
      size: 3,
      description: "Led Bottle Sticker,EVA Material Sticker For Bottle",
      image: "assets/deals/product 6.png",
      color: Color(0xFF3D82AE)),
];
