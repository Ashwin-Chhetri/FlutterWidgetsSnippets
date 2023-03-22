import 'package:flutter/material.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  const AnimatedCrossFadeWidget({super.key});

  @override
  State<AnimatedCrossFadeWidget> createState() =>
      _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  bool _bool = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Cross Fade'),
      ),
      body: Column(
        children: [
          const SizedBox(
            width: double.infinity,
            height: 100,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _bool = !_bool;
              });
            },
            child: const Text('Switch'),
          ),
          AnimatedCrossFade(
            firstChild: Image.asset(
              'assets/bg/asthetic_bg.jpg',
              width: 150,
              height: 400,
            ),
            secondChild: Image.asset('assets/bg/asthetic_night_bg.jpg',
                width: 150, height: 400),
            crossFadeState:
                _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(seconds: 2),
          ),
        ],
      ),
    );
  }
}
