import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_ui5/decorations/set.dart';

class Virgo extends StatelessWidget {
  const Virgo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15, bottom: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                spacing: 5,
                children: [
                  Image.asset('images/v.png', width: 25),
                  Text(
                    "Hubungkan Virgo",
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      color: ClassName.color2,
                    ),
                  ),
                ],
              ),

              Container(
                decoration: BoxDecoration(
                  color: ClassName.color5,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        spacing: 5,
                        children: [
                          Image.asset('images/product.png', width: 20),
                          Text(
                            "Barcode Member",
                            style: GoogleFonts.poppins(
                              fontSize: 8,
                              color: Colors.blueAccent.shade700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
