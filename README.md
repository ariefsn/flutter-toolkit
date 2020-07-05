## Toolkit

> Just a simple toolkit for dart.

### Usage

> Add `toolkit` as a dependency in your pubspec.yaml.

#### Kit Common

- `map()` => `MapUtils`
  > Initiate new `Map<String, dynamic>`.

- `clone(Map<String, dynamic> json)` => `Map<String, dynamic>`
  > Clone a map into new map.

- `isExists(dynamic value)` => `bool`
  > Check value wether exists or not, will return true if exists.

- `isNotExists(dynamic value)` => `bool`
  > Check value wether exists or not, will return true if not exists.

#### Kit String

- `capitalize(String str)` => `String`
  > Capitalize string.

- `limitString(String str, int length)` => `String`
  > Limit string into specific length.

- `limitStringAppend(String str, int length, String append)` => `String`
  > Limit string into specific length, and append another string.

#### Kit Sleep

- `sleep(Duration duration)` => `Future`
  > Set sleep by specific duration.

- `sleepMilliseconds(int milliseconds)` => `Future`
  > Set sleep in milliseconds.

- `sleepSeconds(int seconds)` => `Future`
  > Set sleep in seconds.

- `sleepMinutes(int minutes)` => `Future`
  > Set sleep in minutes.

- `sleepHour(int hours)` => `Future`
  > Set sleep in hours.

- `sleepDays(int days)` => `Future`
  > Set sleep in days.

#### Kit Random

- `randomString(String chars, int length)` => `String`
  > Generate random string from specific characters and length.

- `randomStringAlpha(int length)` => `String`
  > Generate random string by alpha only. Lowercase uppercase included.

- `randomStringAlphaLowercase(int length)` => `String`
  > Generate random string by alpha lowercase only.

- `randomStringAlphaUppercase(int length)` => `String`
  > Generate random string by alpha uppercase only.

- `randomStringAlphaNumeric(int length)` => `String`
  > Generate random string by alphanumeric. For alpha lowercase uppercase included.

- `randomStringNumeric(int length)` => `String`
  > Generate random string by numeric.

- `randomInt(int max)` => `int`
  > Generate random int.

- `randomIntBetween(int min, int max)` => `int`
  > Generate random int, between min and max.

- `randomDouble()` => `double`
  > Generate random double.

- `randomBoolean()` => `bool`
  > Generate random boolean.

- `randomColorHex()` => `String`
  > Generate random color hex.

#### Kit Map

- `length` => `int`
  > Count length of map.

- `isEmpty` => `bool`
  > Check map if empty.

- `isNotEmpty` => `bool`
  > Check map if not empty.

- `keys` => `Iterable<String>`
  > Generate keys of map.

- `values` => `Iterable<dynamic>`
  > Generate values of map.

- `toString()` => `String`
  > Generate map to json string.

- `toStringTransform(String mode)` => `String`
  > Generate map to json string and transform keys. Transform to U (Uppercase), L (Lowercase), C (Capital).

- `toJson` => `Map<String, dynamic>`
  > Generate map to json.

- `toJsonTransform(String mode)` => `Map<String, dynamic>`
  > Generate map to json and transform keys. Transform to U (Uppercase), L (Lowercase), C (Capital).

- `clone()` => `Map<String, dynamic>`
  > Clone map as new map.

- `set(String key, dynamic value)` => `void`
  > Set value of map.

- `clear()` => `void`
  > Empty map.

- `delete(String key)` => `void`
  > Delete map value by key.

- `parse(String jsonString)` => `void`
  > Parse json string to map.

- `keyExists(String key)` => `bool`
  > Check if map key exists.

- `valueExists(String key)` => `bool`
  > Check if map value exists.

- `getString(String key)` => `String`
  > Get map value by key as string.

- `getInt(String key)` => `int`
  > Get map value by key as int.

- `getDouble(String key)` => `double`
  > Get map value by key as double.

- `getBoolean(String key)` => `bool`
  > Get map value by key as bool.

- `getMap(String key)` => `Map<String, dynamic>`
  > Get map value by key as map.

- `getList(String key)` => `List<dynamic>`
  > Get map value by key as list.

- `get(String key)` => `dynamic`
  > Get map value by key as dynamic.

### Example

```dart

  Toolkit t = Toolkit();

  // create new map
  var map1 = t.map();
  var map2 = t.map();

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

  // transform json
  var transformMap1Upper = map1.toJsonTransform("U");
  var transformMap1Lower = map1.toJsonTransform("L");
  var transformMap1Capital = map1.toJsonTransform("C");

  // transform json string
  var transformMap2Upper = map2.toStringTransform("U");
  var transformMap2Lower = map2.toStringTransform("L");
  var transformMap2Capital = map2.toStringTransform("C");

  // parse from json string
  var map3 = t.map();
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
  print(alpha + " - " + t.containsAlpha(alpha).toString()); // ABCabc - true
  print(alphaLowercase + " - " + t.containsAlpha(alphaLowercase).toString()); // abcdef - true
  print(alphaUppercase + " - " + t.containsAlpha(alphaUppercase).toString()); // ABCDEF - true
  print(alphaNumeric + " - " + t.containsAlpha(alphaNumeric).toString()); // ABCDEF123 - true
  print(numeric + " - " + t.containsAlpha(numeric).toString()); // 123456 - false

  print("==> Contains Alpha Lowercase");
  print(alpha + " - " + t.containsAlphaLowercase(alpha).toString()); // ABCabc - true
  print(alphaLowercase + " - " + t.containsAlphaLowercase(alphaLowercase).toString()); // abcdef - true
  print(alphaUppercase + " - " + t.containsAlphaLowercase(alphaUppercase).toString()); // ABCDEF - false
  print(alphaNumeric + " - " + t.containsAlphaLowercase(alphaNumeric).toString()); // ABCDEF123 - false
  print(numeric + " - " + t.containsAlphaLowercase(numeric).toString()); 123456 - false

  print("==> Contains Alpha Uppercase");
  print(alpha + " - " + t.containsAlphaUppercase(alpha).toString()); // ABCabc - true
  print(alphaLowercase + " - " + t.containsAlphaUppercase(alphaLowercase).toString()); // abcdef - false
  print(alphaUppercase + " - " + t.containsAlphaUppercase(alphaUppercase).toString()); // ABCDEF - true
  print(alphaNumeric + " - " + t.containsAlphaUppercase(alphaNumeric).toString()); // ABCDEF123 - true
  print(numeric + " - " + t.containsAlphaUppercase(numeric).toString()); // 123456 - false

  print("==> Contains Numeric");
  print(alpha + " - " + t.containsNumeric(alpha).toString()); // ABCabc - false
  print(alphaLowercase + " - " + t.containsNumeric(alphaLowercase).toString()); // abcdef - false
  print(alphaUppercase + " - " + t.containsNumeric(alphaUppercase).toString()); // ABCDEF - false
  print(alphaNumeric + " - " + t.containsNumeric(alphaNumeric).toString()); // ABCDEF123 - true
  print(numeric + " - " + t.containsNumeric(numeric).toString()); // 123456 - true

  print("==> Only Alpha");
  print(alpha + " - " + t.onlyAlpha(alpha).toString()); // ABCabc - true
  print(alphaLowercase + " - " + t.onlyAlpha(alphaLowercase).toString()); // abcdef - true
  print(alphaUppercase + " - " + t.onlyAlpha(alphaUppercase).toString()); // ABCDEF - true
  print(alphaNumeric + " - " + t.onlyAlpha(alphaNumeric).toString()); // ABCDEF123 - false
  print(numeric + " - " + t.onlyAlpha(numeric).toString()); // 123456 - false

  print("==> Only Alpha Lowercase");
  print(alpha + " - " + t.onlyAlphaLowercase(alpha).toString()); // ABCabc - false
  print(alphaLowercase + " - " + t.onlyAlphaLowercase(alphaLowercase).toString()); // abcdef - true
  print(alphaUppercase + " - " + t.onlyAlphaLowercase(alphaUppercase).toString()); // ABCDEF - false
  print(alphaNumeric + " - " + t.onlyAlphaLowercase(alphaNumeric).toString()); // ABCDEF123 - false
  print(numeric + " - " + t.onlyAlphaLowercase(numeric).toString()); // 123456 - false

  print("==> Only Alpha Uppercase");
  print(alpha + " - " + t.onlyAlphaUppercase(alpha).toString()); // ABCabc - false
  print(alphaLowercase + " - " + t.onlyAlphaUppercase(alphaLowercase).toString()); // abcdef - false
  print(alphaUppercase + " - " + t.onlyAlphaUppercase(alphaUppercase).toString()); // ABCDEF - true
  print(alphaNumeric + " - " + t.onlyAlphaUppercase(alphaNumeric).toString()); // ABCDEF123 - false
  print(numeric + " - " + t.onlyAlphaUppercase(numeric).toString()); // 123456 - false

  print("==> Only Numeric");
  print(alpha + " - " + t.onlyNumeric(alpha).toString()); // ABCabc - false
  print(alphaLowercase + " - " + t.onlyNumeric(alphaLowercase).toString()); // abcdef - false
  print(alphaUppercase + " - " + t.onlyNumeric(alphaUppercase).toString()); // ABCDEF - false
  print(alphaNumeric + " - " + t.onlyNumeric(alphaNumeric).toString()); // ABCDEF123 - false
  print(numeric + " - " + t.onlyNumeric(numeric).toString()); // 123456 - true

  print("===== Sleep Example =====");
  // sleep by 5 seconds
  print(DateTime.now()); // 2020-07-05 21:02:21.112141
  await t.sleepSeconds(5);
  print(DateTime.now()); // 2020-07-05 21:02:26.120927
```
