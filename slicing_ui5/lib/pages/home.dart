import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:slicing_ui5/decorations/set.dart';
import 'package:slicing_ui5/komponen/appbar.dart';
import 'package:slicing_ui5/komponen/banner_info.dart';
import 'package:slicing_ui5/komponen/menu_apps.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ClassName.color5,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Appbar1(),
              SizedBox(height: 40),
              BannerInfo(),
              SizedBox(height: 12),
              MenuApps(),
            ],
          ),
        ),
      ),
    );
  }
}
