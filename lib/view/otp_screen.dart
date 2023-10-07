import 'package:eduzet/utill/dimensions.dart';
import 'package:eduzet/view/otp_send_screen.dart';
import 'package:eduzet/widgets/colour.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/custom_button.dart';

class OtpScreen extends StatelessWidget {
  double get fem => 1;

  double get ffem => 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 28,
            ),
            SizedBox(height: 120, width: 150, child: Image.asset('assets/Eduzet_Logo.png')),
            Lottie.asset('animation/animation_lkj9vinn.json', width: 150 * ffem, height: 150 * ffem),
            const SizedBox(
              height: 25,
            ),
            Text(
              'Enter your Number',
              style: GoogleFonts.poppins(fontSize: Dimensions.fontSizeDefault, color: ColorResources.txcolour),
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: Container(
                padding: EdgeInsets.only(left: 20),
                width: 330,
                decoration: BoxDecoration(border: Border.all(width: 1, color: ColorResources.txcolour), borderRadius: BorderRadius.circular(50)),
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      Text(
                        "+91",
                        style: GoogleFonts.poppins(
                          fontSize: Dimensions.fontSizeSmall,
                          color: const Color(0xFF929292),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const VerticalDivider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1,
                        color: ColorResources.cardShadowColor,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.number,
                          style: GoogleFonts.poppins(fontSize: Dimensions.fontSizeSmall),
                          decoration: InputDecoration(hintStyle: GoogleFonts.poppins(fontSize: Dimensions.fontSizeSmall, color: ColorResources.cardShadowColor), border: InputBorder.none, hintText: 'XXXX-XXX-XXXX'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => opt()));
              },
              btnTxt: "GET OTP",
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Or continue with',
              style: GoogleFonts.poppins(fontSize: Dimensions.fontSizeExtraSmall, textStyle: GoogleFonts.poppins(color: ColorResources.txcolour)),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 25, width: 25, child: Image.asset('assets/google_PNG19635.png')),
                const SizedBox(
                  width: 2,
                ),
                Text(
                  'Create account with google ',
                  style: GoogleFonts.poppins(
                    fontSize: Dimensions.fontSizeSmall,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
