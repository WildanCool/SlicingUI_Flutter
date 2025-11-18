import 'package:flutter/material.dart';

class KontenWallet1 extends StatefulWidget {
  final String gambar;
  final String text;
  final double scale;
  const KontenWallet1({
    super.key,
    required this.gambar,
    required this.text,
    required this.scale,
  });

  @override
  State<KontenWallet1> createState() => _KontenWallet1State();
}

class _KontenWallet1State extends State<KontenWallet1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.green.shade600.withOpacity(0.8),
          ),
          child: Image.asset(widget.gambar, scale: widget.scale),
        ),
        Text(
          widget.text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
      ],
    );
  }
}
