import 'package:e_commarce/screens/details/componenets/color_dots.dart';
import 'package:e_commarce/screens/details/componenets/product_discription.dart';
import 'package:e_commarce/screens/details/componenets/product_images.dart';
import 'package:e_commarce/screens/details/componenets/top_rounded_container.dart';
import 'package:e_commarce/screens/home/components/default_button.dart';
import 'package:e_commarce/screens/home/models/product.dart';
import 'package:e_commarce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorDots(product: product),
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(40),
                          top: getProportionateScreenWidth(15),
                        ),
                        child: DefaultButton(
                          text: "Add To Cart",
                          press: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}



