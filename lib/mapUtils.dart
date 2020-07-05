import 'dart:convert';
import 'package:toolkit/stringUtils.dart';

class MapUtils {
  MapUtils() {
    _m = {};
  }

  Map<String, dynamic> _m;

  /// Count length of map.
  int get length => _m.length;

  /// Check map if empty
  bool get isEmpty => _m.isEmpty;

  /// Check map if not empty
  bool get isNotEmpty => _m.isNotEmpty;

  /// Generate keys of map
  Iterable<String> get keys => _m.keys;

  /// Generate values of map
  Iterable<dynamic> get values => _m.values;

  /// Generate map to json string
  String toString() => jsonEncode(_m);

  /// Generate map to json
  Map<String, dynamic> toJson() => _m;

  Map<String, dynamic> _transform(Map<String, dynamic> json, String mode) {
    Map<String, dynamic> clone = Map<String, dynamic>.from(json);

    if (mode == "") {
      return clone;
    }

    json.forEach((key, value) {
      if (["u", "upper", "uppercase"].indexOf(mode.toLowerCase()) > -1) {
        clone.remove(key);
        clone[key.toUpperCase()] =
            value is Map ? _transform(value, mode) : value;
      } else if (["l", "lower", "lowercase"].indexOf(mode.toLowerCase()) > -1) {
        clone.remove(key);
        clone[key.toLowerCase()] =
            value is Map ? _transform(value, mode) : value;
      } else if (["c", "capital"].indexOf(mode.toLowerCase()) > -1) {
        clone.remove(key);
        clone[StringUtils().capitalize(key)] =
            value is Map ? _transform(value, mode) : value;
      }
    });

    return clone;
  }

  /// Generate map to json string and transform keys.
  ///
  /// Transform to U (Uppercase), L (Lowercase), C (Capital)
  String toStringTransform(String mode) {
    Map<String, dynamic> newData = _transform(_m, mode);

    return jsonEncode(newData);
  }

  /// Generate map to json and transform keys.
  ///
  /// Transform to U (Uppercase), L (Lowercase), C (Capital)
  Map<String, dynamic> toJsonTransform(String mode) {
    return _transform(_m, mode);
  }

  /// Clone map as new map.
  Map<String, dynamic> clone() {
    return Map<String, dynamic>.from(_m);
  }

  /// Set value of map.
  void set(String key, dynamic value) {
    _m[key] = value;
  }

  /// Set map to empty.
  void clear() {
    _m.clear();
  }

  /// Delete map value by key.
  void delete(String key) {
    _m.remove(key);
  }

  /// Parse json string to map.
  void parse(String jsonString) {
    _m = jsonDecode(jsonString);
  }

  /// Check if map key exists
  bool keyExists(String key) {
    return _m.containsKey(key);
  }

  /// Check if map value exists
  bool valueExists(dynamic value) {
    return _m.containsValue(value);
  }

  /// Get map value by key as string.
  String getString(String key) {
    if (!_m.containsKey(key)) {
      return null;
    }

    if (_m[key] is! String) {
      return null;
    }

    return _m[key];
  }

  /// Get map value by key as int.
  int getInt(String key) {
    if (!_m.containsKey(key)) {
      return null;
    }

    if (_m[key] is! int) {
      return null;
    }

    return _m[key];
  }

  /// Get map value by key as double.
  double getDouble(String key) {
    if (!_m.containsKey(key)) {
      return null;
    }

    if (_m[key] is! double) {
      return null;
    }

    return _m[key];
  }

  /// Get map value by key as boolean.
  bool getBoolean(String key) {
    if (!_m.containsKey(key)) {
      return null;
    }

    if (_m[key] is! bool) {
      return null;
    }

    return _m[key];
  }

  /// Get map value by key as map.
  Map<String, dynamic> getMap(String key) {
    if (!_m.containsKey(key)) {
      return null;
    }

    if (_m[key] is! Map) {
      return null;
    }

    return _m[key];
  }

  /// Get map value by key as list.
  List<dynamic> getList(String key) {
    if (!_m.containsKey(key)) {
      return null;
    }

    if (_m[key] is! List) {
      return null;
    }

    return _m[key];
  }

  /// Get map value by key as dynamic.
  dynamic get(String key) {
    if (!_m.containsKey(key)) {
      return null;
    }

    return _m[key];
  }
}
