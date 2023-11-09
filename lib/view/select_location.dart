import 'package:eduzet/utill/dimensions.dart';
import 'package:eduzet/view/stream_selection.dart';
import 'package:eduzet/view/tprofile.dart';
import 'package:eduzet/utill/colour.dart';
import 'package:eduzet/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class selectLocation extends StatelessWidget {
  const selectLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black, // <-- SEE HERE
        ),
        elevation: 0,
        title: Title(
            color: Colors.black,
            child: Text(
              'Hi Samanta',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(color: Colors.black),
              ),
            )),
        backgroundColor: Colors.white,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Profile2()));
            },
            child: Container(
              margin: EdgeInsets.all(10),
              child: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage(
                  'assets/user 1.png',
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                width: 420,
                height: 185,
                child: Image.asset('assets/banalore_line [Converted]-01 1.png', fit: BoxFit.fitWidth),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 39,
                ),
                Text(
                  'Choose your',
                  style: TextStyle(fontSize: Dimensions.fontSizeExtraLarge, color: Colors.grey),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 39,
                ),
                Text(
                  'location',
                  style: TextStyle(fontSize: 35, color: ColorResources.txcolour, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                border: Border.all(color: Colors.grey),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 17, right: 7),
                child: Center(
                    child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    labelText: 'Search location',
                    labelStyle: GoogleFonts.poppins(fontSize: 10, color: Colors.grey),
                    border: InputBorder.none,
                  ),
                )),
              ),
              height: 40,
              width: 333,
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton2(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => stream_Selection()));
                  },
                  btnTxtb: "Bangalore",
                ),
                SizedBox(
                  width: 15,
                ),
                CustomButton2(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => stream_Selection()));
                  },
                  btnTxtb: "Kochi",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton2(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => stream_Selection()));
                  },
                  btnTxtb: "Mangalore",
                ),
                SizedBox(
                  width: 15,
                ),
                CustomButton2(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => stream_Selection()));
                  },
                  btnTxtb: "Chennai",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton2(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => stream_Selection()));
                  },
                  btnTxtb: "Calicut",
                ),
                SizedBox(
                  width: 15,
                ),
                CustomButton2(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => stream_Selection()));
                  },
                  btnTxtb: "Mysore",
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            CustomButton(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => stream_Selection()));
              },
              btnTxt: "CALL US",
            ),
          ],
        ),
      ),
    );
  }
}
