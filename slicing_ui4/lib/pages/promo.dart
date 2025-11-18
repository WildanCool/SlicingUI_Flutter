import 'package:flutter/material.dart';
import 'package:slicing_ui4/componens/promo_page/bannerDiscount.dart';
import 'package:slicing_ui4/componens/promo_page/promoMakanan.dart';
import 'package:slicing_ui4/componens/promo_page/kodePromo.dart';
import 'package:slicing_ui4/componens/promo_page/promoHariIni.dart';
import 'package:slicing_ui4/componens/promo_page/tombol2_promo.dart';

class PromoPage extends StatefulWidget {
  const PromoPage({super.key});

  @override
  State<PromoPage> createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MasukkanKodePromo(),

          // KLAIM HADIAH SETIAP HARI-NYA
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              width: double.infinity,
              // height: 100,
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2,
                    offset: Offset(2, 2),
                  ),
                ],
              ),

              child: Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      spacing: 5,
                      children: [
                        Text("🎁", style: TextStyle(fontSize: 40)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Check-in Setiap Hari Koinnya",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "*Syarat dan Ketentuan berlaku!",
                              style: TextStyle(
                                fontWeight: FontWeight.w200,
                                fontSize: 8,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.black,
                        minimumSize: Size(50, 20),
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Klaim',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          SizedBox(height: 8),

          // TOMBOL TOMBOL PROMO
          Wrap(
            spacing: 8,
            children: [
              Tombol2Promo(text: "11.11"),
              Tombol2Promo(text: "Gajian"),
              Tombol2Promo(text: "Riding"),
              Tombol2Promo(text: "Food"),
              Tombol2Promo(text: "Travel"),
              Tombol2Promo(text: "Vacation"),
              Tombol2Promo(text: "Hotel"),
              Tombol2Promo(text: "Drinks"),
            ],
          ),

          SizedBox(height: 20),

          // KONTEN PROMO HARI INI
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  "Promo Hari Ini!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 15,
                  children: [
                    SizedBox(width: 0),
                    PromoHariIni(
                      atas: Colors.blue,
                      bawah: Colors.cyan,
                      judul: "Belanja Hemat, Diskon Hingga 70%!",
                      pendukung:
                          "Nikmati potongan harga untuk semua kategori produk.",
                    ),
                    PromoHariIni(
                      atas: Colors.purple,
                      bawah: Colors.pink,
                      judul: "Produk Baru Sudah Hadir!",
                      pendukung:
                          "Khusus hari ini, ada bonus menarik untuk 100 pembeli pertama!",
                    ),
                    PromoHariIni(
                      atas: Colors.red,
                      bawah: Colors.yellow,
                      judul: "Liburan Hemat, Perjalanan Nyaman",
                      pendukung:
                          "Pesan tiketmu sekarang, jelajahi Indonesia lebih mudah! 🌴",
                    ),
                    PromoHariIni(
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

          SizedBox(height: 35),

          // KONTEN PROMO MAKANAN
          Column(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  "Promo Makanan",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 140,
                child: PageView(
                  children: [
                    PromoMakanan(banner: 'assets/banner8.png'),
                    PromoMakanan(banner: 'assets/banner9.png'),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 35),

          // BANNER LIBURAN
          Column(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  "Promo Liburan",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 15,
                  children: [
                    SizedBox(width: 0),
                    BannerDiscount(isiGambar: 'assets/banner10.png'),
                    BannerDiscount(isiGambar: 'assets/banner11.png'),
                    BannerDiscount(isiGambar: 'assets/banner12.png'),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 15),

          // BANNER TANSPORTASI
          Column(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  "Promo Transportasi",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 15,
                  children: [
                    SizedBox(width: 0),
                    BannerDiscount(isiGambar: 'assets/banner13.png'),
                    BannerDiscount(isiGambar: 'assets/banner14.png'),
                    BannerDiscount(isiGambar: 'assets/banner15.png'),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 30),

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
    );
  }
}
