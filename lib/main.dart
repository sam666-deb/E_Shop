import 'package:e_commarce/routes.dart';
import 'package:e_commarce/screens/home/home.dart';
import 'package:e_commarce/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'eShop',
      theme: ThemeData(primarySwatch: Colors.indigo, fontFamily: "Muli"),
      home: LoginScreen(),
      routes: routes,
    );
  }
}
