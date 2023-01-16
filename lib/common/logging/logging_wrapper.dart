import 'package:logger/logger.dart';

/// Handle print a log event.
/// Add Icon, color when log printed.
class SimplePrettyPrinter extends LogPrinter {
  final String className;
  SimplePrettyPrinter(this.className);

  @override
  List<String> log(LogEvent event) {
    final color = PrettyPrinter.levelColors[event.level];
    final headerColor = PrettyPrinter.levelColors[event.level];
    final infoColor = PrettyPrinter.levelColors[Level.info];
    final emoji = PrettyPrinter.levelEmojis[event.level];

    return [
      headerColor!(
          '****-------------------------------------------------------------------------***'),
      infoColor!("$className: ") + color!('$emoji => ${event.message}'),
      if (event.error != null) color('Error: ${event.error}'),
      if (event.stackTrace != null) color('stack: ${event.stackTrace}'),
    ];
  }
}

Logger getLogger(String className) {
  return Logger(printer: SimplePrettyPrinter(className));
}
