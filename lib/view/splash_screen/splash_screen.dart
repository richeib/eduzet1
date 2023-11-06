import 'package:eduzet/utill/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('indtroduction');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Center(
              child: Transform.scale(
                scale: 1.5, // Set your desired scale factor here (1.0 is the default size)
                child: Lottie.asset('animation/Flow 4.json'),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: SizedBox(
                width: 200,
                height: 100,
                child: Column(
                  children: [
                    Text('Powered by',
                        style: GoogleFonts.poppins(
                          fontSize: Dimensions.fontSizeDefault,
                          fontWeight: FontWeight.w500,
                        )),
                    Text(
                      'Algobiz LLP',
                      style: GoogleFonts.poppins(
                        fontSize: Dimensions.fontSizeExtraLarge,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
