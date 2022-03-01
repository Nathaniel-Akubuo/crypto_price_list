import 'package:flutter/material.dart';

class NotificationBubbleStack extends StatelessWidget {
  const NotificationBubbleStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Icon(
          Icons.notifications,
          color: Colors.black,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, bottom: 25),
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.red, shape: BoxShape.circle),
            height: 8,
          ),
        )
      ],
    );
  }
}
