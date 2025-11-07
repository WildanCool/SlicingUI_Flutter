import 'package:flutter/material.dart';

class OpsiKereta extends StatelessWidget {
  final Color shadeAtas;
  final Color shadeBawah;
  final String iconPath;
  final String label;
  // final VoidCallback? onTap;

  const OpsiKereta({
    super.key,
    required this.shadeAtas,
    required this.shadeBawah,
    required this.label,
    this.iconPath = "assets/rail_poin.png",
    // this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            elevation: 0,
            padding: EdgeInsets.zero,
            shape: const CircleBorder(),
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [shadeAtas, shadeBawah],
              ),
            ),
            child: Container(
              width: 70,
              height: 70,
              alignment: Alignment.center,
              child: Image.asset(iconPath, width: 40, height: 40),
            ),
          ),
        ),

        const SizedBox(height: 8),

        Text(
          label,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
