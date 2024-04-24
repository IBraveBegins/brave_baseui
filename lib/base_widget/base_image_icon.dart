import 'package:flutter/material.dart';

import '../generated/r.dart';

class BaseImageIcon extends StatelessWidget {
  const BaseImageIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ImageIcon'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Image(
              image: AssetImage(R.imagesHead),
              width: 100,
            ),
            Image.asset(
              R.imagesHeadFish,
              width: 100,
            )
          ],
        ),
      ),
    );
  }
}
