import 'package:toolkit/toolkit.dart';

randomExample() {
  var randomInt = Toolkit.random.numeric(10);
  var randomIntBetween = Toolkit.random.numericBetween(5, 8);
  var randomString = Toolkit.random.string("RANDOMIZE", 4);
  var randomStringAlpha = Toolkit.random.stringAlpha(12);
  var randomStringAlphaLower = Toolkit.random.stringAlphaLowercase(12);
  var randomStringAlphaUpper = Toolkit.random.stringAlphaUppercase(12);
  var randomStringAlphaNumeric = Toolkit.random.stringAlphaNumeric(12);
  var randomStringNumeric = Toolkit.random.stringAlphaNumeric(12);
  var randomBoolean = Toolkit.random.boolean();
  String randomColorHex = Toolkit.random.colorHex();

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
  print(randomColorHex);
}
