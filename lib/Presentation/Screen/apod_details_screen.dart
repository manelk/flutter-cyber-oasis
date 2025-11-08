import 'package:flutter/material.dart';
import 'package:flutter_cyber_oasis/models/apod_model.dart';

class ApodDetailsScreen extends StatelessWidget {
  const ApodDetailsScreen({super.key, required this.apod});

  final ApodModel apod;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Apod Details Screen')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Text('Title: ${apod.title}', style: TextStyle(fontSize: 12)),
          Text(
            'Explanation: ${apod.explanation}',
            style: TextStyle(fontSize: 12),
          ),
          Text('Copyright: ${apod.copyright}', style: TextStyle(fontSize: 12)),

          Image.network(
            width: MediaQuery.of(context).size.width,

            apod.url,
            errorBuilder: (context, error, stackTrace) {
              return Image.asset('assets/404_not_found_image.png');
            },
          ),
        ],
      ),
    );
  }
}
