import 'package:flutter/material.dart';

class KotakMenu extends StatefulWidget {
  final String logo;
  final String text;
  const KotakMenu({super.key, required this.logo, required this.text});

  @override
  State<KotakMenu> createState() => _KotakMenuState();
}

class _KotakMenuState extends State<KotakMenu> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 211, 211, 211),
                blurRadius: 5,
                offset: Offset(2, 2),
              ),
            ],
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            image: DecorationImage(scale: 10, image: AssetImage(widget.logo)),
          ),
        ),
        Text(widget.text),
      ],
    );
  }
}
