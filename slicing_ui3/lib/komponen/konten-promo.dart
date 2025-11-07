import 'package:flutter/material.dart';

class KontenPromo extends StatelessWidget {
  final String isiGambar;
  const KontenPromo({super.key, required this.isiGambar});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 130,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(fit: BoxFit.fill, image: AssetImage(isiGambar)),
      ),
    );
  }
}
