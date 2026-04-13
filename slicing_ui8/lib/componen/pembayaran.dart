import 'package:flutter/material.dart';

class PembayaranAPK extends StatefulWidget {
  const PembayaranAPK({super.key});

  @override
  State<PembayaranAPK> createState() => _PembayaranAPKState();
}

class _PembayaranAPKState extends State<PembayaranAPK> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      child: Row(
        spacing: 12,
        children: [
          PilihanPembayaran(label: "Transfer & Bayar", icon: Icons.money),
          PilihanPembayaran(
            label: "Scan QRIS",
            icon: Icons.qr_code_scanner_rounded,
          ),
        ],
      ),
    );
  }
}

class PilihanPembayaran extends StatefulWidget {
  final String label;
  final IconData icon;
  const PilihanPembayaran({super.key, required this.label, required this.icon});

  @override
  State<PilihanPembayaran> createState() => _PilihanPembayaranState();
}

class _PilihanPembayaranState extends State<PilihanPembayaran> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 75,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              offset: Offset(2, 5),
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(widget.icon),
            Text(
              widget.label,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
