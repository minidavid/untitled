import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    
    //----show Amount function with com
    String showAmountAsString(double amount){
      String fixedAmount = amount.toStringAsFixed(2);

      List<String> parts = fixedAmount.split('.');
      String integerPart = parts[0];
      String fractionalPart = parts[1];

      RegExp reg = RegExp(r'\B(?=(\d{3})+(?!\d))');
      String formattedInteger = integerPart.replaceAllMapped(reg, (match) => ',');
      String amountAsString = "$formattedInteger . $fractionalPart";

      return amountAsString;
    }


    
    return Scaffold(
      
      body: Column(

        children: [
          const Text("Welcome Back!"),
          const Text("Wallet Balance"),
          Text("\$ ${showAmountAsString(17453.22)}"),

          Row(
            children: [
              const Text("Cards"),
              Container(

                width: 40,
                height: 40,

                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                      border: Border.all(color: Colors.black),
                    ),

                    child: IconButton(
                      onPressed: (){
                      },

                      icon: Icon(
                        Icons.add_circle_outline,
                      ),

              ),
              


              


              ),
          ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              
                  TextButton.icon(

                    onPressed: () {},
                    icon: const Icon(Icons.alarm,
                      color: Color(0xff89c069),
                    ),
                    label: const Text("Send",

                      style: TextStyle(
                        color: Color(0xffc1f7a3),
                      ),

                    ),

                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Color(0xff154618)),
                    ),

                  ),


                  TextButton.icon(

                    onPressed: () {},
                    icon: const Icon(Icons.alarm),
                    
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Color(0xffb2ec75),
                      ),

                    ),
                    
                    label: const Text("Request",

                      style: TextStyle(
                        color: Color(0xff11480c),
                      ),

                    ),

                  ),

                  IconButton(onPressed: () {},
                    icon: Icon(Icons.ads_click),
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Color(0xfffdfff9)),
                    ),
                  ),


            ],
          ),
        //  Expanded(
        //     child: ListView(
            
        //     //scrollDirection: Axis.vertical,
        //     //reverse: false,
            
        //     physics: AlwaysScrollableScrollPhysics(),
            
        //     //addAutomaticKeepAlives: false,
        //     //cacheExtent: 100.0,
            
        //     children: [
        //       Text("Aaaa"),
        //       Text("Aaaa"),
        //       Text("Aaaa"),
        //       Text("Aaaa"),
        //       Text("Aaaa"),
        //       Text("Aaaa"),
        //       Text("Aaaa"),
        //       Text("Aaaa"),
        //       Text("Aaaa"),
        //       Text("Aaaa"),
        //     ],

        //     // itemCount: 10,
        //     // itemBuilder: (context, builder){
        //     //   return Text('Aaa');
        //     // },
        //   ),
          Expanded(
            child: ListView(children: [
                Column(children: [
                

                  ListTile(
                    leading: Icon(Icons.abc_outlined),
                    title: Text("Dribble"),
                    subtitle: Text("Today: 16:32"),
                    isThreeLine: false,
                    dense: true,
                    onTap: () {},
                    trailing: const Text("-\$120\nTransfer"),
                  ),

                  ListTile(
                    leading: Icon(Icons.abc_outlined),
                    title: Text("Wilson Mango"),
                    subtitle: Text("Today: 10:12"),
                    isThreeLine: false,
                    dense: true,
                    onTap: () {},
                    trailing: const Text("-\$240\nTransfer"),
                  ),

                  ListTile(
                    leading: Icon(Icons.abc_outlined),
                    title: Text("Abram Botosh"),
                    subtitle: Text("Yesterday"),
                    isThreeLine: false,
                    dense: true,
                    onTap: () {},
                    trailing: const Text("+\$450\nIncome"),
                  ),

                ],),

              ],),

          ),


        ],

      ),

      ///

    );
  }
}