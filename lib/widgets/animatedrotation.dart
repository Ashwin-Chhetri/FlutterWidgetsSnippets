import 'package:flutter/material.dart';

class AnimatedRotationWidget extends StatefulWidget {
  const AnimatedRotationWidget({super.key});

  @override
  State<AnimatedRotationWidget> createState() => _AnimatedRotationWidgetState();
}

class _AnimatedRotationWidgetState extends State<AnimatedRotationWidget> {
  double turn = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget Name"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          AnimatedRotation(
            turns: turn,
            duration: const Duration(seconds: 1),
            child: const FlutterLogo(
              size: 100,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  turn += 1 / 4;
                });
              },
              child: const Text("Rotate Logo"))
        ]),
      ),
    );
  }
}
