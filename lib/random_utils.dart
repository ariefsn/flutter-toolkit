import 'dart:math';

class RandomUtils {
  /// Generate random string from specific characters and length.
  String string(String chars, int length) {
    if (chars.isEmpty) {
      return "";
    }

    Random _rnd = Random();

    return String.fromCharCodes(Iterable.generate(
        length, (_) => chars.codeUnitAt(_rnd.nextInt(chars.length))));
  }

  /// Generate random string by alpha only.
  ///
  /// Lowercase uppercase included.
  String stringAlpha(int length) {
    const chars = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz";

    return string(chars, length);
  }

  /// Generate random string by alpha uppercase only.
  String stringAlphaUppercase(int length) {
    const chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

    return string(chars, length);
  }

  /// Generate random string by alpha lowercase only.
  String stringAlphaLowercase(int length) {
    const chars = "abcdefghijklmnopqrstuvwxyz";

    return string(chars, length);
  }

  /// Generate random string by alphanumeric.
  ///
  /// For alpha lowercase uppercase included.
  String stringAlphaNumeric(int length) {
    const chars =
        "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890";

    return string(chars, length);
  }

  /// Generate random string by numeric.
  String stringNumeric(int length) {
    const chars = "1234567890";

    return string(chars, length);
  }

  /// Generate random string by special characters.
  String specialCharacters(int length) {
    const chars = r'[!@#$%^&*()-+,.?:{}|<>_=]';

    return string(chars, length);
  }

  /// Generate random int.
  int numeric(int max) {
    Random _rnd = Random();

    return _rnd.nextInt(max);
  }

  /// Generate random numeric, between min and max.
  int numericBetween(int min, int max) {
    Random _rnd = Random();

    return min + _rnd.nextInt(max - min);
  }

  /// Generate random boolean.
  bool boolean() {
    Random _rnd = Random();

    return _rnd.nextBool();
  }

  /// Generate random color hex.
  String colorHex() {
    const letters = "0123456789ABCDEF";

    String color = "#";

    for (var i = 0; i < 6; i++) {
      color += letters[numeric(letters.length)];
    }

    return color;
  }
}
