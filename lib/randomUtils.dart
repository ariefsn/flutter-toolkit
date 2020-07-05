import 'dart:math';

class RandomUtils {
  /// Generate random string from specific characters and length.
  String randomString (String chars, int length) {
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
  String randomStringAlpha(int length) {
    const chars = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz";

    return randomString(chars, length);
  }

  /// Generate random string by alpha uppercase only.
  String randomStringAlphaUppercase(int length) {
    const chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

    return randomString(chars, length);
  }

  /// Generate random string by alpha lowercase only.
  String randomStringAlphaLowercase(int length) {
    const chars = "abcdefghijklmnopqrstuvwxyz";

    return randomString(chars, length);
  }

  /// Generate random string by alphanumeric.
  ///
  /// For alpha lowercase uppercase included.
  String randomStringAlphaNumeric(int length) {
    const chars = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890";

    return randomString(chars, length);
  }

  /// Generate random string by numeric.
  String randomStringNumeric(int length) {
    const chars = "1234567890";

    return randomString(chars, length);
  }

  /// Generate random int.
  int randomInt(int max) {
    Random _rnd = Random();

    return _rnd.nextInt(max);
  }

  /// Generate random int, between min and max.
  int randomIntBetween(int min, int max) {
    Random _rnd = Random();

    return min + _rnd.nextInt(max - min);
  }

  /// Generate random double.
  double randomDouble () {
    Random _rnd = Random();

    return _rnd.nextDouble();
  }

  /// Generate random boolean.
  bool randomBoolean () {
    Random _rnd = Random();

    return _rnd.nextBool();
  }

  /// Generate random color hex.
  String randomColorHex () {
    const letters = "0123456789ABCDEF";

    String color = "#";

    for (var i = 0; i < 6; i++) {
      color += letters[randomInt(letters.length)];
    }

    return color;
  }
}