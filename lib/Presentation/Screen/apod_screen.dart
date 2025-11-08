import 'package:flutter/material.dart';

// APOD stands for Astronomy Picture of the Day
// stl = will give you shortcuts for stateless and stateful widget

class ApodScreen extends StatelessWidget {
  const ApodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Apod Screen')),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // List<Widget> children = const <Widget>[],
          children: [Text('Text 1'), Text('Text 2'), Text('Text 3')],
        ),
      ),
    );
  }
}
