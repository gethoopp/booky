import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
   void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 6), () {
      Get.offAllNamed('/Login');
    });
  }

  
  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green,
      body: 
       Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.2),
              child: Center(
                child: Text(
                  'Booky',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 50,
                      fontStyle: FontStyle.italic),
                )
                    .animate()
                    .fadeIn(
                      duration: const Duration(seconds: 1),
                      begin: 0.1,
                    )
                    .then(
                        duration: const Duration(seconds: 2),
                        curve: Curves.easeIn)
                    .slide(),
              ),
            ),
            const SizedBox(height: 5),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: size.height * 0.2),
                child: Lottie.asset('Assets/animation/animate1.json',
                    repeat: false),
              ),
            )
          ],
        ),
      
    );
  }
}
