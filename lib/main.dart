import 'package:contact/src/app_root.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'model/number_sp.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NumberSP.init();
  print(NumberSP.getNumber() ?? "null");
  runApp(AppRoot());
}
