import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const InputPage(),
        ),
      );
    });

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _animation = Tween(begin: 1.0, end: 0.0).animate(_controller);
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      _controller.forward();
    });

    return Scaffold(
      body: FadeTransition(
        opacity: _animation,
        child: Container(
          width: double.infinity,
          decoration: kSplashScreenBoxDecoration,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/icon.jpg',
                width: 250,
                height: 250,
              ),
              const SizedBox(height: 50),
              const Text(
                'BMI Calculator',
                style: kSplashTextStyle,
              ),
              const SizedBox(height: 50),
              const CircularProgressIndicator(
                color: kCircularIndicatorSplashColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
