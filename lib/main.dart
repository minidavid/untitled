import 'package:flutter/material.dart';

void main()=> MaterialApp(
  home:MyApp()
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
          title: const Text('Real'),
          flexibleSpace: Image.asset('assets/logo.png'),
         ),
    );
  }
}