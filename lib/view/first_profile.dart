import 'package:eduzet/view/program_selection.dart';
import 'package:eduzet/utill/colour.dart';
import 'package:eduzet/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utill/dimensions.dart';

class Profile extends StatelessWidget {
  Profile({super.key});
  final List items = ['item1', 'item2', 'item3', 'item4', 'item5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 35, right: 35, top: 35),
          child: Column(
            children: [
              Text(
                'Complete your profile',
                style: GoogleFonts.poppins(fontSize: Dimensions.fontSizeDefault, fontWeight: FontWeight.w600),
              ),
              Text(
                'Add your details',
                style: GoogleFonts.poppins(fontSize: Dimensions.fontSizeDefault, color: Colors.grey),
                textAlign: TextAlign.start,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Column(
                  children: [
                    imageProfile(),
                  ],
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(left: 20),
                  width: 400,
                  child: Text(
                    'Name',
                    style: TextStyle(fontSize: Dimensions.fontSizeSmall, fontWeight: FontWeight.w600),
                  )),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 39,
                color: Colors.white,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 235, 235, 235),
                    border: const OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(13))),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                width: 400,
                child: Text(
                  'E-mail',
                  style: TextStyle(fontSize: Dimensions.fontSizeSmall, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 39,
                width: 400,
                color: Colors.white,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 235, 235, 235),
                    hintText: '  @gmail.com',
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: Dimensions.fontSizeSmall,
                    ),
                    border: const OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(13))),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  Container(
                      child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Phone number',
                        style: TextStyle(fontSize: Dimensions.fontSizeSmall, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Text(
                        'Date of birth',
                        style: TextStyle(fontSize: Dimensions.fontSizeSmall, fontWeight: FontWeight.w600),
                      ),
                    ],
                  )),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 39,
                        width: 153,
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromARGB(255, 235, 235, 235),
                            hintText: "  +918848740725",
                            hintStyle: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: Dimensions.fontSizeSmall,
                            ),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(
                                Radius.circular(13),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 39,
                        width: 153,
                        child: TextFormField(
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                              lastDate: DateTime(2101),
                              builder: (context, child) => Theme(
                                  data: Theme.of(context).copyWith(
                                    colorScheme: ColorScheme.light(
                                      primary: ColorResources.btcolour,
                                    ),
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(top: 50.0),
                                        child: AspectRatio(
                                          aspectRatio: 5 / 7,
                                          child: child,
                                        ),
                                      ),
                                    ],
                                  )),
                            );
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromARGB(255, 235, 235, 235),
                            hintText: " DD MM YYYY",
                            hintStyle: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: Dimensions.fontSizeSmall,
                            ),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(
                                Radius.circular(13),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                  padding: const EdgeInsets.only(left: 20),
                  width: 400,
                  child: Text(
                    'Place',
                    style: GoogleFonts.poppins(fontSize: Dimensions.fontSizeSmall, fontWeight: FontWeight.w600),
                  )),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 39,
                color: Colors.white,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 235, 235, 235),
                    hintText: '  Place',
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: Dimensions.fontSizeSmall,
                    ),
                    border: const OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(13))),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                width: 400,
                child: Text(
                  'Education Qualification',
                  style: TextStyle(fontSize: Dimensions.fontSizeSmall, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 39,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 235, 235, 235),
                ),
                child: DropdownButtonFormField(
                  borderRadius: BorderRadius.circular(20),
                  decoration: InputDecoration(
                    hintText: '     Choose your qualification',
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: Dimensions.fontSizeSmall,
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 235, 235, 235),
                    contentPadding: EdgeInsets.zero,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(13),
                      ),
                    ),
                  ),
                  style: GoogleFonts.poppins(
                    fontSize: Dimensions.fontSizeSmall,
                    color: Colors.grey,
                  ),
                  items: items
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ),
                      )
                      .toList(),
                  onChanged: (x) {},
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 25, right: 25),
              //   child: Container(
              //     height: 45,
              //     color: Colors.white,
              //     child: TextFormField(
              //       decoration: InputDecoration(
              //         filled: true,
              //         fillColor: Color.fromARGB(255, 235, 235, 235),
              //         hintText: '10th,+2',
              //         hintStyle: GoogleFonts.poppins(
              //           color: Colors.grey,
              //           fontSize: Dimensions.fontSizeSmall,
              //         ),
              //         border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(13))),
              //       ),
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 15,
              ),
              Container(
                  width: 400,
                  child: Text(
                    'Add more information',
                    style: GoogleFonts.poppins(fontSize: 13, color: Colors.pink, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.start,
                  )),
              Container(
                  width: 400,
                  child: Text(
                    'For personal search result',
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.start,
                  )),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Programselection(),
                    ),
                  );
                },
                btnTxt: "DONE",
              ),
              TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.only(
                            topEnd: Radius.circular(30),
                            topStart: Radius.circular(30),
                          ),
                        ),
                        context: context,
                        builder: (BuildContext context) {
                          return FractionallySizedBox(
                            heightFactor: 0.7,
                            child: Container(
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Divider(
                                    height: 10,
                                    thickness: 3,
                                    indent: 150,
                                    endIndent: 150,
                                    color: Colors.black,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Book an Appointment',
                                    style: GoogleFonts.poppins(fontSize: Dimensions.fontSizeDefault, fontWeight: FontWeight.w400),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      padding: const EdgeInsets.only(left: 33),
                                      width: 400,
                                      child: Text(
                                        'Name',
                                        style: TextStyle(fontSize: Dimensions.fontSizeSmall, fontWeight: FontWeight.w600),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 25, right: 25),
                                    child: Container(
                                      height: 45,
                                      color: Colors.white,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          filled: true,
                                          fillColor: Color.fromARGB(255, 235, 235, 235),
                                          border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(13))),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                      padding: const EdgeInsets.only(left: 33),
                                      width: 400,
                                      child: Text(
                                        'Guardian / Father\'s Name',
                                        style: TextStyle(fontSize: Dimensions.fontSizeSmall, fontWeight: FontWeight.w600),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 25, right: 25),
                                    child: Container(
                                      height: 45,
                                      color: Colors.white,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          filled: true,
                                          fillColor: Color.fromARGB(255, 235, 235, 235),
                                          border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(13))),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                      padding: const EdgeInsets.only(left: 33),
                                      width: 400,
                                      child: Text(
                                        'Guardian number',
                                        style: TextStyle(fontSize: Dimensions.fontSizeSmall, fontWeight: FontWeight.w600),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 25, right: 25),
                                    child: Container(
                                      height: 45,
                                      color: Colors.white,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          filled: true,
                                          fillColor: Color.fromARGB(255, 235, 235, 235),
                                          hintText: '+91 85992994659',
                                          hintStyle: TextStyle(color: Colors.grey, fontSize: 13, fontFamily: 'GoogleFonts.poppins()'),
                                          border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(13))),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                      padding: const EdgeInsets.only(left: 33),
                                      width: 400,
                                      child: Text(
                                        'Place',
                                        style: TextStyle(fontSize: Dimensions.fontSizeSmall, fontWeight: FontWeight.w600),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 25, right: 25),
                                    child: Container(
                                      height: 45,
                                      color: Colors.white,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          filled: true,
                                          fillColor: Color.fromARGB(255, 235, 235, 235),
                                          hintText: '',
                                          hintStyle: TextStyle(color: Colors.grey, fontSize: 13, fontFamily: 'GoogleFonts.poppins()'),
                                          border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(13))),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                      padding: const EdgeInsets.only(left: 33),
                                      width: 400,
                                      child: Text(
                                        'Course',
                                        style: TextStyle(fontSize: Dimensions.fontSizeSmall, fontWeight: FontWeight.w600),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 25, right: 25),
                                    child: Container(
                                      height: 45,
                                      color: Colors.white,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          filled: true,
                                          fillColor: Color.fromARGB(255, 235, 235, 235),
                                          hintText: 'Bcom,BA',
                                          hintStyle: TextStyle(color: Colors.grey, fontSize: 13, fontFamily: 'GoogleFonts.poppins()'),
                                          border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(13))),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CustomButton(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Programselection()));
                                    },
                                    btnTxt: "DONE",
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: Text(
                    'Get free consultation',
                    style: TextStyle(color: Colors.blue[900], fontSize: Dimensions.fontSizeDefault),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

Widget imageProfile() {
  return Center(
    child: Stack(
      children: <Widget>[
        const CircleAvatar(radius: 60.0, backgroundImage: AssetImage('assets/user 1.png')),
        Positioned(
          top: 0,
          right: 0,
          child: InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: ColorResources.btcolour,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2, //                   <--- border width here
                ),
              ),
              child: const Icon(
                Icons.camera_alt_sharp,
                color: Colors.white,
                size: 24.0,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
