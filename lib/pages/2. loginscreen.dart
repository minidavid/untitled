import 'package:finance_app/pages/3.%20MainPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart' show FormBuilderState, FormBuilderTextField, FormBuilder;
import 'package:form_builder_validators/form_builder_validators.dart' show FormBuilderValidators;



class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Login'),
      ),

      body: Column(
        
        children: [
          SizedBox(height: 20),

          FormBuilder(
            key: formKey,
            
            child: Column(  
                children: [
                  
                  const Text("Email: "),

                  FormBuilderTextField(name:"email" ,
                    textAlign: TextAlign.center,

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

                  const Text('Enter Password: '),

                  FormBuilderTextField(name:"password" ,
                    validator: FormBuilderValidators.compose(
                      [
                        FormBuilderValidators.maxLength(8),
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


                  ElevatedButton(
                    onPressed: (){
                        // print(formKey.currentState!.value);
                      if (formKey.currentState!.saveAndValidate()){
                        print("from login button >>${formKey.currentState!.value}");

                       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainPage()));
                      }

                    },
                    child: const Text("Login")
                  ),
           

              ],

            )
          ),
        

        ],
      )

    );
  }
}