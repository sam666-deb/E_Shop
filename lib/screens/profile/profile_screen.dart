import 'package:e_commarce/components/coustom_bottom_nav_bar.dart';
import 'package:e_commarce/enums.dart';
import 'package:e_commarce/screens/profile/components/body.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
