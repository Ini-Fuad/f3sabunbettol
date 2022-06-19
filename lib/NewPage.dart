import 'package:flutter/material.dart';
import 'package:f3sabunbettol/main.dart';
import 'package:get/get.dart';

import 'DetailPageNew.dart';

const Color warna1 = Color.fromRGBO(19, 117, 118, 1);
const Color warna2 = Color.fromRGBO(235, 216, 200, 1);

class news extends StatelessWidget {
  final TextStyle textStyle = TextStyle(
      fontFamily: "Lato",
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: warna1);

  final BoxDecoration decor = BoxDecoration(
      color: warna1,
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 6,
            offset: Offset(1, 1)),
      ]);
  final BoxDecoration imgDecor = BoxDecoration(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16), topRight: Radius.circular(16)));

  news({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: warna1,
        title: Text(
          "News",
          style: textStyle.copyWith(fontSize: 20, color: warna2),
        ),
      ),
      body: Container(
        color: warna2,
        child: ListView(
          children: [
            SizedBox(height: 20),
            Container(
              width: 100,
              height: 190,
              margin: EdgeInsets.only(left: 10, right: 10),
              decoration: decor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 300,
                    height: 100,
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16)),
                      color: warna1,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/covid.jpg'),
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        Get.to(DetailPageNew(
                            judul: 'Berita COVID-19',
                            isi:
                                'Pemerintah melaporkan tambahan kasus virus Corona (COVID-19) pada hari ini sebanyak 1.264 kasus. DKI Jakarta menjadi provinsi yang melaporkan penambahan kasus terbanyak.Data mengenai kasus Corona ini dipublikasikan Humas BNPB, Jumat (17/6/2022). Data kasus COVID-19 diperbarui setiap hari per pukul 12.00 WIB.Dengan penambahan 1.264 kasus baru, total kasus Corona di Indonesia sejak Maret 2020 hingga hari ini berjumlah 6.066.908 kasus.',
                            imageLink: 'assets/covid.jpg'));
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: Text(
                          "Berita Covid-19",
                          style:
                              textStyle.copyWith(fontSize: 16, color: warna2),
                        ),
                      ),
                      Text(
                        "kenaikan kasus COVID-19 semakin menjadi-jadi",
                        style: textStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: warna2),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 100,
              height: 190,
              margin: EdgeInsets.only(left: 10, right: 10),
              decoration: decor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 300,
                    height: 100,
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16)),
                      color: warna1,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/kanker.jpeg'),
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        Get.to(DetailPageNew(
                            judul: 'Waspada Kanker Hati',
                            isi:
                                'Kanker hati stadium akhir adalah bentuk penyakit stadium 4, yang memiliki beberapa gejala yang mungkin terlihat umum, seperti sakit perut dan berat badan turun. Mengutip My All American Hospice, kanker hati dikategorikan ke dalam stadium berdasarkan intensitasnya dan stadium 4 adalah stadium lanjut dari semuanya atau akhir. Pada tahap ini, kanker sudah mulai menyebar (metastatik) ke kelenjar getah bening terdekat atau kelenjar getah bening dan organ yang jauh. Kasus kanker hati relatif lebih sedikit dan lebih sering terjadi pada pria dari pada wanita.',
                            imageLink: 'assets/kanker.jpeg'));
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: Text(
                          "Waspada Kanker Hati",
                          style:
                              textStyle.copyWith(fontSize: 16, color: warna2),
                        ),
                      ),
                      Text(
                        "waspadai gejala-gejala nya sebelum parah",
                        style: textStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: warna2),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 100,
              height: 190,
              margin: EdgeInsets.only(left: 10, right: 10),
              decoration: decor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 300,
                    height: 100,
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16)),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/cuciTangan.jpeg'),
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        Get.to(DetailPageNew(
                            judul: 'Pentingnya Mencuci Tangan',
                            isi:
                                "Salah satu perilaku hidup bersih dan sehat (PHBS) yang selalu digaungkan sejak lama untuk menjaga kesehatan dan kebersihan pribadi adalah mencuci tangan. Perilaku ini seharusnya menjadi kebiasaan yang sangat baik, karena selain untuk menjaga kesehatan dan kebersihan, agama juga mengajarkannya.Tangan merupakan media yang sangat ampuh untuk berpindahnya penyakit, karena tangan digunakan untuk memegang benda-benda yang seringkali tidak kita ketahui dengan pasti kebersihannya. Salah satu contoh adalah ketika kita memegang handle pintu atau pegangan dalam kendaraan, kita tidak pernah tahu apakah ada agen penyakit (virus/bakteri) yang menempel disana, bisa jadi sebelumnya dipegang oleh orang yang batuk/bersin ditutup oleh tangannya. Kemudian tangan kita yang sudah memegang handle pintu tersebut menutup mulut kita yang menguap atau langsung memegang makanan. Jelas sudah terjadi proses perpindahan agen penyakit disana. Jika saat itu daya tahan tubuh kita lemah, dalam masa inkubasi kita pun akan mengalami gejala yang sama.Mencuci tangan sangat diutamakan pada waktu-waktu penting, antara lain sebelum makan, setelah buang air besar, sebelum menjamah makanan, sebelum menyusui/menyiapkan susu bayi, dan setelah beraktifitas.Sebagai kebiasaan yang baik, mencuci tangan perlu memenuhi cara yang benar, agar kita yakin bahwa seluruh permukaan tangan sudah terbasuh dan benar-benar bersih. Urutan cara-cara tersebut tergambar dalam flyer berikut ini:",
                            imageLink: 'assets/cuciTangan.jpeg'));
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: Text(
                          "Pentingnya Mencuci Tangan",
                          style:
                              textStyle.copyWith(fontSize: 16, color: warna2),
                        ),
                      ),
                      Text(
                        "Mencuci tangan merupakan kebiasaan yang sangat baik",
                        style: textStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: warna2),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 100,
              height: 190,
              margin: EdgeInsets.only(
                left: 10,
              ),
              decoration: decor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 300,
                    height: 100,
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16)),
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/bpjs.jpg'),
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        Get.to(DetailPageNew(
                            judul: 'Program BPJS dari pemerintah',
                            isi:
                                'JAKARTA, KOMPAS.com – BPJS Kesehatan adalah badan hukum yang dibentuk untuk menyelenggarakan program Jaminan Kesehatan Nasional-Kartu Indonesia Sehat (JKN-KIS). Program BPJS Kesehatan sendiri mulai beroperasi pada tanggal 1 Januari 2014. Tujuan adanya program BPJS Kesehatan adalah untuk menjamin agar seluruh rakyat Indonesia memperoleh manfaat pemeliharaan kesehatan dan perlindungan dalam memenuhi kebutuhan dasar kesehatan. Berdasarkan UU Nomor 24 Tahun 2011 tentang JKN, kepesertaan dalam BPJS Kesehatan adalah wajib. Karena itu, seluruh warga Indonesia wajib menjadi peserta BPJS Kesehatan atau memiliki kartu BPJS Kesehatan. Secara umum, peserta BPJS Kesehatan ada 2 kelompok. Pertama, penerima bantuan iuran (PBI) yaitu peserta JKN bagi fakir miskin dan orang tidak mampu sebagaimana diamanatkan UU SJSN. Iuran peserta PBI ditanggung oleh pemerintah.',
                            imageLink: 'assets/bpjs.jpg'));
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: Text(
                          "Program BPJS dari pemerintah",
                          style:
                              textStyle.copyWith(fontSize: 16, color: warna2),
                        ),
                      ),
                      Text(
                        "Program BPJS ini sangat membantu bagi warga",
                        style: textStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: warna2),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
