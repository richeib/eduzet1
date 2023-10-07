import 'package:eduzet/view/ohome.dart';
import 'package:eduzet/view/pnotification.dart';
import 'package:eduzet/view/tprofile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../utill/dimensions.dart';
import '../widgets/colour.dart';

class nowhishlist extends StatelessWidget {
  const nowhishlist({super.key});
  double get fem => 0.8;
  double get ffem => 1.2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        centerTitle: true,
        title: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            border: Border.all(color: Colors.grey),
          ),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 15),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search location,course,college',
                labelStyle: TextStyle(fontSize: 10),
                border: InputBorder.none,
              ),
            ),
          )),
          height: 28,
          width: 330,
        ),
        backgroundColor: Color.fromARGB(211, 255, 255, 255),
        elevation: 0,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile2()));
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
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Container(height: 190, child: Image.asset('assets/Whishlist.png')),
          Center(
              child: Text(
            'No Whishlist',
            style: GoogleFonts.poppins(
              fontSize: Dimensions.fontSizeSmall,
              fontWeight: FontWeight.w300,
              height: 2.25 * ffem / fem,
              color: Color(0xff9b9b9b),
            ),
          ))
        ],
      ),
    );
  }
}
