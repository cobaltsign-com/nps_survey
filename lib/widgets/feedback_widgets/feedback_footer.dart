import 'package:flutter/material.dart';
import 'package:nps_survey/constants/constants.dart';

class FeedbackFooter extends StatelessWidget {
  const FeedbackFooter(
      {super.key,
      required this.callback,
      required this.feedbackResponse,
      required this.surveyResponse,
      required this.goBack,
      this.submitButtonText,
      this.submitButtonStyle,
      this.submitButtonTextStyle});

  final Function(String, int) callback;
  final int surveyResponse;
  final String feedbackResponse;
  final String? submitButtonText;
  final TextStyle? submitButtonTextStyle;
  final BoxDecoration? submitButtonStyle;

  final Function() goBack;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: SizeConstants.paddingValue20),
          child: GestureDetector(
            onTap: goBack,
            child: Container(
              height: SizeConstants.paddingValue46,
              width: SizeConstants.paddingValue46,
              decoration: BoxDecoration(
                  color: DesignColors.white,
                  borderRadius: const BorderRadius.all(
                      Radius.circular(SizeConstants.roundBorderRadius))),
              child: Center(
                child: Icon(
                  Icons.arrow_back_rounded,
                  color: DesignColors.npsColor,
                  size: SizeConstants.paddingValue30,
                ),
              ),
            ),
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(
              SizeConstants.paddingValue10,
              SizeConstants.paddingValue15,
              SizeConstants.paddingValue20,
              SizeConstants.paddingValue15),
          child: Container(
            height: SizeConstants.paddingValue46,
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
                      return DesignColors.grey7.withValues(alpha: 0.2);
                    }
                    return null;
                  },
                ),
                foregroundColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) {
                    if (states.contains(WidgetState.pressed)) {
                      return DesignColors.white.withValues(alpha: 0.5);
                    }
                    return DesignColors.white;
                  },
                ),
              ),
              child: Text(
                submitButtonText ?? DefaultStringValues.submitButtonDefault,
                style:
                    submitButtonTextStyle ?? DefaultTextStyles.bodyLargeRegular,
              ),
            ),
          ),
        ))
      ],
    );
  }
}
