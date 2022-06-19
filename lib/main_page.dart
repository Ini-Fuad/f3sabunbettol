import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:f3sabunbettol/item_card.dart';
import 'alert.dart';

const Color warna1 = Color.fromRGBO(19, 117, 118, 1);
const Color warna2 = Color.fromRGBO(235, 216, 200, 1);

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection("users");

    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: warna1,
        title: Text(
          'Dettol',
          style: TextStyle(color: warna2),
        ),
      ),
      backgroundColor: warna2,
      body: Container(
        color: warna2,
        child: ListView(
          children: [
            Stack(
              children: [
                Image.network(
                    'https://asset.kompas.com/crops/QmuHT6btnHf2tpZb6LZIDxz7h-c=/50x34:450x300/750x500/data/photo/2020/11/02/5f9fbc261699c.jpg',
                    width: lebar,
                    height: 200,
                    fit: BoxFit.fill),
                Positioned(
                  bottom: -30,
                  right: -20,
                  child: Container(
                    child: Image.asset('assets/detol.png',
                        width: 200, height: 200),
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Produk Unggulan Dettol",
              style: textStyle.copyWith(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            StreamBuilder<QuerySnapshot>(
              stream: users.snapshots(),
              builder: (_, snapshot) {
                return (snapshot.hasData)
                    ? Column(
                        children: snapshot.data!.docs
                            .map(
                              (e) => ItemCard(
                                e.get('name'),
                                e.get('harga'),
                                e.get('deskripsi'),
                                e.get('gambar'),
                                onUpdate: () {
                                  users.doc(e.id).update(
                                    {'harga': e.get('harga') + 500},
                                  );
                                },
                                onUpdata: () {
                                  users.doc(e.id).update(
                                    {'harga': e.get('harga') - 500},
                                  );
                                },
                                onDelete: () {
                                  users.doc(e.id).delete();
                                },
                              ),
                            )
                            .toList(),
                      )
                    : Text('Loading...');
              },
            ),
            SizedBox(height: 20),
            Container(
              color: warna1,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Image.asset('assets/detol.png',
                            width: 150, height: 150, fit: BoxFit.cover),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.only(right: 20, bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {
                                aboutUs(context,
                                    "- Hefnie Anies Fu'adi - Adhe Risky Irzam  - Muhammad Mukti Hidayat N - Rahmad Syaifuddin ");
                              },
                              child: Text(
                                "About us",
                                style: textStyle.copyWith(color: warna2),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: warna1,
                                shadowColor: warna1,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                tujuan(context, "membantu menyehatkan");
                              },
                              child: Text(
                                "Tujuan",
                                style: textStyle.copyWith(color: warna2),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: warna1,
                                shadowColor: warna1,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                contact(context, "Dettol@gmail.co.id");
                              },
                              child: Text(
                                "Contact Person",
                                style: textStyle.copyWith(color: warna2),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: warna1,
                                shadowColor: warna1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
