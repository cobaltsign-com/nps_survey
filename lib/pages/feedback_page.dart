import 'package:flutter/material.dart';
import 'package:nps_survey/constants/constants.dart';
import 'package:nps_survey/widgets/feedback_widgets/feedback_footer.dart';
import 'package:nps_survey/widgets/feedback_widgets/feedback_input.dart';
import 'package:nps_survey/widgets/nps_top.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage(
      {super.key,
      required this.question,
      required this.callback,
      required this.surveyResponseNumber,
      this.dialogContainerStyle,
      this.submitButtonText,
      this.questionsTextStyle,
      this.submitButtonTextStyle,
      this.submitButtonStyle,
      this.feedbackInputStyle,
      this.feedbackInputTextStyle});

  final BoxDecoration? dialogContainerStyle;
  final String question;
  final Function(String, int) callback;
  final int surveyResponseNumber;
  final TextStyle? questionsTextStyle;
  final String? submitButtonText;
  final TextStyle? submitButtonTextStyle;
  final BoxDecoration? submitButtonStyle;
  final InputDecoration? feedbackInputStyle;
  final TextStyle? feedbackInputTextStyle;

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  String feedbackResponse = "";

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:
            widget.dialogContainerStyle ?? DefaultStyles.containerDefaultStyle,
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width - SizeConstants.paddingValue20,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              NpsTop(
                  question: widget.question,
                  questionTextStyle: widget.questionsTextStyle),
              FeedbackInput(
                  feedbackInputStyle: widget.feedbackInputStyle,
                  feedbackInputTextStyle: widget.feedbackInputTextStyle,
                  feedbackResponse: (response) {
                    setState(() {
                      feedbackResponse = response;
                    });
                  }),
              FeedbackFooter(
                callback: widget.callback,
                feedbackResponse: feedbackResponse,
                surveyResponse: widget.surveyResponseNumber,
                submitButtonText: widget.submitButtonText,
                submitButtonTextStyle: widget.submitButtonTextStyle,
                submitButtonStyle: widget.submitButtonStyle,
              ),
            ],
          ),
        ));
  }
}
