import 'dart:ffi';
import 'dart:async';
import 'package:tugas2_itc/tugas2_itc.dart' as tugas2_itc;

void main(List<String> arguments) async {
  print("====== List ======");
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(list.sublist(0, 9));
  print('\n');

  print("====== Multidimensi ======");
  List<List<dynamic>> biodata = [
    ["001", "Komang Yuda", " Singaraja", "Badminton"],
    ["002", "Yuda Saputra", " Bali", "Gaming"],
  ];
  print(biodata[0].sublist(0, 3));
  print(biodata[1].sublist(0, 3));
  print('\n');

  print("====== membuat class dan setter getter ======");
  lingkaran bulat = new lingkaran();
  bulat.setradius(7);
  bulat.phi = 3.14;
  print(bulat.luaslingkaran());
  print('\n');

  print("====== Future delay ======");

  print("Nama");
  print("saya");
  await fetchData();
  print('\n');

  print("====== async, await, future ======");
  print("Menyanyi, Mulai");
  Timer(Duration(seconds: 1), () => print("Pelagi-pelangi alangkah indahmu"));
  Timer(Duration(seconds: 2), () => print("Merah kuning hijau"));
  Timer(Duration(seconds: 3), () => print("dilangit yang biru"));
}

Future<void> fetchData() {
  //future delay
  return Future.delayed(Duration(seconds: 2), () => print("Komang"));
}

class lingkaran {
  //class menghitung luas lingkaran
  double? _radius;
  double? phi;
  void setradius(double? _radius) {
    this._radius = _radius;
  }

  double luaslingkaran() {
    return phi! * _radius! * _radius!;
  }
}
