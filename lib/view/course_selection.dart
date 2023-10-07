import 'package:eduzet/utill/dimensions.dart';
import 'package:eduzet/view/college_selections.dart';
import 'package:eduzet/view/tprofile.dart';
import 'package:eduzet/widgets/colour.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseSelection extends StatefulWidget {
  const CourseSelection({super.key});

  @override
  State<CourseSelection> createState() => _CourseSelectionState();
}

class _CourseSelectionState extends State<CourseSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          'Banglore',
          style: TextStyle(color: Color.fromARGB(255, 10, 85, 147)),
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
      body: ListView(
        children: [
          const SizedBox(
            height: 25,
          ),
          Row(
            children: const [
              SizedBox(
                width: 17,
              ),
              Text(
                'Select your',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 17,
              ),
              Text(
                'Course',
                style: GoogleFonts.poppins(
                    fontSize: 35,
                    color: ColorResources.txcolour,
                    fontWeight: FontWeight.w500),
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
                              builder: (context) => const Collegeselecting()));
                    },
                    child: Container(
                      height: 90,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(84, 158, 158, 158),
                                blurRadius: 4,
                                offset: Offset(0, 3))
                          ],
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Computer science",
                                style: GoogleFonts.poppins(
                                    color: ColorResources.txcolour,
                                    fontSize: Dimensions.fontSizeLarge),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text("2 year - Full Time",
                                  style: GoogleFonts.poppins(
                                      color: ColorResources.btcolour,
                                      fontSize: Dimensions.fontSizeSmall))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
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
      floatingActionButton: Row(
        children: [
          const SizedBox(
            width: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Collegeselecting()));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: ColorResources.btcolour,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      bottomLeft: Radius.circular(25))),
              height: 54,
              width: 210,
              child: Center(
                child: Text(
                  'Search',
                  style: TextStyle(
                      fontSize: Dimensions.fontSizeSmall, color: Colors.white),
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
              decoration: BoxDecoration(
                  color: ColorResources.btcolour,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
              height: 54,
              width: 150,
              child: Center(
                child: Text(
                  'Call us',
                  style: TextStyle(
                      fontSize: Dimensions.fontSizeSmall, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
