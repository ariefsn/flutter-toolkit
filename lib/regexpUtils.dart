class _Regex {
  final dynamic containsAlpha,
      containsAlphaLowercase,
      containsAlphaUppercase,
      containsNumeric;
  final dynamic onlyAlpha, onlyAlphaLowercase, onlyAlphaUppercase, onlyNumeric;

  _Regex(
      {this.containsAlpha: r"[a-zA-Z]",
      this.containsAlphaLowercase: r"[a-z]",
      this.containsAlphaUppercase: r"[A-Z]",
      this.containsNumeric: r"\d+",
      this.onlyAlpha: r"^[A-Za-z]+$",
      this.onlyAlphaLowercase: r"^[a-z]+$",
      this.onlyAlphaUppercase: r"^[A-Z]+$",
      this.onlyNumeric: r"^[0-9]+$"});
}

class RegExpUtils {
  /// Check string contains alpha.
  bool containsAlpha(String str) {
    RegExp reg = RegExp(_Regex().containsAlpha);

    return reg.hasMatch(str);
  }

  /// Check string contains alpha lowercase.
  bool containsAlphaLowercase(String str) {
    RegExp reg = RegExp(_Regex().containsAlphaLowercase);

    return reg.hasMatch(str);
  }

  /// Check string contains alpha uppercase.
  bool containsAlphaUppercase(String str) {
    RegExp reg = RegExp(_Regex().containsAlphaUppercase);

    return reg.hasMatch(str);
  }

  /// Check string contains numeric.
  bool containsNumeric(String str) {
    RegExp reg = RegExp(_Regex().containsNumeric);

    return reg.hasMatch(str);
  }

  /// Check string only alpha.
  bool onlyAlpha(String str) {
    RegExp reg = RegExp(_Regex().onlyAlpha);

    return reg.hasMatch(str);
  }

  /// Check string only alpha lowercase.
  bool onlyAlphaLowercase(String str) {
    RegExp reg = RegExp(_Regex().onlyAlphaLowercase);

    return reg.hasMatch(str);
  }

  /// Check string only alpha lowercase.
  bool onlyAlphaUppercase(String str) {
    RegExp reg = RegExp(_Regex().onlyAlphaUppercase);

    return reg.hasMatch(str);
  }

  /// Check string only numeric.
  bool onlyNumeric(String str) {
    RegExp reg = RegExp(_Regex().onlyNumeric);

    return reg.hasMatch(str);
  }
}
