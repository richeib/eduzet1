import 'package:eduzet/utill/dimensions.dart';

import 'package:eduzet/view/tprofile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/colour.dart';

class DefaultHome extends StatelessWidget {
  const DefaultHome({super.key});
  final String a = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(right: 15, left: 15, top: 25),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            border: Border.all(color: Color(0xFF939393)),
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
                                labelText: 'Search',
                                labelStyle: GoogleFonts.poppins(
                                    fontSize: 10, color: Colors.grey),
                                border: InputBorder.none,
                              ),
                            )),
                          ),
                          height: 28,
                          width: 150,
                        ),
                        SizedBox(
                          width: 115,
                        ),
                        Column(
                          children: [
                            Image.asset('assets/tabler_location-filled.png'),
                            Text(
                              'Banglore',
                              style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400,
                                  color: ColorResources.txcolour),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Profile2()));
                            },
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
                    Row(
                      children: [
                        Text(
                          'Trending courses',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: Dimensions.fontSizeLarge,
                              fontWeight: FontWeight.w500),
                        ),
                        Image.asset('assets/Fire.png')
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 100,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment(1, 1),
                          end: Alignment(0, 0),
                          colors: <Color>[Color(0xff3f489e), Color(0xff4d59d2)],
                          stops: <double>[0, 1],
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'B.Tech',
                                style: GoogleFonts.poppins(
                                    fontSize: Dimensions.fontSizeOverLarge,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '4 years duration',
                                style: GoogleFonts.poppins(
                                    fontSize: Dimensions.fontSizeSmall,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          Image.asset('assets/graduate.png')
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Continue searching',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: Dimensions.fontSizeLarge,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 110,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          return AspectRatio(
                            aspectRatio: 1.8,
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: ColorResources.txcolour),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Bangalore",
                                        style: GoogleFonts.poppins(
                                          fontSize:
                                              Dimensions.fontSizeExtraLarge,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          height: 21 / 14,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      Text(
                                        "Medical - MBBS",
                                        style: GoogleFonts.poppins(
                                          fontSize: Dimensions.fontSizeSmall,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                          height: 15 / 10,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                  const Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recommended for you',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: Dimensions.fontSizeLarge,
                              fontWeight: FontWeight.w500),
                        ),
                        const Icon(Icons.list)
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 300,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/unsplash_bgQgAKagQB4.png')),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromARGB(84, 158, 158, 158),
                                  blurRadius: 4,
                                  offset: Offset(0, 3)),
                            ],
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Container(),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 13, horizontal: 20),
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.vertical(
                                            bottom: Radius.circular(10))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'HICET',
                                              style: GoogleFonts.poppins(
                                                fontSize:
                                                    Dimensions.fontSizeLarge,
                                                fontWeight: FontWeight.w600,
                                                color: ColorResources.txcolour,
                                              ),
                                            ),
                                            Text(
                                              'MBA-2 year duration',
                                              style: GoogleFonts.poppins(
                                                fontSize:
                                                    Dimensions.fontSizeSmall,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey,
                                              ),
                                            )
                                          ],
                                        ),
                                        const Icon(
                                            Icons.favorite_border_outlined)
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 300,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/unsplash_bgQgAKagQB4.png')),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromARGB(84, 158, 158, 158),
                                  blurRadius: 4,
                                  offset: Offset(0, 3)),
                            ],
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Container(),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 13, horizontal: 20),
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.vertical(
                                            bottom: Radius.circular(10))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'HICET',
                                              style: GoogleFonts.poppins(
                                                fontSize:
                                                    Dimensions.fontSizeLarge,
                                                fontWeight: FontWeight.w600,
                                                color: ColorResources.txcolour,
                                              ),
                                            ),
                                            Text(
                                              'MBA-2 year duration',
                                              style: GoogleFonts.poppins(
                                                fontSize:
                                                    Dimensions.fontSizeSmall,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey,
                                              ),
                                            )
                                          ],
                                        ),
                                        const Icon(
                                            Icons.favorite_border_outlined)
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 300,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/unsplash_bgQgAKagQB4.png')),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromARGB(84, 158, 158, 158),
                                  blurRadius: 4,
                                  offset: Offset(0, 3)),
                            ],
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Container(),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 13, horizontal: 20),
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.vertical(
                                            bottom: Radius.circular(10))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'HICET',
                                              style: GoogleFonts.poppins(
                                                fontSize:
                                                    Dimensions.fontSizeLarge,
                                                fontWeight: FontWeight.w600,
                                                color: ColorResources.txcolour,
                                              ),
                                            ),
                                            Text(
                                              'MBA-2 year duration',
                                              style: GoogleFonts.poppins(
                                                fontSize:
                                                    Dimensions.fontSizeSmall,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey,
                                              ),
                                            )
                                          ],
                                        ),
                                        const Icon(
                                            Icons.favorite_border_outlined)
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        )
                      ],

                      // child: ListView.builder(
                      //     itemCount: 5,
                      //     itemBuilder: (BuildContext context, var index) {
                      //       return Container(
                      //         height: 230,
                      //         padding: EdgeInsets.all(30),
                      //         margin: EdgeInsets.all(23),
                      //         width: 40,
                      //         decoration: BoxDecoration(
                      //             borderRadius: BorderRadius.circular(20),
                      //             boxShadow: [
                      //               BoxShadow(
                      //                   color: Colors.grey,
                      //                   blurRadius: 6,
                      //                   offset: Offset(0, 7))
                      //             ],
                      //             color: Colors.white),
                      //         child: InkWell(
                      //           onTap: () {
                      //             Navigator.push(
                      //                 context,
                      //                 MaterialPageRoute(
                      //                     builder: (context) => DefaultHome()));
                      //           },
                      //           child: Column(
                      //             children: [
                      //               Container(
                      //                 height: 120,
                      //                 width: MediaQuery.of(context).size.width,
                      //                 child: Image.asset(
                      //                   'assets/notre-dame-university-COLLEGECAMP0421-039ce0bfd40b4e429b825c6fb6ebfaa6.jpg',
                      //                   fit: BoxFit.fill,
                      //                 ),
                      //               ),
                      //               Text(
                      //                 'BCS',
                      //                 style: TextStyle(color: Colors.black),
                      //               ),
                      //               Text(
                      //                 'BCS',
                      //                 style: TextStyle(color: Colors.black),
                      //               ),
                      //             ],
                      //           ),
                      //         ),
                      //       );
                      //     }),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
