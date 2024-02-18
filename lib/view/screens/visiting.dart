
import 'package:alwahidapp/view/components/custom_elevated_button.dart';
import 'package:alwahidapp/view/screens/auth/login.dart';
import 'package:alwahidapp/view/screens/auth/signup.dart';
import 'package:flutter/material.dart';

class VisitingScreen extends StatelessWidget {
  const VisitingScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Column(
                children: <Widget>[
                  Text(
                    "..Sa..",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('assets/image.png'))),
              ),
              Column(
                children: <Widget>[
                  CustomElevatedButton(
                    customText: "Login",
                    customOnPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>const LoginPage()));
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomElevatedButton(
                    customText: "Sign Up",
                    customOnPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>const SignupPage()));
                    },
                    buttonBackgroundColor: Colors.white,
                    textColor: Colors.black,
                    elevation: 10,
                  )
                  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
