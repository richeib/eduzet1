import 'package:eduzet/utill/dimensions.dart';
import 'package:eduzet/view/select_location.dart';
import 'package:eduzet/utill/colour.dart';
import 'package:eduzet/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Programselection extends StatefulWidget {
  const Programselection({super.key});

  @override
  State<Programselection> createState() => _ProgramselectionState();
}

class _ProgramselectionState extends State<Programselection> {
  int selectedOption = 0; // 0 for the first image, 1 for the second image

  Widget customRadio(String text, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedOption = index;
        });
      },
      child: Container(
        height: 200,
        width: 130,
        padding: const EdgeInsets.all(10),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 1.5, color: (selectedOption == index) ? ColorResources.btcolour : Colors.transparent),
        ),
        child: Image(
          image: AssetImage(text),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GlowingOverscrollIndicator(
        axisDirection: AxisDirection.down,
        color: Colors.yellow,
        child: ListView(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: SizedBox(
                    height: 110,
                    width: 150,
                    child: Image.asset(
                      'assets/Eduzet_Logo.png',
                    ),
                  ),
                ),
                Text(
                  'Hello Samantha!',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: const Color.fromARGB(
                      236,
                      19,
                      10,
                      147,
                    ),
                  ),
                ),
                Text(
                  'We welcome you for your',
                  style: GoogleFonts.poppins(fontSize: 15, color: Colors.grey),
                ),
                Text(
                  'first step to success',
                  style: GoogleFonts.poppins(fontSize: 15, color: Colors.grey),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    customRadio("assets/parent.png", 1),
                    customRadio("assets/student.png", 2),
                  ],
                ),
                Text(
                  'Select your program',
                  style: GoogleFonts.poppins(fontSize: Dimensions.fontSizeLarge, color: ColorResources.txcolour),
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomButton1(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const selectLocation()));
                  },
                  btnTxta: "Under Graduation",
                  btnTxta1: '3-4 years course',
                ),
                CustomButton1(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const selectLocation()));
                  },
                  btnTxta: "Post Graduation",
                  btnTxta1: '2-3 years course',
                ),
                CustomButton1(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => selectLocation()));
                  },
                  btnTxta: "Diploma program",
                  btnTxta1: '3-4 years course',
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
