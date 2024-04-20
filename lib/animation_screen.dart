import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'dart:async'; // Import for Timer

class animation_screen extends StatefulWidget {
  const animation_screen({Key? key}) : super(key: key);

  @override
  State<animation_screen> createState() => _animation_screenState();
}

class _animation_screenState extends State<animation_screen> {
  late bool _isAnimationPlaying; // Track animation playing state
  late Timer _timer; // Timer to stop animation after 5 seconds

  @override
  void initState() {
    super.initState();
    _isAnimationPlaying = true;

    _timer = Timer(Duration(seconds: 10), () {
      setState(() {
        _isAnimationPlaying = false;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                height: 500,
                width: 500,
                child: Lottie.asset(
                  'animation/sc.json',
                  repeat: false,
                  animate: _isAnimationPlaying,
                ),
              ),
            ),
            Text(
              "Appoinetemt taken !",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 60,
            ),
            GestureDetector(
              onTap: () {
                print('worked!');
              },
              child: Container(
                height: 70,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 53, 94, 54),
                ),
                child: Center(
                    child: Text(
                  "continue",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
