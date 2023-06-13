import 'package:flutter/material.dart';
import 'package:untitled/pages/Navigate.dart';
import 'package:untitled/pages/signupPage.dart';
import 'pages/signInPage.dart';
import 'pages/signupPage.dart';
import 'pages/introScreenPage.dart';



void main() async{
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp ({Key? key }) :super(key:key);

  get npress => null;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInPage(),

    );

  }
}
