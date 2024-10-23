import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedPositionedExample(),
    );
  }
}

class AnimatedPositionedExample extends StatefulWidget {
  @override
  _AnimatedPositionedExampleState createState() =>
      _AnimatedPositionedExampleState();
}

class _AnimatedPositionedExampleState extends State<AnimatedPositionedExample> {
  bool _isMoved = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedPositioned Example"),
      ),
      body: Center(
        child: Stack(
          children: [
            AnimatedPositioned(
              width: 100.0,
              height: 100.0,
              top: _isMoved ? 300.0 : 50.0,
              left: _isMoved ? 200.0 : 50.0,
              duration: Duration(seconds: 2),
              curve: Curves.easeInOut,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isMoved = !_isMoved;
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
