import 'package:flutter/material.dart';

class AppGradients {
  static const gradientOverlayImageBottom = LinearGradient(
    begin: Alignment(0, -1),
    end: Alignment(0, 1),
    stops: [
      0.3,
      0.7,
      1,
    ],
    colors: [
    Color(0x001c1c28),
    Color(0x7a1c1c28),
    Color(0xcc1c1c28),
    ],
  );

  /// --deal-scrim
  /// Linear angle is converted for a square box; on wide frames CSS stretches the gradient line slightly differently.
  static const gradientOverlayDealScrim = LinearGradient(
    begin: Alignment(0, -1),
    end: Alignment(0, 1),
    stops: [
      0.25,
      1,
    ],
    colors: [
    Color(0x005c00e6),
    Color(0xff5c00e6),
    ],
  );

  /// --gradient-purple
  /// Linear angle is converted for a square box; on wide frames CSS stretches the gradient line slightly differently.
  static const gradientBrandPurple = LinearGradient(
    begin: Alignment(-1, 1),
    end: Alignment(1, -1),
    stops: [
      0,
      0.5,
      1,
    ],
    colors: [
    Color(0xff4c00a6),
    Color(0xff7700c1),
    Color(0xffb500d3),
    ],
  );

  /// --gradient-swing-pass
  static const gradientBrandSwingPass = LinearGradient(
    begin: Alignment(1, -1),
    end: Alignment(2.8, -1),
    stops: [
      0,
      0.7,
    ],
    colors: [
    Color(0xff0000ff),
    Color(0xff0000ff),
    ],
  );

  static const gradientBrandLinearOp = LinearGradient(
    begin: Alignment(0, -1),
    end: Alignment(0, 1),
    stops: [
      0.25,
      1,
    ],
    colors: [
    Color(0x005c00e6),
    Color(0xff5c00e6),
    ],
  );

  static const gradientBrandDarkPurple = LinearGradient(
    begin: Alignment(0, -1),
    end: Alignment(0, 1),
    stops: [
      0,
      0.5,
      1,
    ],
    colors: [
    Color(0xff5c00e6),
    Color(0xff4e00c4),
    Color(0xff4100a3),
    ],
  );

  static const gradientBrandPurpleDark = LinearGradient(
    begin: Alignment(0, -1),
    end: Alignment(0, 1),
    stops: [
      0,
      1,
    ],
    colors: [
    Color(0xff1c1c28),
    Color(0xff361175),
    ],
  );

  static const gradientBrandPurpleTeal = LinearGradient(
    begin: Alignment(-1, -1),
    end: Alignment(0, 0),
    stops: [
      0,
      1,
    ],
    colors: [
    Color(0xff5c00e6),
    Color(0xff00b0e6),
    ],
  );

  static const gradientBrandTealBlue = LinearGradient(
    begin: Alignment(-1, -1),
    end: Alignment(0, 0),
    stops: [
      0,
      1,
    ],
    colors: [
    Color(0xff00b0e6),
    Color(0xff006be6),
    ],
  );

  static const gradientBrandPinkOrange = LinearGradient(
    begin: Alignment(-1, -1),
    end: Alignment(0, 0),
    stops: [
      0,
      1,
    ],
    colors: [
    Color(0xffff00dd),
    Color(0xffff8113),
    ],
  );

  static const gradientBrandRadialOp = LinearGradient(
    begin: Alignment(-0.9526, -1),
    end: Alignment(0.9450000000000001, 0.9634),
    stops: [
      0,
      1,
    ],
    colors: [
    Color(0xff5c00e6),
    Color(0x005c00e6),
    ],
  );

  static const gradientStatusSuccess = LinearGradient(
    begin: Alignment(-1, -1),
    end: Alignment(0, 0),
    stops: [
      0,
      1,
    ],
    colors: [
    Color(0xff36b37e),
    Color(0xff00b0e6),
    ],
  );

  static const gradientStatusWarning = LinearGradient(
    begin: Alignment(-1, -1),
    end: Alignment(0, 0),
    stops: [
      0,
      1,
    ],
    colors: [
    Color(0xffff8113),
    Color(0xffff2a12),
    ],
  );

  /// --glass-fill
  /// Linear angle is converted for a square box; on wide frames CSS stretches the gradient line slightly differently.
  static const gradientSurfaceGlassFill = LinearGradient(
    begin: Alignment(-0.9056, -1.0792),
    end: Alignment(0.9056, 1.0792000000000002),
    stops: [
      0.287,
      1,
    ],
    colors: [
    Color(0x1fffffff),
    Color(0x00ffffff),
    ],
  );

  /// --gradient-help-card
  /// Linear angle is converted for a square box; on wide frames CSS stretches the gradient line slightly differently.
  static const gradientSurfaceHelpCard = LinearGradient(
    begin: Alignment(0.05180000000000007, 1.0468000000000002),
    end: Alignment(-0.05179999999999996, -1.0468),
    stops: [
      0.194,
      0.954,
    ],
    colors: [
    Color(0xffe5e2ff),
    Color(0xffeff2fa),
    ],
  );

  static const gradientSurfacePurpleSoft = LinearGradient(
    begin: Alignment(0, -1),
    end: Alignment(0, 1),
    stops: [
      0,
      1,
    ],
    colors: [
    Color(0xfff9f3ff),
    Color(0xffffffff),
    ],
  );

  static const gradientSurfaceTealSoft = LinearGradient(
    begin: Alignment(0, -1),
    end: Alignment(0, 1),
    stops: [
      0,
      1,
    ],
    colors: [
    Color(0xfff3faff),
    Color(0xffffffff),
    ],
  );

  AppGradients._();
}
