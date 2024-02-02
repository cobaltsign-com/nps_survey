import 'package:flutter/material.dart';
import 'package:nps_survey/constants/constants.dart';
import 'package:nps_survey/widgets/survey_widgets/survey_circles.dart';
import 'package:nps_survey/widgets/survey_widgets/survey_footer.dart';
import 'package:nps_survey/widgets/nps_top.dart';

class SurveyPage extends StatelessWidget {
  const SurveyPage(
      {super.key,
      this.dialogContainerStyle,
      this.question,
      this.bottomLeftText,
      this.bottomRightText,
      required this.surveyResponse,
      this.questionTextStyle,
      this.bottomTextsStyle});

  final BoxDecoration? dialogContainerStyle;
  final String? question;
  final String? bottomLeftText;
  final String? bottomRightText;
  final Function(int answeredNumber) surveyResponse;
  final TextStyle? questionTextStyle;
  final TextStyle? bottomTextsStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: dialogContainerStyle ?? DefaultStyles.containerDefultStyle,
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width - Constants.paddingValue20,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              NpsTop(
                question: question ?? DefaultStringValues.surveyQuestionDefault,
                questionTextStyle: questionTextStyle,
              ),
              SurveyCircles(
                selectNumber: (int number) {
                  surveyResponse(number);
                },
              ),
              SurveyFooter(
                bottomLeftText: bottomLeftText,
                bottomRightText: bottomRightText,
                bottomTextsStyle: bottomTextsStyle,
              ),
            ],
          ),
        ));
  }
}
