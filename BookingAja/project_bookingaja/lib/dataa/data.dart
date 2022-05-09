import 'package:flutter/cupertino.dart';

class DataKost {
  String nama;
  String harga;
  String biaya_tambahan;
  String fasilitas;
  String imageAssets;

  DataKost({
    required this.nama,
    required this.harga,
    required this.biaya_tambahan,
    required this.fasilitas,
    required this.imageAssets,
  });
}

var listData = [
  DataKost(
      nama: "Kost Yulia",
      harga: "Rp 2.000.000/bln",
      biaya_tambahan:
          "Air : Rp 50.000/bln\nListrik : Rp 400.000/bln\nSampah : Rp 20.000/bln",
      fasilitas:
          "Kasur\nKamar Mandi Dalam\nWater Heater\nAC\nDapur Pribadi\nUkuran Kamar 3x4\nKloset Duduk\nFree WiFi\nTV\nMeja",
      imageAssets: "images/kost_yulia.png"),
  DataKost(
      nama: "Kost Angga",
      harga: "Rp 750.000/bln",
      biaya_tambahan:
          "Air : Rp 30.000/bln\nListrik : Rp 200.000/bln\nSampah : Rp 15.000/bln",
      fasilitas:
          "Kamar Mandi Dalam\nDapur Pribadi\nUkuran Kamar 3x3\nKloset Jongkok",
      imageAssets: "images/kost_angga.png"),
  DataKost(
      nama: "Kost Sultan",
      harga: "Rp 1.500.000/bln",
      biaya_tambahan:
          "Air : Rp 40.000/bln\nListrik : Rp 300.000/bln\nSampah : Rp 18.000/bln",
      fasilitas:
          "Kasur\nKamar Mandi Dalam\nDapur Pribadi\nUkuran Kamar 3x3\nKloset Duduk\nFree WiFi",
      imageAssets: "images/kost_sultan.png"),
  DataKost(
      nama: "Kost Singaraja",
      harga: "Rp 800.000/bln",
      biaya_tambahan:
          "Air : Rp 36.000/bln\nListrik : Rp 250.000/bln\nSampah : Rp 18.000/bln",
      fasilitas:
          "Kamar Mandi Dalam\nDapur Pribadi\nUkuran Kamar 3x3\nKloset Jongkok\nFree WiFi",
      imageAssets: "images/kost_singaraja.png"),
];
