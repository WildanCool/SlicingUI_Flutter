import 'package:flutter/material.dart';
import 'package:slicing_ui4/componens/profile_page/tombol2.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            // decoration: BoxDecoration(color: Colors.green),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                "My Profile",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 15,
                  children: [
                    Container(
                      width: 70,
                      height: 70,

                      decoration: BoxDecoration(
                        color: Colors.green.shade200,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.person,
                        size: 50,
                        color: Colors.green.shade800,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Fulan bin Fulan",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),

                        Text("fulan@gmail.com"),
                        Text("+6281234567890"),
                        SizedBox(height: 10),
                        Container(
                          width: 80,
                          height: 32,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 8,
                            children: [
                              Container(
                                width: 25,
                                height: 22,
                                decoration: BoxDecoration(
                                  color: Colors.brown,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(child: Text("⭐")),
                              ),
                              Text(
                                "Basic",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
              ],
            ),
          ),

          SizedBox(height: 50),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Account",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(height: 10),
                Tombol2(icon: Icons.edit_document, text: "My Orders"),
                Tombol2(icon: Icons.subscriptions, text: "My Subscription"),
                Tombol2(icon: Icons.discount, text: "Promo"),
                Tombol2(icon: Icons.payment, text: "Payment"),
                Tombol2(icon: Icons.help, text: "Help"),
                Tombol2(icon: Icons.language, text: "Language"),
                Tombol2(icon: Icons.logout, text: "Log Out"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
