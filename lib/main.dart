import 'package:flutter/material.dart';
import 'package:pokemon_app/ui/home.dart';

import 'injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjectedDependencies();

  runApp(MaterialApp(home: MyApp()));
}
