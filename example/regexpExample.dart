import 'package:toolkit/toolkit.dart';

regexpExample (Toolkit t) {
  String alpha = "ABCabc";
  String alphaLowercase = "abcdef";
  String alphaUppercase = "ABCDEF";
  String alphaNumeric = "ABCDEF123";
  String numeric = "123456";

  print("===== RegExp Example =====");
  print("==> Contains Alpha");
  print(alpha + " - " + t.containsAlpha(alpha).toString());
  print(alphaLowercase + " - " + t.containsAlpha(alphaLowercase).toString());
  print(alphaUppercase + " - " + t.containsAlpha(alphaUppercase).toString());
  print(alphaNumeric + " - " + t.containsAlpha(alphaNumeric).toString());
  print(numeric + " - " + t.containsAlpha(numeric).toString());

  print("==> Contains Alpha Lowercase");
  print(alpha + " - " + t.containsAlphaLowercase(alpha).toString());
  print(alphaLowercase + " - " + t.containsAlphaLowercase(alphaLowercase).toString());
  print(alphaUppercase + " - " + t.containsAlphaLowercase(alphaUppercase).toString());
  print(alphaNumeric + " - " + t.containsAlphaLowercase(alphaNumeric).toString());
  print(numeric + " - " + t.containsAlphaLowercase(numeric).toString());

  print("==> Contains Alpha Uppercase");
  print(alpha + " - " + t.containsAlphaUppercase(alpha).toString());
  print(alphaLowercase + " - " + t.containsAlphaUppercase(alphaLowercase).toString());
  print(alphaUppercase + " - " + t.containsAlphaUppercase(alphaUppercase).toString());
  print(alphaNumeric + " - " + t.containsAlphaUppercase(alphaNumeric).toString());
  print(numeric + " - " + t.containsAlphaUppercase(numeric).toString());

  print("==> Contains Numeric");
  print(alpha + " - " + t.containsNumeric(alpha).toString());
  print(alphaLowercase + " - " + t.containsNumeric(alphaLowercase).toString());
  print(alphaUppercase + " - " + t.containsNumeric(alphaUppercase).toString());
  print(alphaNumeric + " - " + t.containsNumeric(alphaNumeric).toString());
  print(numeric + " - " + t.containsNumeric(numeric).toString());

  print("==> Only Alpha");
  print(alpha + " - " + t.onlyAlpha(alpha).toString());
  print(alphaLowercase + " - " + t.onlyAlpha(alphaLowercase).toString());
  print(alphaUppercase + " - " + t.onlyAlpha(alphaUppercase).toString());
  print(alphaNumeric + " - " + t.onlyAlpha(alphaNumeric).toString());
  print(numeric + " - " + t.onlyAlpha(numeric).toString());

  print("==> Only Alpha Lowercase");
  print(alpha + " - " + t.onlyAlphaLowercase(alpha).toString());
  print(alphaLowercase + " - " + t.onlyAlphaLowercase(alphaLowercase).toString());
  print(alphaUppercase + " - " + t.onlyAlphaLowercase(alphaUppercase).toString());
  print(alphaNumeric + " - " + t.onlyAlphaLowercase(alphaNumeric).toString());
  print(numeric + " - " + t.onlyAlphaLowercase(numeric).toString());

  print("==> Only Alpha Uppercase");
  print(alpha + " - " + t.onlyAlphaUppercase(alpha).toString());
  print(alphaLowercase + " - " + t.onlyAlphaUppercase(alphaLowercase).toString());
  print(alphaUppercase + " - " + t.onlyAlphaUppercase(alphaUppercase).toString());
  print(alphaNumeric + " - " + t.onlyAlphaUppercase(alphaNumeric).toString());
  print(numeric + " - " + t.onlyAlphaUppercase(numeric).toString());

  print("==> Only Numeric");
  print(alpha + " - " + t.onlyNumeric(alpha).toString());
  print(alphaLowercase + " - " + t.onlyNumeric(alphaLowercase).toString());
  print(alphaUppercase + " - " + t.onlyNumeric(alphaUppercase).toString());
  print(alphaNumeric + " - " + t.onlyNumeric(alphaNumeric).toString());
  print(numeric + " - " + t.onlyNumeric(numeric).toString());
}