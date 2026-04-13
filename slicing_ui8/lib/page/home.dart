import 'package:flutter/material.dart';
import 'package:slicing_ui8/componen/appbar.dart';
import 'package:slicing_ui8/componen/featured.dart';
import 'package:slicing_ui8/componen/pembayaran.dart';
import 'package:slicing_ui8/componen/plan_ahead.dart';
import 'package:slicing_ui8/componen/saldo.dart';
import 'package:slicing_ui8/componen/shortcut.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            AppbarAPK(),

            SaldoAPK(),

            PembayaranAPK(),

            SizedBox(height: 20),

            FeaturedAPK(),

            SizedBox(height: 25),

            PlanAheadAPK(),

            SizedBox(height: 25),

            ShortcutAPK(),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
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
