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
            padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                const EdgeInsets.all(SizeConstants.paddingValue10)),
            backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
            overlayColor: WidgetStateProperty.resolveWith<Color?>(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.pressed)) {
                  return DesignColors.grey7.withValues(alpha: 0.2);
                }
                return null;
              },
            ),
            foregroundColor: WidgetStateProperty.resolveWith<Color>(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.pressed)) {
                  return DesignColors.white.withValues(alpha: 0.5);
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
              style: DefaultTextStyles.bodyRegular,
            ),
          ),
        ),
      ),
    );
  }
}
