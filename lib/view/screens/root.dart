import 'package:alwahidapp/view/screens/visiting.dart';
import 'package:flutter/material.dart';








class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "title here",
      home: VisitingScreen(),
    );
  }
}