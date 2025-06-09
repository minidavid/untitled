import 'package:flutter/material.dart';

void main(){
  runApp(
   MaterialApp(home: MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
          title: const Text('Real'),
          backgroundColor: Colors.green,
         ),

         body:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            
            children: <Widget>[

              const Text(
                'Track Your Spending Effortlessly',
                style: TextStyle(fontSize: 40.0),
              ),

              const Text(
                'Manage your finances easily using our intuitive and user friendly interface and set financial goals and monitor your progress',
                style: TextStyle(fontSize: 12.0),
              ),

              ElevatedButton(
                
                onPressed: ()
                {
                  print("Button Pressed");
                },
                child: const Text("Get Started"),
                
              ),

              Row(
                children: <Widget>[
                  Text(
                    'Already Have An Account?',
                    style: TextStyle(fontSize: 12.0),                   
                  ),

                  Text(
                    'Login',
                    style: TextStyle(fontWeight: FontWeight.bold),                   
                  ),



                ],
              )


              

            ],
         ),
        


    );
  }
}