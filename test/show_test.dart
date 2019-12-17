import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:snack/snack.dart';

void main() {
  testWidgets('Show a SnackBar using show() extension', (tester) async {
    await tester.pumpWidget(MaterialApp(home: ShowSnackBarTest()));
    final buttonFinder = find.byType(RaisedButton);
    await tester.tap(buttonFinder);
    await tester.pump();
    final snackFinder = find.byType(SnackBar);
    expect(buttonFinder, findsOneWidget);
    expect(snackFinder, findsOneWidget);
  });

  testWidgets('Show a SnackBar using show(root: true) extension', (tester) async {
    await tester.pumpWidget(MaterialApp(home: ShowSnackBarTest(root: true)));
    final buttonFinder = find.byType(RaisedButton);
    await tester.tap(buttonFinder);
    await tester.pump();
    final snackFinder = find.byType(SnackBar);
    expect(buttonFinder, findsOneWidget);
    expect(snackFinder, findsOneWidget);
  });

  testWidgets('Show a SnackBar using show(scaffoldState) extension', (tester) async {
    await tester.pumpWidget(MaterialApp(home: RootScaffold()));
    final buttonFinder = find.byType(RaisedButton);
    await tester.tap(buttonFinder);
    await tester.pump();
    final snackFinder = find.byType(SnackBar);
    expect(buttonFinder, findsOneWidget);
    expect(snackFinder, findsOneWidget);
  });
}

class RootScaffold extends StatelessWidget {
  const RootScaffold({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          return ShowSnackBarTest(state: Scaffold.of(context));
        },
      ),
    );
  }
}

class ShowSnackBarTest extends StatelessWidget {
  final bool root;
  final ScaffoldState state;
  final bar = SnackBar(content: Container());

  ShowSnackBarTest({Key key, this.root = false, this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          return RaisedButton(
            onPressed: () => bar.show(context),
          );
        },
      ),
    );
  }
}
