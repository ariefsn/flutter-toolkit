import 'dart:convert';
import 'package:toolkit/string_utils.dart';
import 'package:toolkit/toolkit.dart';

extension MapUtil on Map {
  /// Generate map to json string
  String toStringify() => jsonEncode(this);

  Map<dynamic, dynamic> _transform(
      Map<dynamic, dynamic> json, ToolkitCase? mode) {
    Map<String, dynamic> clone = Map<String, dynamic>.from(json);

    if (mode == null) {
      return clone;
    }

    json.forEach((key, value) {
      var _key = key;
      switch (mode) {
        case ToolkitCase.camel:
          _key = key.toString().toCamelCase();
          break;
        case ToolkitCase.capital:
          _key = key.toString().toCapitalCase();
          break;
        case ToolkitCase.lower:
          _key = key.toString().toLowerCase();
          break;
        case ToolkitCase.upper:
          _key = key.toString().toUpperCase();
          break;
        case ToolkitCase.snake:
          _key = key.toString().toSnakeCase();
          break;
        default:
      }

      clone.remove(key);
      clone[_key] = value is Map
          ? _transform(value as Map<String, dynamic>, mode)
          : value;
    });

    return clone;
  }

  /// Generate map to json string and transform keys.
  String toStringifyTransform(ToolkitCase mode) {
    Map<dynamic, dynamic> newData = _transform(this, mode);

    return jsonEncode(newData);
  }

  /// Generate map and transform keys.
  Map<dynamic, dynamic> toMapTransform(ToolkitCase mode) {
    return _transform(this, mode);
  }

  /// Clone map as new map.
  Map<dynamic, dynamic> clone() {
    return Map<dynamic, dynamic>.from(this);
  }

  /// Set value of map.
  void set(dynamic key, dynamic value) {
    this[key] = value;
  }

  /// Parse json string to map.
  void parse(String mapString) {
    this.addAll(jsonDecode(mapString));
  }

  /// Get map value by key as string.
  String? getString(String key) {
    if (!this.containsKey(key)) {
      return null;
    }

    if (this[key] is! String) {
      return null;
    }

    return this[key];
  }

  /// Get map value by key as int.
  int? getInt(String key) {
    if (!this.containsKey(key)) {
      return null;
    }

    if (this[key] is! int) {
      return null;
    }

    return this[key];
  }

  /// Get map value by key as double.
  double? getDouble(String key) {
    if (!this.containsKey(key)) {
      return null;
    }

    if (this[key] is! double) {
      return null;
    }

    return this[key];
  }

  /// Get map value by key as boolean.
  bool? getBoolean(String key) {
    if (!this.containsKey(key)) {
      return null;
    }

    if (this[key] is! bool) {
      return null;
    }

    return this[key];
  }

  /// Get map value by key as map.
  Map<dynamic, dynamic>? getMap(String key) {
    if (!this.containsKey(key)) {
      return null;
    }

    if (this[key] is! Map) {
      return null;
    }

    return this[key];
  }

  /// Get map value by key as list.
  List<dynamic>? getList(String key) {
    if (!this.containsKey(key)) {
      return null;
    }

    if (this[key] is! List) {
      return null;
    }

    return this[key];
  }

  /// Get map value by key as specific type.
  T? get<T>(String key) {
    if (!this.containsKey(key)) {
      return null;
    }

    return this[key];
  }
}
