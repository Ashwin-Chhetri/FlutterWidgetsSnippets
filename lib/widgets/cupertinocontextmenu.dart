import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoContextMenuWidget extends StatelessWidget {
  const CupertinoContextMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("CupertinoContextMenu"),
        ),
        body: Center(
          child: Container(
            color: Colors.orangeAccent,
            width: 100,
            height: 100,
            child: CupertinoContextMenu(
                actions: [
                  CupertinoContextMenuAction(
                    onPressed: (() {
                      Navigator.of(context).pop();
                    }),
                    child: const Text('Action One'),
                  ),
                  CupertinoContextMenuAction(
                    onPressed: (() {
                      Navigator.of(context).pop();
                    }),
                    child: const Text('Action Two'),
                  )
                ],
                child: Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/e/ef/Youtube_logo.png")),
          ),
        ));
  }
}
