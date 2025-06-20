import 'package:finance_app/pages/3.%20MainPage.dart';
import 'package:flutter/material.dart';
import 'package:finance_app/pages/1.%20welcomescreen.dart';
import 'package:finance_app/pages/2.%20loginscreen.dart';

void main(){
  runApp(
   MaterialApp(
    title: 'Savings App',
    initialRoute: '/',

    routes: {
      '/': (context) => const MyApp(),
      '/second':(context) => const Login(),
      '/third':(context) => const MainPage(),
    },

   )
  );
}