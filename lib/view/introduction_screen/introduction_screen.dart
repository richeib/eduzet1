import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:eduzet/utill/dimensions.dart';
import 'package:eduzet/view/otp_screen.dart';
import 'package:eduzet/utill/colour.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class IndroductionScreen extends StatefulWidget {
  const IndroductionScreen({super.key});

  @override
  State<IndroductionScreen> createState() => _IndroductionScreenState();
}

class _IndroductionScreenState extends State<IndroductionScreen> {
  final double _translation = 15.0;
  final double _opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // rounded circle
          Positioned(
            child: Container(
              margin: EdgeInsets.only(top: 5.h),
              alignment: Alignment.topCenter,
              child: const AspectRatio(
                aspectRatio: 4 / 3,
                child: Image(
                  image: AssetImage('assets/round.png'),
                ),
              ),
            ),
          ),
          IntroductionScreen(
            globalBackgroundColor: Colors.transparent,
            done: Text(
              'done',
              style: GoogleFonts.poppins(fontSize: Dimensions.fontSizeSmall, color: ColorResources.txcolour),
            ),
            dotsDecorator: DotsDecorator(
              activeColor: ColorResources.txcolour,
              size: const Size(7, 7),
              activeSize: const Size(20, 7),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            showNextButton: true,
            skip: Text(
              'Skip',
              style: GoogleFonts.poppins(fontSize: Dimensions.fontSizeSmall, color: ColorResources.txcolour),
            ),
            showSkipButton: true,
            onDone: () {
              Navigator.pushNamed(context, 'otp_screen');
            },
            next: Text(
              'Next',
              style: GoogleFonts.poppins(fontSize: Dimensions.fontSizeSmall, color: ColorResources.txcolour),
            ),
            rawPages: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                decoration: const BoxDecoration(),
                child: Column(
                  children: [
                    const Image(
                      width: 300,
                      image: AssetImage(
                        'assets/kids.png',
                      ),
                    ),
                    const SizedBox(
                      height: 150,
                    ),
                    TweenAnimationBuilder<double>(
                        curve: Curves.bounceOut,
                        duration: const Duration(milliseconds: 700),
                        tween: Tween<double>(begin: 0.0, end: _translation),
                        builder: (BuildContext context, double value, Widget? child) {
                          return Transform.translate(
                            offset: Offset(0.0, value),
                            child: Text(
                              "WE PROVIDE YOU",
                              style: GoogleFonts.poppins(
                                color: const Color(0xFF3F489E),
                                fontSize: Dimensions.fontSizeExtraLarge,
                                fontWeight: FontWeight.w600,
                                height: 0.66,
                              ),
                            ),
                          );
                        }),
                    const SizedBox(
                      height: 35,
                    ),
                    TweenAnimationBuilder<double>(
                        curve: Curves.bounceOut,
                        duration: const Duration(seconds: 4),
                        tween: Tween<double>(begin: 0.0, end: _opacity),
                        builder: (BuildContext context, double value, Widget? child) {
                          return Opacity(
                            opacity: value,
                            child: Text(
                              "THE BEST OF BEST",
                              style: GoogleFonts.poppins(
                                color: const Color(0xFF3F489E),
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                                height: 0.45,
                              ),
                            ),
                          );
                        }),
                    // AnimatedTextKit(
                    //   totalRepeatCount: 1,
                    //   isRepeatingAnimation: false,
                    //   pause: const Duration(milliseconds: 1000),
                    //   animatedTexts: [
                    //     RotateAnimatedText(
                    //       "THE BEST OF BEST",
                    //       transitionHeight: 30,
                    //       textAlign: TextAlign.center,
                    //       textStyle: GoogleFonts.poppins(
                    //         color: Color(0xFF3F489E),
                    //         fontSize: 32,
                    //         fontWeight: FontWeight.w700,
                    //       ),
                    //     )
                    //   ],
                    // ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 200,
                      child: DefaultTextStyle(
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF929292),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        child: AnimatedTextKit(
                          totalRepeatCount: 1,
                          isRepeatingAnimation: false,
                          pause: const Duration(milliseconds: 1000),
                          animatedTexts: [
                            TypewriterAnimatedText(
                              "The best colleges in south India we provide you real time job update from any where ",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      // child: Text(
                      //   "The best colleges in south India we provide you real time job update from any where ",
                      //   textAlign: TextAlign.center,
                      //   style: GoogleFonts.poppins(
                      //     color: Color(0xFF929292),
                      //     fontSize: 12,
                      //     fontWeight: FontWeight.w400,
                      //   ),
                      // ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                decoration: const BoxDecoration(),
                child: Column(
                  children: [
                    const Image(
                      width: 250,
                      image: AssetImage('assets/globee.png'),
                    ),
                    const SizedBox(
                      height: 125,
                    ),
                    Text(
                      "WE ARE ALL OVER",
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF3F489E),
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        height: 0.66,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "THE SOUTH INDIA",
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF3F489E),
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        height: 0.45,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 200,
                      child: Text(
                        "The best colleges in south India we provide you real time job update from any where ",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF929292),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.21,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                decoration: const BoxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Image(
                      width: 300,
                      image: AssetImage('assets/phone.png'),
                    ),
                    const SizedBox(
                      height: 125,
                    ),
                    Text(
                      "FIND YOUR DREAM",
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF3F489E),
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        height: 0.66,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "COLLEGE IN A TAP",
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF3F489E),
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        height: 0.45,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 200,
                      child: Text(
                        "The best colleges in south India we provide you real time job update from any where ",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF929292),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.21,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
