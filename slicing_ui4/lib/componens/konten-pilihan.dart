import 'package:flutter/material.dart';

class KontenPilihan extends StatefulWidget {
  final IconData icon;
  final String text;
  const KontenPilihan({super.key, required this.icon, required this.text});

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
            color: Colors.green.shade700,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(widget.icon, color: Colors.white),
          ),
        ),
        SizedBox(height: 5),
        Text(widget.text, style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
