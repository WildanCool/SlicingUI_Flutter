import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_slicing_ui_flutter/slicingUI-1/komponenUI-1/bannerUi1.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_slicing_ui_flutter/slicingUI-1/komponenUI-1/komponenUi1.dart';
import 'package:latihan_slicing_ui_flutter/slicingUI-1/komponenUI-1/kotakUi1.dart';

class Slicing1 extends StatefulWidget {
  Slicing1({super.key});

  @override
  State<Slicing1> createState() => _Slicing1State();
}

class _Slicing1State extends State<Slicing1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.grey.shade200,
                                  hintText: 'Makan Apa Hari Ini?',
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 15,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 15),
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

                        SizedBox(height: 15),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Judul.teks1,
                                SizedBox(height: 4),
                                Judul.teks2,
                              ],
                            ),
                            Image.asset(
                              'assets/fast food.png',
                              width: 150,
                              height: 150,
                            ),
                          ],
                        ),

                        SizedBox(height: 15),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            KontenKotak2(
                              logo: 'assets/burger.png',
                              text: "Promo Trusszz!",
                            ),
                            KontenKotak2(
                              logo: 'assets/store.png',
                              text: "Resto Terdekat",
                            ),
                            KontenKotak2(
                              logo: 'assets/orange-juice.png',
                              text: "Minuman Kekinian",
                            ),
                            KontenKotak2(
                              logo: 'assets/vegetables.png',
                              text: "Makanan Sehat",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 5),

                SaldoApp(),

                SizedBox(height: 30),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    spacing: 30,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          KotakMenu(logo: 'assets/goRide.png', text: "Go Ride"),
                          KotakMenu(logo: 'assets/goCar.png', text: "Go Car"),
                          KotakMenu(logo: 'assets/goFood.png', text: "Go Food"),
                          KotakMenu(logo: 'assets/goBox.png', text: "Go Box"),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          KotakMenu(logo: 'assets/goMart.png', text: "Go Mart"),
                          KotakMenu(
                            logo: 'assets/goTagihan.png',
                            text: "Go Tagihan",
                          ),
                          KotakMenu(
                            logo: 'assets/goTransit.png',
                            text: "Go Transit",
                          ),
                          KotakMenu(logo: 'assets/goCar.png', text: "Go Car"),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 70),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Cek PROMO Hari Ini!",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: PageView(
                    children: [
                      BannerInfo(banner: 'assets/banner1.png'),
                      BannerInfo(banner: 'assets/banner2.png'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: SizedBox(height: 30, child: Image.asset('assets/home.png')),
            ),
            IconButton(
              onPressed: () {},
              icon: SizedBox(
                height: 30,
                child: Image.asset('assets/promo.png'),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SizedBox(height: 30, child: Image.asset('assets/chat.png')),
            ),
            IconButton(
              onPressed: () {},
              icon: SizedBox(
                height: 30,
                child: Image.asset('assets/shopping-bag.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
