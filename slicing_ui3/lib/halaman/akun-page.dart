import 'package:flutter/material.dart';
import 'package:slicing_ui3/halaman/homepage.dart';
import 'package:slicing_ui3/halaman/promo-page.dart';
import 'package:slicing_ui3/halaman/ticket-page.dart';
import 'package:slicing_ui3/halaman/train.dart';

class AkunPage extends StatefulWidget {
  const AkunPage({super.key});

  @override
  State<AkunPage> createState() => _AkunPageState();
}

class _AkunPageState extends State<AkunPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        height: 70,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homepage()),
                );
              },
              icon: Icon(Icons.home_outlined, size: 28),
            ),
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
            //
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.person, color: Colors.blue.shade800, size: 28),
            ),
          ],
        ),
      ),
    );
  }
}
