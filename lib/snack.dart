import 'package:flutter/material.dart';

extension Snack on SnackBar {
  show(BuildContext context) {
    Scaffold.of(context).showSnackBar(this);
  }
}
