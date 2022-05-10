import 'package:flutter/cupertino.dart';

class DataKost {
  String nama;
  String harga;
  String total_harga;
  String biaya_tambahan;
  String fasilitas;
  String imageAssets;

  DataKost({
    required this.nama,
    required this.harga,
    required this.total_harga,
    required this.biaya_tambahan,
    required this.fasilitas,
    required this.imageAssets,
  });
}

var listData = [
  DataKost(
      nama: "Kost Yulia",
      harga: "Rp 2.000.000/bln",
      total_harga: "Rp 2.470.000",
      biaya_tambahan:
          "- Air : Rp 50.000/bln\n- Listrik : Rp 400.000/bln\n- Sampah : Rp 20.000/bln",
      fasilitas:
          "- Kasur\n- Kamar Mandi Dalam\n- Water Heater\n- AC\n- Dapur Pribadi\n- Ukuran Kamar 3x4\n- Kloset Duduk\n- Free WiFi\n- TV\n- Meja",
      imageAssets: "images/kost_yulia.png"),
  DataKost(
      nama: "Kost Angga",
      harga: "Rp 750.000/bln",
      total_harga: "Rp 995.000",
      biaya_tambahan:
          "- Air : Rp 30.000/bln\n- Listrik : Rp 200.000/bln\n- Sampah : Rp 15.000/bln",
      fasilitas:
          "- Kamar Mandi Dalam\n- Dapur Pribadi\n- Ukuran Kamar 3x3\n- Kloset Jongkok",
      imageAssets: "images/kost_angga.png"),
  DataKost(
      nama: "Kost Sultan",
      harga: "Rp 1.500.000/bln",
      total_harga: "Rp 1.858.000",
      biaya_tambahan:
          "- Air : Rp 40.000/bln\n- Listrik : Rp 300.000/bln\n- Sampah : Rp 18.000/bln",
      fasilitas:
          "- Kasur\n- Kamar Mandi Dalam\n- Dapur Pribadi\n- Ukuran Kamar 3x3\n- Kloset Duduk\n- Free WiFi",
      imageAssets: "images/kost_sultan.png"),
  DataKost(
      nama: "Kost Singaraja",
      harga: "Rp 800.000/bln",
      total_harga: "Rp 1.104.000",
      biaya_tambahan:
          "- Air : Rp 36.000/bln\n- Listrik : Rp 250.000/bln\n- Sampah : Rp 18.000/bln",
      fasilitas:
          "- Kamar Mandi Dalam\n- Dapur Pribadi\n- Ukuran Kamar 3x3\n- Kloset Jongkok\n- Free WiFi",
      imageAssets: "images/kost_singaraja.png"),
];
