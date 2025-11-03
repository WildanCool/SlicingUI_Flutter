import 'package:flutter/material.dart';
// import 'package:latihan_slicing_ui_flutter/slicingUI-1/slicing1.dart';

class KontenKRL extends StatefulWidget {
  final String logo;
  const KontenKRL({super.key, required this.logo});

  @override
  State<KontenKRL> createState() => _KontenKRLState();
}

class _KontenKRLState extends State<KontenKRL> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => Slicing1()),
      //   );
      // },
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(50),
            ),
            child: SizedBox(
              height: 10,
              width: 10,
              child: Image.asset(widget.logo, scale: 14),
            ),
          ),
          Text("Data 1"),
        ],
      ),
    );
  }
}
