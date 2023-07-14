import 'package:flutter/material.dart';

extension NavigateExtension on BuildContext {
void navigate({required dynamic link}) {
    Navigator.push(
      this,
      MaterialPageRoute(builder: (context) => link),
    );
  }

  void pop() => Navigator.pop(this);
}