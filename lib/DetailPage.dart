import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'main_page.dart';

class DetailPage extends StatelessWidget {
  final TextStyle textStyle = TextStyle(
      fontFamily: "Lato",
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: warna1);

  final String namaSabun;
  final String deskripsi;
  final String harga;
  final String imageLink;
  DetailPage(
      {Key? key,
      required this.namaSabun,
      required this.harga,
      required this.deskripsi,
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
          "Pembelian",
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
                      margin: EdgeInsets.only(left: 60, top: 20),
                      child: Text("${namaSabun}",
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
                      width: 330,
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        image: DecorationImage(
                          image: NetworkImage(imageLink),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(top: 20, left: 20),
                      child: Text("Rp.${harga}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Text("${deskripsi}",
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
                          final mySnackBar = SnackBar(
                            content: Text(
                              "Pembelian Berhasil",
                              style: TextStyle(
                                color: warna2,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            duration: Duration(seconds: 3),
                            padding: EdgeInsets.all(10),
                            backgroundColor: warna1,
                          );
                          ScaffoldMessenger.of(context)
                              .showSnackBar(mySnackBar);
                          Get.back();
                        },
                        child: Text("Beli",
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
