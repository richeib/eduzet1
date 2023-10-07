import 'package:flutter/material.dart';

class TextAnimation extends StatefulWidget {
  @override
  _TextAnimationState createState() => _TextAnimationState();
}

class _TextAnimationState extends State<TextAnimation> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 2), // Adjust the duration as needed
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);

    // Start the animation when the widget is built
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: const Text(
            'Hello Flutter',
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
