import 'package:flutter/material.dart';
import 'package:nps_survey/constants/constants.dart';
import 'package:nps_survey/pages/feedback_page.dart';
import 'package:nps_survey/pages/survey_page.dart';

class NPSSurveyDialog extends StatefulWidget {
  const NPSSurveyDialog(
      {super.key,
      required this.callback,
      this.generalColor,
      this.dialogContainerStyle,
      this.surveyQuestionText,
      this.surveyBottomLeftText,
      this.surveyBottomRightText,
      this.detractorsQuestionText,
      this.passivesQuestionText,
      this.promotersQuestionText,
      this.submitButtonText,
      this.surveyQuestionTextStyle,
      this.surveyBottomTextStyle,
      this.feedbackQuestionsTextStyle,
      this.submitButtonTextStyle,
      this.feedbackInputTextStyle,
      this.submitButtonStyle,
      this.feedbackInputStyle,
      this.selectedScoreVisible});

  final Function(String, int) callback;

  final Color? generalColor;
  final BoxDecoration? dialogContainerStyle;

  final String? surveyQuestionText;
  final String? surveyBottomLeftText;
  final String? surveyBottomRightText;
  final String? detractorsQuestionText;
  final String? passivesQuestionText;
  final String? promotersQuestionText;
  final String? submitButtonText;

  final TextStyle? surveyQuestionTextStyle;
  final TextStyle? surveyBottomTextStyle;
  final TextStyle? feedbackQuestionsTextStyle;
  final TextStyle? submitButtonTextStyle;
  final TextStyle? feedbackInputTextStyle;

  final BoxDecoration? submitButtonStyle;
  final InputDecoration? feedbackInputStyle;

  final bool? selectedScoreVisible;

  @override
  State<NPSSurveyDialog> createState() => _NPSSurveyDialogState();
}

class _NPSSurveyDialogState extends State<NPSSurveyDialog> {
  int surveyResponseNumber = -1;

  @override
  void initState() {
    super.initState();
    if (widget.generalColor != null) {
      DesignColors.npsColor = widget.generalColor!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        alignment: Alignment.center,
        insetPadding: const EdgeInsets.symmetric(
            horizontal: SizeConstants.paddingValue10),
        shape: RoundedRectangleBorder(
            borderRadius: widget.dialogContainerStyle?.borderRadius ??
                const BorderRadius.all(
                    Radius.circular(SizeConstants.standardBorderRadius))),
        content: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Container(
            decoration: widget.dialogContainerStyle ??
                DefaultStyles.containerDefaultStyle,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: surveyResponseNumber !=
                      -1 // The user completed the survey selecting a number
                  ? <Widget>[
                      FeedbackPage(
                          dialogContainerStyle: widget.dialogContainerStyle,
                          question: surveyResponseNumber >= 0 &&
                                  surveyResponseNumber <= 6
                              ? widget.detractorsQuestionText ??
                                  DefaultStringValues.detractorsQuestionDefault
                              : surveyResponseNumber >= 7 &&
                                      surveyResponseNumber <= 8
                                  ? widget.passivesQuestionText ??
                                      DefaultStringValues
                                          .passivesQuestionDefault
                                  : widget.promotersQuestionText ??
                                      DefaultStringValues
                                          .promotersQuestionDefault,
                          questionsTextStyle: widget.feedbackQuestionsTextStyle,
                          callback: widget.callback,
                          surveyResponseNumber: surveyResponseNumber,
                          submitButtonText: widget.submitButtonText,
                          submitButtonTextStyle: widget.submitButtonTextStyle,
                          submitButtonStyle: widget.submitButtonStyle,
                          feedbackInputStyle: widget.feedbackInputStyle,
                          feedbackInputTextStyle: widget.feedbackInputTextStyle,
                          selectedScoreVisible: widget.selectedScoreVisible)
                    ]
                  : [
                      SurveyPage(
                          dialogContainerStyle: widget.dialogContainerStyle,
                          question: widget.surveyQuestionText,
                          questionTextStyle: widget.surveyQuestionTextStyle,
                          bottomLeftText: widget.surveyBottomLeftText,
                          bottomRightText: widget.surveyBottomRightText,
                          bottomTextsStyle: widget.surveyBottomTextStyle,
                          surveyResponse: (int answeredNumber) {
                            setState(() {
                              surveyResponseNumber = answeredNumber;
                            });
                          })
                    ],
            ),
          ),
        ));
  }
}
