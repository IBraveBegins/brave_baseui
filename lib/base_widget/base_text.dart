import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
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
        ),
        Text(
          "Hello world ",
          style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
              height: 1.2,
              fontFamily: 'Courier',
              background: Paint()..color = Colors.yellow,
              decoration: TextDecoration.underline,
              decorationColor: Colors.blue,
              decorationStyle: TextDecorationStyle.dashed),
        ),
        Text.rich(TextSpan(children: [
          const TextSpan(text: 'Home: '),
          TextSpan(
              style: const TextStyle(color: Colors.blue),
              text: 'https://flutterchina.club',
              recognizer: LongPressGestureRecognizer())
        ])),
        const DefaultTextStyle(
            style: TextStyle(color: Colors.red, fontSize: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('hello world'),
                Text('I am Jack'),
                Text(
                  'I am Jack',
                  style: TextStyle(inherit: false, color: Colors.grey),
                ),
              ],
            )),
      ],
    );
  }
}
