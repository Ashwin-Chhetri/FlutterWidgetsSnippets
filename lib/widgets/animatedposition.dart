import 'package:flutter/material.dart';

class AnimatedPositionWidget extends StatefulWidget {
  const AnimatedPositionWidget({super.key});

  @override
  State<AnimatedPositionWidget> createState() => _AnimatedPositionWidgetState();
}

class _AnimatedPositionWidgetState extends State<AnimatedPositionWidget> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedPosition"),
      ),
      body: SizedBox(
        width: 250,
        height: 350,
        child: Stack(children: [
          AnimatedPositioned(
            width: selected ? 200 : 50,
            height: selected ? 50 : 200,
            top: selected ? 50 : 150,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(25)),
                child: const Center(child: Text('Click')),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
