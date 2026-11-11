// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:swing_ds_preview/main.dart';
import 'package:swing_ds_preview/token_catalog.dart';

void main() {
  testWidgets('shows the design token preview', (WidgetTester tester) async {
    await tester.pumpWidget(const SwingTokensPreviewApp());

    expect(find.text('SWING'), findsOneWidget);
    expect(find.text('colorPrimaryPurple500'), findsOneWidget);
    expect(tokenColors, isNotEmpty);
    expect(tokenGradients, isNotEmpty);
    expect(tokenTextStyles, isNotEmpty);
    expect(tokenDimensions, isNotEmpty);
    expect(tokenShadows, isNotEmpty);
    expect(
      tokenGradients.any((token) => token.name == 'gradientBrandSwingPasshhh'),
      isFalse,
    );
    expect(
      tokenGradients.any((token) => token.name == 'gradientBrandPurpleSp'),
      isTrue,
    );
  });
}
