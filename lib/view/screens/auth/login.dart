
import 'package:alwahidapp/view/components/custom_elevated_button.dart';
import 'package:alwahidapp/view/screens/auth/signup.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
       // brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),
        ),
      ),

      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  Column(
                    children: <Widget>[


            const Text("Login", style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),),

                    const  SizedBox(height: 10,),

                       Text("Login to your account", style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[700]
                      ),),

                      const SizedBox(height: 10,),

                     

                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: <Widget>[
                         makeInput(label: "Email"),
                        makeInput(label: "Password", obscureText: true),
                      ],
                    ),
                  ),

                  Padding(

                    padding: const EdgeInsets.symmetric(horizontal: 30),

                    child: CustomElevatedButton(customOnPressed: (){},customText: "Login",)
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                   const   Text("Don't have an account ? ", style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 18
                  ),),

                     GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>const SignupPage()));
                      },
                      child:const  Text("Sign up", style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 20,color: Colors.red
                      ),),
                    )



                    ],
                  ),


                ],
              ),
            ),

            

            


          ],
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
       const  SizedBox(height: 5,),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(

            contentPadding:const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                   Radius.circular(15.0),
                ),
              borderSide: BorderSide(color: Colors.grey[400]!,)
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