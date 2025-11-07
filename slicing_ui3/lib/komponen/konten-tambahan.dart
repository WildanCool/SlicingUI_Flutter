import 'package:flutter/material.dart';

class KontenTambahan extends StatefulWidget {
  final IconData pilihIcon;
  final String text;
  const KontenTambahan({
    super.key,
    required this.pilihIcon,
    required this.text,
  });

  @override
  State<KontenTambahan> createState() => _KontenTambahanState();
}

class _KontenTambahanState extends State<KontenTambahan> {
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
              color: Colors.blue.shade100,
            ),
            child: Container(
              width: 60,
              height: 60,
              alignment: Alignment.center,
              child: Icon(
                widget.pilihIcon,
                size: 35,
                color: Colors.blue.shade700,
              ),
            ),
          ),
        ),

        SizedBox(height: 8),

        Text(
          widget.text,
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
