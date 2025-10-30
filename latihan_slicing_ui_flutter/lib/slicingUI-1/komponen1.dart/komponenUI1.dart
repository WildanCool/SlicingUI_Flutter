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

// KOTAK2 TOMBOL
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
            width: double.infinity,
            child: Text(
              widget.text,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
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

// KONTEN SALDO
class SaldoApp extends StatefulWidget {
  const SaldoApp({super.key});

  @override
  State<SaldoApp> createState() => _SaldoAppState();
}

class _SaldoAppState extends State<SaldoApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      height: 80,
      width: double.infinity,
      // color: Colors.amber,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 255, 237, 244),
        boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 5, offset: Offset(1, 2)),
        ],
        // border: Border.all(
        //   color: Colors.black,
        //   width: 0.5,
        //   style: BorderStyle.solid,
        //   strokeAlign: BorderSide.strokeAlignInside,
        // ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: 35, child: Image.asset('assets/wallet.png')),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Rp522.000",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text("0 Coins"),
              ],
            ),

            SizedBox(width: 50),

            KomponenSaldoApp(logo: 'assets/arrow.png', text: "Bayar"),
            KomponenSaldoApp(logo: 'assets/plus.png', text: "Top Up"),
            KomponenSaldoApp(logo: 'assets/plus.png', text: "Lainnya"),
          ],
        ),
      ),
    );
  }
}

// TOMBOL2 YG ADA DI SALDO
class KomponenSaldoApp extends StatelessWidget {
  final String logo;
  final String text;
  const KomponenSaldoApp({super.key, required this.logo, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 25, child: Image.asset(logo)),

        Text(text),
      ],
    );
  }
}
