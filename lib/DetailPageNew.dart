import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'main_page.dart';

class DetailPageNew extends StatelessWidget {
  final TextStyle textStyle = TextStyle(
      fontFamily: "Lato",
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: warna1);

  final String judul;
  final String isi;
  final String imageLink;
  DetailPageNew(
      {Key? key,
      required this.judul,
      required this.isi,
      required this.imageLink})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(235, 216, 200, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(19, 117, 118, 1),
        title: Text(
          "Berita",
          style: textStyle.copyWith(color: warna2, fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Image.asset('assets/detol.png',
                width: 150, height: 180, fit: BoxFit.fill),
          ),
          Container(
            height: 450,
            margin: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              color: Color.fromRGBO(19, 117, 118, 1),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
            ),
            child: ListView(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      child: Text("${judul}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 150,
                      width: 350,
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: warna1,
                        image: DecorationImage(
                          image: AssetImage("${imageLink}"),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Text("${isi}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          )),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 300,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text("Kembali",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(19, 117, 118, 1),
                            )),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(20),
                            primary: Colors.white,
                            minimumSize: Size(1000, 40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
