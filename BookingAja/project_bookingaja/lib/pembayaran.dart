import 'package:flutter/material.dart';
import 'package:project_bookingaja/dataa/data.dart';
import 'package:project_bookingaja/pembayaran.dart';

class Pembayaran extends StatelessWidget {
  final DataKost dataa;
  const Pembayaran({
    Key? key,
    required this.dataa,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pembayaran"),
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
                    child: Text("Belum Ada Data"),
                  ),
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
                    height: 370,
                    width: 400,
                  ),
                  Positioned.fill(
                      top: 10,
                      left: 10,
                      right: 90,
                      bottom: 320,
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
                      bottom: 250,
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
                      top: 340,
                      left: 190,
                      child: Container(
                        child: Text(
                          "Total " + dataa.total_harga,
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                        height: 50,
                        width: 400,
                      )),
                ],
              ),
              Center(
                child: Container(
                  height: 45,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      SnackBar snackBar =
                          SnackBar(content: Text("Pembayaran Berhasil"));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        primary: Color.fromARGB(255, 60, 156, 64)),
                    child: Text("Bayar Sekarang",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
