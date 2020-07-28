import 'package:flutter/material.dart';

class MediaQueryUtils {
  double _validateSize(double size) {
    if (size >= 1) {
      size = 1;
    }

    if (size <= 0) {
      size = 0;
    }

    return size;
  }

  /// Get screen width, can be resize with size between 0 and 1.
  double getWidth(BuildContext context, { double size = 1 }) {
    size = _validateSize(size);

    return MediaQuery.of(context).size.width * size;
  }

  /// Get screen height, can be resize with size between 0 and 1.
  double getHeight(BuildContext context, { double size = 1 }) {
    size = _validateSize(size);

    return MediaQuery.of(context).size.height * size;
  }

  /// Get screen size.
  Size getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }
}