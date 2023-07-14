import 'package:appnation_case/core/helper/app_text.dart';
import 'package:appnation_case/core/helper/screen_size.dart';
import 'package:appnation_case/core/keys/global_keys.dart';
import 'package:flutter/material.dart';

class AppAlertDialog extends StatelessWidget {
  const AppAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  static void showDialog({AlertEnum alertEnum=AlertEnum.normal, required String? text}) {
    final snackBar = SnackBar(
        backgroundColor: _color(alertEnum),
        behavior: SnackBarBehavior.floating,
        content: Row(
          children: [
            16.0.widthPxBox,
            Icon(_path(alertEnum)),
            16.0.widthPxBox,
           AppText.s13w500(text)
            
          ],
        ));
    GlobalContextKey.snackbarKey.currentState?.showSnackBar(snackBar);
  }

  static Color _color(AlertEnum enums) {
    switch (enums) {
      case AlertEnum.warning:
        return const Color(0xFFF7255A);
      case AlertEnum.normal:
        return const Color(0xFF4361EE);

      case AlertEnum.success:
        return const Color(0xFF06CB89);

      case AlertEnum.danger:
        return const Color(0xFFFFB433);
    }
  }

  static IconData _path(AlertEnum enums) {
    switch (enums) {
      case AlertEnum.warning:
        return Icons.warning;
      case AlertEnum.normal:
        return Icons.warning;

      case AlertEnum.success:
        return Icons.check;

      case AlertEnum.danger:
        return Icons.warning;
    }
  }
}

enum AlertEnum { success, normal, danger, warning }