import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'main_page.dart';
import 'DetailPage.dart';

const Color warna1 = Color.fromRGBO(19, 117, 118, 1);
const Color warna2 = Color.fromRGBO(235, 216, 200, 1);

class ItemCard extends StatefulWidget {
  final String name;
  final int harga;
  final String deskripsi;
  final String gambar;
  //// Pointer to Update Function
  final Function? onUpdate;
  final Function? onUpdata;
  //// Pointer to Delete Function
  final Function? onDelete;

  ItemCard(this.name, this.harga, this.deskripsi, this.gambar,
      {this.onUpdate, this.onUpdata, this.onDelete});

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
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
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      padding: const EdgeInsets.only(left: 40, bottom: 20, right: 40),
      decoration: decor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                iconSize: 150,
                padding: EdgeInsets.all(0.0),
                icon: Image.network('${widget.gambar}'),
                onPressed: () {
                  Get.to(DetailPage(
                      namaSabun: '${widget.name}',
                      harga: '${widget.harga}',
                      deskripsi: '${widget.deskripsi}',
                      imageLink: '${widget.gambar}'));
                },
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  widget.name,
                  style: textStyle.copyWith(fontSize: 16),
                ),
              ),
              Text(
                "Rp ${widget.harga}",
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(height: 30),
              SizedBox(
                height: 40,
                width: 60,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      primary: Colors.green[900],
                    ),
                    child: Center(
                        child: Icon(
                      Icons.arrow_upward,
                      color: Colors.white,
                    )),
                    onPressed: () {
                      if (widget.onUpdate != null) widget.onUpdate!();
                    }),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 40,
                width: 60,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      primary: Colors.green[900],
                    ),
                    child: Center(
                        child: Icon(
                      Icons.arrow_downward,
                      color: Colors.white,
                    )),
                    onPressed: () {
                      if (widget.onUpdata != null) widget.onUpdata!();
                    }),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 40,
                width: 60,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      primary: Colors.red[900],
                    ),
                    child: Center(
                        child: Icon(
                      Icons.delete,
                      color: Colors.white,
                    )),
                    onPressed: () {
                      if (widget.onDelete != null) widget.onDelete!();
                    }),
              )
            ],
          ),
        ],
      ),
    );
  }
}
