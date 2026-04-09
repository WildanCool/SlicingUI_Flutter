import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Maxim extends StatefulWidget {
  const Maxim({super.key});

  @override
  State<Maxim> createState() => _MaximState();
}

class _MaximState extends State<Maxim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(1, 2),
                  blurRadius: 5,
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // SizedBox(
                    //   width: 80,
                    //   height: 70,
                    //   child: Image.asset('asset/images/maxim-logo.png'),
                    // ),
                    Row(
                      children: [
                        Text(
                          "M",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "A",
                          style: GoogleFonts.poppins(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "XIM",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        IconButton(
                          color: Colors.white,
                          onPressed: () {},
                          icon: Icon(Icons.notifications),
                        ),
                        IconButton(
                          color: Colors.white,

                          onPressed: () {},
                          icon: Icon(Icons.favorite),
                        ),
                      ],
                    ),
                  ],
                ),

                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.search),
                    // border: OutlineInputBorder(),
                    border: InputBorder.none,
                    hint: Text("Search"),
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              spacing: 20,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 207, 207, 207),
                          blurRadius: 10,
                          offset: Offset(1, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Current Balance",
                          style: GoogleFonts.poppins(fontSize: 12),
                        ),
                        Row(
                          spacing: 6,
                          children: [
                            Icon(Icons.wallet),
                            Text(
                              "Rp 123.000",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 207, 207, 207),
                          blurRadius: 10,
                          offset: Offset(1, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Coins", style: GoogleFonts.poppins(fontSize: 12)),
                        Row(
                          spacing: 6,
                          children: [
                            Icon(Icons.currency_bitcoin),
                            Text(
                              "120",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
