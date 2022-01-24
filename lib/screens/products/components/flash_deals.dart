import 'package:e_commarce/constants.dart';
import 'package:e_commarce/screens/products/components/product.dart';
import 'package:e_commarce/size_config.dart';
import 'package:flutter/material.dart';

class FlashDeals extends StatelessWidget {
  const FlashDeals({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(
        child: GridView.builder(
          itemCount: product.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            mainAxisSpacing: getProportionateScreenWidth(9),
          ),
          itemBuilder: (context, index) => ItemCard(
            product: product[index],
            press: () {},
          ),
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.all(getProportionateScreenWidth(7)),
              padding: EdgeInsets.all(getProportionateScreenWidth(16)),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(
                product.image,
                height: getProportionateScreenWidth(150),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(getProportionateScreenWidth(3)),
            child: Center(
              child: Text(
                product.title,
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              "৳ ${product.price}",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
