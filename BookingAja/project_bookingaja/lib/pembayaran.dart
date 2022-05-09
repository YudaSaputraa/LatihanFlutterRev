import 'package:flutter/material.dart';

class pembayaran extends StatefulWidget {
  const pembayaran({Key? key}) : super(key: key);

  @override
  State<pembayaran> createState() => _pembayaranState();
}

class _pembayaranState extends State<pembayaran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pembayaran"),
        ),
        body: Center(child: Text("Pembayaran")));
  }
}
