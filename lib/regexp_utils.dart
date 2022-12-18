class _Regex {
  final String containsAlpha = r"[a-zA-Z]",
      containsAlphaLowercase = r"[a-z]",
      containsAlphaUppercase = r"[A-Z]",
      containsNumeric = r"\d+",
      email =
          r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?",
      onlyAlpha = r"^[A-Za-z]+$",
      onlyAlphaLowercase = r"^[a-z]+$",
      onlyAlphaUppercase = r"^[A-Z]+$",
      onlyNumeric = r"^[0-9]+$",
      containsSpecialCharacters = r'[!@#$%^&*()-+,.?:{}|<>_=]';
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

  /// Check string is valid email.
  bool email(String str) {
    RegExp reg = RegExp(_Regex().email);

    return reg.hasMatch(str);
  }

  /// Check string is contains special characters.
  bool containsSpecialCharacters(String str) {
    RegExp reg = RegExp(_Regex().containsSpecialCharacters);

    return reg.hasMatch(str);
  }
}
