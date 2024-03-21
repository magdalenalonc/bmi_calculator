import 'package:bmi_calculator/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1D1B20),
        ),
        scaffoldBackgroundColor: const Color(0xFF1D1B20),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1D1B20),
          centerTitle: true,
          foregroundColor: Colors.white,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
