import 'package:flutter/material.dart';

extension Snack on SnackBar {
  /// Shows the `SnackBar` in the context of a `Scaffold`
  ///
  /// `root`: If true the `SnackBar` is shown in the context of
  /// the furthest `Scaffold`´s context. Defaults to `false`
  ///
  /// `hideCurrent`: If true, the current `SnackBar` (if any),
  /// will be hidden before displaying a new one. Defaults to true
  ///
  /// `scaffoldState`: If set, the `SnackBar` is shown in the context
  /// of the given `ScaffoldState`
  show(BuildContext context,
      {bool root = false,
      bool hideCurrent = true,
      ScaffoldState scaffoldState}) {
    if (scaffoldState != null) {
      if (hideCurrent) {
        scaffoldState.hideCurrentSnackBar();
      }
      scaffoldState.showSnackBar(this);
    } else if (root) {
      final state = context.findRootAncestorStateOfType<ScaffoldState>();
      if (hideCurrent) {
        state.hideCurrentSnackBar();
      }
      state.showSnackBar(this);
    } else {
      if (hideCurrent) {
        Scaffold.of(context).hideCurrentSnackBar();
      }
      Scaffold.of(context).showSnackBar(this);
    }
  }
}

extension Extra on BuildContext {
  hideSnack() => Scaffold.of(this).hideCurrentSnackBar();
}
