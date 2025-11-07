import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:slicing_ui3/halaman/akun-page.dart';
import 'package:slicing_ui3/halaman/promo-page.dart';
import 'package:slicing_ui3/halaman/ticket-page.dart';
import 'package:slicing_ui3/halaman/train.dart';
import 'package:slicing_ui3/komponen/banner1.dart';
import 'package:slicing_ui3/komponen/konten-promo.dart';
import 'package:slicing_ui3/komponen/konten-tambahan.dart';
import 'package:slicing_ui3/komponen/kotak-wallet.dart';
import 'package:slicing_ui3/komponen/menuatas.dart';
import 'package:slicing_ui3/komponen/opsi-kereta.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    image: DecorationImage(
                      image: AssetImage('assets/stasiun.jpg'),
                      fit: BoxFit.cover,
                      opacity: 0.5,
                    ),
                  ),
                  child: Menuatas(),
                ),

                Positioned(
                  bottom: -65,
                  right: 20,
                  left: 20,
                  child: KotakWallet(),
                ),
              ],
            ),

            SizedBox(height: 100),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 15,
                      children: [
                        OpsiKereta(
                          shadeAtas: Colors.blue.shade300,
                          shadeBawah: Colors.blue.shade800,
                          label: "Antar Kota",
                        ),
                        OpsiKereta(
                          shadeAtas: Colors.amber,
                          shadeBawah: Colors.orange.shade600,
                          label: "Lokal",
                        ),
                        OpsiKereta(
                          shadeAtas: Colors.orange,
                          shadeBawah: Colors.red,
                          label: "Komuter",
                        ),
                        OpsiKereta(
                          shadeAtas: Colors.purple,
                          shadeBawah: Colors.pink.shade400,
                          label: "LRT",
                        ),
                        OpsiKereta(
                          shadeAtas: Colors.blue.shade200,
                          shadeBawah: Colors.blue.shade600,
                          label: "Bandara",
                        ),
                        OpsiKereta(
                          shadeAtas: Colors.blue.shade300,
                          shadeBawah: Colors.blue.shade800,
                          label: "Antar Kota",
                        ),
                        OpsiKereta(
                          shadeAtas: Colors.amber,
                          shadeBawah: Colors.orange.shade600,
                          label: "Lokal",
                        ),
                        OpsiKereta(
                          shadeAtas: Colors.orange,
                          shadeBawah: Colors.red,
                          label: "Komuter",
                        ),
                        OpsiKereta(
                          shadeAtas: Colors.purple,
                          shadeBawah: Colors.pink.shade400,
                          label: "LRT",
                        ),
                        OpsiKereta(
                          shadeAtas: Colors.blue.shade200,
                          shadeBawah: Colors.blue.shade600,
                          label: "Bandara",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 45),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      KontenTambahan(
                        pilihIcon: Icons.hotel_rounded,
                        text: "Hotel",
                      ),
                      KontenTambahan(
                        pilihIcon: Icons.credit_card,
                        text: "Kartu",
                      ),
                      KontenTambahan(
                        pilihIcon: LucideIcons.box,
                        text: "Logistik",
                      ),
                      KontenTambahan(
                        pilihIcon: LucideIcons.circleEllipsis,
                        text: "Lainnya",
                      ),
                    ],
                  ),

                  SizedBox(height: 25),
                  Container(
                    width: double.infinity,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue.shade700,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/background1.png'),
                      ),
                    ),
                    child: Banner1(),
                  ),

                  SizedBox(height: 35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Promo Terbaru",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 0,
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.blue.shade700,
                              width: 1,
                            ),
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                          ),
                          child: Container(
                            width: 120,
                            height: 38,
                            alignment: Alignment.center,
                            child: Text(
                              "Lihat Semua",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                color: Colors.blue.shade700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 18,
                      children: [
                        KontenPromo(isiGambar: 'assets/banner-2.png'),
                        KontenPromo(isiGambar: 'assets/banner-1.png'),
                        KontenPromo(isiGambar: 'assets/banner-3.png'),
                      ],
                    ),
                  ),

                  SizedBox(height: 200),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 70,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home, color: Colors.blue.shade800, size: 28),
            ),
            // BUTTON yg BISA DI TEKAN
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TrainPage()),
                );
              },
              icon: Icon(Icons.train_outlined, size: 28),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TicketPage()),
                );
              },
              icon: Icon(Icons.airplane_ticket_outlined, size: 28),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PromoPage()),
                );
              },
              icon: Icon(Icons.discount_outlined, size: 28),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AkunPage()),
                );
              },
              icon: Icon(Icons.person_outlined, size: 28),
            ),
          ],
        ),
      ),
    );
  }
}
