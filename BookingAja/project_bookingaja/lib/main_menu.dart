import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_bookingaja/detail/detail.dart';
import 'dataa/data.dart';

class main_menu extends StatefulWidget {
  main_menu({
    Key? key,
    required this.username,
  }) : super(key: key);
  final String username;

  @override
  State<main_menu> createState() => _main_menuState();
}

class _main_menuState extends State<main_menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BookingAja",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
              onPressed: () {
                SystemNavigator.pop();
              },
              icon: Icon(
                Icons.exit_to_app,
                size: 29,
              ))
        ],
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 170,
                width: 400,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 60, 245, 230),
                    borderRadius: BorderRadius.circular(15)),
              ),
              Positioned.fill(
                right: 140,
                bottom: 90,
                top: 12,
                left: 17,
                child: Container(
                  child: Text(
                    "Selamat Datang! \n" + widget.username,
                    style: TextStyle(fontSize: 25),
                  ),
                  margin: EdgeInsets.all(8),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                ),
              ),
              Positioned.fill(
                  left: 240,
                  top: 15,
                  bottom: 15,
                  child: Image(
                    image: AssetImage("images/hi.png"),
                  )),
              Positioned.fill(
                  top: 100,
                  bottom: 20,
                  left: 10,
                  right: 10,
                  child: Container(
                    child: _searchField(),
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 253, 251, 251),
                        borderRadius: BorderRadius.circular(30)),
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              Container(
                height: 170,
                width: 400,
                margin: EdgeInsets.all(8),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
              ),
              Positioned.fill(
                  top: 20,
                  left: 20,
                  right: 90,
                  bottom: 140,
                  child: Container(
                    child: Text(
                      "Pelayanan",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  )),
              Positioned.fill(
                top: 60,
                bottom: 40,
                left: 30,
                right: 275,
                child: Container(
                  child: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/pesan');
                      },
                      icon: Image.asset(
                        "images/icons/booking.png",
                        height: 65,
                        width: 65,
                      )),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 65, 152, 173),
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
              Positioned.fill(
                  top: 60,
                  bottom: 40,
                  left: 150,
                  right: 150,
                  child: Container(
                    child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/pembayaran");
                        },
                        icon: Image.asset("images/icons/card.png")),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 65, 152, 173),
                        borderRadius: BorderRadius.circular(30)),
                  )),
              Positioned.fill(
                  top: 60,
                  bottom: 40,
                  left: 275,
                  right: 30,
                  child: Container(
                    child: IconButton(
                        onPressed: null,
                        icon: Image.asset("images/icons/aktivitas.png")),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 65, 152, 173),
                        borderRadius: BorderRadius.circular(30)),
                  )),
              Positioned.fill(
                  top: 150,
                  bottom: 10,
                  left: 35,
                  right: 260,
                  child: Container(
                    child: Text(
                      "Pesan kost",
                      style: TextStyle(fontSize: 17),
                    ),
                  )),
              Positioned.fill(
                  top: 150,
                  bottom: 10,
                  left: 150,
                  right: 140,
                  child: Container(
                    child: Text(
                      "Pembayaran",
                      style: TextStyle(fontSize: 17),
                    ),
                  )),
              Positioned.fill(
                  top: 150,
                  bottom: 10,
                  left: 285,
                  right: 35,
                  child: Container(
                    child: Text(
                      "Aktivitas",
                      style: TextStyle(fontSize: 17),
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: 20,
            width: 20,
          ),
          Positioned.fill(
              top: 20,
              left: 60,
              right: 100,
              bottom: 140,
              child: Container(
                child: Text(
                  "     Rekomendasi",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              )),
          Positioned.fill(
            top: 200,
            bottom: 30,
            child: Container(height: 230, child: Data()),
          ),
        ],
      ),
    );
  }

  Widget _searchField() {
    return Container(
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            labelText: "Cari",
            prefixIcon: Icon(Icons.search)),
        enabled: true,
      ),
    );
  }

  Widget _textbuttonsingaraja() {
    return Container(
      child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/kost_singaraja');
          },
          child: Text(
            "Kost Singaraja\n Rp 800.000/bln",
            style: TextStyle(fontSize: 17, color: Colors.black),
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
            "Kost Angga\n Rp 750.000/bln",
            style: TextStyle(fontSize: 17, color: Colors.black),
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
            "Kost Sultan\n Rp 1.500.000/bln",
            style: TextStyle(fontSize: 17, color: Colors.black),
          )),
    );
  }
}

class Data extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final DataKost data = listData[index];

          return Container(
              child: Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                child: Stack(
                  children: [
                    Positioned.fill(
                      top: 150,
                      left: -50,
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
                            style: TextStyle(color: Colors.black),
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
                      height: 160,
                      width: 210,
                    ),
                  ],
                ),
                height: 210,
                width: 190,
              ),
            ],
          ));
        },
        itemCount: listData.length);
  }
}
