import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:snack/snack.dart';

void main() {
  testWidgets('Show a SnackBar using show() extension', (tester) async {
    await tester.pumpWidget(ShowSnackBarTest());
    final buttonFinder = find.byType(RaisedButton);
    await tester.tap(buttonFinder);
    await tester.pump();
    final snackFinder = find.byType(SnackBar);
    expect(buttonFinder, findsOneWidget);
    expect(snackFinder, findsOneWidget);
  });
}

class ShowSnackBarTest extends StatelessWidget {
  final bar = SnackBar(content: Container());
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Builder(
          builder: (context) {
            return RaisedButton(
              onPressed: () => bar.show(context),
            );
          },
        ),
      ),
    );
  }
}
