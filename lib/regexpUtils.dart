class _Regex {
  final dynamic containsAlpha, containsAlphaLowercase, containsAlphaUppercase, containsNumeric;
  final dynamic onlyAlpha, onlyAlphaLowercase, onlyAlphaUppercase, onlyNumeric;

  _Regex({
    this.containsAlpha: r"[a-zA-Z]",
    this.containsAlphaLowercase: r"[a-z]",
    this.containsAlphaUppercase: r"[A-Z]",
    this.containsNumeric: r"\d+",
    this.onlyAlpha: r"^[A-Za-z]+$",
    this.onlyAlphaLowercase: r"^[a-z]+$",
    this.onlyAlphaUppercase: r"^[A-Z]+$",
    this.onlyNumeric: r"^[0-9]+$"
  });
}

class RegExpUtils {

  containsAlpha (String str) {
    RegExp reg = RegExp(_Regex().containsAlpha);
    
    return reg.hasMatch(str);
  }

  containsAlphaLowercase (String str) {
    RegExp reg = RegExp(_Regex().containsAlphaLowercase);

    return reg.hasMatch(str);
  }

  containsAlphaUppercase (String str) {
    RegExp reg = RegExp(_Regex().containsAlphaUppercase);

    return reg.hasMatch(str);
  }

  containsNumeric (String str) {
    RegExp reg = RegExp(_Regex().containsNumeric);

    return reg.hasMatch(str);
  }

  onlyAlpha (String str) {
    RegExp reg = RegExp(_Regex().onlyAlpha);

    return reg.hasMatch(str);
  }

  onlyAlphaLowercase (String str) {
    RegExp reg = RegExp(_Regex().onlyAlphaLowercase);

    return reg.hasMatch(str);
  }

  onlyAlphaUppercase (String str) {
    RegExp reg = RegExp(_Regex().onlyAlphaUppercase);

    return reg.hasMatch(str);
  }

  onlyNumeric (String str) {
    RegExp reg = RegExp(_Regex().onlyNumeric);

    return reg.hasMatch(str);
  }

}