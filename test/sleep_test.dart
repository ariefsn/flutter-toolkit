import 'package:flutter_test/flutter_test.dart';
import 'package:toolkit/toolkit.dart';

void main() {
  test('test sleep seconds', () async {
    var start = DateTime.now();
    await Toolkit.sleep.seconds(1);
    var end = DateTime.now();

    expect(end.difference(start).inSeconds, 1);
  });

  test('test sleep milliseconds', () async {
    var start = DateTime.now();
    await Toolkit.sleep.milliseconds(100);
    var end = DateTime.now();

    expect(end.difference(start).inMilliseconds, greaterThanOrEqualTo(100));
  });

  test('test sleep milliseconds', () async {
    var start = DateTime.now();
    await Toolkit.sleep.milliseconds(100);
    var end = DateTime.now();

    expect(end.difference(start).inMilliseconds, greaterThanOrEqualTo(100));
  });

  test('test sleep minutes', () async {
    var start = DateTime.now();
    await Toolkit.sleep.minutes(0);
    var end = DateTime.now();

    expect(end.minute, start.minute);
  });

  test('test sleep hours', () async {
    var start = DateTime.now();
    await Toolkit.sleep.hours(0);
    var end = DateTime.now();

    expect(end.minute, start.minute);
  });

  test('test sleep days', () async {
    var start = DateTime.now();
    await Toolkit.sleep.days(0);
    var end = DateTime.now();

    expect(end.minute, start.minute);
  });

  test('test sleep milliseconds', () async {
    var start = DateTime.now();
    await Toolkit.sleep.milliseconds(100);
    var end = DateTime.now();

    expect(end.difference(start).inMilliseconds, greaterThanOrEqualTo(100));
  });

  test('test sleep duration', () async {
    var start = DateTime.now();
    await Toolkit.sleep.duration(Duration(milliseconds: 1000));
    var end = DateTime.now();

    expect(end.difference(start).inMilliseconds, greaterThanOrEqualTo(1000));
  });
}
