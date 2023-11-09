import 'package:eduzet/utill/colour.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../utill/dimensions.dart';

class CustomButton extends StatelessWidget {
  final Function()? onTap;
  final String? btnTxt;
  const CustomButton({
    super.key,
    this.onTap,
    this.btnTxt,
  });
  double get fem => 1;

  double get ffem => 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0.39 * fem, 27.97 * fem),
      child: InkWell(
        onTap: () {},
        child: InkWell(
          borderRadius: BorderRadius.circular(66),
          onTap: onTap,
          child: Ink(
            width: 330,
            height: 51.49 * fem,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(66),
              gradient: const LinearGradient(
                begin: Alignment(1, 0),
                end: Alignment(-1.282, 0),
                colors: <Color>[Color(0xff3f489e), Color(0xff595aa8), Color(0xff585aa8)],
                stops: <double>[0, 0.878, 0.982],
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0x3f000000),
                  offset: Offset(0 * fem, 0 * fem),
                  blurRadius: 3.1195707321 * fem,
                ),
              ],
            ),
            child: Center(
              child: Center(
                child: Text(
                  btnTxt!,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(fontSize: Dimensions.fontSizeDefault, textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButton1 extends StatelessWidget {
  final Function()? onTap;
  final String? btnTxta;
  final String? btnTxta1;
  const CustomButton1({super.key, this.onTap, this.btnTxta, this.btnTxta1});
  double get fem => 1;

  double get ffem => 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.2462711334 * fem),
        gradient: LinearGradient(
          begin: Alignment(0, -1),
          end: Alignment(0, 1),
          colors: <Color>[Color(0xff3f489e), Color(0xff595aa8)],
          stops: <double>[0, 1],
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x3f000000),
            offset: Offset(0 * fem, 1 * fem),
            blurRadius: 3 * fem,
          ),
        ],
      ),
      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0.39 * fem, 27.97 * fem),
      child: InkWell(
        onTap: () {},
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: onTap,
          child: Ink(
            width: 310,
            height: 85 * fem,

            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(20),
            //   gradient: const LinearGradient(
            //     begin: Alignment.topLeft,
            //     end: Alignment.bottomRight,
            //     colors: <Color>[
            //       Color(0xff3f489e),
            //       Color(0xff595aa8),
            //       Color(0xff3f489e),
            //     ],
            //   ),
            // ),
            child: Center(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      btnTxta!,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: Dimensions.fontSizeExtraLarge,
                        fontWeight: FontWeight.w500,
                        textStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                    Text(
                      btnTxta1!,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: Dimensions.fontSizeExtraSmall,
                        fontWeight: FontWeight.w500,
                        textStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButton2 extends StatelessWidget {
  final Function()? onTap;
  final String? btnTxtb;
  const CustomButton2({
    super.key,
    this.onTap,
    this.btnTxtb,
  });

  double get fem => 1;

  double get ffem => 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 0, left: 0, top: 10, bottom: 12),
      child: InkWell(
        onTap: () {},
        child: InkWell(
          onTap: onTap,
          child: Ink(
            width: 157,
            height: 70 * fem,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              // gradient: const LinearGradient(
              //   begin: Alignment(1, 0),
              //   end: Alignment(-1.282, 0),
              //   colors: <Color>[Colors.white, Colors.white, Color(0xff585aa8)],
              //   stops: <double>[0, 0.878, 0.982],
              // ),
              // boxShadow: [
              //   BoxShadow(
              //     color: Color.fromARGB(255, 18, 6, 149),
              //     offset: Offset(0 * fem, 0 * fem),
              //     blurRadius: 3.1195707321 * fem,
              //   ),
              // ],
              border: Border.all(
                color: const Color.fromARGB(255, 18, 6, 149),
              ),
            ),
            child: Center(
              child: Center(
                child: Text(
                  btnTxtb!,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(fontSize: Dimensions.fontSizeLarge, textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: ColorResources.txcolour)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButton3 extends StatelessWidget {
  final Function()? onTap;
  final String? btnTxtc;
  const CustomButton3({
    Key? key,
    this.onTap,
    this.btnTxtc,
  }) : super(key: key);

  double get fem => 1;

  double get ffem => 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: InkWell(
        onTap: () {},
        child: InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: onTap,
          child: Ink(
            width: 350,
            height: 49 * fem,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: const LinearGradient(
                begin: Alignment(1, 0),
                end: Alignment(-1.282, 0),
                colors: <Color>[Colors.white, Colors.white, Color(0xff585aa8)],
                stops: <double>[0, 0.878, 0.982],
              ),
              boxShadow: [BoxShadow(color: Color.fromARGB(84, 158, 158, 158), blurRadius: 4, offset: Offset(0, 3))],
            ),
            child: Center(
              child: Row(
                // Wrap with a Row to add the text and icon side by side
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.star, // Replace Icons.star with your desired icon
                    color: Colors.grey, // Customize the icon color as per your requirement
                  ),
                  SizedBox(width: 10), // Optional SizedBox for spacing
                  Text(
                    btnTxtc!,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: Dimensions.fontSizeSmall,
                      textStyle: TextStyle(
                        fontSize: Dimensions.fontSizeLarge,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
