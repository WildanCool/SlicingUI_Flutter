import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Judul {
  static final teks1 = Stack(
    children: [
      Text(
        "Menu Favorite.",
        style: GoogleFonts.poppins(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          foreground: Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 4
            ..color = Colors.pink,
        ),
      ),

      Text(
        "Menu Favorite.",
        style: GoogleFonts.poppins(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ],
  );

  static final teks2 = Stack(
    children: [
      Text(
        "Makan Sendiri Atau Barengan.",
        style: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          foreground: Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 3
            ..color = Colors.pink,
        ),
      ),

      Text(
        "Makan Sendiri Atau Barengan.",
        style: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    ],
  );
}

class KontenKotak2 extends StatefulWidget {
  final String logo;
  final String text;
  const KontenKotak2({super.key, required this.logo, required this.text});

  @override
  State<KontenKotak2> createState() => _KontenKotak2State();
}

class _KontenKotak2State extends State<KontenKotak2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.pink, width: 2.5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 40, child: Image.asset(widget.logo)),
          const SizedBox(height: 5),
          SizedBox(
            width: double.infinity, // biar Text punya ruang selebar Container
            child: Text(
              widget.text,
              textAlign: TextAlign.center, // ✅ teks rata tengah
              maxLines: 2, // ✅ batasi maksimal 2 baris
              overflow:
                  TextOverflow.ellipsis, // ✅ tambahkan "..." kalau kepanjangan
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
