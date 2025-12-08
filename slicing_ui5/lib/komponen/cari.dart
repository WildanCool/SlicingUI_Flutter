import 'package:flutter/material.dart';
import 'package:slicing_ui5/decorations/set.dart';

class Cari1 extends StatelessWidget {
  const Cari1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        // Kotak Pencarian
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: ClassName.color5,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              constraints: BoxConstraints(maxHeight: 35),
              contentPadding: EdgeInsets.all(0),
              prefixIcon: Icon(Icons.search),
              hintText: "Vitamin untuk anak",
              hintStyle: TextStyle(color: ClassName.color4),
            ),
          ),
        ),

        // Kotak Scan & Favorite
        Container(
          height: 35,
          width: 35,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.black.withAlpha(100),
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: ClassName.color5, width: 0.5),
          ),
          child: Image.asset("images/card-scan.png"),
        ),
        Container(
          height: 35,
          width: 35,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.black.withAlpha(100),
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: ClassName.color5, width: 0.5),
          ),
          child: Image.asset("images/favorite.png"),
        ),
      ],
    );
  }
}
