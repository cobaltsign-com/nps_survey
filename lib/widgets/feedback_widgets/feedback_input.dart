import 'package:flutter/material.dart';
import 'package:nps_survey/constants/constants.dart';

class FeedbackInput extends StatelessWidget {
  const FeedbackInput(
      {super.key,
      this.feedbackInputStyle,
      required this.feedbackResponse,
      this.feedbackInputTextStyle});

  final InputDecoration? feedbackInputStyle;
  final TextStyle? feedbackInputTextStyle;
  final Function(String) feedbackResponse;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: SizeConstants.paddingValue20,
            vertical: SizeConstants.paddingValue30),
        child: Container(
          height: SizeConstants.feedbackHeight,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                  Radius.circular(SizeConstants.standardBorderRadius))),
          child: TextField(
            onChanged: (value) => feedbackResponse(value),
            maxLines: null,
            expands: true,
            textAlign: TextAlign.start,
            textAlignVertical: TextAlignVertical.top,
            style: feedbackInputTextStyle ?? DefaultTextStyles.inputText,
            decoration: feedbackInputStyle ?? DefaultStyles.feedbackInputStyle,
          ),
        ));
  }
}
