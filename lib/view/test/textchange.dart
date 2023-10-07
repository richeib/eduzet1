import 'package:flutter/material.dart';

class TextChange extends StatelessWidget {
  const TextChange({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: RichText(
            text: TextSpan(style: TextStyle(color: Colors.black), children: [TextSpan(text: "hello"), TextSpan(text: "world")]),
          ),
        ),
      ),
    );
  }
}
