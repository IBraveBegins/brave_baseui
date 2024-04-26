import 'package:flutter/material.dart';

class BaseProgress extends StatefulWidget {
  const BaseProgress({super.key});

  @override
  State<BaseProgress> createState() => _BaseProgressState();
}

class _BaseProgressState extends State<BaseProgress>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _animationController.forward();
    _animationController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void deactivate() {
    _animationController.dispose();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("进度条"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 3,
            child: LinearProgressIndicator(
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation(Colors.blue),
            ),
          ),
          const SizedBox(height: 5),
          const LinearProgressIndicator(
            backgroundColor: Colors.grey,
            valueColor: AlwaysStoppedAnimation(Colors.blue),
            value: 0.5,
          ),
          const SizedBox(height: 5),
          const SizedBox(
            height: 50,
            width: 50,
            child: CircularProgressIndicator(
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation(Colors.blue),
            ),
          ),
          const SizedBox(height: 5),
          const CircularProgressIndicator(
            backgroundColor: Colors.grey,
            valueColor: AlwaysStoppedAnimation(Colors.blue),
            value: 0.5,
          ),
          const SizedBox(height: 5),
          CircularProgressIndicator(
            backgroundColor: Colors.grey,
            valueColor: ColorTween(begin: Colors.green, end: Colors.blue)
                .animate(_animationController),
            value: _animationController.value,
          )
        ],
      ),
    );
  }
}
