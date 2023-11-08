import 'package:carousel_slider/carousel_slider.dart';
import 'package:eduzet/utill/dimensions.dart';
import 'package:eduzet/view/LCollege.dart';
import 'package:eduzet/view/tprofile.dart';
import 'package:eduzet/view/ureview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';
import '../widgets/colour.dart';
import 'ohome.dart';

class CollegeAppling extends StatefulWidget {
  const CollegeAppling({super.key});

  @override
  State<CollegeAppling> createState() => _CollegeApplingState();
}

class _CollegeApplingState extends State<CollegeAppling> {
  bool isLiked = false;

  void toggleLike() {
    print("object");
    setState(() {
      isLiked = !isLiked;
    });
  }

  bool isExpanded = false;
  bool isExpanded2 = false;
  List<String> list = [
    "assets/notre-dame-university-COLLEGECAMP0421-039ce0bfd40b4e429b825c6fb6ebfaa6.jpg",
    "assets/notre-dame-university-COLLEGECAMP0421-039ce0bfd40b4e429b825c6fb6ebfaa6.jpg",
    "assets/notre-dame-university-COLLEGECAMP0421-039ce0bfd40b4e429b825c6fb6ebfaa6.jpg",
    "assets/notre-dame-university-COLLEGECAMP0421-039ce0bfd40b4e429b825c6fb6ebfaa6.jpg",
    "assets/notre-dame-university-COLLEGECAMP0421-039ce0bfd40b4e429b825c6fb6ebfaa6.jpg"
  ];

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
    print("object");
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile2()));
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              child: const CircleAvatar(
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
            const SizedBox(
              height: 8,
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
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                const Text(
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
                    itemBuilder: (context, _) => const Icon(
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
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlay: true,
                  ),
                  items: list
                      .map((item) => Container(
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(item))),
                          ))
                      .toList(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Electronics &\nIntrumentation',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "₹20,000",
                        style: GoogleFonts.poppins(fontSize: 29, color: ColorResources.txcolour, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 25,
                          width: 180,
                          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          decoration: const BoxDecoration(
                            color: Color(0xfBDBD2E),
                          ),
                          child: Text(
                            'Safty Assured by this App',
                            style: GoogleFonts.poppins(
                              fontSize: Dimensions.fontSizeExtraSmall,
                              color: const Color(0xff848400),
                            ),
                          )),
                      Text(
                        "6 days left",
                        style: GoogleFonts.poppins(color: Colors.grey, fontSize: Dimensions.fontSizeSmall),
                      )
                    ],
                  ),
                  Text(
                    "• Accredited by National Assessment and Accreditation Council\n (NAAC) of UGC\n• All India Council for Technical Education (AICTE)",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: Dimensions.fontSizeSmall,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff1f2b5d),
                      height: 20 / 10,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    decoration: const BoxDecoration(
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
                        const VerticalDivider(
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
                              style: GoogleFonts.poppins(fontSize: Dimensions.fontSizeLarge, color: ColorResources.txcolour, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '₹15,000',
                              style: GoogleFonts.poppins(fontSize: Dimensions.fontSizeOverLarge, color: ColorResources.txcolour, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Scolarship for Eduzet Students',
                              style: GoogleFonts.poppins(fontSize: Dimensions.fontSizeExtraSmall, color: ColorResources.txcolour, fontWeight: FontWeight.w500),
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
                    'Description',
                    style: GoogleFonts.poppins(
                      fontSize: Dimensions.fontSizeLarge,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    '• Years of Official Experience\n• Diploma in computer science\n• Worlds best Teachers',
                    style: GoogleFonts.poppins(
                      fontSize: Dimensions.fontSizeSmall,
                      color: const Color(0xff606d76),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
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
                          style: GoogleFonts.poppins(fontSize: Dimensions.fontSizeLarge, fontWeight: FontWeight.w600),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Review()));
                          },
                          child: const Icon(
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
                                const CircleAvatar(
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
                                itemBuilder: (context, _) => const Icon(
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
                        const SizedBox(
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
      floatingActionButton: Row(
        children: [
          const SizedBox(
            width: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const DefaultHome()));
            },
            child: Container(
              decoration: const BoxDecoration(color: ColorResources.btcolour, borderRadius: BorderRadius.only(topLeft: Radius.circular(25), bottomLeft: Radius.circular(25))),
              height: 54,
              width: 115,
              child: const Center(
                  child: Icon(
                Icons.home_max,
                color: Colors.white,
              )),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const CollegePage()));
            },
            child: Container(
                height: 54,
                width: 130,
                color: ColorResources.btcolour,
                child: Center(
                  child: Container(
                    height: 40,
                    width: 140,
                    decoration: const BoxDecoration(color: Color(0xFFd45092), borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Center(
                      child: Shimmer.fromColors(
                        baseColor: Colors.white,
                        highlightColor: Colors.pink,
                        child:const Text(
                          '✔️ Apply Now',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: Dimensions.fontSizeDefault,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: const BoxDecoration(color: ColorResources.btcolour, borderRadius: BorderRadius.only(topRight: Radius.circular(25), bottomRight: Radius.circular(25))),
              height: 54,
              width: 115,
              child: const Center(
                  child: Icon(
                Icons.call,
                color: Colors.white,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
