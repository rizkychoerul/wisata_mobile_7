import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:wisata_mobile_7/screens/landingpagescreen.dart';
import 'package:wisata_mobile_7/utils/const.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LandingPageScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF0F3F5),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Lottie.network(
                'https://lottie.host/956e1e4f-8c98-4206-ae82-50dd50161d69/dtw01aXDDE.json',
                width: 350,
                height: 350),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 300),
                Text(
                  'ASLABTIF',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: kButtonColor),
                ),
                Text(
                  'TRAVEL',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: kButtonColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
