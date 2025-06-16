import 'package:finance_app/pages/3.%20MainPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart' show FormBuilderState, FormBuilderTextField, FormBuilder;
import 'package:form_builder_validators/form_builder_validators.dart' show FormBuilderValidators;




class Login extends StatefulWidget {

  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();
    return Scaffold(
      resizeToAvoidBottomInset: true,

      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Color.fromARGB(255, 176, 233, 110),
      ),


      body: Column(
        
        children: [
          Container(
            color: Color.fromARGB(255, 176, 233, 110),
              
              child: Image.asset('assets/image.png',
                width: double.infinity,
                height: 100,
                alignment: Alignment.bottomCenter,
                //color: Color(0xffb1ec6f),
                //color: Color(0xff134517),
                //colorBlendMode: BlendMode.multiply,
              ),
            ),

            Flexible(

            child: FormBuilder(
              key: formKey,

                  //stacks the design to look clean
                  child: Stack(
                    children: [
                      Container(
                        color: Color.fromARGB(255, 176, 233, 110),
                        
                        //color: Colors.greenAccent,
                        width: double.infinity,
                        height: 10,

                        // decoration: BoxDecoration(
                        //   border: Border.all(
                        //     color: Colors.black
                        //   ),
                        // ),
                      ),

                      Container(
                        color: Color.fromARGB(255, 176, 233, 110),


                          child: Column(
                          children: [


                              Text("Welcome Back! ",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 20.0),
                                ),
                            

                              Text("Email: "),
                            

                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.black),


                          ),

                              child: Padding(
                                padding: EdgeInsets.all(2),
                                child: FormBuilderTextField(name:"email" ,
                                textAlign: TextAlign.center,
                                scrollPadding: EdgeInsets.all(50),
                                decoration: const InputDecoration(labelText: 'example@email.com',
                                  border: const UnderlineInputBorder(),
                                  filled: true,
                                ),
                                // validator: (value) {
                                //   if (value==null || value.isEmpty)
                                //   {
                                //     return 'Enter email address';
                                //   }
                                //   else if (!(value.contains("@"))){
                                //     return 'Email must have @';
                                //   }

                                //   return null;
                                // },


                                validator:FormBuilderValidators.compose(
                                  [
                                   FormBuilderValidators.email(),
                                    FormBuilderValidators.required()
                                    ]
                                ),
                              ),
                            ),
                          ),


                          SizedBox(height: 10,),

                          Flexible(
                              child: const Text('Enter Password: '),
                          ),

                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.black),


                          ),
                          


                          child: Padding(
                            padding: EdgeInsets.all(2),
                            
                            child: Stack(
                              children: [
                                
                              
                                FormBuilderTextField(name:"password" ,
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(labelText: 'Password',
                                border: const UnderlineInputBorder(),
                                filled: true,
                            
                            ),
                            scrollPadding: EdgeInsets.all(200),
                            obscureText: _obscureText,

                              validator: FormBuilderValidators.compose(
                                [
                                  FormBuilderValidators.maxLength(12),
                                  FormBuilderValidators.minLength(5),
                                  FormBuilderValidators.hasNumericChars(),
                                  FormBuilderValidators.hasSpecialChars(),
                                  FormBuilderValidators.hasLowercaseChars(),
                                  FormBuilderValidators.hasUppercaseChars(),
                                  FormBuilderValidators.required()

                                  ]
                              ),


                            // validator: (value)
                            // {
                            //   List specialCharacters = ['~','!','@','#','\$','^','&','(',')'];
                            //   List regularCharacters = 'abcdefghijklmnopqrstuvwxyz'.split('');
                            //   List? upperCaseCharacters;

                            //   upperCaseCharacters = regularCharacters.map((e)=> e.toUppercase()).toList();

                            //   List numbers = ['1','2','3','4','5','6','7','8','9'];

                            //   if (value==null || value.isEmpty)
                            //   {
                            //     return 'Enter Password';
                            //   }
                            //   else if ((!(value.contains("$specialCharacters")))
                            //   || (!(value.contains("$regularCharacters")))
                            //   || (!(value.contains("$numbers")))
                            //   || (!(value.contains("$upperCaseCharacters")))
                            //   || (value.length<8))
                            //   {
                            //     return 'Password Not Complex Enough';
                            //   }

                            //   return null;
                            // }

                            ),
                              
                            SizedBox(height: 50,),
                            
                            //password visibility
                            SafeArea(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                
                                children: 
                                [
                                  IconButton(
                                    onPressed: (){},
                                    icon: const Icon(Icons.visibility)),
                                ],
                              ),
                            ),

                                  

                          ],),
                          ),
                              

                          ),
                          

                              ElevatedButton(
                                onPressed: (){
                                    // print(formKey.currentState!.value);
                                  if (formKey.currentState!.saveAndValidate()){
                                    print("from login button >>${formKey.currentState!.value}");

                                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainPage()));
                                  }

                                },
                                
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.black,
                                  minimumSize: Size(double.infinity, 50),
                                ),

                                child: const Text("Login"),

                              ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                
                                TextButton(onPressed: () {}, child: Text("Forgot Password", style: TextStyle(
                                  decoration: TextDecoration.underline
                                ),
                                ),),
                              ],
                            ),

                            SizedBox(height: 20.0),
                            Flexible(
                              child: TextButton.icon(onPressed: (){},
                                
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.black,
                                  minimumSize: Size(double.infinity, 10),
                                ),

                                icon: Icon(Icons.savings),
                                
                                label: const Text('Sign in with Google'),
                                
                              ),
                            ),

                        ],

                    ),
                      ),
                  ],
                ),
              ),
          
          )



        ],
      )

    );
  }
}