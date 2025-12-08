import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_ui5/decorations/set.dart';

class FlashSale extends StatelessWidget {
  const FlashSale({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.purple.shade100,
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
                color: Colors.deepPurple,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 15,
              children: [
                SizedBox(width: 5),
                ProductList(
                  image: 'images/produk1.png',
                  namaProduk: "Ultra Milk",
                  deskripsi: "Ultra Milk Cream, Fresh Milk 1,5 Liter.",
                  harga: "Rp 18.000,-",
                ),
                ProductList(
                  image: 'images/produk2.jpg',
                  namaProduk: "Sunlight",
                  deskripsi: "Sabun Cuci Piring 'Sekali Usap!', 1L",
                  harga: "Rp 20.000,-",
                ),
                ProductList(
                  image: 'images/produk3.jpg',
                  namaProduk: "Pop Mie",
                  deskripsi: "Rasa Mie Goreng, Bikin Naagiihhh",
                  harga: "Rp 7.000,-",
                ),
                ProductList(
                  image: 'images/produk4.jpg',
                  namaProduk: "Bebelac",
                  deskripsi: "Susu Bayi, Untuk Bayi 2 Tahun+",
                  harga: "Rp 120.000,-",
                ),
                ProductList(
                  image: 'images/produk1.png',
                  namaProduk: "Ultra Milk",
                  deskripsi: "Ultra Milk Cream, Fresh Milk 1,5 Liter.",
                  harga: "Rp 18.000,-",
                ),
                ProductList(
                  image: 'images/produk2.jpg',
                  namaProduk: "Sunlight",
                  deskripsi: "Sabun Cuci Piring 'Sekali Usap!', 1L",
                  harga: "Rp 20.000,-",
                ),
                ProductList(
                  image: 'images/produk3.jpg',
                  namaProduk: "Pop Mie",
                  deskripsi: "Rasa Mie Goreng, Bikin Naagiihhh",
                  harga: "Rp 7.000,-",
                ),
                ProductList(
                  image: 'images/produk4.jpg',
                  namaProduk: "Bebelac",
                  deskripsi: "Susu Bayi, Untuk Bayi 2 Tahun+",
                  harga: "Rp 120.000,-",
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

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
                color: Colors.deepPurple,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  widget.namaProduk,
                  style: TextStyle(color: ClassName.color5, fontSize: 12),
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
                Text(
                  "Produk Online",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
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
