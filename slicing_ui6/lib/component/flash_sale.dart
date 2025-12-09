import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductList extends StatefulWidget {
  final String image;
  final String deskripsi;
  final String harga;
  final String namaProduk;
  const ProductList({
    super.key,
    required this.image,
    required this.namaProduk,
    required this.deskripsi,
    required this.harga,
  });

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                widget.image,
                width: double.infinity,
                height: 140,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red.shade800,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  widget.namaProduk,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.deskripsi, style: TextStyle(fontSize: 15)),
                SizedBox(height: 20),
                Text(
                  widget.harga,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 2),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Tambah",
                      style: GoogleFonts.poppins(color: Colors.red.shade800),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
