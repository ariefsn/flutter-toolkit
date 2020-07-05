import 'package:toolkit/toolkit.dart';

mapExample (Toolkit t) {
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
  String jsonString = '{"name": "IronMan", "age": 40, "fly": true}';
  map3.parse(jsonString);
  map3.set('weapons', ['Pulse Bolt', 'Energy Blade', 'Tri-beam', 'Uni-beam', 'Smart Missiles']);

  // get map value
  var name = map3.getString("name");
  var age = map3.getInt("age");
  var canFly = map3.getBoolean("fly");
  var weapons = map3.get("weapons");
  var weapons2 = map3.getList("weapons");

  print("===== Map Example =====");
  print(transformMap1Lower);
  print(transformMap1Upper);
  print(transformMap1Capital);

  print(transformMap2Lower);
  print(transformMap2Upper);
  print(transformMap2Capital);

  print(name);
  print(age);
  print(canFly);
  print(weapons);
  print(weapons2);

  // clear map
  map1.clear();
  map2.clear();
  map3.clear();
}