import 'package:push_notification_fcm/models/user.dart';

class RouteArgs {
  const RouteArgs();

  @override
  String toString() => '$runtimeType';
}

class MediaDetailArgs extends RouteArgs {
  const MediaDetailArgs({
    required this.user,
  });

  final User user;
}

class BookingArgs extends RouteArgs {
  const BookingArgs({
    required this.user,
  });

  final User user;
}
