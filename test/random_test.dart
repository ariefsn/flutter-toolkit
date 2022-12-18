import 'package:flutter_test/flutter_test.dart';
import 'package:toolkit/random_utils.dart';

void main() {
  final rnd = RandomUtils();
  final alphaLower = "abcdefghijklmnopqrstuvwxzy";
  final alphaUpper = alphaLower.toUpperCase();
  final numeric = "1234567890";

  test("test random string", () {
    expect(rnd.string("abc", 3).length, 3);
  });

  test("test random string alpha", () {
    final result = rnd.stringAlpha(3);
    expect(result.length, 3);
    expect(result, isNot(contains("123")));
  });

  test("test random string alpha upper", () {
    final result = rnd.stringAlphaUppercase(3);
    expect(result.length, 3);
    expect(result, isNot(contains(alphaLower)));
  });

  test("test random string alpha lower", () {
    final result = rnd.stringAlphaLowercase(3);
    expect(result.length, 3);
    expect(result, isNot(contains(alphaUpper)));
  });

  test("test random string alpha numeric", () {
    final result = rnd.stringAlphaNumeric(3);
    expect(result.length, 3);
    expect(result, isNot(contains(r"!@#$%^&*()")));
  });

  test("test random string numeric", () {
    final result = rnd.stringNumeric(3);
    expect(result.length, 3);
    expect(result, isNot(contains(alphaLower + alphaUpper)));
  });

  test("test random special characters", () {
    final result = rnd.specialCharacters(3);
    expect(result.length, 3);
    expect(result, isNot(contains(alphaLower + alphaUpper + numeric)));
  });

  test("test random numeric", () {
    final result = rnd.numeric(10);
    expect(result, lessThanOrEqualTo(10));
  });

  test("test random numeric between", () {
    final result = rnd.numericBetween(5, 9);
    expect(result, greaterThanOrEqualTo(5));
    expect(result, lessThanOrEqualTo(9));
  });

  test("test random boolean", () {
    final result = rnd.boolean();
    expect(result.runtimeType, isNot(String));
    expect(result.runtimeType, equals(bool));
  });

  test("test random color hex", () {
    final result = rnd.colorHex();
    expect(result.length, 7);
    expect(result, contains("#"));
  });
}
