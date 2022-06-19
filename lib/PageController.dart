import 'package:f3sabunbettol/NewPage.dart';
import 'package:flutter/material.dart';
import 'package:f3sabunbettol/main.dart';
import 'package:get/get.dart';
import 'FormPage.dart';
import 'main_page.dart';
import 'NewPage.dart';

class PageSwitch extends StatefulWidget {
  const PageSwitch({Key? key}) : super(key: key);

  @override
  State<PageSwitch> createState() => _PageSwitchState();
}

class _PageSwitchState extends State<PageSwitch> {
  int _index = 0;
  static final List<Widget> _page = [
    MainPage(),
    FormPage(),
    news(),
  ];
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xff283149),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box), label: "Input Product"),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "News"),
        ],
      ),
      body: _page.elementAt(_index),
    );
  }
}
