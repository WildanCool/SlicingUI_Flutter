import 'package:flutter/material.dart';
import 'package:slicing_ui4/componens/konten-wallet1.dart';

class KotakWallet extends StatefulWidget {
  const KotakWallet({super.key});

  @override
  State<KotakWallet> createState() => _KotakWalletState();
}

class _KotakWalletState extends State<KotakWallet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 2,
              offset: Offset(1, 2),
            ),
          ],
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      KontenWallet1(
                        gambar: 'assets/orange-juice.png',
                        text: "Minuman",
                        scale: 18,
                      ),
                      KontenWallet1(
                        gambar: 'assets/burger.png',
                        text: "Makanan",
                        scale: 18,
                      ),
                      KontenWallet1(
                        gambar: 'assets/fast-food.png',
                        text: "Fast Food",
                        scale: 10,
                      ),
                      KontenWallet1(
                        gambar: 'assets/vegetables.png',
                        text: "Buah & Sayur",
                        scale: 18,
                      ),
                      KontenWallet1(
                        gambar: 'assets/store.png',
                        text: "Restoran",
                        scale: 18,
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 5),
              Divider(color: Colors.grey),
              SizedBox(height: 5),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 25,
                            child: Image.asset('assets/wallet.png'),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "10.000.000",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("0"),
                          SizedBox(width: 5),
                          Text("Coins"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
