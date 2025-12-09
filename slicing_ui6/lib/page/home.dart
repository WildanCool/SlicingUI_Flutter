import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_ui6/component/flash_sale.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.red.shade100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Text(
                      "Flash Sale!",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Column(
                    spacing: 20,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          spacing: 15,
                          children: [
                            SizedBox(width: 5),
                            ProductList(
                              image: "asset/images/burger.jpg",
                              namaProduk: "Burger",
                              deskripsi: "Enak",
                              harga: "Rp 28.000,-",
                            ),
                            ProductList(
                              image: "asset/images/kentang.jpg",
                              namaProduk: "Kentang Goreng",
                              deskripsi: "Enak",
                              harga: "Rp 28.000,-",
                            ),
                            ProductList(
                              image: "asset/images/ayamGoreng.jpg",
                              namaProduk: "Ayam Ciken",
                              deskripsi: "Enak",
                              harga: "Rp 28.000,-",
                            ),
                            ProductList(
                              image: "asset/images/esKrim.jpg",
                              namaProduk: "Es Krim",
                              deskripsi: "Enak",
                              harga: "Rp 28.000,-",
                            ),
                            ProductList(
                              image: "asset/images/burger.jpg",
                              namaProduk: "Burger",
                              deskripsi: "Enak",
                              harga: "Rp 28.000,-",
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          spacing: 15,
                          children: [
                            SizedBox(width: 5),
                            ProductList(
                              image: "asset/images/burger.jpg",
                              namaProduk: "Burger",
                              deskripsi: "Enak",
                              harga: "Rp 28.000,-",
                            ),
                            ProductList(
                              image: "asset/images/kentang.jpg",
                              namaProduk: "Kentang Goreng",
                              deskripsi: "Enak",
                              harga: "Rp 28.000,-",
                            ),
                            ProductList(
                              image: "asset/images/ayamGoreng.jpg",
                              namaProduk: "Ayam Ciken",
                              deskripsi: "Enak",
                              harga: "Rp 28.000,-",
                            ),
                            ProductList(
                              image: "asset/images/esKrim.jpg",
                              namaProduk: "Es Krim",
                              deskripsi: "Enak",
                              harga: "Rp 28.000,-",
                            ),
                            ProductList(
                              image: "asset/images/burger.jpg",
                              namaProduk: "Burger",
                              deskripsi: "Enak",
                              harga: "Rp 28.000,-",
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          spacing: 15,
                          children: [
                            SizedBox(width: 5),
                            ProductList(
                              image: "asset/images/burger.jpg",
                              namaProduk: "Burger",
                              deskripsi: "Enak",
                              harga: "Rp 28.000,-",
                            ),
                            ProductList(
                              image: "asset/images/kentang.jpg",
                              namaProduk: "Kentang Goreng",
                              deskripsi: "Enak",
                              harga: "Rp 28.000,-",
                            ),
                            ProductList(
                              image: "asset/images/ayamGoreng.jpg",
                              namaProduk: "Ayam Ciken",
                              deskripsi: "Enak",
                              harga: "Rp 28.000,-",
                            ),
                            ProductList(
                              image: "asset/images/esKrim.jpg",
                              namaProduk: "Es Krim",
                              deskripsi: "Enak",
                              harga: "Rp 28.000,-",
                            ),
                            ProductList(
                              image: "asset/images/burger.jpg",
                              namaProduk: "Burger",
                              deskripsi: "Enak",
                              harga: "Rp 28.000,-",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
