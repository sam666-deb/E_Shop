import 'package:e_commarce/screens/cart/cart_screen.dart';
import 'package:e_commarce/screens/chat/chat_screen.dart';
import 'package:e_commarce/screens/details/detail_screen.dart';
import 'package:e_commarce/screens/home/home.dart';
import 'package:e_commarce/screens/login.dart';
import 'package:e_commarce/screens/messages/messages_screen.dart';
import 'package:e_commarce/screens/notification/components/notifacation_page.dart';
import 'package:e_commarce/screens/notification/notification_screen.dart';
import 'package:e_commarce/screens/products/product_screen.dart';
import 'package:e_commarce/screens/profile/profile_screen.dart';
import 'package:flutter/widgets.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  NotificationScreen.routeName: (context) => NotificationScreen(),
  NotifationPage.routeName: (context) => NotifationPage(),
  ProductScreen.routeName: (context) => ProductScreen(),
  ChatScreen.routeName: (context) => ChatScreen(),
  MessagesScreen.routeName: (context) => MessagesScreen(),
};
