import 'package:e_commarce/screens/products/components/body.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  static String routeName = "/productscreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flash Deals"),
        // centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Body(),
    );
  }
}
