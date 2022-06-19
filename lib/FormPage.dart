import 'package:f3sabunbettol/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'main_page.dart';
import 'alert.dart';

const Color warna1 = Color.fromRGBO(19, 117, 118, 1);
const Color warna2 = Color.fromRGBO(235, 216, 200, 1);

class FormPage extends StatefulWidget {
  FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController deskripsiController = TextEditingController();
  final TextEditingController gambarController = TextEditingController();
  final TextEditingController hargaController = TextEditingController();

  final TextStyle textStyle = TextStyle(
      fontFamily: "Lato",
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: warna1);

  final BoxDecoration decor = BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 6,
            offset: Offset(1, 1)),
      ]);

  @override
  void dispose() {
    // TODO: implement dispose
    nameController.dispose();
    hargaController.dispose();
    deskripsiController.dispose();
    gambarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController deskripsiController = TextEditingController();
    final TextEditingController gambarController = TextEditingController();
    final TextEditingController hargaController = TextEditingController();
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection("users");
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: warna2,
      appBar: AppBar(
        backgroundColor: warna1,
        title: Text(
          "Input Product",
          style: textStyle.copyWith(color: warna2, fontSize: 20),
        ),
      ),
      body: ListView(
        children: [
          Container(
            child: Image.asset('assets/detol.png',
                width: 100, height: 200, fit: BoxFit.contain),
          ),
          Text(
            "Tambahkan Product Baru",
            style: textStyle.copyWith(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 30),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(-5, 0),
                        blurRadius: 15,
                        spreadRadius: 3)
                  ]),
              width: 350,
              height: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 160,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextField(
                          controller: gambarController,
                          decoration: InputDecoration(hintText: "Link Gambar"),
                        ),
                        TextField(
                          controller: nameController,
                          decoration: InputDecoration(hintText: "Name"),
                        ),
                        TextField(
                          controller: hargaController,
                          decoration: InputDecoration(hintText: "Harga"),
                          keyboardType: TextInputType.number,
                        ),
                        TextField(
                            controller: deskripsiController,
                            decoration: InputDecoration(hintText: "Deskripsi")),
                        Container(
                          height: 80,
                          width: 250,
                          padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: warna1,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Text(
                                'Add Data',
                                style: TextStyle(
                                  color: warna2,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onPressed: () {
                                final mySnackBar = SnackBar(
                                  content: Text(
                                    "Data Berhasil Ditambahkan",
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
                                users.add({
                                  'gambar': gambarController.text,
                                  'name': nameController.text,
                                  'deskripsi': deskripsiController.text,
                                  'harga':
                                      int.tryParse(hargaController.text) ?? -1
                                });
                                gambarController.text = '';
                                nameController.text = '';
                                hargaController.text = '';
                                deskripsiController.text = '';
                              }),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
