import 'package:eduzet/utill/dimensions.dart';
import 'package:eduzet/view/ohome.dart';
import 'package:eduzet/view/pnotification.dart';
import 'package:eduzet/view/qwhishlist.dart';
import 'package:eduzet/view/swhishlist.dart';
import 'package:eduzet/view/tprofile.dart';
import 'package:eduzet/widgets/colour.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../view/LCollege.dart';

class DashboardScreen extends StatefulWidget {
  @override
  DashboardScreenState createState() => DashboardScreenState();
}

class DashboardScreenState extends State<DashboardScreen> {
  var currentIndex = 0;
  List<Widget> screen = [
    DefaultHome(),
    noNotification(),
    nowhishlist(),
    Profile2()
  ];
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        margin: EdgeInsets.all(displayWidth * .05),
        height: displayWidth * .155,
        decoration: BoxDecoration(
          color: ColorResources.btcolour,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 30,
              offset: Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(50),
        ),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: displayWidth * .02),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(() {
                currentIndex = index;

                HapticFeedback.lightImpact();
              });
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(
              children: [
                AnimatedContainer(
                  duration: Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == currentIndex
                      ? displayWidth * .32
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: index == currentIndex ? displayWidth * .12 : 0,
                    width: index == currentIndex ? displayWidth * .32 : 0,
                    decoration: BoxDecoration(
                      color: index == currentIndex
                          ? Colors.blueAccent.withOpacity(.2)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == currentIndex
                      ? displayWidth * .31
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width:
                                index == currentIndex ? displayWidth * .12 : 0,
                          ),
                          AnimatedOpacity(
                            opacity: index == currentIndex ? 1 : 0,
                            duration: Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: Text(
                              index == currentIndex
                                  ? '${listOfStrings[index]}'
                                  : '',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: Dimensions.fontSizeSmall,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width:
                                index == currentIndex ? displayWidth * .03 : 20,
                          ),
                          Icon(
                            listOfIcons[index],
                            size: Dimensions.fontSizeExtraLarge,
                            color: index == currentIndex
                                ? Color.fromRGBO(255, 255, 255, 1)
                                : Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: screen[currentIndex],
    );
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.settings_rounded,
    Icons.favorite_rounded,
    Icons.phone,
  ];

  List<String> listOfStrings = [
    'Home',
    'Notification',
    'Whishlist',
    'Call Us',
  ];
}

// class DashboardScreen1 extends StatefulWidget {
//   @override
//   DashboardScreen1State createState() => DashboardScreen1State();
// }

// class DashboardScreen1State extends State<DashboardScreen1> {
//   var currentIndex = 0;
//   List<Widget> screen = [DefaultHome(), CollegePage(), Profile2()];
//   @override
//   Widget build(BuildContext context) {
//     double displayWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       bottomNavigationBar: Container(
//         margin: EdgeInsets.all(displayWidth * .05),
//         height: displayWidth * .155,
//         decoration: BoxDecoration(
//           color: ColorResources.btcolour,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(.1),
//               blurRadius: 30,
//               offset: Offset(0, 10),
//             ),
//           ],
//           borderRadius: BorderRadius.circular(50),
//         ),
//         child: ListView.builder(
//           itemCount: 3,
//           scrollDirection: Axis.horizontal,
//           padding: EdgeInsets.symmetric(horizontal: displayWidth * .02),
//           itemBuilder: (context, index) => InkWell(
//             onTap: () {
//               setState(() {
//                 currentIndex = index;

//                 HapticFeedback.lightImpact();
//               });
//             },
//             splashColor: Colors.transparent,
//             highlightColor: Colors.transparent,
//             child: Stack(
//               children: [
//                 AnimatedContainer(
//                   duration: Duration(seconds: 1),
//                   curve: Curves.fastLinearToSlowEaseIn,
//                   width: index == currentIndex
//                       ? displayWidth * .32
//                       : displayWidth * .18,
//                   alignment: Alignment.center,
//                   child: AnimatedContainer(
//                     duration: Duration(seconds: 1),
//                     curve: Curves.fastLinearToSlowEaseIn,
//                     height: index == currentIndex ? displayWidth * .12 : 0,
//                     width: index == currentIndex ? displayWidth * .32 : 0,
//                     decoration: BoxDecoration(
//                       color: index == currentIndex
//                           ? Colors.blueAccent.withOpacity(.2)
//                           : Colors.transparent,
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                   ),
//                 ),
//                 AnimatedContainer(
//                   duration: Duration(seconds: 1),
//                   curve: Curves.fastLinearToSlowEaseIn,
//                   width: index == currentIndex
//                       ? displayWidth * .31
//                       : displayWidth * .18,
//                   alignment: Alignment.center,
//                   child: Stack(
//                     children: [
//                       Row(
//                         children: [
//                           AnimatedContainer(
//                             duration: Duration(seconds: 1),
//                             curve: Curves.fastLinearToSlowEaseIn,
//                             width:
//                                 index == currentIndex ? displayWidth * .12 : 0,
//                           ),
//                           AnimatedOpacity(
//                             opacity: index == currentIndex ? 1 : 0,
//                             duration: Duration(seconds: 1),
//                             curve: Curves.fastLinearToSlowEaseIn,
//                             child: Text(
//                               index == currentIndex
//                                   ? '${listOfStrings[index]}'
//                                   : '',
//                               style: GoogleFonts.poppins(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: Dimensions.fontSizeSmall,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           AnimatedContainer(
//                             duration: Duration(seconds: 1),
//                             curve: Curves.fastLinearToSlowEaseIn,
//                             width:
//                                 index == currentIndex ? displayWidth * .03 : 20,
//                           ),
//                           Icon(
//                             listOfIcons[index],
//                             size: Dimensions.fontSizeExtraLarge,
//                             color: index == currentIndex
//                                 ? Color.fromRGBO(255, 255, 255, 1)
//                                 : Colors.white,
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//       body: screen[currentIndex],
//     );
//   }

//   List<IconData> listOfIcons = [
//     Icons.home_rounded,
//     Icons.badge,
//     Icons.phone,
//   ];

//   List<String> listOfStrings = [
//     'Home',
//     'Apply now'
//         'Call Us',
//   ];
// }
