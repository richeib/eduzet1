import 'package:eduzet/utill/dimensions.dart';
import 'package:eduzet/view/kcollegeappling.dart';
import 'package:eduzet/view/tprofile.dart';
import 'package:eduzet/widgets/colour.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Collegeselecting extends StatefulWidget {
  const Collegeselecting({super.key});

  @override
  State<Collegeselecting> createState() => _CollegeselectingState();
}

class _CollegeselectingState extends State<Collegeselecting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(5),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: ColorResources.btcolour),
        child: const GNav(
            color: Colors.transparent,
            activeColor: Colors.white,
            tabBackgroundColor: Color.fromARGB(80, 4, 50, 158),
            curve: Curves.easeOutExpo,
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            gap: 5,
            tabs: [
              GButton(
                icon: Icons.monitor,
                iconColor: Colors.white,
                text: 'Home',
              ),
              GButton(
                icon: Icons.search,
                iconColor: Colors.white,
                text: 'Search',
              ),
              GButton(
                icon: Icons.call,
                iconColor: Colors.white,
                text: 'Call Us',
              )
            ]),
      ),
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black, // <-- SEE HERE
        ),
        backgroundColor: const Color.fromARGB(211, 255, 255, 255),
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
      body: ListView(
        children: [
          SizedBox(
            height: 25,
          ),
          Row(
            children: const [
              SizedBox(
                width: 17,
              ),
              Text(
                'Select your dream',
                style: TextStyle(
                    fontSize: Dimensions.fontSizeExtraLarge,
                    color: Colors.grey),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 17,
              ),
              Text(
                'College',
                style: GoogleFonts.poppins(
                    fontSize: 35,
                    color: ColorResources.txcolour,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          Container(
            height: 650,
            width: double.infinity,
            child: ListView.builder(
                itemCount: 20,
                itemBuilder: (BuildContext context, var index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CollegeAppling()));
                    },
                    child: Container(
                      height: 105,
                      margin: EdgeInsets.all(10),
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(84, 158, 158, 158),
                                blurRadius: 4,
                                offset: Offset(0, 3))
                          ],
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              width: 110,
                              height: 100,
                              image: AssetImage("assets/globee.png")),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "ABC university",
                                    style: GoogleFonts.poppins(
                                      color: ColorResources.txcolour,
                                      fontSize: Dimensions.fontSizeExtraLarge,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "₹20000",
                                    style: GoogleFonts.poppins(
                                      color: ColorResources.txcolour,
                                      fontSize: Dimensions.fontSizeExtraLarge1,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text("china",
                                  style: GoogleFonts.poppins(
                                    fontSize: Dimensions.fontSizeExtraSmall,
                                    color: Color(0xff939393),
                                  )),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Remote",
                                    style: GoogleFonts.poppins(
                                      fontSize: Dimensions.fontSizeExtraSmall,
                                      color: Colors.pink,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.20,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    '6 days left',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize:
                                            Dimensions.fontSizeExtraSmall),
                                  ),
                                  const SizedBox(
                                    width: 88,
                                  ),
                                  // Icon(
                                  //   Icons.favorite_border_outlined,
                                  //   size: 35,
                                  //   color: Colors.grey,
                                  // ),
                                  Image.asset('assets/Like.png')
                                ],
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [],
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
