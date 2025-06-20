import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {

    final formKey = GlobalKey<FormBuilderState>();
    
    return const Scaffold(


      body: SafeArea(
        child: Column(
          children: [
              
            Text("Sign Up Page"),

            Text("Name: "),
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter your name',
                border: OutlineInputBorder(),
                hintText: 'Firstname Surname'
              ),
            ),
        
            Text("Email: "),
            
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter email',
                border: OutlineInputBorder(),
                hintText: 'example@email.com',
                filled: true,
                prefixIcon: Icon(Icons.email) 
              ),
            ),

            Text("Password: "),

            TextField(
              decoration: InputDecoration(
                labelText: 'Enter Password',
                border: OutlineInputBorder(),
                hintText: 'Password3!'
              ),
            ),

            Text("Confirm Password"),
            TextField(
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                border: OutlineInputBorder(),
                hintText: 'Password3!'
              ),
            ),

            Text('Confirm you are human: '),

          ],
        ),
      ),
      
    );
  }
}