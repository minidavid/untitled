import 'package:flutter/material.dart';


class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {

    String name = "Jonathan";
    // double amount = 17298.92;
    // String amountAsString = amount.toStringAsFixed(2);

    String showAmountAsString(double amount){
      String fixedAmount = amount.toStringAsFixed(2);

      List<String> parts = fixedAmount.split('.');
      String integerPart = parts[0];
      String fractionalPart = parts[1];

      RegExp reg = RegExp(r'\B(?=(\d{3})+(?!\d))');
      String formattedInteger = integerPart.replaceAllMapped(reg, (match) => ',');
      String amountAsString = formattedInteger + fractionalPart;

      return amountAsString;
    }


    return Scaffold(
      
      appBar: AppBar(  
        title: Text(name),
      ),
      
      body: Column(
        
        children: [
          const Text("Welcome Back!"),
          const Text("Wallet Balance"),
          Text(showAmountAsString(17453.22)),

        ],

      )


    );
  }
}