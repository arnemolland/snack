#![](assets/nachos.svg) Snack

![sigv4](https://github.com/arnemolland/snack/workflows/Dart%20CI/badge.svg) ![pub](https://img.shields.io/pub/v/snack.svg) [![style: pedantic](https://img.shields.io/badge/style-pedantic-9cf)](https://github.com/dart-lang/pedantic) ![license](https://img.shields.io/github/license/arnemolland/dart-dnb.svg)

Extension methods for SnackBars

## Usage

```dart
SnackBar().show(context);
```

## Example

```dart
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
```



