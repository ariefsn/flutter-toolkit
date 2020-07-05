import 'package:flutter_test/flutter_test.dart';

import 'package:toolkit/toolkit.dart';

void main() {
  final Toolkit t = Toolkit();

  test('test common', () {
    String str = "hello world";

    expect(t.capitalize(str), "Hello World");
  });

  test('test map utils', () {
    var map = t.map();

    expect(map.isEmpty, true);

    map.set("newKey", "newValue");

    expect(map.keys.toList(), ["newKey"]);
    expect(map.getString("newKey"), "newValue");

    map.set("newKey2", "newValue2");
    map.delete("newKey");
    expect(map.getString("newKey"), null);
  });

  test('test random utils', () {
    var randomStringAlphaNumeric = t.randomStringAlphaNumeric(12);
    
    expect(randomStringAlphaNumeric.length, 12);
  });

  test('test sleep utils', () async {
    var start = DateTime.now();
    await t.sleepSeconds(5);
    var end = DateTime.now();
    
    expect(end.difference(start).inSeconds, 5);
  });

}
