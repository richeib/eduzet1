import 'package:eduzet/utill/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile2 extends StatefulWidget {
  const Profile2({super.key});

  @override
  State<Profile2> createState() => _Profile2State();
}

class _Profile2State extends State<Profile2> {
  bool expanded = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: const BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          const CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/user 1.png'),
          ),
          Text(
            'Samanta Ashok',
            style: GoogleFonts.poppins(
              fontSize: Dimensions.fontSizeExtraLarge,
              color: Colors.black,
            ),
          ),
          Text(
            'Post Graduation',
            style: GoogleFonts.poppins(color: Colors.grey, fontSize: Dimensions.fontSizeSmall),
          ),
          const Divider(
            color: Color(0xFF939393),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: AnimatedContainer(
              curve: Curves.elasticOut,
              duration: const Duration(seconds: 1),
              height: expanded ? 30.0 : 60,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.edit,
                        color: Color(0xFF3f489e),
                      ),
                      Text(
                        'Change Name',
                        style: GoogleFonts.poppins(color: Colors.grey, fontSize: Dimensions.fontSizeSmall),
                      ),
                      GestureDetector(
                        child: Icon(
                          color: Colors.grey,
                          expanded ? Icons.arrow_upward_rounded : Icons.arrow_downward_rounded,
                        ),
                        onTap: () {
                          setState(() {
                            expanded = !expanded;
                          });
                        },
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  !expanded
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 150,
                              height: 20,
                              child: TextField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  hintStyle: GoogleFonts.poppins(color: Colors.grey),
                                  hintText: 'samantha ashok',
                                ),
                                style: GoogleFonts.poppins(color: Colors.grey, fontSize: Dimensions.fontSizeSmall),
                              ),
                            ),
                            GestureDetector(
                              child: const Icon(
                                color: Colors.grey,
                                Icons.check,
                              ),
                              onTap: () {},
                            )
                          ],
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Divider(
            color: Color(0xFF939393),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.add_ic_call_rounded,
                        color: Color(0xFF3f489e),
                      ),
                      Text(
                        'Add New Phone',
                        style: GoogleFonts.poppins(color: Colors.grey, fontSize: Dimensions.fontSizeSmall),
                      ),
                      Icon(
                        expanded ? Icons.arrow_upward_rounded : Icons.arrow_downward_rounded,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  !expanded
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 150,
                              height: 20,
                              child: TextField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  hintStyle: GoogleFonts.poppins(color: Colors.grey),
                                  hintText: 'samantha ashok',
                                ),
                                style: GoogleFonts.poppins(color: Colors.grey, fontSize: Dimensions.fontSizeSmall),
                              ),
                            ),
                            GestureDetector(
                              child: const Icon(
                                color: Colors.grey,
                                Icons.check,
                              ),
                              onTap: () {},
                            )
                          ],
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Color(0xFF939393),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.history,
                    color: Color(0xFF3f489e),
                  ),
                  Text(
                    'History',
                    style: GoogleFonts.poppins(color: Colors.grey, fontSize: Dimensions.fontSizeSmall),
                  ),
                  const Icon(
                    Icons.arrow_downward_rounded,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Color(0xFF939393),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.phone_in_talk,
                    color: Color(0xFF3f489e),
                  ),
                  Text(
                    'Talk to our students',
                    style: GoogleFonts.poppins(color: Colors.grey, fontSize: Dimensions.fontSizeSmall),
                  ),
                  const Icon(
                    Icons.arrow_downward_rounded,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Color(0xFF939393),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.logout_sharp,
                    color: Color(0xFF3f489e),
                  ),
                  Text(
                    'Logout',
                    style: GoogleFonts.poppins(color: Colors.grey, fontSize: Dimensions.fontSizeSmall),
                  ),
                  const Icon(
                    Icons.arrow_downward_rounded,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
