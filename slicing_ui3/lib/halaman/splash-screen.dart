import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:slicing_ui3/halaman/homepage.dart';

class SplashScreenKAI extends StatelessWidget {
  const SplashScreenKAI({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.fadeIn(
      backgroundColor: Colors.white,
      onInit: () {
        debugPrint("On Init");
      },
      onEnd: () {
        debugPrint("On End");
      },
      childWidget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            width: 200,
            child: Image.asset("assets/logoKAI.jpg"),
          ),
          // const SizedBox(height: 20),
          // const Text(
          //   "GoRide",
          //   style: TextStyle(
          //     fontSize: 30,
          //     fontWeight: FontWeight.bold,
          //     color: Colors.blueAccent,
          //   ),
          // ),
        ],
      ),
      onAnimationEnd: () => debugPrint("On Fade In End"),
      nextScreen: Homepage(),
    );
  }
}
