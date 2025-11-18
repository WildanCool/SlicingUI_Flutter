import 'package:flutter/material.dart';

class PromoMakanan extends StatelessWidget {
  final String banner;
  const PromoMakanan({super.key, required this.banner});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: double.infinity,
        height: 140,
        decoration: BoxDecoration(
          // color: Colors.amber,
          image: DecorationImage(fit: BoxFit.fill, image: AssetImage(banner)),
        ),
      ),
    );
  }
}
