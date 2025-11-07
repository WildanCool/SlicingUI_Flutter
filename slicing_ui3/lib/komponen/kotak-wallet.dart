import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class KotakWallet extends StatefulWidget {
  const KotakWallet({super.key});

  @override
  State<KotakWallet> createState() => _KotakWalletState();
}

class _KotakWalletState extends State<KotakWallet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 170,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 2,
            offset: Offset(1, 2),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          // KONTEN WALLET
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              // border: Border.symmetric(
              //   vertical: BorderSide(
              //     color: Colors.grey,
              //     width: 1,
              //   ),
              // ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 35,
                          child: Image.asset('assets/kaupays.png'),
                        ),

                        Text(
                          "Rp 500.000.000,00",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [SizedBox(height: 60, child: VerticalDivider())],
                  // ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 60, child: VerticalDivider()),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 25,
                              child: Image.asset('assets/scan.png'),
                            ),
                            Text("Scan"),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 25,
                              child: Image.asset('assets/top-up.png'),
                            ),
                            Text("Top Up"),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 25,
                              child: Image.asset('assets/history.png'),
                            ),
                            Text("Riwayat"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // KONTEN RAILPOIN
          Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 6,
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        // color: Colors.amber,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.orange, Colors.amber.shade200],
                          ),
                          border: Border.all(color: Colors.amber, width: 3),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: SizedBox(
                          child: Image.asset('assets/rail_poin.png', scale: 40),
                        ),
                      ),

                      Text(
                        "0",
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),

                      Text(
                        "Railpoin",
                        style: GoogleFonts.poppins(fontSize: 12),
                      ),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      spacing: 5,
                      children: [
                        Icon(Icons.star, color: Colors.deepPurple),
                        Text(
                          "Basic",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.blue.shade800,
                          ),
                        ),
                        Container(
                          height: 22,
                          width: 22,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade700,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(
                            size: 15,
                            LucideIcons.chevronRight,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
