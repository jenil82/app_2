import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/helper_c.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLogin = false;

  @override
  void initState() {
    super.initState();
    isLogin = FbHelper.fbHelper.checkUser();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 5),
          () => isLogin == true
          ? Get.offAndToNamed('bottombar_screen')
          : Get.offAndToNamed('signin_screen'),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfffef2fe),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/img/1.png",height: 200,width: 200,),
              SizedBox(height: 10,),
              Text(
                "S H O P C A R T",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}