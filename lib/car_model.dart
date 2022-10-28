import 'package:flutter/cupertino.dart';

class Cars {
  final String images;
  final String title;
  final String description;
  final int price;
  final String subtitle;

  const Cars({
    required this.images,
    required this.title,
    required this.description,
    required this.price,
    required this.subtitle,
  });
}

const List<Cars> listCars = [
  Cars(
    images: "img/brio.webp",
    title: "Honda Brio 2022",
    description:
        "Honda Brio 2022 adalah 5 Seater Hatchback yang tersedia dalam daftar harga Rp 157,9 - 237,4 Juta di Indonesia. Ini tersedia dalam 8 warna, 7 varian, 1 pilihan mesin, dan 2 opsi transmisi: Manual dan CVT di Indonesia. Dimensi Brio adalah 3815 mm L x 1680 mm W x 1485 mm H.",
    price: 10153,
    subtitle: "Honda",
  ),
  Cars(
    images: "img/yaris.webp",
    title: "Toyota Yaris 2022",
    description:
        "Toyota Yaris 2022 adalah 5 Seater Hatchback yang tersedia dalam daftar harga Rp 295,8 - 325,1 Juta di Indonesia. Ini tersedia dalam 7 warna, 4 varian, 1 pilihan mesin, dan 2 opsi transmisi: CVT dan Manual di Indonesia. Dimensi Yaris adalah 4145 mm L x 1730 mm W x 1500 mm H.",
    price: 19012,
    subtitle: "Toyota",
  ),
  Cars(
    images: "img/Mazda2.webp",
    title: "Mazda 2 2022",
    description:
        "Mazda 2 2022 adalah 5 Seater Hatchback yang tersedia dengan harga Rp 338,8 Juta di Indonesia. Ini tersedia dalam 5 warna, 1 varian, 1 pilihan mesin, dan 1 opsi transmisi: Otomatis di Indonesia. Mobil ini memiliki ground clearance 152 mm dengan dimensi sebagai berikut: 4060 mm L x 1695 mm W x 1495 mm H.",
    price: 21776,
    subtitle: "Mazda",
  ),
];
