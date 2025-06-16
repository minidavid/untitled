//import 'package:flutter/cupertino.dart'; iOS
import 'package:finance_app/pages/2.%20loginscreen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
         appBar: AppBar(
          
          leading: Image.asset('assets/image.png',
          fit: BoxFit.fill,
          alignment: Alignment.bottomCenter,
          //color: Color(0xffb1ec6f),
          //color: Color(0xff134517),
          //colorBlendMode: BlendMode.multiply,
          ),

          //title: const Text('Real'),
          backgroundColor: Color.fromARGB(255, 176, 233, 110),
         ),


          //add background color to body
          body: DecoratedBox(
              decoration: BoxDecoration(color: Color(0xffb1ec6f)),

          child:SafeArea(


            //add padding to text 
            child: Padding(

              padding:EdgeInsets.all(15),
  
              //column hosting multiple text
              child: Column(mainAxisAlignment: MainAxisAlignment.end,

                children: <Widget>[

                  Text(
                    'Track Your Spending Effortlessly',
                    style: TextStyle(fontSize: 40.0),
                  ),
                  SizedBox(height: 20),

                const Text(
                  'Manage your finances easily using our intuitive and user friendly interface and set financial goals and monitor your progress',
                  style: TextStyle(fontSize: 12.0),
                ),

                // Button to show the get started
                ElevatedButton(
                  
                  onPressed: ()
                  {
                    print("Button Pressed");
                  },

                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.green[900]),
                  ),

                  child: const Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white)
                  ),

                ),

                //Row hosting a pair of horizontal text
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[
                    Text(
                      'Already Have An Account?',
                      style: TextStyle(fontSize: 12.0),                   
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 3.0),
                        child: TextButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                            print("Check");
                          },

                          style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.transparent),
                            foregroundColor: WidgetStatePropertyAll(Colors.black)
                          ),


                          child: Text('Login', style: TextStyle(fontWeight: FontWeight.bold)),
                        ),

                    ),



                  ],
                )


                

              ],
          )),
          

      ))
    );
  }
}
