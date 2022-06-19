import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'main_page.dart';
import 'package:f3sabunbettol/getx_controller/text_controller.dart';

const Color warna1 = Color.fromRGBO(19, 117, 118, 1);
const Color warna2 = Color.fromRGBO(235, 216, 200, 1);

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final SplashController sc = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: warna1,
      body: Center(
        child: Image.asset(
          "assets/detol.png",
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height / 2,
        ),
      ),
    );
  }
}
