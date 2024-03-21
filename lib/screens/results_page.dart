import 'package:bmi_calculator/components/bottom_calculate_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    super.key,
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
    required this.sliderValue,
  });

  final String bmiResult;
  final (String, Color) resultText;
  final String interpretation;
  final double sliderValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'images/icon.jpg',
              fit: BoxFit.contain,
              height: 32,
            ),
            const SizedBox(width: 15),
            const Text(
              'BMI Calculator',
              style: kAppBarTextStyle,
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kInactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Your BMI is',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            resultText.$1,
                            style: TextStyle(
                              color: resultText.$2,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]),
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: kSliderInactiveTrackColor,
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 12.0),
                    ),
                    child: Slider(
                      value: sliderValue,
                      divisions: 4,
                      activeColor: resultText.$2,
                      min: 0.0,
                      max: 40.0,
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                interpretation,
                textAlign: TextAlign.center,
                style: kBodyTextStyle,
              ),
            ),
          ),
          BottomCalculateButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'Re-Calculate',
            icon: const Icon(FontAwesomeIcons.rotate),
          ),
        ],
      ),
    );
  }
}
