import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:scratchy_app/main.dart';
import 'package:scratchy_app/model/valuer.dart';

void main() {
  // test('Initialization', () {
  //   Valuer v = Valuer();

  //   expect(v.number, equals(0));
  // });

  // test('Get Random Value', () {
  //   final v = Valuer();
  //   v.getRandom();
  //   expect(v.number, isPositive);
  // });
  //

  testWidgets('Button Exist', (WidgetTester tester) async {
    // tester.pumpAndSettle();
    // const testKey = Key('K');
    // final plate = find.byKey(const ValueKey('plate'));
    // final btn = find.byKey(const ValueKey('btn'));
    // await tester.pump();
    await tester.pumpWidget(const Home());
    // await tester.tap(btn);

    expect(find.text('Roll'), findsOneWidget);
  });
}
