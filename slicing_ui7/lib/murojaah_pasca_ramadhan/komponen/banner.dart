import 'package:flutter/material.dart';

class Banner1 extends StatelessWidget {
  const Banner1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: PageView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(2, 2),
                    blurRadius: 3,
                  ),
                ],
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("images/banner1.png"),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(2, 2),
                    blurRadius: 3,
                  ),
                ],
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("images/banner2.png"),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(2, 2),
                    blurRadius: 3,
                  ),
                ],
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("images/banner3.png"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
