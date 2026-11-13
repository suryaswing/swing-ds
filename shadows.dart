import 'package:flutter/material.dart';

class AppShadows {
  /// --elevation-1
  static const elevationScale1 = BoxShadow(
    color: Color(0x141c1c28),
    offset: Offset(0, 1),
    blurRadius: 2,
    spreadRadius: 0,
  );

  /// --elevation-1
  static const elevationScale12 = BoxShadow(
    color: Color(0x141c1c28),
    offset: Offset(0, 2),
    blurRadius: 8,
    spreadRadius: 0,
  );

  /// --elevation-2
  static const elevationScale2 = BoxShadow(
    color: Color(0x141c1c28),
    offset: Offset(0, 2),
    blurRadius: 6,
    spreadRadius: 0,
  );

  /// --elevation-2
  static const elevationScale22 = BoxShadow(
    color: Color(0x241c1c28),
    offset: Offset(0, 8),
    blurRadius: 24,
    spreadRadius: 0,
  );

  /// --elevation-3
  static const elevationScale3 = BoxShadow(
    color: Color(0x141c1c28),
    offset: Offset(0, -4),
    blurRadius: 16,
    spreadRadius: 0,
  );

  /// --elevation-brand
  static const elevationBrandDefault = BoxShadow(
    color: Color(0x295c00e6),
    offset: Offset(0, 2),
    blurRadius: 8,
    spreadRadius: 0,
  );

  /// --elevation-brand-s
  static const elevationBrandSmall = BoxShadow(
    color: Color(0x295c00e6),
    offset: Offset(0, 2),
    blurRadius: 4,
    spreadRadius: 0,
  );

  /// --elevation-thumb
  static const elevationComponentThumb = BoxShadow(
    color: Color(0x1f000000),
    offset: Offset(0, 4),
    blurRadius: 8,
    spreadRadius: 0,
  );

  /// --elevation-pass-card
  static const elevationComponentPassCard = BoxShadow(
    color: Color(0x29000000),
    offset: Offset(0, 16),
    blurRadius: 24,
    spreadRadius: 0,
  );

  /// --elevation-avatar-l
  static const elevationComponentAvatarL = BoxShadow(
    color: Color(0x38000000),
    offset: Offset(0, 16),
    blurRadius: 48,
    spreadRadius: 0,
  );

  /// --elevation-card-s
  static const elevationComponentCardS = BoxShadow(
    color: Color(0x14000000),
    offset: Offset(0, 2),
    blurRadius: 8,
    spreadRadius: 0,
  );

  /// --elevation-tag-l
  static const elevationComponentTagL = BoxShadow(
    color: Color(0x38000000),
    offset: Offset(0, 16),
    blurRadius: 24,
    spreadRadius: 0,
  );

  /// --line-sticky
  static const lineSticky = BoxShadow(
    color: Color(0xffe4e4eb),
    offset: Offset(0, 1),
    blurRadius: 0,
    spreadRadius: 0,
  );

  /// --line-sticky-up
  static const lineStickyUp = BoxShadow(
    color: Color(0xffe4e4eb),
    offset: Offset(0, -1),
    blurRadius: 0,
    spreadRadius: 0,
  );

  /// --ring-focus
  static const focusRing = BoxShadow(
    color: Color(0xff5c00e6),
    offset: Offset(0, 0),
    blurRadius: 0,
    spreadRadius: 2,
  );

  AppShadows._();
}
