import 'package:flutter/material.dart';

class Tombol2Promo extends StatefulWidget {
  final String text;
  const Tombol2Promo({super.key, required this.text});

  @override
  State<Tombol2Promo> createState() => _Tombol2PromoState();
}

class _Tombol2PromoState extends State<Tombol2Promo> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        minimumSize: const Size(80, 20),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: Colors.black),
        ),
      ),
      child: Text(widget.text, style: TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
