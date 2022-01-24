import 'package:e_commarce/screens/messages/componetns/body.dart';
import 'package:e_commarce/size_config.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  static String routeName = "/MessageScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/user.png"),
          ),
          SizedBox(
            width: getProportionateScreenWidth(15),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Jenny Wilson",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                "Active 3m ago",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ],
      ),
    );
  }
}
