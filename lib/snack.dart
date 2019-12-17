import 'package:flutter/material.dart';

extension Snack on SnackBar {
  /// Shows the `SnackBar` in the context of a `Scaffold`
  ///
  /// `root`: If true the `SnackBar` is shown in the context of
  /// the furthest `Scaffold`´s context.
  /// `scaffoldState`: If set, the `SnackBar` is shown in the context
  /// of the given `ScaffoldState`
  show(BuildContext context, {bool root = false, ScaffoldState scaffoldState}) {
    if (scaffoldState != null) {
      scaffoldState.showSnackBar(this);
    } else if (root) {
      final state = context.findRootAncestorStateOfType<ScaffoldState>();
      state.showSnackBar(this);
    } else {
      Scaffold.of(context).showSnackBar(this);
    }
  }
}
