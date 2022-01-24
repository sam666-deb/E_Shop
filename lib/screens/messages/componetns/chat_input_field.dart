import 'package:e_commarce/constants.dart';
import 'package:e_commarce/size_config.dart';
import 'package:flutter/material.dart';

class ChatInputField extends StatelessWidget {
  const ChatInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(15),
        vertical: getProportionateScreenWidth(15) / 2,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 32,
            color: Colors.indigo,
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            Icon(
              Icons.mic,
              color: kPrimaryColor,
            ),
            SizedBox(
              width: getProportionateScreenWidth(15),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenHeight(15) * 0.75),
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.sentiment_satisfied_alt_outlined,
                      color: kTextColor.withOpacity(0.64),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(15) / 4,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Type message",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.attach_file,
                      color: kTextColor.withOpacity(0.64),
                    ),
                    Icon(
                      Icons.camera_alt_outlined,
                      color: kTextColor.withOpacity(0.64),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
