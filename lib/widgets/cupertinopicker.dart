import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoPickerWidget extends StatefulWidget {
  const CupertinoPickerWidget({super.key});

  @override
  State<CupertinoPickerWidget> createState() => _CupertinoPickerWidgetState();
}

class _CupertinoPickerWidgetState extends State<CupertinoPickerWidget> {
  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("CupertinoPicker"),
        ),
        body: SafeArea(
            child: Center(
                child: CupertinoButton.filled(
                    onPressed: (() => showCupertinoModalPopup(
                          context: context,
                          builder: ((context) => SizedBox(
                                width: double.infinity,
                                height: 250,
                                child: CupertinoPicker(
                                  backgroundColor: Colors.white10,
                                  itemExtent: 30,
                                  scrollController: FixedExtentScrollController(
                                      initialItem: 1),
                                  children: const [
                                    Text('0'),
                                    Text('1'),
                                    Text('2'),
                                  ],
                                  onSelectedItemChanged: (value) {
                                    setState(() {
                                      selectedValue = value;
                                    });
                                  },
                                ),
                              )),
                        )),
                    child: Text(
                      'Value = $selectedValue',
                      style: const TextStyle(color: Colors.black),
                    )))));
  }
}
