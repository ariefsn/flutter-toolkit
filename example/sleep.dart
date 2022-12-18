import 'package:toolkit/toolkit.dart';

sleepExample() async {
  print("===== Sleep Example =====");
  // sleep by 5 seconds
  print(DateTime.now());
  await Toolkit.sleep.seconds(5);
  print(DateTime.now());
}
