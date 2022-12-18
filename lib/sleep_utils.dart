class SleepUtils {
  /// Set sleep by specific duration.
  Future duration(Duration duration) {
    return Future.delayed(duration, () {});
  }

  /// Set sleep in milliseconds.
  Future milliseconds(int milliseconds) {
    return Future.delayed(Duration(milliseconds: milliseconds), () {});
  }

  /// Set sleep in seconds.
  Future seconds(int seconds) {
    return Future.delayed(Duration(seconds: seconds), () {});
  }

  /// Set sleep in minutes.
  Future minutes(int minutes) {
    return Future.delayed(Duration(minutes: minutes), () {});
  }

  /// Set sleep in hours.
  Future hours(int hours) {
    return Future.delayed(Duration(hours: hours), () {});
  }

  /// Set sleep in days.
  Future days(int days) {
    return Future.delayed(Duration(days: days), () {});
  }
}
