import 'package:chavez_1_login/screens/about.dart';
import 'package:chavez_1_login/screens/account.dart';
import 'package:chavez_1_login/screens/home.dart';
import 'package:chavez_1_login/screens/login.dart';
import 'package:chavez_1_login/screens/news.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/login', // Set the initial route
    routes: {
      '/login': (context) => LoginScreen(),
      '/home': (context) => HomeScreen(),
      '/news': (context) => NewsScreen(),
      '/about': (context) => About(),
      '/account': (context) => MyAccount(),
    },
  ));
}
