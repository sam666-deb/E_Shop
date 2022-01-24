import 'package:e_commarce/screens/notification/components/body.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  static String routeName = "/notification";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
