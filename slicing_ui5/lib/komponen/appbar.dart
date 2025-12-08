import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:slicing_ui5/decorations/set.dart';
import 'package:slicing_ui5/komponen/card1.dart';
import 'package:slicing_ui5/komponen/cari.dart';
import 'package:slicing_ui5/komponen/virgo.dart';

class Appbar1 extends StatelessWidget {
  const Appbar1({super.key});

  @override
  Widget build(BuildContext context) {
    final double tinggi = MediaQuery.of(context).size.height;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: tinggi * 1 / 3,
          width: double.infinity,
          padding: EdgeInsets.all(15),

          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.purple, ClassName.color5],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Alamat Kirim",
                style: GoogleFonts.poppins(fontSize: 8, color: Colors.white),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Pondok",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 6),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 3,
                          horizontal: 5,
                        ),

                        child: Text(
                          "Utama",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                            fontSize: 8,
                          ),
                        ),
                      ),
                      SizedBox(width: 2),
                      Container(
                        child: Icon(
                          Icons.arrow_drop_down,
                          // color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    spacing: 15,
                    children: [
                      Container(child: Icon(Icons.chat, color: Colors.white)),
                      Container(
                        child: Icon(Icons.notifications, color: Colors.white),
                      ),
                      Container(
                        child: Icon(Icons.shopping_cart, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 5),
              Text(
                "Perumahan Eco Village, Serpong Mekar Sa..",
                style: GoogleFonts.poppins(fontSize: 10, color: Colors.white),
              ),

              SizedBox(height: 20),
              Cari1(),
            ],
          ),
        ),

        Positioned(
          top: 160,
          left: 15,
          right: 15,
          child: Container(
            width: double.infinity,
            // height: 180,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.purple, Colors.pinkAccent],
              ),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: ClassName.color5, width: 3),
              boxShadow: [
                BoxShadow(
                  color: Colors.deepPurple,
                  blurRadius: 5,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 7,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Hai, Wildan",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Newbie Member",
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    width: double.infinity,
                    // height: 125,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),

                    child: Column(
                      spacing: 5,
                      children: [
                        Card1(),
                        Divider(
                          indent: 12,
                          endIndent: 12,
                          color: Colors.purple,
                          thickness: 1.2,
                        ),
                        Virgo(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
