library nps_survey;

import 'package:flutter/material.dart';
import 'package:nps_survey/widgets/nps_survey_dialog.dart';

class NPSSurvey {
  Future<void> showNPSDialog(
      {required BuildContext context,
      required Function(String, int) callback,
      Color? generalColor,
      BoxDecoration? dialogContainerStyle,
      String? surveyQuestionText,
      String? surveyBottomLeftText,
      String? surveyBottomRightText,
      String? detractorsQuestionText,
      String? passivesQuestionText,
      String? promotersQuestionText,
      String? submitButtonText,
      TextStyle? surveyQuestionTextStyle,
      TextStyle? surveyBottomTextStyle,
      TextStyle? feedbackQuestionsTextStyle,
      TextStyle? submitButtonTextStyle,
      TextStyle? feedbackInputTextStyle,
      BoxDecoration? submitButtonStyle,
      InputDecoration? feedbackInputStyle}) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return NPSSurveyDialog(
            callback: callback,
            generalColor: generalColor,
            dialogContainerStyle: dialogContainerStyle,
            surveyQuestionText: surveyQuestionText,
            surveyBottomLeftText: surveyBottomLeftText,
            surveyBottomRightText: surveyBottomRightText,
            detractorsQuestionText: detractorsQuestionText,
            passivesQuestionText: passivesQuestionText,
            promotersQuestionText: promotersQuestionText,
            submitButtonText: submitButtonText,
            surveyQuestionTextStyle: surveyQuestionTextStyle,
            surveyBottomTextStyle: surveyBottomTextStyle,
            feedbackQuestionsTextStyle: feedbackQuestionsTextStyle,
            submitButtonTextStyle: submitButtonTextStyle,
            feedbackInputTextStyle: feedbackInputTextStyle,
            submitButtonStyle: submitButtonStyle);
      },
    );
  }
}
