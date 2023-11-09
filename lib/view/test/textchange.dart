import 'dart:async';

import 'package:flutter/material.dart';

class MyWindowsLinearProgressIndicator extends StatefulWidget {
  @override
  _MyWindowsLinearProgressIndicatorState createState() => _MyWindowsLinearProgressIndicatorState();
}

class _MyWindowsLinearProgressIndicatorState extends State<MyWindowsLinearProgressIndicator> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 50,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.grey[300], // Background color of the progress bar
            borderRadius: BorderRadius.circular(2),
          ),
          child: Stack(
            children: [
              AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Stack(
                    children: [
                      Positioned(
                        left: 200 * _animation.value - 20,
                        child: Container(
                          height: 50,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.blue, // Color of the progress indicator
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
              AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Stack(
                    children: [
                      Positioned(
                        left: 200 * _animation.value - 50,
                        child: Container(
                          height: 50,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.blue, // Color of the progress indicator
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
              AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Stack(
                    children: [
                      Positioned(
                        left: 200 * _animation.value - 80,
                        child: Container(
                          height: 50,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.blue, // Color of the progress indicator
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
              AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Stack(
                    children: [
                      Positioned(
                        left: 200 * _animation.value - 110,
                        child: Container(
                          height: 50,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.blue, // Color of the progress indicator
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
              AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Stack(
                    children: [
                      Positioned(
                        left: 200 * _animation.value - 140,
                        child: Container(
                          height: 50,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.blue, // Color of the progress indicator
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
              AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Stack(
                    children: [
                      Positioned(
                        left: 200 * _animation.value - 170,
                        child: Container(
                          height: 50,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.blue, // Color of the progress indicator
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
              AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Stack(
                    children: [
                      Positioned(
                        left: 200 * _animation.value - 200,
                        child: Container(
                          height: 50,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.blue, // Color of the progress indicator
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
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
