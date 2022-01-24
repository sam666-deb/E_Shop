import 'package:e_commarce/screens/chat/components/chat.dart';
import 'package:e_commarce/screens/chat/components/chat_card.dart';
import 'package:e_commarce/screens/messages/messages_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chatsData[index],
              press: () {
                Navigator.pushNamed(context, MessagesScreen.routeName);
              },
            ),
          ),
        ),
      ],
    );
  }
}
