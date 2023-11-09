import 'package:eduzet/utill/dimensions.dart';
import 'package:eduzet/view/tprofile.dart';
import 'package:eduzet/widgets/navigator_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:eduzet/utill/colour.dart';

class Review extends StatefulWidget {
  const Review({super.key});

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: DashboardScreen(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        centerTitle: true,
        title: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            border: Border.all(color: Colors.grey),
          ),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 15),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search location,course,college',
                labelStyle: TextStyle(fontSize: 10),
                border: InputBorder.none,
              ),
            ),
          )),
          height: 28,
          width: 330,
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
      body: Column(children: [
        Center(
          child: Text(
            'Rating and Reviews',
            style: TextStyle(color: Colors.black, fontSize: Dimensions.fontSizeLarge, fontWeight: FontWeight.w700),
          ),
        ),
        Container(
          height: 685,
          child: ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, var index) {
                return Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25, right: 25),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage(
                                  'assets/user 1.png',
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Newton',
                                style: GoogleFonts.poppins(
                                  fontSize: Dimensions.fontSizeSmall,
                                  color: ColorResources.txcolour,
                                ),
                              ),
                              SizedBox(
                                width: 190,
                              ),
                              Icon(
                                Icons.thumb_up_off_alt,
                                color: Colors.grey,
                                size: 20,
                              ),
                              Icon(
                                Icons.thumb_down_off_alt,
                                color: Colors.grey,
                                size: 20,
                              ),
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
                              SizedBox(
                                width: 25,
                              ),
                              Text(
                                '12 min ago',
                                style: GoogleFonts.poppins(
                                  fontSize: Dimensions.fontSizeSmall,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Game-plan granularity pre launch,for locked and loaded,for those options are already baked in with this model.',
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.poppins(
                              fontSize: Dimensions.fontSizeSmall,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff000000),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Divider(
                            thickness: 1,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    )
                  ],
                );
              }),
        )
      ]),
    );
  }
}
