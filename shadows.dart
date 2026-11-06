import 'package:flutter/material.dart';

class AppShadows {
  static const elevationSmall = BoxShadow(
    color: Color(0x14000000),
    offset: Offset(0, 2),
    blurRadius: 8,
    spreadRadius: 0,
  );

  static const elevationMedium = BoxShadow(
    color: Color(0x1f000000),
    offset: Offset(0, 4),
    blurRadius: 16,
    spreadRadius: 0,
  );

  static const elevationLarge = BoxShadow(
    color: Color(0x38000000),
    offset: Offset(0, 16),
    blurRadius: 48,
    spreadRadius: 0,
  );

  static const elevationUpwards = BoxShadow(
    color: Color(0x1f000000),
    offset: Offset(0, -4),
    blurRadius: 16,
    spreadRadius: 0,
  );

  AppShadows._();
}
