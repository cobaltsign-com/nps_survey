import 'package:flutter/material.dart';
import 'package:nps_survey/constants/constants.dart';

class NpsTop extends StatelessWidget {
  const NpsTop(
      {super.key,
      required this.question,
      this.questionTextStyle,
      this.surveyResponseNumber});

  final String question;
  final TextStyle? questionTextStyle;

  final int? surveyResponseNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(SizeConstants.standardBorderRadius),
              topRight: Radius.circular(SizeConstants.standardBorderRadius))),
      child: Center(
          child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(SizeConstants.paddingValue10),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Icon(
                  Icons.clear,
                  color: DesignColors.npsColor,
                  size: SizeConstants.paddingValue20,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(SizeConstants.paddingValue30, 0,
                SizeConstants.paddingValue30, SizeConstants.paddingValue10),
            child: Text(
              "$question${surveyResponseNumber != null ? " ($surveyResponseNumber/10)" : ""}",
              style: questionTextStyle ?? DefaultTextStyles.bodyLargeBoldGrey,
            ),
          ),
        ],
      )),
    );
  }
}
