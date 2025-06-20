import 'package:finance_app/pages/3.5%20Profile.dart';
import 'package:flutter/material.dart';
import 'package:finance_app/pages/3.1%20MainPage%20Home.dart';
import 'package:finance_app/pages/3.2%20Analytics.dart';

  String name = "Jonathan";



class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {


    List<Widget> widgetList = [
      Home(),
      Analytics(),
      Text("Home"),
      Text("Next"),
      Profile(),
    ];

    //----NAVIGATION BAR-----\\
    int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {



    // double amount = 17298.92;
    // String amountAsString = amount.toStringAsFixed(2);




    return Scaffold(

      appBar: AppBar(  
        title: Text(name),
      ),

      
      body: widgetList[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(

        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        //showSelectedLabels: true,
        showUnselectedLabels: false,
        

        onTap: (index)
        {
          setState(() {
            _currentIndex = index;
          });
        },
        
        currentIndex: _currentIndex,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home", backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.analytics), label: "Analytics", backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.square), label: "Square", backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: "Card", backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile", backgroundColor: Colors.black),
        ],
        
      ),

    );
  }
}