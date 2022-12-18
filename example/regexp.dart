import 'package:toolkit/toolkit.dart';

regexpExample() {
  String alpha = "ABCabc";
  String alphaLowercase = "abcdef";
  String alphaUppercase = "ABCDEF";
  String alphaNumeric = "ABCDEF123";
  String numeric = "123456";

  print("===== RegExp Example =====");
  print("==> Contains Alpha");
  print(alpha + " - " + Toolkit.regex.containsAlpha(alpha).toString());
  print(alphaLowercase +
      " - " +
      Toolkit.regex.containsAlpha(alphaLowercase).toString());
  print(alphaUppercase +
      " - " +
      Toolkit.regex.containsAlpha(alphaUppercase).toString());
  print(alphaNumeric +
      " - " +
      Toolkit.regex.containsAlpha(alphaNumeric).toString());
  print(numeric + " - " + Toolkit.regex.containsAlpha(numeric).toString());

  print("==> Contains Alpha Lowercase");
  print(alpha + " - " + Toolkit.regex.containsAlphaLowercase(alpha).toString());
  print(alphaLowercase +
      " - " +
      Toolkit.regex.containsAlphaLowercase(alphaLowercase).toString());
  print(alphaUppercase +
      " - " +
      Toolkit.regex.containsAlphaLowercase(alphaUppercase).toString());
  print(alphaNumeric +
      " - " +
      Toolkit.regex.containsAlphaLowercase(alphaNumeric).toString());
  print(numeric +
      " - " +
      Toolkit.regex.containsAlphaLowercase(numeric).toString());

  print("==> Contains Alpha Uppercase");
  print(alpha + " - " + Toolkit.regex.containsAlphaUppercase(alpha).toString());
  print(alphaLowercase +
      " - " +
      Toolkit.regex.containsAlphaUppercase(alphaLowercase).toString());
  print(alphaUppercase +
      " - " +
      Toolkit.regex.containsAlphaUppercase(alphaUppercase).toString());
  print(alphaNumeric +
      " - " +
      Toolkit.regex.containsAlphaUppercase(alphaNumeric).toString());
  print(numeric +
      " - " +
      Toolkit.regex.containsAlphaUppercase(numeric).toString());

  print("==> Contains Numeric");
  print(alpha + " - " + Toolkit.regex.containsNumeric(alpha).toString());
  print(alphaLowercase +
      " - " +
      Toolkit.regex.containsNumeric(alphaLowercase).toString());
  print(alphaUppercase +
      " - " +
      Toolkit.regex.containsNumeric(alphaUppercase).toString());
  print(alphaNumeric +
      " - " +
      Toolkit.regex.containsNumeric(alphaNumeric).toString());
  print(numeric + " - " + Toolkit.regex.containsNumeric(numeric).toString());

  print("==> Only Alpha");
  print(alpha + " - " + Toolkit.regex.onlyAlpha(alpha).toString());
  print(alphaLowercase +
      " - " +
      Toolkit.regex.onlyAlpha(alphaLowercase).toString());
  print(alphaUppercase +
      " - " +
      Toolkit.regex.onlyAlpha(alphaUppercase).toString());
  print(
      alphaNumeric + " - " + Toolkit.regex.onlyAlpha(alphaNumeric).toString());
  print(numeric + " - " + Toolkit.regex.onlyAlpha(numeric).toString());

  print("==> Only Alpha Lowercase");
  print(alpha + " - " + Toolkit.regex.onlyAlphaLowercase(alpha).toString());
  print(alphaLowercase +
      " - " +
      Toolkit.regex.onlyAlphaLowercase(alphaLowercase).toString());
  print(alphaUppercase +
      " - " +
      Toolkit.regex.onlyAlphaLowercase(alphaUppercase).toString());
  print(alphaNumeric +
      " - " +
      Toolkit.regex.onlyAlphaLowercase(alphaNumeric).toString());
  print(numeric + " - " + Toolkit.regex.onlyAlphaLowercase(numeric).toString());

  print("==> Only Alpha Uppercase");
  print(alpha + " - " + Toolkit.regex.onlyAlphaUppercase(alpha).toString());
  print(alphaLowercase +
      " - " +
      Toolkit.regex.onlyAlphaUppercase(alphaLowercase).toString());
  print(alphaUppercase +
      " - " +
      Toolkit.regex.onlyAlphaUppercase(alphaUppercase).toString());
  print(alphaNumeric +
      " - " +
      Toolkit.regex.onlyAlphaUppercase(alphaNumeric).toString());
  print(numeric + " - " + Toolkit.regex.onlyAlphaUppercase(numeric).toString());

  print("==> Only Numeric");
  print(alpha + " - " + Toolkit.regex.onlyNumeric(alpha).toString());
  print(alphaLowercase +
      " - " +
      Toolkit.regex.onlyNumeric(alphaLowercase).toString());
  print(alphaUppercase +
      " - " +
      Toolkit.regex.onlyNumeric(alphaUppercase).toString());
  print(alphaNumeric +
      " - " +
      Toolkit.regex.onlyNumeric(alphaNumeric).toString());
  print(numeric + " - " + Toolkit.regex.onlyNumeric(numeric).toString());
}
