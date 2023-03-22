import 'package:flutter/material.dart';
import 'package:widgetssamples/utils/app_theme.dart';

class AnimatedPhysicalModelWidget extends StatefulWidget {
  const AnimatedPhysicalModelWidget({super.key});

  @override
  State<AnimatedPhysicalModelWidget> createState() =>
      _AnimatedPhysicalModelWidgetState();
}

class _AnimatedPhysicalModelWidgetState
    extends State<AnimatedPhysicalModelWidget> {
  bool _isFlat = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("AnimatedPhysicalModel"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedPhysicalModel(
                shape: BoxShape.rectangle,
                elevation: _isFlat ? 0 : 6.0,
                color: ThemeConfig.darkBG,
                shadowColor: Colors.white,
                duration: const Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn,
                child: const SizedBox(
                  width: 120,
                  height: 120,
                  child: Icon(Icons.android_outlined),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isFlat = !_isFlat;
                  });
                },
                child: const Text('Click'),
              )
            ],
          ),
        ));
  }
}
