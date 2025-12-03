import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_ui5/decorations/set.dart';

class MenuApps extends StatelessWidget {
  const MenuApps({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Lihat Semua Promo",
                style: TextStyle(
                  // fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent.shade700,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            spacing: 15,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  KomponenMenuApps(
                    image: 'images/alfamidi.png',
                    text: "Online Produk",
                  ),
                  KomponenMenuApps(
                    image: 'images/alfamidi.png',
                    text: "Kalkulator Zat",
                  ),
                  KomponenMenuApps(
                    image: 'images/alfamidi.png',
                    text: "Tagihan",
                  ),
                  KomponenMenuApps(
                    image: 'images/alfamidi.png',
                    text: "Gift Card",
                  ),
                  KomponenMenuApps(
                    image: 'images/alfamidi.png',
                    text: "Bonus Point",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  KomponenMenuApps(
                    image: 'images/alfamidi.png',
                    text: "Online Produk",
                  ),
                  KomponenMenuApps(
                    image: 'images/alfamidi.png',
                    text: "Kalkulator Zat",
                  ),
                  KomponenMenuApps(
                    image: 'images/alfamidi.png',
                    text: "Tagihan",
                  ),
                  KomponenMenuApps(
                    image: 'images/alfamidi.png',
                    text: "Gift Card",
                  ),
                  KomponenMenuApps(
                    image: 'images/alfamidi.png',
                    text: "Bonus Point",
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class KomponenMenuApps extends StatelessWidget {
  final String image;
  final String text;
  const KomponenMenuApps({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ClassName.color4,
            image: DecorationImage(image: AssetImage(image), scale: 6),
          ),
        ),
        Text(text, style: TextStyle(fontSize: 10)),
      ],
    );
  }
}
