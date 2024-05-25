import 'package:flutter/material.dart';
import 'package:new_bookely_app/core/utils/styles.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom(
      {super.key,
      required this.backgroundColor,
      required this.text,
      required this.textColor,
      required this.onPresed,
      this.borderRadius});
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final void Function()? onPresed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPresed,
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16))),
        child: Text(
          text,
          style: Style.fontStyle16.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
