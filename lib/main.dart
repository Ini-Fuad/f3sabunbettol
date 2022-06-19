import 'package:f3sabunbettol/PageController.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'SplashScreen.dart';
import 'main_page.dart';

const Color warna1 = Color.fromRGBO(19, 117, 118, 1);
const Color warna2 = Color.fromRGBO(235, 216, 200, 1);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: SplashScreen(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: warna2,
      appBar: AppBar(
          backgroundColor: warna1,
          title: Center(
            child: Text(
              'Dettol',
              style: TextStyle(color: warna2),
            ),
          )),
      body: ListView(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Container(
                    child: Image.asset('assets/doctor.png',
                        width: 150, height: 350, fit: BoxFit.contain),
                    margin: EdgeInsets.only(top: 100, left: 10),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    color: Colors.white.withOpacity(0.5),
                    alignment: Alignment.topLeft,
                    width: 220,
                    height: 200,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 100, left: 10),
                    child: Text(
                      "Siapkah anda memulai hidup sehat dan bersih bersama Dettol, Bersama kita membangun negara yang bersih dari kuman dan bakteri",
                      style: TextStyle(color: warna1, fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                width: 300,
                height: 70,
                margin: EdgeInsets.only(top: 10, left: 30),
                child: ElevatedButton(
                  onPressed: () {
                    Get.off(PageSwitch());
                  },
                  child: Text("Let's Go!"),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(20),
                      primary: warna1,
                      minimumSize: Size(1000, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      )),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
