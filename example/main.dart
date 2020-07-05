import 'package:toolkit/toolkit.dart';

import 'mapExample.dart';
import 'randomExample.dart';
import 'regexpExample.dart';
import 'sleepExample.dart';

main () async {
  // Init new toolkit
  Toolkit t = Toolkit();

  mapExample(t);
  print("\n\n");
  randomExample(t);
  print("\n\n");
  regexpExample(t);
  print("\n\n");
  sleepExample(t);
}