import 'package:eduzet/utill/dimensions.dart';
import 'package:eduzet/utill/colour.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen404 extends StatelessWidget {
  const Screen404({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "404",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: Dimensions.fontSizeOverLarge, color: ColorResources.btcolour, fontWeight: FontWeight.w600),
            ),
            Text(
              "Page not found",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: Dimensions.fontSizeSmall),
            )
          ],
        ),
      ),
    );
  }
}
