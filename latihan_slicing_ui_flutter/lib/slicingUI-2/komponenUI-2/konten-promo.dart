import 'package:flutter/material.dart';

class KontenPromo extends StatelessWidget {
  final String promo;
  const KontenPromo({super.key, required this.promo});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      height: 140,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(promo), fit: BoxFit.fill),
      ),
    );
  }
}
