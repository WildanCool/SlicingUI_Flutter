import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_slicing_ui_flutter/slicingUI-2/komponenUI-2/konten-krl.dart';
import 'package:latihan_slicing_ui_flutter/slicingUI-2/komponenUI-2/konten-pilihan.dart';

class Slicing2 extends StatefulWidget {
  const Slicing2({super.key});

  @override
  State<Slicing2> createState() => _Slicing2State();
}

class _Slicing2State extends State<Slicing2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Selamat Pagi",
                            style: GoogleFonts.poppins(fontSize: 10),
                          ),
                          Text("Perdana Muhammad"),
                        ],
                      ),
                      Row(
                        spacing: 10,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(),
                          CircleAvatar(),
                          Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 50),

                  // KONTEN SALDO
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            spacing: 12,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 80,
                                height: 10,
                                decoration: BoxDecoration(color: Colors.grey),
                              ),
                              Container(
                                width: 50,
                                height: 10,
                                decoration: BoxDecoration(color: Colors.grey),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            spacing: 20,
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  // KONTEN2 KRL
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 20,
                      children: [
                        KontenKRL(
                          logo: 'lib/slicingUI-2/assetsUI-2/train1.png',
                        ),
                        KontenKRL(
                          logo: 'lib/slicingUI-2/assetsUI-2/train2.png',
                        ),
                        KontenKRL(
                          logo: 'lib/slicingUI-2/assetsUI-2/train3.png',
                        ),
                        KontenKRL(
                          logo: 'lib/slicingUI-2/assetsUI-2/train4.png',
                        ),
                        KontenKRL(
                          logo: 'lib/slicingUI-2/assetsUI-2/train1.png',
                        ),
                        KontenKRL(
                          logo: 'lib/slicingUI-2/assetsUI-2/train2.png',
                        ),
                        KontenKRL(
                          logo: 'lib/slicingUI-2/assetsUI-2/train3.png',
                        ),
                        KontenKRL(
                          logo: 'lib/slicingUI-2/assetsUI-2/train4.png',
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 30),

                  // KONTEN2 PILIHAN
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      KontenPilihan(),
                      KontenPilihan(),
                      KontenPilihan(),
                      KontenPilihan(),
                    ],
                  ),

                  SizedBox(height: 20),
                  Container(
                    height: 130,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),

                  SizedBox(height: 30),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Promo Terbaru",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blueAccent,
                              width: 1,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 10,
                            ),
                            child: Text(
                              "Lihat Semua",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
