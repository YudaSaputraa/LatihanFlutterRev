import 'package:flutter/material.dart';

import 'package:project_bookingaja/dataa/data.dart';

class IsiData extends StatelessWidget {
  final DataKost dataa;
  const IsiData({
    Key? key,
    required this.dataa,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Container(
                    height: 200,
                    width: 600,
                  ),
                  Positioned.fill(
                      left: 10,
                      right: 170,
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(dataa.imageAssets),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      )),
                  Positioned.fill(
                      left: 230,
                      child: Container(
                        child: Text(
                          dataa.nama + "\n" + dataa.harga,
                          style: TextStyle(fontSize: 20),
                        ),
                        height: 180,
                      ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Container(
                    height: 400,
                    width: 400,
                  ),
                  Positioned.fill(
                      left: 10,
                      right: 90,
                      bottom: 350,
                      child: Container(
                        child: Row(
                          children: [
                            Icon(Icons.monetization_on),
                            Text(
                              " Biaya Tambahan",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        height: 50,
                        width: 400,
                      )),
                  Positioned.fill(
                      top: 50,
                      bottom: 290,
                      left: 30,
                      child: Container(
                        child: Text(
                          dataa.biaya_tambahan,
                          style: TextStyle(fontSize: 15),
                        ),
                        height: 50,
                        width: 400,
                      )),
                  Positioned.fill(
                      left: 10,
                      top: 130,
                      bottom: 220,
                      child: Container(
                        child: Row(
                          children: [
                            Icon(Icons.hotel),
                            Text(
                              " Fasilitas",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        height: 50,
                        width: 400,
                      )),
                  Positioned.fill(
                      top: 180,
                      bottom: 10,
                      left: 30,
                      child: Container(
                        child: Text(
                          dataa.fasilitas,
                          style: TextStyle(fontSize: 15),
                        ),
                        height: 50,
                        width: 400,
                      )),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
