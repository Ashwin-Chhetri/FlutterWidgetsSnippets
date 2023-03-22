import 'package:flutter/material.dart';

class AnimatedSwitcherWdiget extends StatefulWidget {
  const AnimatedSwitcherWdiget({super.key});

  @override
  State<AnimatedSwitcherWdiget> createState() => _AnimatedSwitcherWdigetState();
}

class _AnimatedSwitcherWdigetState extends State<AnimatedSwitcherWdiget> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedSwitcher"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              duration: const Duration(seconds: 1),
              child: Text(
                '$_count',
                style: const TextStyle(fontSize: 40),
                key: ValueKey(
                    _count), //key to track how the AnimatedSwitcher performs
              ),
              transitionBuilder: (child, animation) {
                return ScaleTransition(
                  scale: animation,
                  child: child,
                );
              },
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _count += 1;
                  });
                },
                child: const Text('Add'))
          ],
        ),
      ),
    );
  }
}
