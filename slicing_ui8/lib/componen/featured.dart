import 'package:flutter/material.dart';

class FeaturedAPK extends StatefulWidget {
  const FeaturedAPK({super.key});

  @override
  State<FeaturedAPK> createState() => _FeaturedAPKState();
}

class _FeaturedAPKState extends State<FeaturedAPK> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Spotlight",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              Text(
                "Lihat Semua",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.purple,
                ),
              ),
            ],
          ),
        ),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            spacing: 18,
            children: [
              SizedBox(width: 5),

              KontenFeatured(),
              KontenFeatured(),
              KontenFeatured(),
              KontenFeatured(),
            ],
          ),
        ),
      ],
    );
  }
}

class KontenFeatured extends StatelessWidget {
  const KontenFeatured({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 320,
            height: 180,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.purpleAccent],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: Colors.purple.shade200),
            ),
          ),

          // ✅ tetap minus (sesuai keinginan kamu)
          Positioned(
            top: -15,
            left: -10,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 251, 222, 255),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: Text(
                "Featured",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
