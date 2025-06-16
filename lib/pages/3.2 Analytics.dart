import 'package:flutter/material.dart';

class Analytics extends StatelessWidget {
  const Analytics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
      //Have a column with a row and another row, and a bar graph and then a list tile listview...
      
      child: Column(
        children: [
          Text("Analytics"),


          //row contains from a listview & bargraph
      Row(children: [


       Expanded(
          child: ListView(
            shrinkWrap: true,
            children: [


                Text("My Spending"),
                Text("\$7,221.18"),
                
                TextButton.icon(
                  onPressed: (){},
                  icon: Icon(Icons.arrow_upward),
                  label: Text("4.9%"),
                ),

                Text("From Last Week")

              ],
            ),


           ),
           //Bargraph on the same row
              Text("Here Lies The Bar Graph!"),

          ],
        ),
        ///ADD more column items


        ],
        ),
    ),
    );
  }
}