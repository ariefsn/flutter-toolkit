library toolkit;

import 'package:toolkit/media_query_utils.dart';
import 'package:toolkit/random_utils.dart';
import 'package:toolkit/regexp_utils.dart';
import 'package:toolkit/sleep_utils.dart';
import 'package:intl/intl.dart';

enum ToolkitCase { original, upper, lower, capital, snake, camel }

/// A Toolkit.
class Toolkit {
  static RandomUtils get random => RandomUtils();
  static RegExpUtils get regex => RegExpUtils();
  static MediaQueryUtils get mediaQuery => MediaQueryUtils();
  static SleepUtils get sleep => SleepUtils();

  static bool isExists(dynamic value) {
    return !["", null, false, 0].contains(value);
  }

  static bool isNotExists(dynamic value) {
    return !isExists(value);
  }

  static String formatDatetime(DateTime datetime, String format,
      {String? locale}) {
    return DateFormat(format, locale).format(datetime);
  }
}
