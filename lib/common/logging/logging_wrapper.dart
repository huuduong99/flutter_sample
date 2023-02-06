import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'dart:io' as io;

/// Handle print a log event.
/// Add Icon, color when log printed.
class SimplePrettyPrinter extends LogPrinter {
  final String className;

  SimplePrettyPrinter(this.className);

  @override
  List<String> log(LogEvent event) {
    var messageStr = _stringifyMessage(event.message);
    var classN =
        io.Platform.isIOS ? className : levelColors[Level.info]!(className);

    var errorStr = event.error != null ? '  ERROR: ${event.error}' : '';
    return ['${_labelFor(event.level)} $classN: $messageStr$errorStr'];
  }

  static final levelPrefixes = {
    Level.verbose: '[V]',
    Level.debug: '[D]',
    Level.info: '[I]',
    Level.warning: '[W]',
    Level.error: '[E]',
    Level.wtf: '[WTF]',
  };

  static final levelColors = {
    Level.verbose: AnsiColor.fg(AnsiColor.grey(0.5)),
    Level.debug: AnsiColor.none(),
    Level.info: AnsiColor.fg(12),
    Level.warning: AnsiColor.fg(208),
    Level.error: AnsiColor.fg(196),
    Level.wtf: AnsiColor.fg(199),
  };

  String _labelFor(Level level) {
    var prefix = levelPrefixes[level]!;
    var color = levelColors[level]!;

    if (io.Platform.isIOS) {
      return prefix;
    }

    return color(prefix);
  }

  String _stringifyMessage(dynamic message) {
    final finalMessage = message is Function ? message() : message;
    if (finalMessage is Map || finalMessage is Iterable) {
      var encoder = const JsonEncoder.withIndent(null);
      return encoder.convert(finalMessage);
    } else {
      return finalMessage.toString();
    }
  }
}

Logger getLogger(String className) {
  return Logger(
    printer: PrefixPrinter(
      SimplePrettyPrinter(className),
    ),
    output: ConsoleOutput(),
    level: Level.verbose,
  );
}

List<String> printLogs = [];

class ConsoleOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    const String ct =
        "-------------------------------------------------------------------";
    if ([Level.warning, Level.error].contains(event.level)) {
      printLogs.addAll(event.lines);
    }
    for (var f in event.lines) {
      if (f.isNotEmpty) {
        final String content = !io.Platform.isIOS
            ? SimplePrettyPrinter.levelColors[event.level]!(ct)
            : ct;
        if (f.isNotEmpty) {
          debugPrint(content);
        }

        debugPrint(f);
      }
    }
  }
}
