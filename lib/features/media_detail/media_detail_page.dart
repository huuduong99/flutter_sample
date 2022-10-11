import 'package:flutter/material.dart';
import 'package:push_notification_fcm/models/image_details.dart';

import '../../widgets/app_button.dart';

class MediaDetailPage extends StatelessWidget {
  const MediaDetailPage({Key? key, required this.imageDetails})
      : super(key: key);

  final ImageDetail imageDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Hero(
              tag: 'logo${imageDetails.index}',
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      image: DecorationImage(
                        image: NetworkImage(imageDetails.imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  AppBar(
                    backgroundColor: Colors.transparent,
                    leading: const BackButton(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: SizedBox(
              height: 260,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          imageDetails.title,
                          style: const TextStyle(
                            color: Colors.redAccent,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'By ${imageDetails.photographer}',
                          style: const TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          imageDetails.price,
                          style: const TextStyle(
                            color: Colors.redAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          imageDetails.details,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: AppButton(
                      onPressed: () {},
                      title: 'Booking',
                      backgroundColor: Colors.redAccent,
                      titleColor: Colors.white,
                      borderColor: Colors.redAccent,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
