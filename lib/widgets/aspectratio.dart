import 'package:flutter/material.dart';

class AspectRatioWidget extends StatelessWidget {
  const AspectRatioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("AspectRatio"),
        ),
        body: Container(
          color: Colors.orange,
          alignment: Alignment.center,
          width: double.infinity,
          height: 300,
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.blueGrey,
            ),
          ),
        ));
  }
}
