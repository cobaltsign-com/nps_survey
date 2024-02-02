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
        padding: const EdgeInsets.all(SizeConstants.paddingValue2),
        child: Container(
          height: SizeConstants.paddingValue50,
          width: SizeConstants.paddingValue50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(SizeConstants.roundBorderRadius),
              color: DesignColors.npsColor),
          child: Padding(
            padding: const EdgeInsets.all(SizeConstants.paddingValue10),
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
