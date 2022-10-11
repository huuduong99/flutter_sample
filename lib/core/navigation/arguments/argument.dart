import 'package:push_notification_fcm/models/image_details.dart';

class RouteArgs {
  const RouteArgs();

  @override
  String toString() => '$runtimeType';
}

class MediaDetailArgs extends RouteArgs {
  const MediaDetailArgs({
    required this.imageDetails,
  });

  final ImageDetail imageDetails;
}
