import 'package:e_commarce/constants.dart';
import 'package:flutter/material.dart';

class NotificationTiles extends StatelessWidget {
  const NotificationTiles({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.press,
    required this.enable,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final GestureTapCallback press;
  final bool enable;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black87,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(color: kTextColor),
      ),
      onTap: press,
      enabled: enable,
    );
  }
}
