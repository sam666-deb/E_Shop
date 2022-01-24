import 'package:e_commarce/constants.dart';
import 'package:e_commarce/screens/messages/componetns/chat_input_field.dart';
import 'package:e_commarce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        ChatInputField(),
      ],
    );
  }
}
