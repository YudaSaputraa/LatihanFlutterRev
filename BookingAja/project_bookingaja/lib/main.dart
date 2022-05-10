import 'package:flutter/material.dart';
import 'package:project_bookingaja/daftar.dart';
import 'package:project_bookingaja/pembayaran2.dart';
import 'package:project_bookingaja/pesan.dart';
import 'package:project_bookingaja/promo.dart';
import 'daftar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/daftar',
        routes: {
          '/daftar': (context) => daftar(),
          '/pesan': (context) => pesan(),
          '/promo': (context) => Promo(),
          '/pembayarann': (context) => pembayarann()
        });
  }
}
