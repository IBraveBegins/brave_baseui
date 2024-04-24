import 'package:brave_baseui/fonts/ali_icon.dart';
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
        // child: _listImage(),
        // child: _contentImage(),
        child: _contentIcon(),
      ),
    );
  }

  Widget _listImage() {
    return ListView(
      children: [
        const Image(
          image: AssetImage(R.imagesHead),
          width: 100,
        ),
        Image.asset(
          R.imagesHeadFish,
          width: 100,
        ),
        const Image(
          image: NetworkImage(
              "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
          width: 40,
        ),
        Image.network(
          'https://avatars2.githubusercontent.com/u/20411648?s=460&v=4',
          width: 80,
        ),
        Image.asset(
          R.imagesFish,
          fit: BoxFit.fitHeight,
          color: Colors.greenAccent,
          colorBlendMode: BlendMode.plus,
          height: 600,
          repeat: ImageRepeat.repeatY,
        ),
      ],
    );
  }

  Widget _contentImage() {
    var img = const AssetImage(R.imagesHeadFish);
    return Column(
      children: [
        Image(
          image: img,
          height: 50,
          width: 100,
          fit: BoxFit.fill,
        ),
        Image(
          image: img,
          height: 50,
          width: 50,
          fit: BoxFit.contain,
        ),
        Image(
          image: img,
          height: 50,
          width: 100,
          fit: BoxFit.cover,
        ),
        Image(
          image: img,
          height: 50,
          width: 100,
          fit: BoxFit.fitHeight,
        ),
        Image(
          image: img,
          height: 50,
          width: 100,
          fit: BoxFit.fitWidth,
        ),
        Image(
          image: img,
          height: 50,
          width: 100,
          fit: BoxFit.scaleDown,
        ),
        Image(
          image: img,
          height: 50,
          width: 100,
          fit: BoxFit.none,
        ),
        Image(
          image: img,
          width: 100,
          color: Colors.greenAccent,
          colorBlendMode: BlendMode.plus,
          fit: BoxFit.fill,
        ),
        Image(
          image: img,
          width: 100,
          height: 200,
          repeat: ImageRepeat.repeat,
        ),
      ].map((e) {
        return Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: SizedBox(
                width: 100,
                child: e,
              ),
            ),
            Text(e.fit.toString())
          ],
        );
      }).toList(),
    );
  }

  Widget _contentIcon() {
    String icons = "";
// accessible: 0xe03e
    icons += "\uE03e";
// error:  0xe237
    icons += " \uE237";
// fingerprint: 0xe287
    icons += " \uE287";
    return Column(
      children: [
        Text(
          icons,
          style: const TextStyle(
              fontFamily: "MaterialIcons", fontSize: 24, color: Colors.green),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.accessible,
              color: Colors.green,
            ),
            Icon(
              Icons.error,
              color: Colors.green,
            ),
            Icon(
              Icons.fingerprint,
              color: Colors.green,
            ),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              AliIcon.lantern,
              color: Colors.red,
            ),
            SizedBox(width: 5),
            Icon(
              AliIcon.loongYear,
              color: Colors.red,
            ),
          ],
        )
      ],
    );
  }
}
