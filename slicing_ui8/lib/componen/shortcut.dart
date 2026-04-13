import 'package:flutter/material.dart';

class ShortcutAPK extends StatefulWidget {
  const ShortcutAPK({super.key});

  @override
  State<ShortcutAPK> createState() => _ShortcutAPKState();
}

class _ShortcutAPKState extends State<ShortcutAPK> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Shortcut",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              Text(
                "Edit ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.purple,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 1.5,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            children: [
              KontenShortcut(
                judul: "Kantong Utama",
                isi: "Rp50.500",
                gambar: "images/money-bag.png",
              ),
              KontenShortcut(
                judul: "Investasi",
                isi: "",
                gambar: "images/profits.png",
              ),
              KontenShortcut(
                judul: "Jago Amal",
                isi: "Zakat dan Sedekah",
                gambar: "images/email.png",
              ),
              KontenShortcut(
                judul: "Saldo Saya",
                isi: "Rp50.000",
                gambar: "images/money.png",
              ),
              KontenBeda(),

              KontenShortcut(
                judul: "Ajak Teman",
                isi: "Undang & dapat bonus!",
                gambar: "images/support.png",
              ),

              TambahShortcut(),
            ],
          ),
        ),
      ],
    );
  }
}

class KontenShortcut extends StatelessWidget {
  final String judul;
  final String isi;
  final String gambar;
  const KontenShortcut({
    super.key,
    required this.judul,
    required this.isi,
    required this.gambar,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            offset: Offset(2, 5),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(image: AssetImage(gambar), height: 40),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                judul,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(isi, style: TextStyle(fontSize: 12, color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }
}

class TambahShortcut extends StatefulWidget {
  const TambahShortcut({super.key});

  @override
  State<TambahShortcut> createState() => _TambahShortcutState();
}

class _TambahShortcutState extends State<TambahShortcut> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.purple.shade100,
        borderRadius: BorderRadius.circular(12),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.shade300,
        //     offset: Offset(2, 5),
        //     blurRadius: 10,
        //   ),
        // ],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add_circle, color: Colors.purple),
            Text(
              "Tambah Shortcut",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class KontenBeda extends StatelessWidget {
  const KontenBeda({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            offset: Offset(2, 5),
            blurRadius: 20,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(image: AssetImage("images/pie-chart.png"), height: 40),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Buat",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "Auto-Budgeting",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
