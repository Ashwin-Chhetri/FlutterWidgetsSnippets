import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AutoCompleteWidget extends StatelessWidget {
  const AutoCompleteWidget({super.key});
  static const List<String> fruits = ['apple', 'banana', 'melon'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("AutoComplete"),
        ),
        body: Autocomplete<String>(
          optionsBuilder: (textEditingValue) {
            if (textEditingValue.toString() == '') {
              return const Iterable<String>.empty();
            }
            return fruits.where((element) {
              return element.contains(textEditingValue.text.toLowerCase());
            });
          },
          onSelected: (option) {
            SystemChannels.textInput.invokeMethod('TextInput.hide');
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('The $option was selected'),
            ));
          },
        ));
  }

  void showInSnackBar(String value) {}
}
