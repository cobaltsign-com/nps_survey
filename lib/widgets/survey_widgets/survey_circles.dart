import 'package:flutter/material.dart';
import 'package:nps_survey/constants/constants.dart';
import 'package:nps_survey/widgets/survey_widgets/survey_dot_widget.dart';

class SurveyCircles extends StatelessWidget {
  const SurveyCircles({super.key, required this.selectNumber});

  final Function(int number) selectNumber;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Constants.paddingValue10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: Constants.paddingValue20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 11; i = i + 2)
                  SelectorDot(
                    number: i,
                    selectNumber: (int number) {
                      selectNumber(number);
                    },
                  )
              ],
            ),
          ),
          Transform.translate(
            offset: const Offset(0.0, -8),
            child: Padding(
              padding: const EdgeInsets.only(bottom: Constants.paddingValue20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 1; i < 10; i = i + 2)
                    SelectorDot(
                      number: i,
                      selectNumber: (int number) {
                        selectNumber(number);
                      },
                    )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
