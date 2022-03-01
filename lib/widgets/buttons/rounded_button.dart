import 'package:flutter/material.dart';

import '../../constants/ui_helpers.dart';
import '../progress_indicators/white_circular_progress_indicator.dart';

class RoundedButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;
  final Color? color;
  final bool isLoading;

  const RoundedButton({
    this.onPressed,
    this.text,
    this.width,
    this.height,
    this.color,
    this.isLoading = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: DecoratedBox(
        decoration:
            BoxDecoration(color: color ?? kGreen, borderRadius: kBorderRadius),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: width ?? double.infinity,
          height: height ?? 58,
          child: isLoading
              ? const WhiteCircularProgressIndicator()
              : Text(text ?? '', style: kButtonTextStyle),
        ),
      ),
    );
  }
}
