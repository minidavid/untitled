import 'package:finance_app/pages/2.%20loginscreen.dart';
import 'package:finance_app/pages/3.%20MainPage.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
          
          Row(
            children: [
              const Icon(Icons.ice_skating_sharp),
              
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                },

                style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(255, 255, 255, 255))),
                child: Text('Username: $name'),

              ),

            ],



          ),

          TextButton(onPressed: (){}, 
            
                style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(255, 255, 255, 255))),
                child: Text('Balance Left'),

          ),


        ],
      ),

    );
  }
}