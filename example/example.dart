import 'package:flutter/material.dart';
import 'package:snack/snack.dart';

void main() {
  runApp(Example());
}

class Example extends StatelessWidget {
  final bar = SnackBar(content: Text('Hello, world!'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RaisedButton(
        child: Text('Show snack'),
        onPressed: () => bar.show(context),
      ),
    );
  }
}
