import 'package:eduzet/utill/dimensions.dart';
import 'package:eduzet/view/ohome.dart';
import 'package:eduzet/view/pnotification.dart';
import 'package:eduzet/view/qwhishlist.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../widgets/colour.dart';

class Whishlist extends StatefulWidget {
  const Whishlist({super.key});

  @override
  State<Whishlist> createState() => _whishlistState();
}

class _whishlistState extends State<Whishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(5),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: ColorResources.btcolour),
        child: GNav(
            color: Colors.transparent,
            activeColor: Colors.white,
            tabBackgroundColor: Color.fromARGB(80, 4, 50, 158),
            curve: Curves.easeOutExpo,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            gap: 4,
            tabs: [
              GButton(
                  icon: Icons.monitor,
                  iconColor: Colors.white,
                  text: 'Home',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DefaultHome()));
                  }),
              GButton(
                  icon: Icons.work_sharp,
                  iconColor: Colors.white,
                  text: 'Notification',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => noNotification()));
                  }),
              GButton(
                  icon: Icons.heart_broken,
                  iconColor: Colors.white,
                  text: 'Whishlist',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => nowhishlist()));
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
                labelStyle: TextStyle(fontSize: 8),
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
          Container(
            height: 650,
            width: double.infinity,
            child: ListView.builder(
                itemCount: 2,
                itemBuilder: (BuildContext context, var index) {
                  return InkWell(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      // MaterialPageRoute(
                      //   builder: (context) => CollegeAppling()));
                    },
                    child: Container(
                      height: 110,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 6,
                                offset: Offset(0, 7))
                          ],
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Attapadi university",
                                    style: TextStyle(
                                        color: ColorResources.txcolour,
                                        fontSize: Dimensions.fontSizeOverLarge),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "20000",
                                    style: TextStyle(
                                        color: ColorResources.txcolour,
                                        fontSize:
                                            Dimensions.fontSizeExtraLarge),
                                  ),
                                ],
                              ),
                              Text("china",
                                  style: TextStyle(
                                      color: ColorResources.txcolour)),
                              SizedBox(
                                height: 10,
                              ),
                              Text("remote",
                                  style: TextStyle(color: Colors.pink))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.favorite_border_outlined,
                                size: 35,
                                color: Colors.grey,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
