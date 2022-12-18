import 'package:flutter_test/flutter_test.dart';
import 'package:toolkit/toolkit.dart';

void main() {
  final exists = "hello";
  final emptyString = "";
  final nullValue = null;
  final date = DateTime.parse("2022-12-15T00:00:00Z");

  test(
    "Is Exists",
    () {
      expect(Toolkit.isExists(exists), true);
      expect(Toolkit.isExists(emptyString), false);
      expect(Toolkit.isExists(nullValue), false);
    },
  );

  test(
    "Is Not Exists",
    () {
      expect(Toolkit.isNotExists(exists), false);
      expect(Toolkit.isNotExists(emptyString), true);
      expect(Toolkit.isNotExists(nullValue), true);
    },
  );

  test(
    "Format Date",
    () {
      expect(Toolkit.formatDatetime(date, "yyyy"), "${date.year}");
      expect(Toolkit.formatDatetime(date, "yyyy-MM-d"),
          "${date.year}-${date.month}-${date.day}");
    },
  );

  test('test random utils', () {
    var randomStringAlphaNumeric = Toolkit.random.stringAlphaNumeric(12);

    expect(randomStringAlphaNumeric.length, 12);
  });
}
