import 'package:tugas1_itc/tugas1_itc.dart' as tugas1_itc;
import 'dart:io';

void main(List<String> arguments) {
  print('====== Membuat Kalimat Dari Beberapa Variable ======');
  var pertama = "Flutter";
  var kedua = "is";
  var ketiga = "awesome";
  print('output :' + pertama + ' ' + kedua + ' ' + ketiga + '\n');

  print('====== Mengakses Kalimat Dalam String ======');
  var kalimat = 'Belajar Flutter';
  var contoh = kalimat[2] + kalimat[3];
  print('Output :');
  print('contoh :' + contoh);
  print('Kata 1 : ' + kalimat.substring(0, 7));
  print('Kata 2 : ' + kalimat.substring(8, 15) + '\n');

  print('====== Input dan Output ======');
  var nama_depan;
  var nama_belakang;
  stdout.write('Masukkan Nama Depan : ');
  String? namadepan = stdin.readLineSync();
  stdout.write('Masukkan Nama Belakang :');
  String? namabelakang = stdin.readLineSync();
  print("Nama Lengkap : $namadepan  $namabelakang \n");

  print('Membuat Segitiga Siku-Siku (Loop)');
  int baris = 3;
  for (var i = 0; i <= baris; i++) {
    for (var j = 0; j <= i; j++) {
      stdout.write("* ");
    }
    print('\n');
  }

  print('====== Loop dan Conditional ======');
  for (var i = 1; i <= 20; i++) {
    if (i % 2 == 0) {
      print("$i - Genap");
    } else {
      print("$i - Ganjil");
    }
  }

  print('====== Fungsi Menampilkan Text "Selamat Malam" ======');
  tampilkan();
  print('\n');

  print("====== Fungsi dengan parameter (nama, hobby) ======");
  print(biodata("Yuda Saputra", "Badminton\n"));
}

biodata(String nama, String hobby) {
  return "Nama saya " + nama + ", saya memiliki hobby " + hobby;
}

tampilkan() {
  print("Selamat Malam");
}
