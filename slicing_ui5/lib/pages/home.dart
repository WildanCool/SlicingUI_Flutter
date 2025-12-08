import 'package:flutter/material.dart';

import 'package:slicing_ui5/decorations/set.dart';
import 'package:slicing_ui5/komponen/appbar.dart';
import 'package:slicing_ui5/komponen/banner_info.dart';
import 'package:slicing_ui5/komponen/flash_sale.dart';
import 'package:slicing_ui5/komponen/menu_apps.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ClassName.color5,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: const [
              Appbar1(),
              SizedBox(height: 40),
              BannerInfo(),
              SizedBox(height: 20),
              MenuApps(),
              SizedBox(height: 40),
              FlashSale(),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ClassName.color5,
        currentIndex: 0,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorit"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Keranjang",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
