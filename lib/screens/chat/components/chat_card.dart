import 'package:e_commarce/screens/chat/components/chat.dart';
import 'package:e_commarce/size_config.dart';
import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({
    Key? key,
    required this.press,
    required this.chat,
  }) : super(key: key);
  final Chat chat;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(15),
            vertical: getProportionateScreenWidth(14)),
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage(chat.image),
                ),
                if (chat.isActive)
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 3,
                          )),
                    ),
                  ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      chat.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Opacity(
                      opacity: 0.64,
                      child: Text(
                        chat.lastMessage,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Opacity(
              opacity: 0.64,
              child: Text(chat.time),
            ),
          ],
        ),
      ),
    );
  }
}
