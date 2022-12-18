import 'package:flutter_test/flutter_test.dart';
import 'package:toolkit/string_utils.dart';

void main() {
  String str = "hello world";
  String strSingle = "hello";

  test('test string case', () {
    expect(str.toCapitalCase(), "Hello World");
    expect(strSingle.toCapitalCase(), "Hello");
    expect(str.toCamelCase(), "helloWorld");
    expect(str.toHyphenCase(), "hello-world");
    expect(str.toSnakeCase(), "hello_world");
    expect(str.toCamelCase().toSentenceFromCamelCase(), "Hello World");
    expect(str.toSnakeCase().toSentenceFromSnakeCase(), "Hello World");
    expect(str.limitString(2), "he");
    expect(str.limitStringAppend(2, "..."), "he...");
    expect(str.reverse(), "dlrow olleh");
    expect(strSingle.reverse(), "olleh");
  });

  test('test string regex', () {
    expect(str.isEmail, false);
    expect(str.isContainsAlpha, true);
    expect(str.isContainsAlphaLowercase, true);
    expect(str.isContainsAlphaUppercase, false);
    expect(str.isContainsNumeric, false);
    expect(str.isContainsSpecialCharacters, false);
    expect(str.isOnlyAlpha, false);
    expect(str.isOnlyAlphaLowercase, false);
    expect(str.isOnlyAlphaUppercase, false);
    expect(str.isOnlyNumeric, false);
  });
}
