import 'package:flutter/material.dart';

class PromoHariIni extends StatelessWidget {
  final Color atas;
  final Color bawah;
  final String judul;
  final String pendukung;
  const PromoHariIni({
    super.key,
    required this.judul,
    required this.pendukung,
    required this.atas,
    required this.bawah,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 120,

      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [atas, bawah],
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 7,
          children: [
            Text(
              judul,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              pendukung,
              style: TextStyle(fontSize: 12, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
