import 'package:eduzet/view/home_screen/home_screen.dart';
import 'package:eduzet/view/pnotification.dart';
import 'package:eduzet/view/qwhishlist.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:eduzet/utill/colour.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(5),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: ColorResources.btcolour),
        child: GNav(color: Colors.transparent, activeColor: Colors.white, tabBackgroundColor: Color.fromARGB(80, 4, 50, 158), curve: Curves.easeOutExpo, padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15), gap: 4, tabs: [
          GButton(
              icon: Icons.monitor,
              iconColor: Colors.white,
              text: 'Home',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              }),
          GButton(
              icon: Icons.work_sharp,
              iconColor: Colors.white,
              text: 'Notification',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => noNotification()));
              }),
          GButton(
              icon: Icons.heart_broken,
              iconColor: Colors.white,
              text: 'Whishlist',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => nowhishlist()));
              }),
          GButton(
              icon: Icons.call,
              iconColor: Colors.white,
              text: 'Call Us',
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => DefaultHome()));
              }),
        ]),
      ),
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
                border: InputBorder.none,
              ),
            ),
          )),
          height: 40,
          width: 330,
        ),
        backgroundColor: Color.fromARGB(211, 255, 255, 255),
        elevation: 0,
        actions: [
          Container(
            margin: EdgeInsets.all(10),
            child: CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage(
                'assets/user 1.png',
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(child: Text('Notification'))
        ],
      ),
    );
  }
}
