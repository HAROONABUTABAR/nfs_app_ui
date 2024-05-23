import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

enum SnackBarType {
  error,
  success,
  info,
  warning,
}

void snackBar(BuildContext context, String message,
    {SnackBarType type = SnackBarType.error}) {
  if (type == SnackBarType.error) {
    return showTopSnackBar(
      Overlay.of(context),
      CustomSnackBar.error(
        message: message,
      ),
    );
  } else if (type == SnackBarType.success) {
    return showTopSnackBar(
      Overlay.of(context),
      CustomSnackBar.success(message: message),
    );
  }
}
