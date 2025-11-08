import 'package:flutter/material.dart';


class ApodWidget extends StatelessWidget {
  const ApodWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.5,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.center,
              // List<Widget> children = const <Widget>[],
              children: [
                // Style one of the whole text widget
                // Text(
                //   'Title : NGC 6960: The Witch Broom Nebula',
                //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                // ),
                Row(
                  children: [
                    Text(
                      'Title: ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'NGC 6960: The Witch Broom Nebula',
                      style: TextStyle(fontSize: 14),
                      overflow: TextOverflow.fade,
                    ),
                  ],
                ),

                Row(
                  children: [
                    Text(
                      'Copyright: ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Brian Meyers', style: TextStyle(fontSize: 14)),
                  ],
                ),

                Row(
                  children: [
                    Text(
                      'Date: ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('2025 October 1', style: TextStyle(fontSize: 14)),
                  ],
                ),

                Image.network(
                  /// Tip: Trigger this to check the image assets
                  // 'https://apod.nasa.gov/apod/image/251.jpg',
                  'https://apod.nasa.gov/apod/image/2510/WitchBroom_Meyers_1080.jpg',
                  errorBuilder: (context, error, stackTrace) {
                    return Image.asset('assets/404_not_found_image.png');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
