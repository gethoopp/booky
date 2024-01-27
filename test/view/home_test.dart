import 'package:booky/main.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('succes Login and regis', () {
    testWidgets('home login', (tester) async {
     

      await tester.pumpWidget(const MyApp());

      await tester.pumpAndSettle();

      // Digunakan untuk mencari button yang memiliki key dapat dilihat pada file home.dart

      expect(find.byKey(const Key('text-rich')), findsOneWidget);

      await tester.tap(find.byKey(const Key('login')));

      expect(find.text('Booky'), findsOneWidget);
    });
  });

  testWidgets('succes for page regis', (tester) async {
   

    await tester.pumpWidget(const MyApp());

    await tester.pumpAndSettle();

    // Digunakan untuk mencari button yang memiliki key dapat dilihat pada file home.dart
    expect(find.byKey(const Key('regis')), findsOneWidget);

    expect(find.text('Booky'), findsOneWidget);
  });
}
