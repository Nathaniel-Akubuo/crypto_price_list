import 'package:flutter/material.dart';

import '../constants/ui_helpers.dart';

class CustomSnackBarService {
  void showErrorSnackBar(
          {required BuildContext context, required String message}) =>
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: const Duration(milliseconds: 3500),
          content: Text(
            message,
            style: kRegularTextStyle.copyWith(color: kWhite),
            textAlign: TextAlign.center,
          ),
          backgroundColor: kRed,
        ),
      );

  void showRegularSnackBar(
          {required BuildContext context, required String message}) =>
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: const Duration(milliseconds: 2500),
          content: Text(
            message,
            style: kRegularTextStyle.copyWith(color: kWhite),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.green,
        ),
      );
}
