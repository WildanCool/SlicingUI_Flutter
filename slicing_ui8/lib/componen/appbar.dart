import 'package:flutter/material.dart';

class AppbarAPK extends StatefulWidget {
  const AppbarAPK({super.key});

  @override
  State<AppbarAPK> createState() => _AppbarAPKState();
}

class _AppbarAPKState extends State<AppbarAPK> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 110,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.purple.shade200, Colors.white],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Column(
          spacing: 10,
          children: [
            Row(children: [Text("Assalamu'alaikum, PM Wildanumukhaladun")]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 5,
                  children: [
                    Image(image: AssetImage("images/logo.png"), height: 60),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Syariah",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          "Safeee",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  spacing: 10,
                  children: [
                    Icon(Icons.person_outline_outlined, size: 40),
                    Icon(Icons.notifications_outlined, size: 40),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
