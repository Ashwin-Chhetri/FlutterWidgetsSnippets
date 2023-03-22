import 'package:flutter/material.dart';

class ModelBottomSheetWidget extends StatelessWidget {
  const ModelBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ModelBottomSheetWidget"),
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text('Show Sheet'),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: ((context) {
                    return SizedBox(
                      height: 400,
                      child: Center(
                          child: ElevatedButton(
                        onPressed: (() {
                          Navigator.of(context).pop();
                        }),
                        child: const Text('Close'),
                      )),
                    );
                  }));
            },
          ),
        ));
  }
}
