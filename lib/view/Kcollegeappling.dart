import 'package:eduzet/utill/dimensions.dart';
import 'package:eduzet/view/LCollege.dart';
import 'package:eduzet/view/tprofile.dart';
import 'package:eduzet/view/ureview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/colour.dart';

class CollegeAppling extends StatefulWidget {
  const CollegeAppling({super.key});

  @override
  State<CollegeAppling> createState() => _CollegeApplingState();
}

class _CollegeApplingState extends State<CollegeAppling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            gap: 5,
            tabs: [
              GButton(
                icon: Icons.monitor,
                iconColor: Colors.white,
                text: 'Home',
              ),
              GButton(
                  icon: Icons.work_sharp,
                  iconColor: Colors.white,
                  text: 'Apply Now',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CollegePage()));
                  }),
              GButton(
                icon: Icons.call,
                iconColor: Colors.white,
                text: 'Call Us',
              )
            ]),
      ),
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      'Attapadi College of\nArt & Science',
                      style: GoogleFonts.poppins(
                          fontSize: Dimensions.fontSizeOverLarge,
                          color: ColorResources.txcolour,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.favorite_border,
                      size: 37,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                SizedBox(width: 20),
                Text(
                  'Delhi',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text('5.0'),
                Align(
                  alignment: Alignment.topLeft,
                  child: RatingBar.builder(
                    itemSize: 20,
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.pink,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/unsplash_bgQgAKagQB4.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Electronics &\nIntrumentation',
                        style: GoogleFonts.poppins(
                          fontSize: Dimensions.fontSizeOverLarge,
                          color: ColorResources.txcolour,
                        ),
                      ),
                      Text(
                        "RS 20000",
                        style: GoogleFonts.poppins(
                            fontSize: Dimensions.fontSizeOverLarge,
                            color: ColorResources.txcolour,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 25,
                          width: 180,
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                            color: Color(0xfBDBD2E),
                          ),
                          child: Text(
                            'Safty Assured by this App',
                            style: GoogleFonts.poppins(
                              fontSize: Dimensions.fontSizeSmall,
                              color: Color(0xff848400),
                            ),
                          )),
                      Text(
                        "6 days left",
                        style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: Dimensions.fontSizeSmall),
                      )
                    ],
                  ),
                  Text(
                    "• Accredited by National Assessment and Accreditation Council (NAAC) of UGC\n• All India Council for Technical Education (AICTE)",
                    style: const TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 11.5,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff1f2b5d),
                      height: 20 / 10,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40),
                      ),
                      color: Color(0xffC5C8E2),
                    ),
                    height: 90,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset('assets/tabler_pig-money.png'),
                        const SizedBox(
                          width: 5,
                        ),
                        VerticalDivider(
                          color: ColorResources.txcolour,
                          thickness: 2,
                          indent: 8,
                          endIndent: 8,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Get',
                              style: GoogleFonts.poppins(
                                  fontSize: Dimensions.fontSizeLarge,
                                  color: ColorResources.txcolour,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '₹15,000',
                              style: GoogleFonts.poppins(
                                  fontSize: Dimensions.fontSizeOverLarge,
                                  color: ColorResources.txcolour,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Scolarship for Eduzet Students',
                              style: GoogleFonts.poppins(
                                  fontSize: Dimensions.fontSizeExtraSmall,
                                  color: ColorResources.txcolour,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Discription',
                    style: GoogleFonts.poppins(
                      fontSize: Dimensions.fontSizeLarge,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '• Years of Official Experience\n• Diploma in computer science\n• Worlds best Teachers',
                    style: GoogleFonts.poppins(
                      fontSize: Dimensions.fontSizeSmall,
                      color: Color(0xff606d76),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: ColorResources.txcolour, width: 1),
                        borderRadius: BorderRadius.circular(5)),
                    height: 43,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Curriculum',
                          style: GoogleFonts.poppins(
                            fontSize: Dimensions.fontSizeLarge,
                            color: ColorResources.txcolour,
                          ),
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Icon(
                          Icons.add,
                          color: Color(0xff1f2b5d),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: ColorResources.txcolour, width: 1),
                        borderRadius: BorderRadius.circular(5)),
                    height: 43,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Other Course',
                          style: GoogleFonts.poppins(
                            fontSize: Dimensions.fontSizeLarge,
                            color: ColorResources.txcolour,
                          ),
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Icon(
                          Icons.add,
                          color: Color(0xff1f2b5d),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rating and Response',
                          style: GoogleFonts.poppins(
                              fontSize: Dimensions.fontSizeLarge,
                              fontWeight: FontWeight.w600),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Review()));
                          },
                          child: Icon(
                            Icons.arrow_right,
                            size: Dimensions.fontSizeOverLarge,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundImage: AssetImage(
                                    'assets/user 1.png',
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Newton',
                                  style: GoogleFonts.poppins(
                                    fontSize: Dimensions.fontSizeSmall,
                                    color: ColorResources.txcolour,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 140,
                            ),
                            Text(
                              '10 min ago',
                              style: GoogleFonts.poppins(
                                fontSize: Dimensions.fontSizeSmall,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              '5.0',
                              style: GoogleFonts.poppins(
                                fontSize: Dimensions.fontSizeSmall,
                                color: Colors.grey,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: RatingBar.builder(
                                itemSize: Dimensions.fontSizeSmall,
                                initialRating: 3,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.pink,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Game-plan granularity pre launch,for locked and loaded,for those options are already baked in with this model.',
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.poppins(
                            fontSize: Dimensions.fontSizeSmall,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
