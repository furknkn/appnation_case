import 'package:flutter/material.dart';

class GlobalContextKey {
  final GlobalKey<NavigatorState> globalKey = GlobalKey<NavigatorState>();

  static GlobalKey<ScaffoldMessengerState> snackbarKey = GlobalKey<ScaffoldMessengerState>();

  static GlobalContextKey instance = GlobalContextKey._init();
  GlobalContextKey._init();
}