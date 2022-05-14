import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unibox/shared/components/components.dart';



class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formkey = GlobalKey<FormState>();

  bool showPasswrod = true  ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          // width: double.infinity,
          child: Text(
            "login page",
            textAlign: TextAlign.center
            ,style: TextStyle(
            // fontWeight:FontWeight.w900,
            fontSize: 30.0,
            color: defultcolor,


          ),
          ),
        ),


      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key:formkey ,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Center(child: Image(image: AssetImage('assets/images/unibox.png'),height: 150,width: 200,)),
                SizedBox(height: 50.0,),
                //email
                dfaultFormField(
                  controller: emailController,
                  label: 'email',
                  prefix: Icons.email,
                  type: TextInputType.emailAddress,
                  // validate:(String value){
                  //   if(value.isEmpty){
                  //     return 'email must not be empty ';
                  //   }
                  //   return null ;
                  // }
                ),
                SizedBox(height: 15.0,),
                //password
                dfaultFormField(
                    controller: passwordController,
                    label: 'password',
                    prefix: Icons.lock,
                    suffix: showPasswrod? Icons.visibility:Icons.visibility_off ,
                    type: TextInputType.visiblePassword,
                    ispassword: showPasswrod ,
                    suffixonpressed: (){
                      setState(() {
                        showPasswrod = !showPasswrod ;
                      });
                    }
                  // validator:(String value){
                  //   if(value.isEmpty){
                  //     return 'password must not be empty ';
                  //   }
                  //   return null ;
                  // }
                ),

                SizedBox(height: 15.0,),
                defaultButton(
                    text: 'login',
                    radius:15.0 ,
                    background:defultcolor,
                    function: ()
                    {
                      if (formkey.currentState!.validate()) {
                        print(emailController.text);
                        print(passwordController.text);
                      }
                    },
                    width: double.infinity
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don\'t have account") ,
                    TextButton(onPressed: (){}, child: Text("register now"),)
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
