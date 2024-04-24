import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  const BaseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BaseButton'),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('normal')),
            TextButton(onPressed: () {}, child: const Text('normal')),
            OutlinedButton(onPressed: () {}, child: const Text('normal')),
            IconButton(onPressed: () {}, icon: const Icon(Icons.thumb_up)),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.send),
                label: const Text('发送')),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text("添加")),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.info),
                label: const Text("详情")),
          ],
        ),
      ),
    );
  }
}
