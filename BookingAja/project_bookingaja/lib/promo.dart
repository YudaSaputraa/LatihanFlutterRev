import 'package:flutter/material.dart';

class Promo extends StatelessWidget {
  const Promo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Promo"),
      ),
      body: Center(
        child: Text("Ini Promo"),
      ),
    );
  }
}
