import 'package:eduzet/utill/dimensions.dart';
import 'package:eduzet/view/mscolarship.dart';
import 'package:eduzet/view/tprofile.dart';
import 'package:eduzet/view/ureview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:eduzet/utill/colour.dart';

class CollegePage extends StatefulWidget {
  const CollegePage({super.key});

  @override
  State<CollegePage> createState() => _CollegePageState();
}

class _CollegePageState extends State<CollegePage> {
  bool isLiked = false;

  void toggleLike() {
    print("object");
    setState(() {
      isLiked = !isLiked;
    });
  }

  bool isExpanded = false;
  bool isExpanded2 = false;
  String Discription = "years of Official Experience";
  void toggleExpansion() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  void toggleExpansion2() {
    setState(() {
      isExpanded2 = !isExpanded2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.black,
          ),
          backgroundColor: const Color.fromARGB(211, 255, 255, 255),
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        'Hindustan College of\nArt & Science',
                        style: GoogleFonts.poppins(fontSize: Dimensions.fontSizeExtraLarge2, color: ColorResources.txcolour, fontWeight: FontWeight.w500),
                      ),
                    ),
                    GestureDetector(
                      onTap: toggleLike,
                      child: isLiked
                          ? Image.asset(width: 30, height: 30, 'assets/liked.png')
                          : Image.asset(
                              width: 30,
                              height: 30,
                              'assets/Like.png',
                            ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    'Delhi',
                    style: TextStyle(color: Colors.grey, fontSize: Dimensions.fontSizeDefault),
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
                  Text(
                    '5.0',
                    style: TextStyle(fontSize: 12),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: RatingBar.builder(
                      itemSize: 12,
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
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Pollachi Main Rd, Coimbatore,\nMalumichampatti, Tamil Nadu 641050',
                          style: GoogleFonts.poppins(fontSize: Dimensions.fontSizeSmall, color: ColorResources.btcolour, fontWeight: FontWeight.w500),
                        ),
                        Image.asset('assets/Globe.png'),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Scolarship()));
                      },
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        decoration: BoxDecoration(color: const Color(0xFF1f2b5d), borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Text(
                              "• Accredited by National Assessment and Accreditation Council (NAAC) of UGC \n• All India Council for Technical Education (AICTE)",
                              style: GoogleFonts.poppins(
                                fontSize: Dimensions.fontSizeSmall,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: toggleExpansion,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: ColorResources.txcolour, width: 1),
                          borderRadius: BorderRadius.circular(5),
                        ),
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
                            const SizedBox(
                              width: 150,
                            ),
                            Icon(
                              isExpanded ? Icons.remove : Icons.add,
                              color: const Color(0xff1f2b5d),
                            )
                          ],
                        ),
                      ),
                    ),
                    AnimatedContainer(
                        curve: Curves.fastOutSlowIn,
                        padding: const EdgeInsets.all(10),
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: isExpanded ? 10 : 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: ColorResources.txcolour, width: 1),
                        ),
                        duration: const Duration(milliseconds: 500),
                        height: isExpanded ? 7.h : 0.0,
                        width: double.maxFinite,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Download prospectus 2023-24",
                              style: GoogleFonts.poppins(decoration: TextDecoration.underline, color: ColorResources.txcolour, fontSize: Dimensions.fontSizeSmall),
                            ),
                            isExpanded
                                ? const Icon(
                                    Icons.picture_as_pdf_rounded,
                                  )
                                : const SizedBox()
                          ],
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: toggleExpansion2,
                      child: Container(
                        decoration: BoxDecoration(border: Border.all(color: ColorResources.txcolour, width: 1), borderRadius: BorderRadius.circular(5)),
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
                            const SizedBox(
                              width: 150,
                            ),
                            Icon(
                              isExpanded2 ? Icons.remove : Icons.add,
                              color: const Color(0xff1f2b5d),
                            )
                          ],
                        ),
                      ),
                    ),
                    AnimatedContainer(
                        curve: Curves.fastOutSlowIn,
                        padding: const EdgeInsets.all(10),
                        margin: EdgeInsets.only(top: isExpanded2 ? 10 : 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: ColorResources.txcolour, width: 1),
                        ),
                        duration: const Duration(milliseconds: 500),
                        height: isExpanded2 ? 10.h : 0.0,
                        width: double.maxFinite,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "• Lorem Ipsum is simply dummy text of the printing ",
                              style: GoogleFonts.poppins(
                                fontSize: Dimensions.fontSizeSmall,
                                color: ColorResources.txcolour,
                              ),
                            ),
                            Text(
                              "• ypesetting industry",
                              style: GoogleFonts.poppins(
                                fontSize: Dimensions.fontSizeSmall,
                                color: ColorResources.txcolour,
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Rating and Response',
                                style: GoogleFonts.poppins(fontSize: Dimensions.fontSizeLarge, fontWeight: FontWeight.w500),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Review()));
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
                                          fontSize: Dimensions.fontSizeLarge,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
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
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
