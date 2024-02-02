import 'package:flutter/material.dart';

class Constants {
  static const double paddingValue2 = 2.0;
  static const double paddingValue10 = 10.0;
  static const double paddingValue15 = 15.0;
  static const double paddingValue20 = 20.0;
  static const double paddingValue30 = 30.0;
  static const double paddingValue40 = 40.0;
  static const double paddingValue45 = 45.0;
  static const double paddingValue50 = 50.0;

  static const double feedbackHeight = 150.0;
  static const double maxHeightFirstPage = 305;

  static const double standardBorderRadius = 10.0;
  static const double roundBorderRadius = 50.0;
}

class DesignColors {
  static const Color defaultColor = Color(0xFFF2631B);
  static const Color greyLight = Color(0xFFEFEFEF);
  static const Color white = Color(0xFFffffff);
  static const Color grey6 = Color(0xFF2F2B2B);
  static const Color grey5 = Color(0xFF534F4E);
  static const Color grey4 = Color(0xFF767170);
  static const Color grey3 = Color(0xFF9A9493);
  static const Color grey1 = Color(0xFFF7F1F0);
  static const Color grey0 = Color(0xFFFFFCFB);

  static Color npsColor = defaultColor;
}

class DefaultTextStyles {
  static TextStyle get bodyLargeBoldGrey => const TextStyle(
      fontStyle: FontStyle.normal,
      color: DesignColors.grey5,
      fontSize: 18,
      fontWeight: FontWeight.w500,
      letterSpacing: -0.02);

  static TextStyle get bodySmallGrey => const TextStyle(
      fontStyle: FontStyle.normal,
      color: DesignColors.grey5,
      fontSize: 14,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.02);

  static TextStyle get bodyRegularWhite => const TextStyle(
      fontStyle: FontStyle.normal,
      color: DesignColors.white,
      fontSize: 14,
      fontWeight: FontWeight.normal,
      letterSpacing: -0.02);

  static TextStyle get inputText => const TextStyle(color: DesignColors.grey6);
}

class DefaultStyles {
  static BoxDecoration submitButtonStyle = BoxDecoration(
      borderRadius:
          const BorderRadius.all(Radius.circular(Constants.roundBorderRadius)),
      color: DesignColors.npsColor);
  static InputDecoration feedbackInputStyle = const InputDecoration(
      contentPadding: EdgeInsets.symmetric(
          horizontal: Constants.paddingValue10,
          vertical: Constants.paddingValue2),
      filled: true,
      fillColor: DesignColors.grey0,
      border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
              Radius.circular(Constants.standardBorderRadius))));
  static BoxDecoration containerDefultStyle = BoxDecoration(
      color: DesignColors.grey1,
      borderRadius: BorderRadius.circular(Constants.standardBorderRadius));
}

class DefaultStringValues {
  static const String detractorsQuestionDefault =
      "We're truly sorry to hear that. What key improvements would make our app a 10 for you?";
  static const String passivesQuestionDefault =
      "We're glad to hear this. What could we improve to get a 10 at the previous question?";
  static const String promotersQuestionDefault =
      "Wow, that's great to hear! We would love to know what's the main reason for your high score:";
  static const String surveyQuestionDefault =
      "How likely are you to recommend our app to a friend or a family member?";
  static const String submitButtonDefault = "SUBMIT";
  static const String bottomLeftText = "0 - Not likely";
  static const String bottomRightText = "10 - Very likely";
}
