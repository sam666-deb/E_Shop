import 'package:e_commarce/screens/chat/components/body.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  static String routeName = "/chatScreen";

  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Messages",
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
