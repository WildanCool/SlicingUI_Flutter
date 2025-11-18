import 'package:flutter/material.dart';

class MasukkanKodePromo extends StatefulWidget {
  const MasukkanKodePromo({super.key});

  @override
  State<MasukkanKodePromo> createState() => _MasukkanKodePromoState();
}

class _MasukkanKodePromoState extends State<MasukkanKodePromo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey.shade300,
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 2, offset: Offset(2, 2)),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 18, horizontal: 14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                spacing: 6,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        spacing: 8,
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green.shade200,
                            ),
                            child: Icon(Icons.discount, size: 18),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "15 Voucers",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "Pakai yuk!",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        spacing: 8,
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green.shade200,
                            ),
                            child: Icon(Icons.discount, size: 18),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Voucers Plus",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "Langganan Sekarang!",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 2,
                    radius: BorderRadius.circular(10),
                  ),
                ],
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.discount,
                    size: 20,
                    color: Colors.black,
                  ),
                  hint: Text(
                    "Masukkan Kode Voucer",
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  filled: true,
                  fillColor: Color.fromARGB(255, 192, 192, 192),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 8,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
