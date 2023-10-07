import 'package:flutter/material.dart';

class Donescreen extends StatelessWidget {
  const Donescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('you took your first step to your dream'),
          Image.asset('assets/Eduzet_Logo.png')
        ],
      ),
    );
  }
}
