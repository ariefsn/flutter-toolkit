import 'package:flutter_test/flutter_test.dart';
import 'package:toolkit/map_utils.dart';
import 'package:toolkit/toolkit.dart';

void main() {
  Map m = {
    "name": "Ayik",
    "age": 17,
    "from": {"planet": "earth"}
  };

  test("test stringify", () {
    expect(m.toStringify(),
        "{\"name\":\"Ayik\",\"age\":17,\"from\":{\"planet\":\"earth\"}}");
  });

  test("test stringify transform", () {
    expect(m.toStringifyTransform(ToolkitCase.upper),
        "{\"NAME\":\"Ayik\",\"AGE\":17,\"FROM\":{\"PLANET\":\"earth\"}}");
    expect(m.toStringifyTransform(ToolkitCase.capital),
        "{\"Name\":\"Ayik\",\"Age\":17,\"From\":{\"Planet\":\"earth\"}}");
    expect(m.toStringifyTransform(ToolkitCase.lower),
        "{\"name\":\"Ayik\",\"age\":17,\"from\":{\"planet\":\"earth\"}}");
    expect(m.toStringifyTransform(ToolkitCase.camel),
        "{\"name\":\"Ayik\",\"age\":17,\"from\":{\"planet\":\"earth\"}}");
    expect(m.toStringifyTransform(ToolkitCase.snake),
        "{\"name\":\"Ayik\",\"age\":17,\"from\":{\"planet\":\"earth\"}}");
  });

  test("to map transform", () {
    expect(m.toMapTransform(ToolkitCase.upper), {
      "NAME": "Ayik",
      "AGE": 17,
      "FROM": {"PLANET": "earth"}
    });
    expect(m.toMapTransform(ToolkitCase.capital), {
      "Name": "Ayik",
      "Age": 17,
      "From": {"Planet": "earth"}
    });
    expect(m.toMapTransform(ToolkitCase.lower), {
      "name": "Ayik",
      "age": 17,
      "from": {"planet": "earth"}
    });
    expect(m.toMapTransform(ToolkitCase.camel), {
      "name": "Ayik",
      "age": 17,
      "from": {"planet": "earth"}
    });
    expect(m.toMapTransform(ToolkitCase.snake), {
      "name": "Ayik",
      "age": 17,
      "from": {"planet": "earth"}
    });
  });

  test("clone", () {
    expect(m.clone(), {
      "name": "Ayik",
      "age": 17,
      "from": {"planet": "earth"}
    });
  });

  test("set value", () {
    final newM = m.clone();
    newM.set("isAlone", true);

    expect(newM, {
      "name": "Ayik",
      "age": 17,
      "from": {"planet": "earth"},
      "isAlone": true
    });
  });

  test("parse", () {
    final map = {};
    map.parse("{\"hello\":\"world\"}");
    expect(map, {"hello": "world"});
  });

  test("get value as string", () {
    expect(m.getString("notFound"), null);
    expect(m.getString("name"), "Ayik");
  });

  test("get value as int", () {
    expect(m.getInt("notFound"), null);
    expect(m.getInt("age"), 17);
  });

  test("get value as double", () {
    final newM = m.clone();
    newM.set("length", 12.5);
    expect(newM.getDouble("notFound"), null);
    expect(newM.getDouble("age"), null);
    expect(newM.getDouble("length"), 12.5);
  });

  test("get value as boolean", () {
    final newM = m.clone();
    newM.set("isBool", true);
    expect(newM.getBoolean("notFound"), null);
    expect(newM.getBoolean("isBool"), true);
  });

  test("get value as map", () {
    expect(m.getMap("notFound"), null);
    expect(m.getMap("from"), {"planet": "earth"});
  });

  test("get value as list", () {
    final newM = m.clone();
    newM.set("items", [1, 2, 3]);
    expect(newM.getList("notFound"), null);
    expect(newM.getList("items"), [1, 2, 3]);
  });

  test("get value as specific type", () {
    expect(m.get("notFound"), null);
    expect(m.get<Map>("from"), {"planet": "earth"});
  });
}
