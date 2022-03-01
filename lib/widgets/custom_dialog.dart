import 'package:flutter/material.dart';

import '../constants/ui_helpers.dart';

class CustomDialog extends StatelessWidget {
  final Widget? title;
  final Widget? content;
  final List<Widget>? actions;

  const CustomDialog({
    Key? key,
    this.title,
    this.content,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(borderRadius: kBorderRadius),
      title: Center(child: title),
      actions: actions,
      content: content,
      backgroundColor: kWhite,
    );
  }
}
