import 'package:flutter/material.dart';
import 'package:flutter_cyber_oasis/models/apod_model.dart';
import 'package:flutter_cyber_oasis/presentation/screen/apod_details_screen.dart';

class ApodWidget extends StatelessWidget {
  const ApodWidget(this.unNamedParam, {super.key, required this.apod});

  // Declare list of string a new param of the widget : ApodWidget
  final ApodModel apod;
  final String? unNamedParam;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (context) => const ApodDetailsScreen(),
          ),
        );
      },
      child: Center(
        child: SizedBox(
          // width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                spacing: 16,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Title: ${apod.title}',
                    style: TextStyle(fontSize: 14),
                    overflow: TextOverflow.ellipsis,
                  ),

                  Text(
                    'Copyright: ${apod.copyright} ',
                    style: TextStyle(fontSize: 14),
                  ),

                  Text('Date: ${apod.date}', style: TextStyle(fontSize: 14)),

                  /// OLD EXAMPLE WE FOLLOWED : issue with the  overflow: TextOverflow.ellipsis, does not work
                  // Row(
                  //   children: [
                  //     Text(
                  //       'Title: ',
                  //       style: TextStyle(
                  //         fontSize: 16,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     ),

                  //     Text(
                  //       apod.title,
                  //       style: TextStyle(fontSize: 14),
                  //       overflow: TextOverflow.ellipsis,
                  //     ),
                  //   ],
                  // ),
                  Image.network(
                    height: 200,
                    width: MediaQuery.of(context).size.width,

                    /// Tip: Trigger this to check the image assets
                    // 'https://apod.nasa.gov/apod/image/251.jpg',
                    apod.url,
                    errorBuilder: (context, error, stackTrace) {
                      return Image.asset('assets/404_not_found_image.png');
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
