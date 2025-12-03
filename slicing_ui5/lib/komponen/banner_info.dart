import 'package:flutter/material.dart';

class BannerInfo extends StatelessWidget {
  const BannerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> banner = [
      "images/banner1.png",
      "images/banner2.png",
      "images/banner3.png",
    ];

    return SizedBox(
      height: 160,
      child: PageView.builder(
        itemCount: banner.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(15),
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(2, 2),
                  blurRadius: 2.5,
                ),
              ],
              image: DecorationImage(
                image: AssetImage(banner[index]),
                fit: BoxFit.fill,
              ),
            ),
          );
        },
      ),
    );
  }
}
