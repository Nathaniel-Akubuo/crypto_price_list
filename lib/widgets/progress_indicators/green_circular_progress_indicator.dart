import 'package:flutter/material.dart';

import '../../constants/ui_helpers.dart';

class GreenCircularProgressIndicator extends StatelessWidget {
  const GreenCircularProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(kGreen),
      ),
    );
  }
}
