import 'package:flutter/material.dart';

class FloatingActionBarAnimation extends StatefulWidget {
  const FloatingActionBarAnimation({super.key});

  @override
  State<FloatingActionBarAnimation> createState() =>
      _FloatingActionBarAnimationState();
}

class _FloatingActionBarAnimationState extends State<FloatingActionBarAnimation>
    with TickerProviderStateMixin {
  int _counter = 0;
  late AnimationController _controller;
  late Animation<double> _myAnimtion;

  void floatingAction() {
    if (_controller.isCompleted) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
    _incrementCounter();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));

    _myAnimtion = CurvedAnimation(parent: _controller, curve: Curves.linear);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Floating Action Bar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: floatingAction,
        tooltip: 'Increment',
        child: AnimatedIcon(
          icon: AnimatedIcons.add_event,
          progress: _myAnimtion,
        ),
      ),
    );
  }
}
