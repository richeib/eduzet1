import 'package:eduzet/view/tprofile.dart';
import 'package:eduzet/utill/colour.dart';
import 'package:eduzet/widgets/navigator_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utill/dimensions.dart';

class Scolarship extends StatefulWidget {
  const Scolarship({super.key});

  @override
  State<Scolarship> createState() => _ScolarshipState();
}

class _ScolarshipState extends State<Scolarship> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
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
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Scholarship &',
              style: GoogleFonts.poppins(
                fontSize: Dimensions.fontSizeLarge,
                color: Colors.grey,
              ),
            ),
            Text(
              'Financial Aid',
              style: GoogleFonts.poppins(fontSize: Dimensions.fontSizeOverLarge, color: ColorResources.txcolour, fontWeight: FontWeight.w500),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (BuildContext context, var index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardScreen()));
                      },
                      child: Container(
                        height: 240,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        width: 40,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color(0xffC5C8E2)),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 5,
                                child: Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Admission Financial aid",
                                          style: GoogleFonts.poppins(
                                            fontSize: Dimensions.fontSizeDefault,
                                            fontWeight: FontWeight.w400,
                                            color: ColorResources.txcolour,
                                          ),
                                        ),
                                        Text(
                                          "₹20,000",
                                          style: GoogleFonts.poppins(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w600,
                                            color: ColorResources.txcolour,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        Text(
                                          "The selected students will receive INR 10,000 per annum. Income certificate (from a competent authority; ration card not accepted.)",
                                          style: GoogleFonts.poppins(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            color: ColorResources.txcolour,
                                          ),
                                          textAlign: TextAlign.justify,
                                        )
                                      ],
                                    ),
                                  ),
                                )),
                            Expanded(
                              flex: 2,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: ColorResources.txcolour,
                                  borderRadius: BorderRadius.vertical(
                                    bottom: Radius.circular(20),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "know more",
                                    style: GoogleFonts.poppins(
                                      fontSize: Dimensions.fontSizeDefault,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                    // return Container(
                    //   height: 230,
                    //   padding: EdgeInsets.all(10),
                    //   margin: EdgeInsets.symmetric(vertical: 10),
                    //   width: 40,
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(20),
                    //       boxShadow: [
                    //         BoxShadow(
                    //             color: Colors.grey,
                    //             blurRadius: 6,
                    //             offset: Offset(0, 7))
                    //       ],
                    //       color: Color.fromARGB(255, 187, 187, 243)),
                    //   child: InkWell(
                    //     onTap: () {
                    //       Navigator.push(
                    //           context,
                    //           MaterialPageRoute(
                    //               builder: (context) => DefaultHome()));
                    //     },
                    //     child: Column(
                    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       children: [
                    //         Column(
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           children: [
                    //             Text(
                    //               "Admission Financial aid",
                    //               style: TextStyle(
                    //                   color: ColorResources.txcolour,
                    //                   fontSize: Dimensions.fontSizeExtraLarge),
                    //             ),
                    //             SizedBox(
                    //               height: 10,
                    //             ),
                    //             Text("20000",
                    //                 style: TextStyle(
                    //                     color: ColorResources.txcolour)),
                    //             Text(
                    //                 "The selected students will receive INR 10,000 per annum. Income certificate (from a competent authority; ration card not accepted.)",
                    //                 style: TextStyle(
                    //                     color: ColorResources.txcolour)),
                    //             Container(
                    //               height: 28,
                    //               width: MediaQuery.of(context).size.width,
                    //               color: ColorResources.txcolour,
                    //               child: Center(
                    //                   child: Text(
                    //                 'Know more',
                    //                 style: TextStyle(color: Colors.white),
                    //               )),
                    //             )
                    //           ],
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
