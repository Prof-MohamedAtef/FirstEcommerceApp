import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'onboarding_page.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 4), ()=> Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (_)=> OnBoardingScreen()),(route) => false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/image/logo.png"),
          const SizedBox(height: 20,),
          Text("Food Delivery Service", style: TextStyle(color: Colors.pink, fontSize: 16, fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}