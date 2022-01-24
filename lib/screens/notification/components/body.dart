import 'package:e_commarce/screens/notification/components/notifacation_page.dart';
import 'package:e_commarce/screens/notification/components/notification_tiles.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: ClampingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 3,
      itemBuilder: (context, index) {
        return NotificationTiles(
          title: "Thank You",
          subtitle: "To download our app",
          press: () {
            Navigator.pushNamed(context, NotifationPage.routeName);
          },
          enable: true,
        );
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
    );
  }
}
