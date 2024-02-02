import 'package:flutter/material.dart';
import 'package:nps_survey/constants/constants.dart';

class SelectorDot extends StatelessWidget {
  const SelectorDot(
      {super.key, required this.number, required this.selectNumber});

  final int number;
  final Function(int number) selectNumber;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        selectNumber(number);
      },
      child: Padding(
        padding: const EdgeInsets.all(Constants.paddingValue2),
        child: Container(
          height: Constants.paddingValue50,
          width: Constants.paddingValue50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Constants.roundBorderRadius),
              color: DesignColors.npsColor),
          child: Padding(
            padding: const EdgeInsets.all(Constants.paddingValue10),
            child: Text(
              "$number",
              style: DefaultTextStyles.bodyRegularWhite,
            ),
          ),
        ),
      ),
    );
  }
}
