import 'package:flutter/material.dart';
import 'package:nps_survey/constants/constants.dart';

class SurveyFooter extends StatelessWidget {
  const SurveyFooter(
      {super.key,
      this.bottomLeftText,
      this.bottomRightText,
      this.bottomTextsStyle});

  final String? bottomLeftText;
  final String? bottomRightText;
  final TextStyle? bottomTextsStyle;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5 -
              Constants.paddingValue20,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: Constants.paddingValue10,
                horizontal: Constants.paddingValue20),
            child: Text(
              bottomLeftText ?? DefaultStringValues.bottomLeftText,
              style: bottomTextsStyle ?? DefaultTextStyles.bodySmallGrey,
              softWrap: true,
              textAlign: TextAlign.start,
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5 -
              Constants.paddingValue20,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: Constants.paddingValue10,
                horizontal: Constants.paddingValue20),
            child: Text(
              bottomRightText ?? DefaultStringValues.bottomRightText,
              style: bottomTextsStyle ?? DefaultTextStyles.bodySmallGrey,
              softWrap: true,
              textAlign: TextAlign.end,
            ),
          ),
        )
      ]),
    );
  }
}
