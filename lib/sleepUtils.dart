class SleepUtils {
  /// Set sleep by specific duration.
  Future sleep(Duration duration) {
    return Future.delayed(duration, () {});
  }

  /// Set sleep in milliseconds.
  Future sleepMilliseconds(int milliseconds) {
    return Future.delayed(Duration(milliseconds: milliseconds), () {});
  }

  /// Set sleep in seconds.
  Future sleepSeconds(int seconds) {
    return Future.delayed(Duration(seconds: seconds), () {});
  }

  /// Set sleep in minutes.
  Future sleepMinutes(int minutes) {
    return Future.delayed(Duration(minutes: minutes), () {});
  }

  /// Set sleep in hours.
  Future sleepHours(int hours) {
    return Future.delayed(Duration(hours: hours), () {});
  }

  /// Set sleep in days.
  Future sleepDays(int days) {
    return Future.delayed(Duration(days: days), () {});
  }
}
