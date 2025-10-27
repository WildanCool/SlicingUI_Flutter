import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_slicing_ui_flutter/slicingUI-1/komponen1.dart/komponenUI1.dart';

class Slicing1 extends StatefulWidget {
  const Slicing1({super.key});

  @override
  State<Slicing1> createState() => _Slicing1State();
}

class _Slicing1State extends State<Slicing1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.pink.shade300, Colors.white],
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 400,
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.shade200,
                              hintText: 'Makan Apa Hari Ini?',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                        ),

                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.pink,
                          child: Icon(
                            Icons.person,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Judul.teks1,
                            SizedBox(height: 0),
                            Judul.teks2,
                          ],
                        ),
                        SizedBox(
                          child: Image.asset(
                            'assets/fast food.png',
                            width: 150,
                            height: 150,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        KontenKotak2(
                          logo: 'assets/burger.png',
                          text: "Promo Trusszz!",
                        ),
                        KontenKotak2(logo: 'store.png', text: "Resto Terdekat"),
                        KontenKotak2(
                          logo: 'orange-juice.png',
                          text: "Minuman Kekinian",
                        ),
                        KontenKotak2(
                          logo: 'vegetables.png',
                          text: "Makanan Sehat",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
