import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:f3sabunbettol/main.dart';
import 'package:f3sabunbettol/main_page.dart';
import 'package:f3sabunbettol/item_card.dart';
import 'dart:async';

class TextController extends GetxController {
  var name = "".obs, harga = "".obs, deskripsi = "".obs, gambar = "".obs;
  var pilihandeskripsi = <String>[].obs;

  final nameCtrl = TextEditingController();
  final hargaCtrl = TextEditingController();
  final deskripsiCtrl = TextEditingController();
  final gambarCtrl = TextEditingController();

  void onClose() {
    nameCtrl.dispose();
    hargaCtrl.dispose();
    deskripsiCtrl.dispose();
    gambarCtrl.dispose();
    super.onClose();
  }

  onPressed() {
    name = nameCtrl.text.obs;
    harga = hargaCtrl.text.obs;
    deskripsi = deskripsiCtrl.text.obs;
    gambar = gambarCtrl.text.obs;
  }
}

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(Duration(seconds: 3), () {
      Get.off(LandingPage());
    });
  }
}
