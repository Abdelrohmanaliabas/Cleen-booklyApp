import 'package:flutter/material.dart';

abstract class Style {
  static const titleMedium = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    fontFamily: 'GT Sectra Fine',
  );
  static const fontStyle14 = TextStyle(
    fontSize: 14,
    // fontWeight: FontWeight.w600,
    fontFamily: AutofillHints.addressCity,
  );
  static const fontStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: 'GT Sectra Fine',
  );
  static const fontStyle24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    fontFamily: AutofillHints.addressCity,
  );
}
