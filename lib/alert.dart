import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'FormPage.dart';

Future<dynamic> aboutUs(BuildContext context, String pesan) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Our Teams"),
          content: Text(pesan),
          actions: [
            TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("OK"))
          ],
        );
      });
}

Future<dynamic> tujuan(BuildContext context, String pesan) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Tujuan"),
          content: Text(pesan),
          actions: [
            TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("OK"))
          ],
        );
      });
}

Future<dynamic> contact(BuildContext context, String pesan) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Contact Person"),
          content: Text(pesan),
          actions: [
            TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("OK"))
          ],
        );
      });
}
