import 'package:eduzet/utill/dimensions.dart';
import 'package:eduzet/view/tprofile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utill/icons_data_icons.dart';

class noNotification extends StatefulWidget {
  const noNotification({super.key});

  @override
  State<noNotification> createState() => _noNotificationState();
}

class _noNotificationState extends State<noNotification> {
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
      body: ListView(
        children: [
          Container(
            // nonotification7v7 (39:518)
            padding: EdgeInsets.fromLTRB(18.67 * fem, 39.48 * fem, 18.67 * fem, 46.56 * fem),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Container(
                  // empty1011tjq (116:458)
                  margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 9.6 * fem),
                  width: 322.66 * fem,
                  height: 215.11 * fem,
                  child: Image.asset(
                    'assets/empty1-01 1.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  // nonotificationsobu (116:460)
                  margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 185.84 * fem),
                  child: Text(
                    'No notifications',
                    style: GoogleFonts.poppins(
                      fontSize: Dimensions.fontSizeSmall,
                      fontWeight: FontWeight.w300,
                      height: 2.25 * ffem / fem,
                      color: Color(0xff9b9b9b),
                    ),
                  ),
                ),
                // Row(
                //   children: [
                //     Icon(
                //       IconsData.edit_icon,
                //       size: 25,
                //       color: Colors.black,
                //     ),
                //     Icon(
                //       IconsData.camera_icon,
                //       size: 25,
                //       color: Colors.black,
                //     ),
                //     Icon(
                //       IconsData.globe_icon,
                //       size: 25,
                //       color: Colors.black,
                //     ),
                //     Icon(
                //       IconsData.history_icon,
                //       size: 16,
                //       color: Colors.black,
                //     ),
                //     Icon(
                //       IconsData.home_icon,
                //       size: 25,
                //       color: Colors.black,
                //     ),
                //     Icon(
                //       IconsData.like_icon,
                //       size: 25,
                //       color: Colors.black,
                //     ),
                //     Icon(
                //       IconsData.logout_icon,
                //       size: 25,
                //       color: Colors.black,
                //     ),
                //     Icon(
                //       IconsData.love_icon,
                //       size: 25,
                //       color: Colors.black,
                //     ),
                //     Icon(
                //       IconsData.name_icon,
                //       size: 25,
                //       color: Colors.black,
                //     ),
                //     Icon(
                //       IconsData.navigation_icon,
                //       size: 25,
                //       color: Colors.black,
                //     ),
                //     Icon(
                //       IconsData.navigation_icon,
                //       size: 25,
                //       color: Colors.black,
                //     ),
                //     Icon(
                //       IconsData.navigation_icon,
                //       size: 25,
                //       color: Colors.black,
                //     ),
                //     Icon(
                //       IconsData.talk_icon,
                //       size: 25,
                //       color: Colors.black,
                //     ),
                //   ],
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
