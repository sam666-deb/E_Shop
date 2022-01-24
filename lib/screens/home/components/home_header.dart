import 'package:e_commarce/screens/cart/cart_screen.dart';
import 'package:e_commarce/screens/home/components/icon_btn_with_counter.dart';
import 'package:e_commarce/screens/home/components/search_field.dart';
import 'package:e_commarce/screens/notification/notification_screen.dart';
import 'package:e_commarce/size_config.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            press: () => Navigator.pushNamed(context, CartScreen.routeName),
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfItems: 3,
            press: () =>
                Navigator.pushNamed(context, NotificationScreen.routeName),
          ),
        ],
      ),
    );
  }
}
