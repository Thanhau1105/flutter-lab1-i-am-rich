import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab_01/main.dart';

void main() {
  testWidgets('I Am Rich screen shows its title and diamond asset', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const IAmRichApp());

    expect(find.text('I Am Rich'), findsNWidgets(2));
    expect(find.byKey(const Key('diamond-image')), findsOneWidget);
    expect(find.text('Shine bright like a diamond'), findsOneWidget);
  });
}
