import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:slicing_ui3/komponen/button-menu.dart';
// import 'package:lucide_icons_flutter/lucide_icons.dart';

class Menuatas extends StatefulWidget {
  const Menuatas({super.key});

  @override
  State<Menuatas> createState() => _MenuatasState();
}

class _MenuatasState extends State<Menuatas> {
  List<Country> negara = [
    Country(name: "INA"),
    Country(name: "IND"),
    Country(name: "BRT"),
    Country(name: "GRM"),
  ];

  Country? selectedProduct;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // NAMA USER
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Selamat Pagi",
                  style: GoogleFonts.poppins(fontSize: 12, color: Colors.white),
                ),
                Text(
                  "Perdana Muhammad",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          // IKON + DROPDOWN
          Row(
            children: [
              IconButton(
                style: ButtonStyle(),
                onPressed: () {},
                icon: Icon(Icons.shopping_cart, color: Colors.white),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications, color: Colors.white),
              ),

              // ✅ DROPDOWN BORDER WHITE + ROUNDED + WIDTH
              Container(
                width: 100,
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<Country>(
                    isExpanded: true,
                    dropdownColor: Colors.blue.shade700,
                    iconEnabledColor: Colors.white,

                    hint: Text(
                      "Negara",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),

                    value: selectedProduct,
                    items: negara.map((item) {
                      return DropdownMenuItem(
                        value: item,
                        child: Text(
                          item.name,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      );
                    }).toList(),

                    onChanged: (value) {
                      setState(() => selectedProduct = value);
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Country {
  final String name;
  Country({required this.name});
}
