import 'package:flutter/material.dart';
import 'package:project_bookingaja/dataa/data.dart';
import 'package:project_bookingaja/pembayaran.dart';

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
                      left: 10,
                      top: 140,
                      bottom: 200,
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
                        height: 100,
                        width: 400,
                      )),
                  Positioned.fill(
                      top: 180,
                      left: 30,
                      bottom: 10,
                      child: Container(
                        child: Text(
                          dataa.fasilitas,
                          style: TextStyle(fontSize: 15),
                        ),
                        height: 10,
                        width: 400,
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 45,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      final data2 = dataa;
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return Pembayaran(dataa: data2);
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        primary: Color.fromARGB(255, 60, 156, 64)),
                    child: Text("Pesan Sekarang",
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
