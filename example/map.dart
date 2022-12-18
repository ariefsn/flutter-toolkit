import 'package:toolkit/map_utils.dart';
import 'package:toolkit/toolkit.dart';

mapExample() {
  // create new map
  var map1 = {};
  var map2 = {};

  // set value of map1
  map1.set('keyA', 1);
  map1.set('keyB', 2);
  map1.set('keyC', 3);

  // set value of map2
  map2.set('keyD', 'hello world');
  map2.set('keyF', {'key': 'value'});

  // transform Map
  var transformMap1Upper = map1.toMapTransform(ToolkitCase.upper);
  var transformMap1Lower = map1.toMapTransform(ToolkitCase.lower);
  var transformMap1Capital = map1.toMapTransform(ToolkitCase.capital);

  // transform Map string
  var transformMap2Upper = map2.toStringifyTransform(ToolkitCase.upper);
  var transformMap2Lower = map2.toStringifyTransform(ToolkitCase.lower);
  var transformMap2Capital = map2.toStringifyTransform(ToolkitCase.capital);

  // parse from Map string
  var map3 = {};
  String mapString = '{"name": "IronMan", "age": 40, "fly": true}';
  map3.parse(mapString);
  map3.set('weapons',
      ['Pulse Bolt', 'Energy Blade', 'Tri-beam', 'Uni-beam', 'Smart Missiles']);

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
}
