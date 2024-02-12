import 'package:flutter/material.dart';
import 'package:nps_survey/constants/constants.dart';

class SelectorDot extends StatelessWidget {
  const SelectorDot(
      {super.key, required this.number, required this.selectNumber});

  final int number;
  final Function(int number) selectNumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(SizeConstants.paddingValue2),
      child: Container(
        height: SizeConstants.paddingValue50,
        width: SizeConstants.paddingValue50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(SizeConstants.roundBorderRadius),
          color: DesignColors.npsColor,
        ),
        child: TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                const EdgeInsets.all(SizeConstants.paddingValue10)),
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.transparent),
            overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return DesignColors.grey7.withOpacity(0.2);
                }
                return null;
              },
            ),
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return DesignColors.white.withOpacity(0.5);
                }
                return DesignColors.white;
              },
            ),
          ),
          onPressed: () {
            selectNumber(number);
          },
          child: Container(
            height: SizeConstants.paddingValue50,
            width: SizeConstants.paddingValue50,
            alignment: Alignment.center,
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
