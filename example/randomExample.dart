import 'package:toolkit/toolkit.dart';

randomExample (Toolkit t) {
  var randomInt = t.randomInt(10);
  var randomIntBetween = t.randomIntBetween(5, 8);
  var randomString = t.randomString("RANDOMIZE", 4);
  var randomStringAlpha = t.randomStringAlpha(12);
  var randomStringAlphaLower = t.randomStringAlphaLowercase(12);
  var randomStringAlphaUpper = t.randomStringAlphaUppercase(12);
  var randomStringAlphaNumeric = t.randomStringAlphaNumeric(12);
  var randomStringNumeric = t.randomStringNumeric(12);
  var randomBoolean = t.randomBoolean();
  double randomDouble = t.randomDouble();
  String randomColorHex = t.randomColorHex();

  print("===== Random Example =====");
  print(randomInt);
  print(randomIntBetween);
  print(randomString);
  print(randomStringAlpha);
  print(randomStringAlphaLower);
  print(randomStringAlphaUpper);
  print(randomStringAlphaNumeric);
  print(randomStringNumeric);
  print(randomBoolean);
  print(randomDouble);
  print(randomColorHex);
}