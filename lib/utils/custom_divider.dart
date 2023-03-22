import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, required this.heading});
  final String heading;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 30, right: 0),
          child: Text(heading,
              style: const TextStyle(
                color: Colors.grey,
              )),
        ),
      ],
    );
  }
}
