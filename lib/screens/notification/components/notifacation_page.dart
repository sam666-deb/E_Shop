import 'package:e_commarce/constants.dart';
import 'package:e_commarce/size_config.dart';
import 'package:flutter/material.dart';

class NotifationPage extends StatelessWidget {
  const NotifationPage({Key? key}) : super(key: key);
  static String routeName = "/notificationpage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(getProportionateScreenWidth(12)),
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: kSecondaryColor,
              blurRadius: 2.0,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Lorem ipsum dolor.",
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Image(
              image: AssetImage("assets/logo2.png"),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Lorem ipsum dolor sit amet consectetur adipiscing elit, dictumst netus potenti fringilla leo interdum hac accumsan, rutrum diam aliquet platea ultrices dapibus. Pulvinar viverra lectus facilisi dictum odio ligula nullam nec aenean, iaculis aliquam suspendisse leo primis consequat nulla venenatis, nascetur blandit sapien facilisis a tellus porta scelerisque.",
              style: TextStyle(
                color: kTextColor,
                fontSize: 16,
                // fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "16/Jan/2022  03:22 PM",
                style: TextStyle(
                  color: kTextColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
