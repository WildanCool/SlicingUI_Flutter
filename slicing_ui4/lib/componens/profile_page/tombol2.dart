import 'package:flutter/material.dart';

class Tombol2 extends StatefulWidget {
  final IconData icon;
  final String text;
  const Tombol2({super.key, required this.icon, required this.text});

  @override
  State<Tombol2> createState() => _Tombol2State();
}

class _Tombol2State extends State<Tombol2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 20,
          decoration: BoxDecoration(color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                spacing: 15,
                children: [
                  Icon(widget.icon, color: Colors.green.shade800),
                  Text(
                    widget.text,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),

              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),

        Divider(),
      ],
    );
  }
}
