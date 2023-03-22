import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChipWidget extends StatefulWidget {
  const ChipWidget({super.key});

  @override
  State<ChipWidget> createState() => _ChipWidgetState();
}

class _ChipWidgetState extends State<ChipWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Chip"),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Chip(
                label: const Text('This is a Flutter Chip'),
                onDeleted: () {
                  SystemChannels.textInput.invokeMethod('TextInput.hide');
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('onDeleted'),
                  ));
                },
              ),
              ChoiceChip(
                label: const Text('Choice Chip'),
                selected: isSelected,
                selectedColor: Colors.orangeAccent,
                onSelected: (value) {
                  setState(() {
                    isSelected = value;
                  });
                },
              )
            ],
          ),
        ));
  }
}
