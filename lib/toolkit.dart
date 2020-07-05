library toolkit;

import 'package:toolkit/randomUtils.dart';
import 'package:toolkit/regexpUtils.dart';
import 'package:toolkit/sleepUtils.dart';
import 'package:toolkit/stringUtils.dart';
import 'package:toolkit/mapUtils.dart';

/// A Toolkit.
class Toolkit with StringUtils, SleepUtils, RandomUtils, RegExpUtils {
  MapUtils map() {
    return MapUtils();
  }

  Map<String, dynamic> clone(Map<String, dynamic> json) {
    return Map<String, dynamic>.from(json);
  }

  bool isExists(dynamic value) {
    return !["", null, false, 0].contains(value);
  }

  bool isNotExists(dynamic value) {
    return !isExists(value);
  }
}
