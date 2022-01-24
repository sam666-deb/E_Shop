import 'package:e_commarce/screens/details/detail_screen.dart';
import 'package:e_commarce/screens/home/components/product_card.dart';
import 'package:e_commarce/screens/home/components/section_title.dart';
import 'package:e_commarce/screens/home/models/product.dart';
import 'package:e_commarce/size_config.dart';
import 'package:flutter/material.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: "Popular Product", press: () {}),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => productCard(
                  product: demoProducts[index],
                  press: () => Navigator.pushNamed(
                    context,
                    DetailsScreen.routeName,
                    arguments:
                        ProductDetailsArguments(product: demoProducts[index]),
                  ),
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}
