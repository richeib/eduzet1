import 'package:flutter/material.dart';

class TwoImageRadioButtonsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Two Image Radio Buttons in Flutter'),
      ),
      body: TwoImageRadioButtonsWidget(),
    );
  }
}

class TwoImageRadioButtonsWidget extends StatefulWidget {
  @override
  _TwoImageRadioButtonsWidgetState createState() => _TwoImageRadioButtonsWidgetState();
}

class _TwoImageRadioButtonsWidgetState extends State<TwoImageRadioButtonsWidget> {
  int selectedOption = 0; // 0 for the first image, 1 for the second image

  Widget customRadio(String text, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedOption = index;
        });
      },
      child: Container(
        height: 150,
        width: 100,
        padding: EdgeInsets.all(10),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(color: (selectedOption == index) ? Colors.black : Colors.transparent)),
        child: Image(
          image: AssetImage(text),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[customRadio("assets/parent.png", 1), customRadio("assets/student.png", 2)],
    );
  }
}
