import 'package:flutter/material.dart';

/// Size constants used across the application.
class SizeConstants {
  /// Padding value of 2.0.
  static const double paddingValue2 = 2.0;

  /// Padding value of 10.0.
  static const double paddingValue10 = 10.0;

  /// Padding value of 15.0.
  static const double paddingValue15 = 15.0;

  /// Padding value of 20.0.
  static const double paddingValue20 = 20.0;

  /// Padding value of 30.0.
  static const double paddingValue30 = 30.0;

  /// Padding value of 40.0.
  static const double paddingValue40 = 40.0;

  /// Padding value of 45.0.
  static const double paddingValue45 = 45.0;

  /// Padding value of 46.0.
  static const double paddingValue46 = 46.0;

  /// Padding value of 50.0.
  static const double paddingValue50 = 50.0;

  /// The height used for the feedback widget.
  static const double feedbackHeight = 150.0;

  /// Maximum height for the first page layout.
  static const double maxHeightFirstPage = 305;

  /// Standard border radius used in various components.
  static const double standardBorderRadius = 10.0;

  /// Border radius for round buttons and the selector dot.
  static const double roundBorderRadius = 50.0;
}

/// Color constants used for design elements throughout the application.
class DesignColors {
  /// The default primary color.
  static const Color defaultColor = Color(0xFFF2631B);

  /// A light grey color.
  static const Color greyLight = Color(0xFFEFEFEF);

  /// White color.
  static const Color white = Color(0xFFFFFFFF);

  /// Dark grey color variant 7.
  static const Color grey7 = Color(0xFF2B2B2F);

  /// Dark grey color variant 6.
  static const Color grey6 = Color(0xFF2F2B2B);

  /// Grey color variant 5.
  static const Color grey5 = Color(0xFF534F4E);

  /// Grey color variant 4.
  static const Color grey4 = Color(0xFF767170);

  /// Grey color variant 3.
  static const Color grey3 = Color(0xFF9A9493);

  /// Light grey color variant 1.
  static const Color grey1 = Color(0xFFF7F1F0);

  /// Off-white color variant 0.
  static const Color grey0 = Color(0xFFFFFCFB);

  /// NPS (Net Promoter Score) color, defaulting to [defaultColor].
  static Color npsColor = defaultColor;
}

/// Default text styles used throughout the application.
class DefaultTextStyles {
  /// Text style for large body text with a bold grey font.
  static TextStyle get bodyLargeBoldGrey => const TextStyle(
      fontStyle: FontStyle.normal,
      color: DesignColors.grey5,
      fontSize: 18,
      fontWeight: FontWeight.w500,
      letterSpacing: -0.02);

  /// Text style for small body text in grey.
  static TextStyle get bodySmallGrey => const TextStyle(
      fontStyle: FontStyle.normal,
      color: DesignColors.grey5,
      fontSize: 14,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.02);

  /// Regular body text style.
  static TextStyle get bodyRegular => const TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 14,
      fontWeight: FontWeight.normal,
      letterSpacing: -0.02);

  /// Large regular body text style.
  static TextStyle get bodyLargeRegular => const TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 17,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.02);

  /// Text style for input fields.
  static TextStyle get inputText => const TextStyle(color: DesignColors.grey6);
}

/// Default styling for buttons, input fields, and containers.
class DefaultStyles {
  /// Decoration style for the submit button.
  static BoxDecoration submitButtonStyle = BoxDecoration(
      borderRadius: const BorderRadius.all(
          Radius.circular(SizeConstants.roundBorderRadius)),
      color: DesignColors.npsColor);

  /// Input decoration style for feedback text fields.
  static InputDecoration feedbackInputStyle = const InputDecoration(
      contentPadding: EdgeInsets.symmetric(
          horizontal: SizeConstants.paddingValue10,
          vertical: SizeConstants.paddingValue2),
      filled: true,
      fillColor: DesignColors.grey0,
      border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
              Radius.circular(SizeConstants.standardBorderRadius))));

  /// Default decoration for containers.
  static BoxDecoration containerDefaultStyle = BoxDecoration(
      color: DesignColors.grey1,
      borderRadius: BorderRadius.circular(SizeConstants.standardBorderRadius));
}

/// Default placeholder strings for survey components.
class DefaultStringValues {
  /// Default detractor question.
  static const String detractorsQuestionDefault =
      "We're truly sorry to hear that. What key improvements would make our app a 10 for you?";

  /// Default passive question.
  static const String passivesQuestionDefault =
      "We're glad to hear this. What could we improve to get a 10 at the previous question?";

  /// Default promoter question.
  static const String promotersQuestionDefault =
      "Wow, that's great to hear! We would love to know what's the main reason for your high score?";

  /// Default survey question.
  static const String surveyQuestionDefault =
      "How likely are you to recommend our app to a friend or a family member?";

  /// Default text for the submit button.
  static const String submitButtonDefault = "Submit";

  /// Default text for the bottom left label.
  static const String bottomLeftText = "0 - Not likely";

  /// Default text for the bottom right label.
  static const String bottomRightText = "10 - Very likely";
}
