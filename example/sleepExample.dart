import 'package:toolkit/toolkit.dart';

sleepExample (Toolkit t) async {
  print("===== Sleep Example =====");
  // sleep by 5 seconds
  print(DateTime.now());
  await t.sleepSeconds(5);
  print(DateTime.now());
}