
import 'package:alwahidapp/view/components/custom_elevated_button.dart';
import 'package:alwahidapp/view/screens/auth/login.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
      //  brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon:const Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),

          height: MediaQuery.of(context).size.height - 90,

          width: double.infinity,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              Column(
                children: <Widget>[
                  const Text("Sign up", style:  TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),),

                  const SizedBox(height: 20,),

                   Text("Create an account, It's free", style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[700]
                  ),),
                ],
              ),

              Column(
                children: <Widget>[
                  makeInput(label: "Email"),
                 makeInput(label: "Password", obscureText: true),
                   makeInput(label: "Confirm Password", obscureText: true),
                ],
              ),

              CustomElevatedButton(customOnPressed: (){},customText: "Sign up",),
 Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                 const Text("Already have an account ? " ,style: TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 18,color: Colors.black
                  ),),


                   TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>const LoginPage()));
                    },
                    child:  const Text("Sign In", style: TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 20,color: Colors.red
                    ),),
                  )

                ],
              ),


            ],
          ),
        ),
      ),
    );
  }

  Widget makeInput({label, obscureText = false}) {

    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,

      children: <Widget>[

        Text(label, style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.black87
        ),),

        const SizedBox(height: 5,),

        TextField(
          obscureText: obscureText,


          decoration: InputDecoration(

            contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),

            enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                   Radius.circular(15.0),
                ),
              borderSide: BorderSide(color: Colors.grey[400]!,style: BorderStyle.solid)
            ),

            border: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                   Radius.circular(20.0),
                ),
              borderSide: BorderSide(color: Colors.grey[400]!)
            ),
          ),
        ),

        const SizedBox(height: 30,),

      ],
    );
  }
}