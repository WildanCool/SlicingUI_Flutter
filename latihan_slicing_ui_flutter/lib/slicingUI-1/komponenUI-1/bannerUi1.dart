import 'package:flutter/material.dart';

class BannerInfo extends StatelessWidget {
  final String banner;
  const BannerInfo({super.key, required this.banner});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          // color: Colors.amber,
          image: DecorationImage(image: AssetImage(banner)),
        ),
      ),
    );
  }
}
