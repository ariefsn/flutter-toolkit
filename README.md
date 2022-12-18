## Toolkit

> Just a simple toolkit for flutter. Some APIs are ready to help manipulate map, string, random, sleep, and media query.

### Usage

1. Add `toolkit` as a dependency in your pubspec.yaml.

    ```yaml
    dependencies:
      toolkit: ^0.3.1
    ```

2. Install it

    ```shell
      flutter pub get
    ```

3. And import it

    ```dart
      import 'package:toolkit/toolkit.dart';
    ```

#### Kit Map

- `clone(Map<String, dynamic> json)` => `Map<String, dynamic>`
  > Clone a map into new map.

- `toStringify()` => `String`
  > Encode to map string.

- `toStringifyTransform(ToolkitCase mode)` => `String`
  > Encode to map string, and transform the keys.

- `toMapTransform(ToolkitCase mode)` => `Map<dynamic, dynamic>`
  > New map, and transform the keys.

- `parse(String mapString)` => `void`
  > Parse json string to map.

- `set(dynamic key, dynamic value)` => `void`
  > Set map value.

- `getString(String key)` => `String?`
  > Get map value as string.

- `getInt(String key)` => `int?`
  > Get map value as int.

- `getDouble(String key)` => `double?`
  > Get map value as double.

- `getBoolean(String key)` => `bool?`
  > Get map value as boolean.

- `getMap(String key)` => `Map<dynamic, dynamic>?`
  > Get map value as map.

- `getList(String key)` => `List<dynamic>?`
  > Get map value as list.

- `get<T>(String key)` => `T?`
  > Get map value as specific type.

#### Kit String

- `toSentenceFromCamelCase()` => `String`
  > To sentence case from camel case.

- `toSentenceFromSnakeCase()` => `String`
  > To sentence case from camel case.

- `toCapitalCase()` => `String`
  > Format to capital case.

- `toSnakeCase()` => `String`
  > Format to snake case.

- `toCamelCase()` => `String`
  > Format to camel case.

- `toHyphenCase()` => `String`
  > Format to hyphen case.

- `limitString(String str, int length)` => `String`
  > Limit string into specific length.

- `limitStringAppend(String str, int length, String append)` => `String`
  > Limit string into specific length, and append another string.

- `isEmail` => `bool`
  > Check if string is valid email format.

- `isContainsAlpha` => `bool`
  > Check if string is contains alpha.

- `isContainsAlphaLowercase` => `bool`
  > Check if string is contains alpha lowercase.

- `isContainsAlphaUppercase` => `bool`
  > Check if string is contains alpha uppercase.

- `isContainsNumeric` => `bool`
  > Check if string is contains numeric.

- `isContainsSpecialCharacters` => `bool`
  > Check if string is contains special characters.

- `isOnlyAlpha` => `bool`
  > Check if string is only alpha.

- `isOnlyAlphaLowercase` => `bool`
  > Check if string is only alpha lowercase.

- `isOnlyAlphaUppercase` => `bool`
  > Check if string is only alpha uppercase.

- `isOnlyNumeric` => `bool`
  > Check if string is only numeric.

#### Kit Sleep

- `sleep(Duration duration)` => `Future`
  > Set sleep by specific duration.

- `sleepMilliseconds(int milliseconds)` => `Future`
  > Set sleep in milliseconds.

- `sleepSeconds(int seconds)` => `Future`
  > Set sleep in seconds.

- `sleepMinutes(int minutes)` => `Future`
  > Set sleep in minutes.

- `sleepHours(int hours)` => `Future`
  > Set sleep in hours.

- `sleepDays(int days)` => `Future`
  > Set sleep in days.

#### Kit Random

- `string(String chars, int length)` => `String`
  > Generate random string from specific characters and length.

- `stringAlpha(int length)` => `String`
  > Generate random string of alpha only. Lowercase uppercase included.

- `stringAlphaLowercase(int length)` => `String`
  > Generate random string of alpha lowercase only.

- `stringAlphaUppercase(int length)` => `String`
  > Generate random string of alpha uppercase only.

- `stringAlphaNumeric(int length)` => `String`
  > Generate random string of alphanumeric. For alpha lowercase uppercase included.

- `stringNumeric(int length)` => `String`
  > Generate random string of numeric.

- `specialCharacters(int length)` => `String`
  > Generate random string of special characters.

- `numeric(int max)` => `int`
  > Generate random int.

- `numericBetween(int min, int max)` => `int`
  > Generate random int, between min and max.

- `randomBoolean()` => `bool`
  > Generate random boolean.

- `randomColorHex()` => `String`
  > Generate random color hex.

#### Kit RegExp

- `containsAlpha(String str)` => `bool`
  > Check string contains alpha.

- `containsAlphaLowercase(String str)` => `bool`
  > Check string contains alpha lowercase.

- `containsAlphaUppercase(String str)` => `bool`
  > Check string contains alpha uppercase.

- `containsNumeric(String str)` => `bool`
  > Check string contains numeric.

- `onlyAlpha(String str)` => `bool`
  > Check string only alpha.

- `onlyAlphaLowercase(String str)` => `bool`
  > Check string only alpha lowercase.

- `onlyAlphaUppercase(String str)` => `bool`
  > Check string only alpha uppercase.

- `onlyNumeric(String str)` => `bool`
  > Check string only numeric.

- `email(String str)` => `bool`
  > Check string is valid email format.

- `containsSpecialCharacters(String str)` => `bool`
  > Check string contains special characters.

#### Kit MediaQuery

- `getSize(BuildContext context)` => `Size`
  > Get screen size.

- `getWidth(BuildContext context, { double size = 1 })` => `double`
  > Get screen width, can be resize with size between 0 and 1.

- `getHeight(BuildContext context, { double size = 1 })` => `double`
  > Get screen height, can be resize with size between 0 and 1.

### Example

```dart

  // create new map
  var map1 = {};
  var map2 = {};

  // set value of map1
  map1.set('keyA', 1);
  map1.set('keyB', 2);
  map1.set('keyC', 3);

  // set value of map2
  map2.set('keyD', 'hello world');
  map2.set('keyF', {
    'key': 'value'
  });

  // delete keyA from map1
  map1.delete('keyA');

  // transform map
  var transformMap1Upper = map1.toMapTransform(ToolkitCase.upper);
  var transformMap1Lower = map1.toMapTransform(ToolkitCase.lower);
  var transformMap1Capital = map1.toMapTransform(ToolkitCase.capital);

  // transform map string
  var transformMap2Upper = map2.toStringifyTransform(ToolkitCase.upper);
  var transformMap2Lower = map2.toStringifyTransform(ToolkitCase.lower);
  var transformMap2Capital = map2.toStringifyTransform(ToolkitCase.capital);

  // parse from json string
  var map3 = {};
  String jsonString = '{"name": "SpiderMan", "age": 40, "fly": true}';
  map3.parse(jsonString);
  map3.set('weapons', ['Pulse Bolt', 'Energy Blade', 'Tri-beam', 'Uni-beam', 'Smart Missiles']);

  // get map value
  var name = map3.getString("name");
  var age = map3.getInt("age");
  var canFly = map3.getBoolean("fly");
  var weapons = map3.get("weapons");
  var weapons2 = map3.getList("weapons");

  print("===== Map Example =====");
  print(transformMap1Lower); // {keyb: 2, keyc: 3}
  print(transformMap1Upper); // {KEYB: 2, KEYC: 3}
  print(transformMap1Capital); // {KeyB: 2, KeyC: 3}

  print(transformMap2Lower); // {"keyd":"hello world","keyf":{"key":"value"}}
  print(transformMap2Upper); // {"KEYD":"hello world","KEYF":{"KEY":"value"}}
  print(transformMap2Capital); // {"KeyD":"hello world","KeyF":{"Key":"value"}}

  print(name); // IronMan
  print(age); // 40
  print(canFly); // true
  print(weapons); // [Pulse Bolt, Energy Blade, Tri-beam, Uni-beam, Smart Missiles]
  print(weapons2); // [Pulse Bolt, Energy Blade, Tri-beam, Uni-beam, Smart Missiles]

  // clear map
  map1.clear();
  map2.clear();
  map3.clear();

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
  print(randomInt); // 3
  print(randomIntBetween); // 6
  print(randomString); // DEEZ
  print(randomStringAlpha); // VYRJvFwnBkyI
  print(randomStringAlphaLower); // ulyzaqakjsic
  print(randomStringAlphaUpper); // GVLEREOOBHIU
  print(randomStringAlphaNumeric); // cTof58MhnlUd
  print(randomStringNumeric); // 261679006839
  print(randomBoolean); // false
  print(randomDouble); // 0.9711403523337846
  print(randomColorHex); // #0B8EBB

  String alpha = "ABCabc";
  String alphaLowercase = "abcdef";
  String alphaUppercase = "ABCDEF";
  String alphaNumeric = "ABCDEF123";
  String numeric = "123456";

  print("===== RegExp Example =====");
  print("==> Contains Alpha");
  print(alpha + " - " + Toolkit.regex.containsAlpha(alpha).toString()); // ABCabc - true
  print(alphaLowercase + " - " + Toolkit.regex.containsAlpha(alphaLowercase).toString()); // abcdef - true
  print(alphaUppercase + " - " + Toolkit.regex.containsAlpha(alphaUppercase).toString()); // ABCDEF - true
  print(alphaNumeric + " - " + Toolkit.regex.containsAlpha(alphaNumeric).toString()); // ABCDEF123 - true
  print(numeric + " - " + Toolkit.regex.containsAlpha(numeric).toString()); // 123456 - false

  print("==> Contains Alpha Lowercase");
  print(alpha + " - " + Toolkit.regex.containsAlphaLowercase(alpha).toString()); // ABCabc - true
  print(alphaLowercase + " - " + Toolkit.regex.containsAlphaLowercase(alphaLowercase).toString()); // abcdef - true
  print(alphaUppercase + " - " + Toolkit.regex.containsAlphaLowercase(alphaUppercase).toString()); // ABCDEF - false
  print(alphaNumeric + " - " + Toolkit.regex.containsAlphaLowercase(alphaNumeric).toString()); // ABCDEF123 - false
  print(numeric + " - " + Toolkit.regex.containsAlphaLowercase(numeric).toString()); 123456 - false

  print("==> Contains Alpha Uppercase");
  print(alpha + " - " + Toolkit.regex.containsAlphaUppercase(alpha).toString()); // ABCabc - true
  print(alphaLowercase + " - " + Toolkit.regex.containsAlphaUppercase(alphaLowercase).toString()); // abcdef - false
  print(alphaUppercase + " - " + Toolkit.regex.containsAlphaUppercase(alphaUppercase).toString()); // ABCDEF - true
  print(alphaNumeric + " - " + Toolkit.regex.containsAlphaUppercase(alphaNumeric).toString()); // ABCDEF123 - true
  print(numeric + " - " + Toolkit.regex.containsAlphaUppercase(numeric).toString()); // 123456 - false

  print("==> Contains Numeric");
  print(alpha + " - " + Toolkit.regex.containsNumeric(alpha).toString()); // ABCabc - false
  print(alphaLowercase + " - " + Toolkit.regex.containsNumeric(alphaLowercase).toString()); // abcdef - false
  print(alphaUppercase + " - " + Toolkit.regex.containsNumeric(alphaUppercase).toString()); // ABCDEF - false
  print(alphaNumeric + " - " + Toolkit.regex.containsNumeric(alphaNumeric).toString()); // ABCDEF123 - true
  print(numeric + " - " + Toolkit.regex.containsNumeric(numeric).toString()); // 123456 - true

  print("==> Only Alpha");
  print(alpha + " - " + Toolkit.regex.onlyAlpha(alpha).toString()); // ABCabc - true
  print(alphaLowercase + " - " + Toolkit.regex.onlyAlpha(alphaLowercase).toString()); // abcdef - true
  print(alphaUppercase + " - " + Toolkit.regex.onlyAlpha(alphaUppercase).toString()); // ABCDEF - true
  print(alphaNumeric + " - " + Toolkit.regex.onlyAlpha(alphaNumeric).toString()); // ABCDEF123 - false
  print(numeric + " - " + Toolkit.regex.onlyAlpha(numeric).toString()); // 123456 - false

  print("==> Only Alpha Lowercase");
  print(alpha + " - " + Toolkit.regex.onlyAlphaLowercase(alpha).toString()); // ABCabc - false
  print(alphaLowercase + " - " + Toolkit.regex.onlyAlphaLowercase(alphaLowercase).toString()); // abcdef - true
  print(alphaUppercase + " - " + Toolkit.regex.onlyAlphaLowercase(alphaUppercase).toString()); // ABCDEF - false
  print(alphaNumeric + " - " + Toolkit.regex.onlyAlphaLowercase(alphaNumeric).toString()); // ABCDEF123 - false
  print(numeric + " - " + Toolkit.regex.onlyAlphaLowercase(numeric).toString()); // 123456 - false

  print("==> Only Alpha Uppercase");
  print(alpha + " - " + Toolkit.regex.onlyAlphaUppercase(alpha).toString()); // ABCabc - false
  print(alphaLowercase + " - " + Toolkit.regex.onlyAlphaUppercase(alphaLowercase).toString()); // abcdef - false
  print(alphaUppercase + " - " + Toolkit.regex.onlyAlphaUppercase(alphaUppercase).toString()); // ABCDEF - true
  print(alphaNumeric + " - " + Toolkit.regex.onlyAlphaUppercase(alphaNumeric).toString()); // ABCDEF123 - false
  print(numeric + " - " + Toolkit.regex.onlyAlphaUppercase(numeric).toString()); // 123456 - false

  print("==> Only Numeric");
  print(alpha + " - " + Toolkit.regex.onlyNumeric(alpha).toString()); // ABCabc - false
  print(alphaLowercase + " - " + Toolkit.regex.onlyNumeric(alphaLowercase).toString()); // abcdef - false
  print(alphaUppercase + " - " + Toolkit.regex.onlyNumeric(alphaUppercase).toString()); // ABCDEF - false
  print(alphaNumeric + " - " + Toolkit.regex.onlyNumeric(alphaNumeric).toString()); // ABCDEF123 - false
  print(numeric + " - " + Toolkit.regex.onlyNumeric(numeric).toString()); // 123456 - true

  print("===== Sleep Example =====");
  // sleep by 5 seconds
  print(DateTime.now()); // 2020-07-05 21:02:21.112141
  await t.sleepSeconds(5);
  print(DateTime.now()); // 2020-07-05 21:02:26.120927
```
