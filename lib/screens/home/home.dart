import 'package:e_commarce/components/coustom_bottom_nav_bar.dart';
import 'package:e_commarce/enums.dart';
import 'package:e_commarce/screens/home/components/body.dart';
import 'package:e_commarce/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
