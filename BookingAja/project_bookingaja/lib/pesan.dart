import 'package:flutter/material.dart';
import 'package:project_bookingaja/detail/detail.dart';
import 'dataa/data.dart';

class pesan extends StatefulWidget {
  const pesan({Key? key}) : super(key: key);

  @override
  State<pesan> createState() => _pesanState();
}

class _pesanState extends State<pesan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Pesan Kost",
            style: TextStyle(fontSize: 25),
          ),
        ),
        body: Data());
  }

  Widget _textbuttonyulia() {
    return Container(
      child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/kost_yulia');
          },
          child: Text(
            "Kost Yulia\nRp 2.000.000/bln",
            style: TextStyle(fontSize: 19, color: Colors.black),
          )),
    );
  }

  Widget _textbuttonsingaraja() {
    return Container(
      child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/kost_singaraja');
          },
          child: Text(
            "Kost Singaraja\nRp 800.000/bln",
            style: TextStyle(fontSize: 19, color: Colors.black),
          )),
    );
  }

  Widget _textbuttonangga() {
    return Container(
      child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/kost_angga');
          },
          child: Text(
            "Kost Angga\nRp 750.000/bln",
            style: TextStyle(fontSize: 19, color: Colors.black),
          )),
    );
  }

  Widget _textbuttonsultan() {
    return Container(
      child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/kost_sultan');
          },
          child: Text(
            "Kost Sultan\nRp 1.500.000/bln",
            style: TextStyle(fontSize: 19, color: Colors.black),
          )),
    );
  }
}

class Data extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          final DataKost data = listData[index];

          return Container(
              child: Column(
            children: [
              SizedBox(
                width: 20,
                height: 20,
              ),
              Container(
                child: Stack(
                  children: [
                    Positioned.fill(
                      top: -30,
                      left: 210,
                      child: Container(
                        height: 50,
                        width: 100,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return IsiData(dataa: data);
                            }));
                          },
                          child: Text(
                            data.nama + "\n" + data.harga,
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return IsiData(dataa: data);
                          }));
                        },
                      ),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(data.imageAssets),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(20)),
                      height: 200,
                      width: 210,
                    ),
                    Positioned.fill(
                        top: 160,
                        left: -50,
                        bottom: -5,
                        child: Container(
                          child: Text("data"),
                          height: 20,
                          width: 20,
                        ))
                  ],
                ),
                height: 210,
                width: 370,
              ),
            ],
          ));
        },
        itemCount: listData.length);
  }
}
