class StringUtils {
  /// Capitalize string.
  String capitalize(String str) {
    if (str.isEmpty) {
      return "";
    }

    List<String> newStr = [];

    str.split(" ").forEach((s) {
      newStr.add((s != null && s.length > 1)
          ? s[0].toUpperCase() + s.substring(1)
          : s != null ? s.toUpperCase() : null);
    });

    return newStr.join(" ");
  }

  /// Limit string into specific length.
  String limitString(String str, int length) {
    if (str.isEmpty) {
      return "";
    }

    if (str.length <= length) {
      return str;
    }

    return str.substring(0, length-1);
  }

  /// Limit string into specific length, and append another string.
  String limitStringAppend(String str, int length, String append) {
    if (str.isEmpty) {
      return "";
    }

    return str.replaceRange(length, str.length, append);
  }
}