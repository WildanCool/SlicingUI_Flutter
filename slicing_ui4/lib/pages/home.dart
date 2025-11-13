import 'package:flutter/material.dart';
import 'package:slicing_ui4/componens/konten-bannerPromo.dart';
import 'package:slicing_ui4/componens/konten-pilihan.dart';
import 'package:slicing_ui4/componens/konten-toko.dart';
import 'package:slicing_ui4/componens/konten-wallet1.dart';
import 'package:slicing_ui4/componens/kotak-wallet.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.green),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(child: Icon(Icons.person)),
                      Row(
                        spacing: 5,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.green.shade700,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.shopping_cart,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.green.shade700,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.notifications,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.green.shade700,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.settings, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Column(
                children: [
                  KotakWallet(),

                  SizedBox(height: 10),

                  Column(
                    spacing: 15,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          KontenPilihan(
                            icon: Icons.airplanemode_active,
                            text: 'Transfer',
                          ),
                          KontenPilihan(
                            icon: Icons.account_balance_wallet,
                            text: "Top up",
                          ),
                          KontenPilihan(icon: Icons.money, text: "Tarik tunai"),
                          KontenPilihan(
                            icon: Icons.card_travel,
                            text: "Konfersi",
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          KontenPilihan(icon: Icons.wifi, text: 'Kuota'),
                          KontenPilihan(
                            icon: Icons.access_time_rounded,
                            text: "Pulsa",
                          ),
                          KontenPilihan(
                            icon: Icons.shopping_cart,
                            text: "Ecommerce",
                          ),
                          KontenPilihan(
                            icon: Icons.account_tree_sharp,
                            text: "Nabung",
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 30),

                  // SUPER DEAL!
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: Text(
                          "Super Deal Hari Ini",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          spacing: 15,
                          children: [
                            const SizedBox(width: 0),
                            KontenBannerPromo(
                              atas: Colors.blue,
                              bawah: Colors.cyan,
                              judul: "Belanja Hemat, Diskon Hingga 70%!",
                              pendukung:
                                  "Nikmati potongan harga untuk semua kategori produk.",
                            ),
                            KontenBannerPromo(
                              atas: Colors.purple,
                              bawah: Colors.pink,
                              judul: "Produk Baru Sudah Hadir!",
                              pendukung:
                                  "Khusus hari ini, ada bonus menarik untuk 100 pembeli pertama!",
                            ),
                            KontenBannerPromo(
                              atas: Colors.red,
                              bawah: Colors.yellow,
                              judul: "Liburan Hemat, Perjalanan Nyaman",
                              pendukung:
                                  "Pesan tiketmu sekarang, jelajahi Indonesia lebih mudah! 🌴",
                            ),
                            KontenBannerPromo(
                              atas: Colors.lightGreen,
                              bawah: Colors.limeAccent,
                              judul: "🎓 Upgrade Skill-mu Sekarang!",
                              pendukung:
                                  "Daftar pelatihan hari ini dan dapatkan diskon 50%!",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  // KONTEN DEPORTIVO DE ESPERANZA
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: Text(
                          "Deportivo de Esperanza",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          spacing: 15,
                          children: [
                            const SizedBox(width: 0),
                            Container(
                              width: 200,
                              height: 100,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                  image: AssetImage('assets/banner1.png'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              height: 100,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                  image: AssetImage('assets/banner1.png'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              height: 100,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                  image: AssetImage('assets/banner1.png'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 40),

                  // KONTEN TOKO
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jangan Lewatkan!",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              "Belanja hemat, dapat cashback lagi!",
                              style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Row(
                            spacing: 15,
                            children: [
                              const SizedBox(width: 2),
                              KontenToko(
                                toko: 'assets/alfamart.png',
                                text: "30% off",
                              ),
                              KontenToko(
                                toko: 'assets/indomart.png',
                                text: "50% off",
                              ),
                              KontenToko(
                                toko: 'assets/alfamidi.png',
                                text: "35% off",
                              ),
                              KontenToko(
                                toko: 'assets/alfamart.png',
                                text: "30% off",
                              ),
                              KontenToko(
                                toko: 'assets/indomart.png',
                                text: "50% off",
                              ),
                              KontenToko(
                                toko: 'assets/alfamidi.png',
                                text: "35% off",
                              ),
                              KontenToko(
                                toko: 'assets/alfamart.png',
                                text: "30% off",
                              ),
                              KontenToko(
                                toko: 'assets/indomart.png',
                                text: "50% off",
                              ),
                              KontenToko(
                                toko: 'assets/alfamidi.png',
                                text: "35% off",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  // SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(18),
                    child: Column(
                      spacing: 20,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/banner5.png'),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/banner6.png'),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/banner7.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.green.shade100  ,
        height: 65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home, color: Colors.green.shade700),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.discount, color: Colors.green.shade700),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.chat, color: Colors.green.shade700),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_bag, color: Colors.green.shade700),
            ),
          ],
        ),
      ),
    );
  }
}
