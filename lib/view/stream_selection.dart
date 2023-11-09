import 'package:eduzet/utill/dimensions.dart';
import 'package:eduzet/view/course_selection.dart';
import 'package:eduzet/view/tprofile.dart';
import 'package:eduzet/utill/colour.dart';
import 'package:eduzet/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class stream_Selection extends StatelessWidget {
  const stream_Selection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black, // <-- SEE HERE
        ),
        title: Text(
          'Banglore',
          style: TextStyle(color: Color.fromARGB(255, 10, 85, 147)),
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
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            SizedBox(
              height: 7,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Choose your',
                  style: GoogleFonts.poppins(fontSize: 18, color: Colors.grey),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Stream',
                  style: GoogleFonts.poppins(fontSize: 35, fontWeight: FontWeight.w600, color: ColorResources.txcolour),
                ),
              ],
            ),
            SizedBox(
              height: 13,
            ),
            CustomButton3(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CourseSelection()));
              },
              btnTxtc: "Technology",
            ),
            CustomButton3(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CourseSelection()));
              },
              btnTxtc: "Medical",
            ),
            CustomButton3(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CourseSelection(),
                  ),
                );
              },
              btnTxtc: "Engineering",
            ),
            CustomButton3(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CourseSelection()));
              },
              btnTxtc: "Art",
            ),
            CustomButton3(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CourseSelection()));
              },
              btnTxtc: "Design",
            ),
            CustomButton3(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CourseSelection()));
              },
              btnTxtc: "Business",
            ),
            CustomButton3(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CourseSelection()));
              },
              btnTxtc: "Diploma",
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
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => Collegeselecting()));
            },
            child: Container(
              decoration: BoxDecoration(color: ColorResources.btcolour, borderRadius: BorderRadius.only(topLeft: Radius.circular(25), bottomLeft: Radius.circular(25))),
              height: 54,
              width: 210,
              child: Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.search_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(fontSize: Dimensions.fontSizeDefault, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Text(
            'l',
            style: TextStyle(fontSize: 8, color: Colors.white),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(color: ColorResources.btcolour, borderRadius: BorderRadius.only(topRight: Radius.circular(25), bottomRight: Radius.circular(25))),
              height: 54,
              width: 150,
              child: Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.call_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Call us',
                      style: TextStyle(fontSize: Dimensions.fontSizeDefault, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
