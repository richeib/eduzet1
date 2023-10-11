import 'package:eduzet/utill/dimensions.dart';
import 'package:eduzet/view/first_profile.dart';
import 'package:eduzet/widgets/colour.dart';
import 'package:eduzet/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class opt extends StatefulWidget {
  @override
  State<opt> createState() => _optState();
  @override
  String toStringShort() => 'With Bottom Cursor';
}

class _optState extends State<opt> {
  final controller = TextEditingController();
  final focusNode = FocusNode();

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const borderColor = Color.fromRGBO(30, 60, 87, 1);
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: GoogleFonts.poppins(
        fontSize: Dimensions.fontSizeDefault,
        color: const Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: const BoxDecoration(),
    );

    final cursor = Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 50,
          height: 3,
          decoration: BoxDecoration(
            color: borderColor,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ],
    );
    final preFilledWidget = Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 50,
          height: 2,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Verify it's you",
          style: GoogleFonts.poppins(
              fontSize: Dimensions.fontSizeLarge,
              fontWeight: FontWeight.w600,
              color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 300,
                child: RichText(
                  text: TextSpan(
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: Dimensions.fontSizeDefault),
                    children: [
                      const TextSpan(
                          text:
                              "We have sent you the verification code to this Mobile number"),
                      TextSpan(
                        text: " +91 8592995659",
                        style: GoogleFonts.poppins(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  // "We have sent you the verification to this",
                  // style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Pinput(
              length: 5,
              controller: controller,
              focusNode: focusNode,
              defaultPinTheme: defaultPinTheme,
              cursor: cursor,
              preFilledWidget: preFilledWidget,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
              btnTxt: "VERIFY",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn't get the code?",
                  style: GoogleFonts.poppins(
                      color: ColorResources.cardShadowColor,
                      fontSize: Dimensions.fontSizeSmall),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Resent the code',
                  style: GoogleFonts.poppins(
                      color: Colors.pink,
                      fontSize: Dimensions.fontSizeSmall,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
