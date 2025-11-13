import 'package:flutter/material.dart';

class KontenToko extends StatefulWidget {
  final String toko;
  final String text;
  const KontenToko({super.key, required this.toko, required this.text});

  @override
  State<KontenToko> createState() => _KontenTokoState();
}

class _KontenTokoState extends State<KontenToko> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 125,
          height: 155,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 3,
                offset: Offset(0, 2),
              ),
            ],
            image: DecorationImage(image: AssetImage(widget.toko)),
          ),
          // child: IconButton(onPressed: () {}, icon: Image.asset(widget.toko)),
        ),

        Container(
          width: 60,
          height: 25,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Center(
            child: Text(
              widget.text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
