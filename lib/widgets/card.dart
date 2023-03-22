import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Card"),
        ),
        body: Center(
          child: Card(
            shadowColor: Colors.white,
            elevation: 20,
            color: Colors.orange,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                const SizedBox(
                  height: 8.0,
                ),
                const Text('This is a Flutter card'),
                TextButton(
                  onPressed: () {},
                  child: const Text('Press'),
                )
              ]),
            ),
          ),
        ));
  }
}
