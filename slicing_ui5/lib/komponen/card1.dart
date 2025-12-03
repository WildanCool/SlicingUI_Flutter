import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 18, right: 18, top: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                spacing: 5,
                children: [
                  Image.asset('images/dollar.png', width: 15),
                  Text(
                    "3.086",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text(
                "Tukar A-Poin",
                style: GoogleFonts.poppins(
                  fontSize: 8,
                  color: Colors.blue.shade800,
                ),
              ),
            ],
          ),

          Row(
            children: [
              Row(
                spacing: 15,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        spacing: 8,
                        children: [
                          Image.asset('images/voucher.png', width: 20),
                          Text(
                            "9",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text("Voucher", style: GoogleFonts.poppins(fontSize: 8)),
                    ],
                  ),
                  Container(width: 1, height: 40, color: Colors.grey),
                ],
              ),

              SizedBox(width: 8),

              Row(
                spacing: 15,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        spacing: 8,
                        children: [
                          Image.asset('images/stamp.png', width: 20),
                          Text(
                            "2",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text("Stamp", style: GoogleFonts.poppins(fontSize: 8)),
                    ],
                  ),
                  Container(width: 1, height: 40, color: Colors.grey),
                ],
              ),

              SizedBox(width: 8),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        spacing: 8,
                        children: [
                          Image.asset('images/star.png', width: 20),
                          Text(
                            "0",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text("Star", style: GoogleFonts.poppins(fontSize: 8)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
