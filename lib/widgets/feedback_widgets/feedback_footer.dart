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
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: SizeConstants.paddingValue20,
          vertical: SizeConstants.paddingValue15),
      child: Container(
        height: SizeConstants.paddingValue46,
        width: MediaQuery.of(context).size.width - SizeConstants.paddingValue20,
        decoration: submitButtonStyle ?? DefaultStyles.submitButtonStyle,
        child: TextButton(
          onPressed: () {
            callback(feedbackResponse, surveyResponse);
            Navigator.of(context).pop();
          },
          style: ButtonStyle(
            backgroundColor:
            WidgetStateProperty.all<Color>(Colors.transparent),
            overlayColor: WidgetStateProperty.resolveWith<Color?>(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.pressed)) {
                  return DesignColors.grey7.withOpacity(0.2);
                }
                return null;
              },
            ),
            foregroundColor: WidgetStateProperty.resolveWith<Color>(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.pressed)) {
                  return DesignColors.white.withOpacity(0.5);
                }
                return DesignColors.white;
              },
            ),
          ),
          child: Text(
            submitButtonText ?? DefaultStringValues.submitButtonDefault,
            style: submitButtonTextStyle ?? DefaultTextStyles.bodyLargeRegular,
          ),
        ),
      ),
    );
  }
}
