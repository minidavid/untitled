import 'package:flutter/material.dart';


class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {

    String name = "Jonathan";
    double amount = 17298.92;
    String amountAsString = amount.toStringAsFixed(2);

    return Scaffold(
      
      appBar: AppBar(  
        title: Text(name),
      ),
      
      body: Column(
        
        children: [
          const Text("Welcome Back!"),
          const Text("Wallet Balance"),
          Text("\$$amountAsString"),

        ],

      )


    );
  }
}