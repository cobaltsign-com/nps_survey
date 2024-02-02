import 'package:flutter/material.dart';
import 'package:nps_survey/constants/constants.dart';

class NpsTop extends StatelessWidget {
  const NpsTop({super.key, required this.question, this.questionTextStyle});

  final String question;
  final TextStyle? questionTextStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Constants.standardBorderRadius),
              topRight: Radius.circular(Constants.standardBorderRadius))),
      child: Center(
          child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(Constants.paddingValue10),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Icon(
                  Icons.clear,
                  color: DesignColors.npsColor,
                  size: Constants.paddingValue20,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(Constants.paddingValue30, 0,
                Constants.paddingValue30, Constants.paddingValue10),
            child: Text(
              question,
              style: questionTextStyle ?? DefaultTextStyles.bodyLargeBoldGrey,
            ),
          ),
        ],
      )),
    );
  }
}
