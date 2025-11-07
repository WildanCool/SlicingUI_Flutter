import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class Banner1 extends StatefulWidget {
  const Banner1({super.key});

  @override
  State<Banner1> createState() => _Banner1State();
}

class _Banner1State extends State<Banner1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 15,
            children: [
              Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple, width: 2),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.purpleAccent, Colors.purple.shade600],
                  ),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Icon(
                  LucideIcons.shipWheel,
                  size: 50,
                  color: Colors.white,
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "TRIP Planner",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Rencanakan Perjalanan",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  Text(
                    "Terbaikmu.",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white, width: 1),
                    shape: BoxShape.rectangle,
                    color: Colors.transparent,
                  ),
                  child: Container(
                    width: 70,
                    height: 45,
                    alignment: Alignment.center,
                    child: Text(
                      "BUAT",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
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
