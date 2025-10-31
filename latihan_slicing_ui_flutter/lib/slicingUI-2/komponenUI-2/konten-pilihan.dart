import 'package:flutter/material.dart';

class KontenPilihan extends StatefulWidget {
  const KontenPilihan({super.key});

  @override
  State<KontenPilihan> createState() => _KontenPilihanState();
}

class _KontenPilihanState extends State<KontenPilihan> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.blue.shade100,
            borderRadius: BorderRadius.circular(50),
          ),
          child: SizedBox(
            height: 10,
            width: 10,
            // child: Image.asset(widget.logo, scale: 14),
          ),
        ),
        Text("Data 1"),
      ],
    );
  }
}
