import 'package:flutter/material.dart';
import 'package:slicing_ui7/murojaah_pasca_ramadhan/komponen/banner.dart';
import 'package:slicing_ui7/murojaah_pasca_ramadhan/komponen/flash_sale.dart';
import 'package:slicing_ui7/murojaah_pasca_ramadhan/komponen/kotak2.dart';

class Project1 extends StatefulWidget {
  const Project1({super.key});

  @override
  State<Project1> createState() => _Project1State();
}

class _Project1State extends State<Project1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 470,
              color: Colors.lightBlueAccent,
              child: Column(
                children: [
                  Banner1(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Lihat Semua Promo",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Column(
                    spacing: 20,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Kotak2(label: "Produk Online"),
                          Kotak2(label: "Kalokulator Zat"),
                          Kotak2(label: "Tagihan"),
                          Kotak2(label: "Gift Card"),
                          Kotak2(label: "Bonus Point"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Kotak2(label: "Produk Online"),
                          Kotak2(label: "Kalokulator Zat"),
                          Kotak2(label: "Tagihan"),
                          Kotak2(label: "Gift Card"),
                          Kotak2(label: "Bonus Point"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            FlashSale(),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blueGrey,
        backgroundColor: Colors.blue.shade50,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
