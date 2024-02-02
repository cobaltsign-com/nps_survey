import 'package:flutter/material.dart';
import 'package:nps_survey/constants/constants.dart';

class FeedbackFooter extends StatelessWidget {
  const FeedbackFooter(
      {super.key,
      required this.callback,
      required this.feedbackResponse,
      required this.surveyResponse,
      this.submitButtonText,
      this.submitButtonStyle,
      this.submitButtonTextStyle});

  final Function(String, int) callback;
  final int surveyResponse;
  final String feedbackResponse;
  final String? submitButtonText;
  final TextStyle? submitButtonTextStyle;
  final BoxDecoration? submitButtonStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callback(feedbackResponse, surveyResponse);
        Navigator.of(context).pop();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: Constants.paddingValue20,
            vertical: Constants.paddingValue15),
        child: Container(
          height: Constants.paddingValue40,
          decoration: submitButtonStyle ?? DefaultStyles.submitButtonStyle,
          child: Center(
              child: Text(
            submitButtonText ?? DefaultStringValues.submitButtonDefault,
            style: submitButtonTextStyle ?? DefaultTextStyles.bodyRegularWhite,
          )),
        ),
      ),
    );
  }
}
