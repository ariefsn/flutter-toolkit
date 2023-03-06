import 'package:toolkit/toolkit.dart';

extension StringExt on String {
  /// Capitalize string.
  String toCapitalCase() {
    if (this.isEmpty) {
      return "";
    }

    List<String> newStr = [];

    this.split(" ").forEach((s) {
      newStr.add(s[0].toUpperCase() + s.substring(1));
    });

    return newStr.join(" ");
  }

  String reverse() {
    return this.split("").reversed.toList().join("");
  }

  String toSentenceFromCamelCase() {
    var result = this.replaceAll(RegExp(r'(?<!^)(?=[A-Z])'), r" ");
    var finalResult = result[0].toUpperCase() + result.substring(1);
    return finalResult;
  }

  String toSentenceFromSnakeCase() {
    return this
        .split("_")
        .map((e) => e[0].toUpperCase() + e.substring(1))
        .toList()
        .join(" ");
  }

  String toSnakeCase() {
    final replaced = this.replaceAll(" ", "_");

    return replaced
        .split("_")
        .map((s) {
          return s.toLowerCase();
        })
        .toList()
        .join("_");
  }

  String toCamelCase() {
    final replaced = this.replaceAll(" ", "_");

    return replaced
        .split("_")
        .asMap()
        .map((i, s) {
          if (i == 0) {
            return MapEntry(i, s[0].toLowerCase() + s.substring(1));
          }

          return MapEntry(i, s[0].toUpperCase() + s.substring(1));
        })
        .values
        .toList()
        .join("");
  }

  String toHyphenCase() {
    final replaced = this.replaceAll(" ", "-");

    return replaced
        .split("-")
        .map((s) {
          return s.toLowerCase();
        })
        .toList()
        .join("-");
  }

  /// Limit string into specific length.
  String limitString(int length) {
    if (this.isEmpty) {
      return "";
    }

    if (this.length <= length) {
      return this;
    }

    return this.substring(0, length);
  }

  /// Limit string into specific length, and append another string.
  String limitStringAppend(int length, String append) {
    if (this.isEmpty) {
      return "";
    }

    return this.replaceRange(length, this.length, append);
  }

  bool get isEmail => Toolkit.regex.email(this);
  bool get isContainsAlpha => Toolkit.regex.containsAlpha(this);
  bool get isContainsAlphaLowercase =>
      Toolkit.regex.containsAlphaLowercase(this);
  bool get isContainsAlphaUppercase =>
      Toolkit.regex.containsAlphaUppercase(this);
  bool get isContainsNumeric => Toolkit.regex.containsNumeric(this);
  bool get isOnlyAlpha => Toolkit.regex.onlyAlpha(this);
  bool get isOnlyAlphaLowercase => Toolkit.regex.onlyAlphaLowercase(this);
  bool get isOnlyAlphaUppercase => Toolkit.regex.onlyAlphaUppercase(this);
  bool get isOnlyNumeric => Toolkit.regex.onlyNumeric(this);
  bool get isContainsSpecialCharacters =>
      Toolkit.regex.containsSpecialCharacters(this);

  String get parse => toString() == 'null' ? '' : toString();
  int get asInt => toString() == 'null' ? 0 : int.parse(toString());
  double get asDouble => toString() == 'null' ? 0 : double.parse(toString());
  bool get asBool => ['true', '1', 'yes'].contains(toString().toLowerCase());
  DateTime get asDateTime =>
      parse.isNotEmpty ? DateTime.parse(parse) : DateTime(1901);
}
