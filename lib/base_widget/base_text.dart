import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaseText extends StatelessWidget {
  const BaseText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Hello world",
          textAlign: TextAlign.left,
        ),
        Text(
          "Hello world! I'm Jack. " * 4,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const Text(
          'Hello world',
          textScaler: TextScaler.linear(1.5),
        ),
        Text(
          "Hello world " * 6,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
