import 'package:flutter/material.dart';
import 'package:flutter_cyber_oasis/Presentation/Widgets/apod_widget.dart';

// APOD stands for Astronomy Picture of the Day
// stl = will give you shortcuts for stateless and stateful widget
// This page we will create a UI to display the following
/// title:  The title of the image.
/// date Date of image. Included in response because of default values.
/// url The URL of the APOD image or video of the day.
/// copyright The name of the copyright holder.

class ApodScreen extends StatelessWidget {
  const ApodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Apod Screen')),
      body: ApodWidget(),
    );
  }
}
